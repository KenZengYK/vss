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
using System.Collections;

namespace PH.LWPM.UI.LB5
{
    public partial class MCFrm : DevExpress.XtraEditors.XtraForm
    {
        public string Factory { get; set; }
        public string LineCode { get; set; }
        public string mctype { get; set; }
        public RAPLQDataContext context { get; set; }
        public WPMaster CurrentWPMaster { get; set; }

        private IEnumerable<Lb5Matching> mching;
        private IEnumerable<PH.LWPM.BO.Machine> MCs;

        private Hashtable SaveOperationHW = new Hashtable();
        private Hashtable SaveOperationAddHW1 = new Hashtable();
        private Hashtable SaveOperationAddHW2 = new Hashtable();

        private MCFrm()
        {
            InitializeComponent();

        }
        public MCFrm(RAPLQDataContext ADataContext, WPMaster AWPMaster, IEnumerable<Lb5Matching> mchings)
        {
            InitializeComponent();

            this.context = ADataContext;
            this.CurrentWPMaster = AWPMaster;
            this.Factory = AWPMaster.Factory;
            this.LineCode = AWPMaster.LineCode;

            this.ConditionsAdjustment();
            this.mching = mchings.OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.WPSN);


            var HWList = this.mching.Select(p => new { p.WPSN, p.MachineId }).Distinct();
            foreach (var obj in HWList)
            {
                this.SaveOperationHW.Add(obj.WPSN, obj.MachineId == null ? "" : obj.MachineId);
            }

            var AddHW1List = this.mching.Select(p => new { p.WPSN, p.addMachineId1 }).Distinct();
            foreach (var obj in AddHW1List)
            {
                this.SaveOperationAddHW1.Add(obj.WPSN, obj.addMachineId1 == null ? "" : obj.addMachineId1);
            }


            var AddHW2List = this.mching.Select(p => new { p.WPSN, p.addMachineId2 }).Distinct();
            foreach (var obj in AddHW2List)
            {
                this.SaveOperationAddHW2.Add(obj.WPSN, obj.addMachineId2 == null ? "" : obj.addMachineId2);
            }
        }

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

            GetMachines(mctype);
            bindingSource2.DataSource = mching;
            RefreshWFState();

