using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Linq;
using System.Data.Linq.SqlClient;
using DevExpress.XtraGrid;
using PH.LWPM.BO;

namespace PH.LWPM.UI.LB4
{
    public partial class MCFrm : DevExpress.XtraEditors.XtraForm
    {
        public string Factory { get; set; }
        public string LineCode { get; set; }
        public string mctype { get; set; }

        //public RAPLQDataContext context { get; set; }

        private RAPLQDataContext context;
        private WPMaster CurrentWPMaster;

        //由david加入 2018-12-31，用于檢查輸入的MachineID 是否正確
        private List<string> MachineIDList = new List<string>();


        private IEnumerable<Matching> mching;
        private IEnumerable<Machine> MCs;

        private MCFrm()
        {
            InitializeComponent();

        }
        public MCFrm(RAPLQDataContext ADataContext, WPMaster AWPMaster, IEnumerable<Matching> mchings)
        {
            InitializeComponent();
            this.context = ADataContext;
            this.CurrentWPMaster = AWPMaster;
            this.Factory = AWPMaster.Factory;
            this.LineCode = AWPMaster.LineCode;

            this.ConditionsAdjustment();
            this.mching = mchings.OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.WPSN);

            //this.CalTitleInfo();

        }

        //void CalTitleInfo()
        //{
        //    var AllMachineList = context.Machines.Where(p => p.Class != "Mc-Dead Stock Room");
        //    this.txtWholeGroupMCCount.Text = string.Format("{0} sets", AllMachineList.Count());

        //    this.txtSelectMachineFactory.Text = string.Format("Fty ({0})", Factory.Trim());
        //    this.txtFactoryMCCount.Text = string.Format("{0} sets", AllMachineList.Where(p => p.Factory == Factory).Count());

        //    this.txtQNNeedHWCount.Text = string.Format("{0} sets", this.mching.Count());
        //    this.txtQNNeedHWTypeCount.Text = this.mching.Select(p => p.MCType).Distinct().Count().ToString();
        //}

        private void ConditionsAdjustment()
        {

            StyleFormatCondition cn;
            cn = new StyleFormatCondition(FormatConditionEnum.Equal, gridView1.Columns["LB4YNSel"], null, true);
            cn.Appearance.BackColor = Color.Red;
            cn.ApplyToRow = true;
            gridView1.FormatConditions.Add(cn);
        }
        private void MCFrm_Load(object sender, EventArgs e)
        {
            //GetMachines(mctype);
            bindingSource2.DataSource = mching;
            RefreshWFState();

            this.Text = string.Format("Setp 3 Select Machine -- Ws: {0}  Line: {1}", CurrentWPMaster.Location, CurrentWPMaster.LineCode);

            //由david加入 2018-12-31，用于檢查輸入的MachineID 是否正確
            MachineIDList = context.Machines.Where(p => p.Factory == Factory).Select(p => p.Id.Trim()).ToList();


        }

        void GetMachines(string Type)
        {
            if (Type.Trim() != string.Empty)
            {
                MCs = from pf in context.Machines where pf.Factory == Factory && pf.Class != "Mc-Dead Stock Room" && SqlMethods.Like(pf.Type1, Type.Substring(0, 2) + "%") select pf;
            }
            else
            {
                MCs = from pf in context.Machines where pf.Factory == Factory && pf.Class != "Mc-Dead Stock Room" select pf;
            }

            foreach (var obj in MCs)
            {
                obj.SelectMachine_Line = this.CurrentWPMaster.LineCode.Trim();
                obj.SelectMachine_Ws = this.CurrentWPMaster.Location.Trim();
            }

            bindingSource1.DataSource = MCs;


            //if (Type.Trim() != string.Empty)
            //{
            //    MCs = from pf in context.Machines where pf.Factory == Factory && SqlMethods.Like(pf.Type1, Type.Substring(0, 2) + "%") select pf;
            //}
            //else
            //{
            //    MCs = from pf in context.Machines where pf.Factory == Factory select pf;
            //}
            //bindingSource1.DataSource = MCs;
        }

        private void gridView2_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            Matching obj = bindingSource2.Current as Matching;

            mctype = obj.MCType.ToString().TrimEnd();
            GetMachines(mctype);

            this.gridView1.ExpandGroupRow(-1, true);  //自動展開當前Line的衣車
        }


        //private void bindingSource2_CurrentChanged(object sender, EventArgs e)
        //{
        //Matching obj = bindingSource2.Current as Matching;

        //mctype = obj.MCType.ToString().TrimEnd();
        //GetMachines(mctype);




        //if (string.IsNullOrEmpty(obj.MachineId))
        //{
        //    if (this.radReArrangeMC.Checked)
        //    {
        //        this.RbtWF.Checked = true;
        //    }
        //}
        //else
        //{
        //    if (this.RbtWF.Checked)
        //    {
        //        this.radReArrangeMC.Checked = true;
        //    }
        //}
        //}

        void RefreshWFState()
        {

            foreach (Machine mc in MCs)
            {
                foreach (Matching mt in this.mching.Where(P => P.MachineId != null || P.addMachineId1 != null || P.addMachineId2 != null))
                {
                    if (mc.Id.TrimEnd() == (mt.MachineId != null ? mt.MachineId.TrimEnd() : string.Empty) || mc.Id.TrimEnd() == (mt.addMachineId1 != null ? mt.addMachineId1.TrimEnd() : string.Empty) || mc.Id.TrimEnd() == (mt.addMachineId2 != null ? mt.addMachineId2.TrimEnd() : string.Empty) || mc.Id.TrimEnd() == (mt.addMachineId3 != null ? mt.addMachineId3.TrimEnd() : string.Empty))
                    {
                        mc.LB4YNSel = true;
                        break;
                    }
                    else
                    {
                        mc.LB4YNSel = false;
                    }

                }
            }
            this.bindingSource1.ResetBindings(false);
        }

        private void BtnRight_Click(object sender, EventArgs e)
        {
            AddMC();
        }
        void AddMC()
        {
            if (this.bindingSource1.Current == null)
            {
                return;
            }

            string Str;
            ChoiceMachineResult choiceMachineResult = QNHelper.CheckMachineStatus(this.context, this.CurrentWPMaster, (this.bindingSource1.Current as Machine).Id);
            if (choiceMachineResult.Status == ChoiceMachineStatus.Lock)
            {
                Str = string.Format("Machine {0} is locked by QN: {1} ", (this.bindingSource1.Current as Machine).Id, choiceMachineResult.QN);
                MessageBox.Show(Str, "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            else if (choiceMachineResult.Status == ChoiceMachineStatus.Reserve)
            {
                Str = string.Format("Machine {0} is reserved by QN: {1}, Do you want to use it?", (this.bindingSource1.Current as Machine).Id, choiceMachineResult.QN);
                if (MessageBox.Show(Str, "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                {
                    return;
                }
            }


            string jf = string.Empty;
            int sn = 0;
            string id = (this.bindingSource1.Current as Machine).Id != null ? (this.bindingSource1.Current as Machine).Id.TrimEnd() : string.Empty;
            string rpm = (this.bindingSource1.Current as Machine).Rpm != null ? (this.bindingSource1.Current as Machine).Rpm.TrimEnd() : string.Empty;
            string rpmM = (this.bindingSource2.Current as Matching).Rpm != null ? (this.bindingSource2.Current as Matching).Rpm.ToString().TrimEnd() : string.Empty;
            if (rpm == rpmM || rpm == string.Empty)
            {
                rpm = "≡";
            }

            jf = (this.bindingSource2.Current as Matching).JFlag != null ? (this.bindingSource2.Current as Matching).JFlag.ToString().TrimEnd() : string.Empty;
            sn = (this.bindingSource2.Current as Matching).WPSN;
            (this.bindingSource1.Current as Machine).LB4YNSel = true;

            if (RbtWF.Checked)
            {
                (this.bindingSource2.Current as Matching).MachineId = id;
                (this.bindingSource2.Current as Matching).Rpm0 = rpm;


                #region 耞╊Ж
                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                mg.MachineId = id;
                                mg.Rpm0 = rpm;

                            }
                        }
                    }
                }


                #endregion
                #region Move Next Record
                if (ChkMoveNext.Checked)
                {
                    if (this.mching.Where(P => string.IsNullOrEmpty(P.MachineId)).Count() > 0 && this.bindingSource2.Position != this.bindingSource2.Count - 1)
                    {
                        do
                        {

                            this.bindingSource2.MoveNext();
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Matching).MachineId) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Matching).MachineId));
                    }
                }

                #endregion
            }
            else if (RbtWF1.Checked)
            {
                (this.bindingSource2.Current as Matching).addMachineId1 = id;
                (this.bindingSource2.Current as Matching).addRpm1 = rpm;

                #region 耞╊Ж
                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                mg.addMachineId1 = id;
                                mg.addRpm1 = rpm;

                            }
                        }
                    }
                }
                #endregion
                #region Move Next Record
                {
                    if (this.mching.Where(P => string.IsNullOrEmpty(P.addMachineId1)).Count() > 0 && this.bindingSource2.Position != this.bindingSource2.Count - 1)
                    {
                        do
                        {

                            this.bindingSource2.MoveNext();
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Matching).addMachineId1) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Matching).addMachineId1));
                    }
                }
                #endregion

            }
            else if (RbtWF2.Checked)
            {
                (this.bindingSource2.Current as Matching).addMachineId2 = id;
                (this.bindingSource2.Current as Matching).addRpm2 = rpm;
                #region 耞╊Ж
                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                mg.addMachineId2 = id;
                                mg.addRpm2 = rpm;

                            }
                        }
                    }
                }
                #endregion
                #region Move Next Record
                if (ChkMoveNext.Checked)
                {
                    if (this.mching.Where(P => string.IsNullOrEmpty(P.addMachineId2)).Count() > 0 && this.bindingSource2.Position != this.bindingSource2.Count - 1)
                    {
                        do
                        {

                            this.bindingSource2.MoveNext();
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Matching).addMachineId2) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Matching).addMachineId2));
                    }
                }
                #endregion

            }
            RefreshWFState();

        }
        private void BtnLeft_Click(object sender, EventArgs e)
        {
            RemoveMC();
        }
        void RemoveMC()
        {
            if (RbtWF.Checked)
            {
                (this.bindingSource2.Current as Matching).MachineId = string.Empty;
                (this.bindingSource2.Current as Matching).Rpm0 = string.Empty;

            }
            else if (RbtWF1.Checked)
            {
                (this.bindingSource2.Current as Matching).addMachineId1 = string.Empty;
                (this.bindingSource2.Current as Matching).addRpm1 = string.Empty;
            }
            else if (RbtWF2.Checked)
            {
                (this.bindingSource2.Current as Matching).addMachineId2 = string.Empty;
                (this.bindingSource2.Current as Matching).addRpm2 = string.Empty;
            }
            RefreshWFState();
        }



        private void GridMC_DoubleClick(object sender, EventArgs e)
        {
            AddMC();
        }

        private void GridMC_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                AddMC();
            }
        }

        private void GridMatching_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Delete)
            {
                RemoveMC();
            }
        }

        private void RbtWF_CheckedChanged(object sender, EventArgs e)
        {
            if (RbtWF.Checked)
            {
                ColMMachineId.FieldName = "MachineId";
                ColMRpm0.FieldName = "Rpm0";
            }
        }

        private void RbtWF1_CheckedChanged(object sender, EventArgs e)
        {
            if (RbtWF1.Checked)
            {
                ColMMachineId.FieldName = "addMachineId1";
                ColMRpm0.FieldName = "addRpm1";
            }
        }

        private void RbtWF2_CheckedChanged(object sender, EventArgs e)
        {
            if (RbtWF2.Checked)
            {
                ColMMachineId.FieldName = "addMachineId2";
                ColMRpm0.FieldName = "addRpm2";
            }
        }

        private void ChkExpand_CheckedChanged(object sender, EventArgs e)
        {
            if (ChkExpand.Checked)
            {
                //gridView1.ExpandAllGroups();                
                gridView1.OptionsBehavior.AutoExpandAllGroups = true;

            }
            else
            {
                gridView1.CollapseAllGroups();
                gridView1.OptionsBehavior.AutoExpandAllGroups = false;
            }
        }

        private void GridMatching_Click(object sender, EventArgs e)
        {

        }

        private void gridView2_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            Matching obj = bindingSource2.Current as Matching;
            if (obj == null || string.IsNullOrEmpty(obj.MachineId))
            {
                return;
            }

            string MachineID = "";
            if (RbtWF.Checked)
            {
                MachineID = obj.MachineId;
            }
            else if (RbtWF1.Checked)
            {
                MachineID = obj.addMachineId1;
            }

            if (string.IsNullOrEmpty(MachineID))
            {
                return;
            }

            //由david加入2018-12-31，用于檢查輸入的MachineID 是否正確
            if (!MachineIDList.Contains(obj.MachineId.Trim()))
            {
                e.Valid = false;
                this.gridView2.SetColumnError(this.ColMMachineId, string.Format("[{0}] is invalid machine ID", obj.MachineId));
                obj.MachineId = "";
            }
        }

        private void tableLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void gridView2_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            try
            {
                if (e.Column.FieldName == "MachineId")
                {
                    object ObjAgree = this.gridView2.GetRowCellValue(e.RowHandle, this.gridView2.Columns["Agree"]);
                    if (ObjAgree != null && Convert.ToBoolean(ObjAgree))
                    {
                        return;
                    }

                    object ObjMCType = this.gridView2.GetRowCellValue(e.RowHandle, this.gridView2.Columns["MCType"]);
                    object ObjMachineID = this.gridView2.GetRowCellValue(e.RowHandle, this.gridView2.Columns["MachineId"]);

                    if (ObjMachineID == null || ObjMCType == null || string.IsNullOrEmpty(ObjMachineID.ToString()) || string.IsNullOrEmpty(ObjMCType.ToString()))
                    {
                        return;
                    }

                    if (ObjMachineID.ToString().Trim().Length < ObjMCType.ToString().Trim().Length)
                    {
                        e.Appearance.BackColor2 = Color.Red;
                        return;
                    }

                    if (ObjMachineID.ToString().Trim().Substring(0, ObjMCType.ToString().Trim().Length) != ObjMCType.ToString().Trim())
                    {
                        e.Appearance.BackColor2 = Color.Red;
                    }
                }
            }
            catch
            {
                return;
            }

        }




    }
}