            this.Text = string.Format("Step 5 Select Machine -- Ws: {0}  Line: {1}", CurrentWPMaster.Location, CurrentWPMaster.LineCode);


        }

        void GetMachines(string Type)
        {
            if (Type.Trim() != string.Empty)
            {
                MCs = from pf in context.Machines where pf.Factory == Factory && SqlMethods.Like(pf.Type1, Type.Substring(0, 2) + "%") select pf;
            }
            else
            {
                MCs = from pf in context.Machines where pf.Factory == Factory select pf;
            }

            foreach (var obj in MCs)
            {
                obj.SelectMachine_Line = this.CurrentWPMaster.LineCode.Trim();
                obj.SelectMachine_Ws = this.CurrentWPMaster.Location.Trim();
            }

            bindingSource1.DataSource = MCs;
        }
        void RefreshWFState()
        {

            foreach (PH.LWPM.BO.Machine mc in MCs)
            {
                foreach (Lb5Matching mt in this.mching.Where(P => P.MachineId != null || P.addMachineId1 != null || P.addMachineId2 != null))
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


            var CurLB = this.bindingSource2.Current as Lb5Matching;
            var CurMC = this.bindingSource1.Current as PH.LWPM.BO.Machine;
            string jf = string.Empty;
            int sn = 0;
            string id = CurMC.Id != null ? CurMC.Id.TrimEnd() : string.Empty;
            string rpm = CurMC.Rpm != null ? CurMC.Rpm.TrimEnd() : string.Empty;
            string rpmM = CurLB.Rpm != null ? CurLB.Rpm.ToString().TrimEnd() : string.Empty;
            string factory = CurMC.Factory != null ? CurMC.Factory.TrimEnd() : string.Empty;
            if (rpm == rpmM || rpm == string.Empty)
            {
                rpm = "≡";
            }

            jf = CurLB.JFlag != null ? CurLB.JFlag.ToString().TrimEnd() : string.Empty;
            sn = CurLB.WPSN;
            CurMC.LB4YNSel = true;

            if (radReArrangeMC.Checked)
            {
                string HWID = this.SaveOperationHW[CurLB.WPSN].ToString(); //有可能在沒保存之前多次修改，要取得最早的那個HWID
                context.InsertLB5MatchingLog("HW", 0, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                      CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, HWID, id);


                CurLB.oldMachineId = CurLB.MachineId;
                CurLB.oldFactory = factory;
                CurLB.MachineId = id;
                CurLB.Rpm0 = rpm;
                CurLB.UpdateTime = DateTime.Now;
                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.WorkStyle, CurLB.WorkerName, CurLB.WorkerId, id, rpm, 1);

                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Lb5Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                context.InsertLB5MatchingLog("HW", 0, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                                   mg.OperationSN ?? 0, mg.OperationName, mg.OperationCode, HWID, id);


                                mg.MachineId = id;
                                mg.Rpm0 = rpm;
                                WPMasterList.UPD_NextOTN(context, mg.Factory, mg.LineCode, mg.j_NO, mg.J2_job, mg.Rwo, mg.Qn, mg.Bcolor, mg.OTN.TrimEnd(), mg.WPSN, mg.Date, mg.WorkStyle, mg.WorkerName, mg.WorkerId, id, rpm, 1);

                            }
                        }
                    }
                }

                #region Move Next Record
                if (ChkMoveNext.Checked)
                {
                    if (this.mching.Where(P => string.IsNullOrEmpty(P.MachineId)).Count() > 0 && this.bindingSource2.Position != this.bindingSource2.Count - 1)
                    {
                        do
                        {

                            this.bindingSource2.MoveNext();
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).MachineId) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).MachineId));
                    }
                }
                #endregion


            }
            else if (RbtWF1.Checked)
            {
                string AddHW1 = this.SaveOperationAddHW1[CurLB.WPSN].ToString(); //有可能在沒保存之前多次修改，要取得最早的那個WorderID

                context.InsertLB5MatchingLog("HW", 1, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                      CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, AddHW1, id);

                CurLB.addMachineId1 = id;
                CurLB.addRpm1 = rpm;
                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.addWorkStyle1, CurLB.addworker1, CurLB.addworkerId1, id, rpm, 2);

                #region 耞╊Ж
                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Lb5Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {

                                AddHW1 = this.SaveOperationAddHW1[CurLB.WPSN].ToString(); //有可能在沒保存之前多次修改，要取得最早的那個WorderID

                                context.InsertLB5MatchingLog("HW", 1, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                                    mg.OperationSN ?? 0, mg.OperationName, mg.OperationCode, AddHW1, id);

                                mg.addMachineId1 = id;
                                mg.addRpm1 = rpm;
                                WPMasterList.UPD_NextOTN(context, mg.Factory, mg.LineCode, mg.j_NO, mg.J2_job, mg.Rwo, mg.Qn, mg.Bcolor, mg.OTN.TrimEnd(), mg.WPSN, mg.Date, mg.addWorkStyle1, mg.addworker1, mg.addworkerId1, id, rpm, 2);

                            }
                        }
                    }
                }
                #endregion
                #region Move Next Record
                if (ChkMoveNext.Checked)
                {
                    if (this.mching.Where(P => string.IsNullOrEmpty(P.addMachineId1)).Count() > 0 && this.bindingSource2.Position != this.bindingSource2.Count - 1)
                    {
                        do
                        {

                            this.bindingSource2.MoveNext();
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).addMachineId1) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).addMachineId1));
                    }
                }
                #endregion
            }
            else if (RbtWF2.Checked)
            {
                string AddHW2 = this.SaveOperationAddHW2[CurLB.WPSN].ToString(); //有可能在沒保存之前多次修改，要取得最早的那個WorderID

                context.InsertLB5MatchingLog("WF", 2, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                      CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, AddHW2, id);


                CurLB.addMachineId2 = id;
                CurLB.addRpm2 = rpm;
                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.addWorkStyle2, CurLB.addworker2, CurLB.addworkerId2, id, rpm, 3);

                #region 耞╊Ж
                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Lb5Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                AddHW2 = this.SaveOperationAddHW2[CurLB.WPSN].ToString(); //有可能在沒保存之前多次修改，要取得最早的那個WorderID

                                context.InsertLB5MatchingLog("WF", 2, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                                    mg.OperationSN ?? 0, mg.OperationName, mg.OperationCode, AddHW2, id);


                                mg.addMachineId2 = id;
                                mg.addRpm2 = rpm;
                                WPMasterList.UPD_NextOTN(context, mg.Factory, mg.LineCode, mg.j_NO, mg.J2_job, mg.Rwo, mg.Qn, mg.Bcolor, mg.OTN.TrimEnd(), mg.WPSN, mg.Date, mg.addWorkStyle2, mg.addworker2, mg.addworkerId2, id, rpm, 3);

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
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).addMachineId2) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).addMachineId2));
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
            var CurLB = this.bindingSource2.Current as Lb5Matching;
            if (radReArrangeMC.Checked)
            {
                CurLB.MachineId = string.Empty;
                CurLB.Rpm0 = string.Empty;
                CurLB.UpdateTime = DateTime.Now;
                CurLB.oldMachineId = string.Empty;
                CurLB.oldFactory = string.Empty;
                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.WorkStyle, CurLB.WorkerName, CurLB.WorkerId, string.Empty, string.Empty, 1);

            }
            else if (RbtWF1.Checked)
            {
                context.InsertLB5MatchingLog("HW", 1, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                  CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, CurLB.addMachineId1, "");

                CurLB.addMachineId1 = string.Empty;
                CurLB.addRpm1 = string.Empty;
                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.addWorkStyle1, CurLB.addworker1, CurLB.addworkerId1, string.Empty, string.Empty, 2);
            }
            else if (RbtWF2.Checked)
            {
                context.InsertLB5MatchingLog("HW", 2, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                   CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, CurLB.addMachineId2, "");

                CurLB.addMachineId2 = string.Empty;
                CurLB.addRpm2 = string.Empty;
                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.addWorkStyle2, CurLB.addworker2, CurLB.addworkerId2, string.Empty, string.Empty, 3);
            }
            RefreshWFState();
        }

        //private void bindingSource2_CurrentChanged(object sender, EventArgs e)
        //{
        //    Lb5Matching obj = bindingSource2.Current as Lb5Matching;
        //    mctype = obj.MCType.ToString().TrimEnd();
        //    GetMachines(mctype);

        //    //if (string.IsNullOrEmpty(obj.MachineId))
        //    //{
        //    //    if (this.radReArrangeMC.Checked)
        //    //    {
        //    //        this.RbtWF.Checked = true;
        //    //    }
        //    //}
        //    //else
        //    //{
        //    //    if (this.RbtWF.Checked)
        //    //    {
        //    //        this.radReArrangeMC.Checked = true;
        //    //    }
        //    //}

        //}

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



        private void RbtWF_CheckedChanged(object sender, EventArgs e)
        {
            //if (RbtWF.Checked)
            //{
            //    ColMMachineId.FieldName = "MachineId";
            //    ColMRpm0.FieldName = "Rpm0";
            //}
        }

        private void radReArrangeMC_CheckedChanged(object sender, EventArgs e)
        {
            if (this.radReArrangeMC.Checked)
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

                gridView1.OptionsBehavior.AutoExpandAllGroups = true;
            }
            else
            {
                gridView1.CollapseAllGroups();
                gridView1.OptionsBehavior.AutoExpandAllGroups = false;
            }
        }



        private void GridMatching_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Delete)
            {
                RemoveMC();
            }
        }

        private void gridView2_RowUpdated(object sender, DevExpress.XtraGrid.Views.Base.RowObjectEventArgs e)
        {
            //var CurLB = this.bindingSource2.Current as Lb5Matching;
            //if (RbtWF.Checked)
            //{
            //    WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.WorkStyle, CurLB.WorkerName, CurLB.WorkerId, CurLB.MachineId ,CurLB.Rpm0, 1);
            //}
            //else if (RbtWF1.Checked)
            //{
            //    WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.WorkStyle, CurLB.WorkerName, CurLB.WorkerId, CurLB.addMachineId1, CurLB.addRpm1, 2);
            //}
            //else if (RbtWF2.Checked)
            //{
            //    WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.WorkStyle, CurLB.WorkerName, CurLB.WorkerId, CurLB.addMachineId2, CurLB.addRpm2, 3);
            //}

        }

        private void gridView2_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            var CurLB = this.bindingSource2.Current as Lb5Matching;
            if (e.Column.FieldName == "MachineId" || e.Column.FieldName == "Rpm0")
            {
                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.WorkStyle, CurLB.WorkerName, CurLB.WorkerId, CurLB.MachineId, CurLB.Rpm0, 1);
            }
            if (e.Column.FieldName == "addMachineId1" || e.Column.FieldName == "addRpm1")
            {
                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.WorkStyle, CurLB.WorkerName, CurLB.WorkerId, CurLB.addMachineId1, CurLB.addRpm1, 2);
            }
            if (e.Column.FieldName == "addMachineId2" || e.Column.FieldName == "addRpm2")
            {
                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, CurLB.WorkStyle, CurLB.WorkerName, CurLB.WorkerId, CurLB.addMachineId2, CurLB.addRpm2, 3);
            }

            int WFColumn = 0;
            if (this.radReArrangeMC.Checked) WFColumn = 0;
            else if (this.RbtWF1.Checked) WFColumn = 1;
            else if (this.RbtWF2.Checked) WFColumn = 2;

            if (e.Column.FieldName == "MachineId")
            {
                context.InsertLB5MatchingLog("HW", WFColumn, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                  CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, this.SaveOperationHW[CurLB.WPSN].ToString(), CurLB.MachineId);
            }
            else if (e.Column.FieldName == "addMachineId1")
            {
                context.InsertLB5MatchingLog("HW", WFColumn, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                  CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, this.SaveOperationAddHW1[CurLB.WPSN].ToString(), CurLB.MachineId);
            }
            else if (e.Column.FieldName == "addMachineId2")
            {
                context.InsertLB5MatchingLog("HW", WFColumn, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                  CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, this.SaveOperationAddHW1[CurLB.WPSN].ToString(), CurLB.MachineId);
            }
        }

        private void gridView2_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            Lb5Matching obj = bindingSource2.Current as Lb5Matching;
            mctype = obj.MCType.ToString().TrimEnd();
            GetMachines(mctype);

            this.gridView1.ExpandGroupRow(-1, true);  //自動展開當前Line的衣車
        }

        //string SaveChangeHWID;
        //string SaveChangeHWID1;
        //string SaveChangeHWID2;
        private void gridView2_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            //if (e.Column.FieldName == "MachineId")
            //{
            //    SaveChangeHWID = e.Value.ToString();
            //}
            //else if (e.Column.FieldName == "addMachineId1")
            //{
            //    SaveChangeHWID1 = e.Value.ToString();
            //}
            //else if (e.Column.FieldName == "addMachineId2")
            //{
            //    SaveChangeHWID2 = e.Value.ToString();
            //}
        }


    }
}