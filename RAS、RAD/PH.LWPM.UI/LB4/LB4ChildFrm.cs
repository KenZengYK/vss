using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;
using PH.Platform.Misc.BO;
using PH.Platform.BO;
using PH.LineBalanceII.BO;
using System.IO;
using DevExpress.XtraBars;
using PH.LWPM.UI.LB4.Report;


namespace PH.LWPM.UI.LB4
{
    public partial class LB4ChildFrm : ParentChildForm
    {
        public LB4ChildFrm()
        {
            InitializeComponent();
            popupContainerControl1.Location = new Point(92, 77);
        }
        //LineBalanceIIDataContext Context = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
        public PH.LineBalanceII.BO.LineBalanceIIDataContext DLQlb3Cnn = ContextBuilder.CreateContext<PH.LineBalanceII.BO.LineBalanceIIDataContext>();
        string vtype = "";
        Dictionary<string, decimal> Dict_Seq = new Dictionary<string, decimal>();
        decimal _Cur_Sah_Max = 0;
        WPMaster CurMaster = null;

        public List<Matching> mclist = new List<Matching>();
        public override void DataBind()
        {
            string mtype = (this.ListForm as LB4PListFrm).OptionType;
            vtype = mtype;
            //if (mtype == "F")
            //    this.childList1.BindingSource.DataSource = (this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE != "A"&&p.FAE!="E");
            //else

            //  IEnumerable<Matching> matchins = (this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE == mtype);

            //計算head count
            //IEnumerable<Matching> matchins = (this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.WorkerId);
            IEnumerable<Matching> matchins;
            if (mtype == "FAE")
            {
                matchins = (this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE == "F" || p.FAE == "A" || p.FAE == "E").OrderBy(p => p.WorkerId);
            }
            else
            {
                matchins = (this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.WorkerId);
            }

            CurMaster = this.BindingSource.Current as WPMaster;


            string _curid = "";
            int m = 0;
            decimal? mergetotal = 0;
            Matching prematching = null; //上一個Matching
            decimal _sah_total = 0;

            foreach (Matching mc in matchins)
            {
                _sah_total += mc.GSD_SAH.GetValueOrDefault();
                mc.CurrentDataContext = this.DataContext;
                _curid = mc.WorkerId;
                if (m == 0)
                {
                    // _curid = mc.WorkerId; 
                    prematching = mc;
                    // _workerid = mc.WorkerId;
                    if (!mc.IsFloater.GetValueOrDefault())
                        mc.HeadCount = 1;
                    else
                        CalHeadCount(mc);
                    m++;
                    mergetotal += mc.GSD_SAH.GetValueOrDefault();
                    //    mc.JWorkSN_Disp = mc.JWorkSN.GetValueOrDefault();
                    //   mc.JWorkSN_LB3_Disp = mc.JWorkSN_LB3.GetValueOrDefault();

                }
                else if (_curid != "" && _curid == prematching.WorkerId)
                {
                    //  _curid = mc.WorkerId;
                    mc.HeadCount = 0; m++;
                    mergetotal += mc.GSD_SAH.GetValueOrDefault();
                    // mc.JWorkSN_Disp = null;
                    // mc.JWorkSN_LB3_Disp = null;

                    prematching = mc;
                }
                else if (_curid != "" && _curid != prematching.WorkerId)
                {
                    // _curid = mc.WorkerId; 
                    if (m > 1)
                    {
                        prematching.JWorkSN = mergetotal;
                        prematching.JWorkSN_Disp = null;
                        //   prematching.JWorkSN_LB3_Disp = null;

                        if (!string.IsNullOrEmpty(prematching.WorkerId))
                            Dict_Seq.Add(prematching.WorkerId, mergetotal.GetValueOrDefault());
                    }
                    else
                    {
                        prematching.CWorkSN = 0;
                        prematching.JWorkSN = 0;
                        //   prematching.JWorkSN_Disp = prematching.JWorkSN.GetValueOrDefault(); ;
                        //  prematching.JWorkSN_LB3_Disp = prematching.JWorkSN_LB3.GetValueOrDefault();


                        if (!string.IsNullOrEmpty(prematching.WorkerId))
                            Dict_Seq.Add(prematching.WorkerId, prematching.GSD_SAH.GetValueOrDefault());
                    }

                    if (!mc.IsFloater.GetValueOrDefault())
                        mc.HeadCount = 1;
                    else
                        CalHeadCount(mc);
                    //   mc.JWorkSN_Disp = mc.JWorkSN.GetValueOrDefault();
                    //  mc.JWorkSN_LB3_Disp = mc.JWorkSN_LB3.GetValueOrDefault();

                    //  _workerid = mc.WorkerId;
                    m = 1;
                    prematching = mc;
                    mergetotal = mc.GSD_SAH.GetValueOrDefault();
                }

                Matching _mc1 = new Matching();
                _mc1.WorkerId = mc.WorkerId; _mc1.OperationCode = mc.OperationCode; _mc1.OperationSN = mc.OperationSN; _mc1.HeadCount = mc.HeadCount;
                _mc1.Factory = mc.Factory; _mc1.LineCode = mc.LineCode; _mc1.j_NO = mc.j_NO; _mc1.J2_job = mc.J2_job; _mc1.Rwo = mc.Rwo;
                _mc1.WPSN = mc.WPSN; _mc1.Qn = mc.Qn;
                mclist.Add(_mc1);

            }

            //最后一個   
            if (prematching != null)
            {
                if (!string.IsNullOrEmpty(prematching.WorkerId))
                {
                    if (m == 1)
                        Dict_Seq.Add(prematching.WorkerId, prematching.GSD_SAH.GetValueOrDefault());
                    else
                        Dict_Seq.Add(prematching.WorkerId, mergetotal.GetValueOrDefault());

                    //   prematching.JWorkSN_Disp = prematching.JWorkSN.GetValueOrDefault();
                    //  prematching.JWorkSN_LB3_Disp = prematching.JWorkSN_LB3.GetValueOrDefault();
                }



                //計算并更新BN Seq
                List<KeyValuePair<string, decimal>> lstorder = Dict_Seq.OrderByDescending(p => p.Value).ToList();
                int i = 0;
                decimal beforevalue = 0;
                decimal _sah_max = 0;
                foreach (KeyValuePair<string, decimal> item in lstorder)
                {
                    IEnumerable<Matching> matchings = matchins.Where(p => p.WorkerId == item.Key);
                    if (i == 0)
                    {
                        _sah_max = item.Value;
                        _Cur_Sah_Max = item.Value;
                    }
                    if (beforevalue != item.Value)
                        i++;


                    string seqno = "BN" + i.ToString();
                    beforevalue = item.Value;
                    foreach (Matching mc in matchings)
                    {
                        mc.JWorkSN = item.Value;
                        mc.BN_Seq = seqno;
                    }

                }

                decimal per = _sah_max * Dict_Seq.Count == 0 ? 0 : decimal.Round((_sah_total * 100) / (_sah_max * Dict_Seq.Count), 2);
                edtLB4Per.Text = per.ToString();

                //計算Workstation Count
                string _mcid = "", _curmcid = "";
                int m1 = 0;
                decimal _total_sah_lb4 = 0;
                Matching _prematching = null; //上一個Matching
                //IEnumerable<Matching> matchins1 = (this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.MachineId);
                IEnumerable<Matching> matchins1;
                if (mtype == "FAE")
                {
                    matchins1 = (this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE == "F" || p.FAE == "A" || p.FAE == "E").OrderBy(p => p.MachineId);
                }
                else
                {
                    matchins1 = (this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.MachineId);
                }
                foreach (Matching mc in matchins1)
                {

                    _total_sah_lb4 += mc.Sugg_SAH;
                    _curmcid = mc.MachineId;
                    if (m1 == 0)
                    {
                        _prematching = mc;
                        _mcid = _curmcid;
                        mc.WKStaitonCount = 1;

                    }
                    else if (_curmcid != "" && _curmcid == _mcid && m1 > 0)
                    {
                        mc.WKStaitonCount = 0;
                        _prematching = mc;
                    }
                    else if (_curmcid != "" && _curmcid != _mcid)
                    {
                        mc.WKStaitonCount = 1;
                        _prematching = mc;
                        _mcid = _curmcid;

                    }
                    m1++;

                }
                edtLb4TotalSAH.Text = _total_sah_lb4.ToString();
            }

            WPMaster obj = (this.BindingSource.Current as WPMaster);
            //matchins = obj.Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.WorkerId);
            //matchins = obj.Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.WPSN);
            if (mtype == "FAE")
            {
                matchins = obj.Matchings.Where(p => p.FAE == "F" || p.FAE == "A" || p.FAE == "E").OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.WPSN);
            }
            else
            {
                matchins = obj.Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.WPSN);
            }


            //Save Balance LB4
            //(this.BindingSource.Current as WPMaster).Balance_LB4 = string.IsNullOrEmpty(edtLB4Per.Text.Trim()) ? 0 : decimal.Parse(edtLB4Per.Text.Trim());
            this.childList1.BindingSource.DataSource = matchins;  //(this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE==mtype); 

            this.childList1.OptionType = (this.ListForm as LB4PListFrm).OptionType;
            //由David加入 2018-07-25
            string[] OptionTypes = new string[] { "PP", "B", "F", "A", "E" };
            LB4PListFrm frmLB4PList = this.ListForm as LB4PListFrm;
            if (frmLB4PList == null) return;

            this.childList1.barBtnWF.Visibility = (OptionTypes.Contains(frmLB4PList.OptionType) && frmLB4PList.MCParam == "WF") ? BarItemVisibility.Always : BarItemVisibility.Never; ;
            this.childList1.barBtnMC.Visibility = frmLB4PList.MCParam == "MC" ? BarItemVisibility.Always : BarItemVisibility.Never;

            this.barBtnConfirm.Visibility = frmLB4PList.MCParam == "WF" ? BarItemVisibility.Always : BarItemVisibility.Never;
            this.barBtnUnconfirm.Visibility = this.barBtnConfirm.Visibility;

            if (frmLB4PList.MCParam == "WF")
            {
                this.childList1.barBtnTobeConfirmed.Caption = (obj.ToBeConfirmedFlag ?? false) ? "Incomplete" : "Complete";
            }
            else if (frmLB4PList.MCParam == "MC")
            {
                this.childList1.barBtnTobeConfirmed.Caption = (obj.ToBeConfirmedFlag_MC ?? false) ? "Incomplete" : "Complete";
            }

            base.DataBind();

            this.ReCaculateLB(); //由David加入 2020-08-11
            this.DataContext.SubmitChanges(true);

            //只有AL時，才顯示LB3%和LB4%  由David加入  2020-08-11
            this.lBPercentLabel.Visible = vtype == "A";
            lBPercentTextEdit.Visible = this.lBPercentLabel.Visible;
            label2.Visible = this.lBPercentLabel.Visible;
            edtLB4Per.Visible = this.lBPercentLabel.Visible;

            if (this.IsNew) return;

            //如果SWPM中Flag2 = J 時，說明不需要做拆夾，也不用顯示LB3%和LB4%  由David加入  2020-08-14
            if (vtype == "A")
            {
                string SqlStr = @"select Flag2 from openquery(InterBase, 
'select * from TBLSHEDULE where PLine = ''{0}'' and J2_job = ''{1}'' and RWO =''{2}'' and ACOL=''{3}'' and FCCS = ''{4}''')";

                SqlStr = string.Format(SqlStr, obj.LineCode.Trim(), obj.J2_job.Trim(), obj.Rwo.Trim(), obj.Bcolor.Trim(), obj.Qn.Trim());
                DataTable dt = (this.DataContext as RAPLQDataContext).ExecuteDataTable(SqlStr, "dtFlag");
                if (dt != null && dt.Rows.Count > 0 && dt.Rows[0]["Flag2"].ToString() == "J")
                {
                    this.lBPercentLabel.Visible = false;
                    lBPercentTextEdit.Visible = false;
                    label2.Visible = false;
                    edtLB4Per.Visible = false;
                }
            }
        }


        private void ReCaculateLB()
        {
            if (CurMaster == null) return;

            if (vtype != "A") return; //只有AL的工序才計算LB3%和LB4% 由David加入 2020-08-11

            IEnumerable<Matching> matchins = CurMaster.Matchings.Where(p => p.FAE == vtype).OrderBy(p => p.OperationSN);
            decimal _sah_total = 0;
            decimal _total_sah_lb4 = 0;
            int _idx = 1;
            foreach (Matching mc in matchins)
            {
                _sah_total += mc.GSD_SAH.GetValueOrDefault();
                _total_sah_lb4 += mc.Sugg_SAH;
                if (mc.WKStaitonCount > 0)
                {
                    // mc.WKStaitonSeq = _idx;
                    _idx++;
                }
            }

            //decimal per = _sah_max * Dict_Seq.Count == 0 ? 0 : decimal.Round((_sah_total * 100) / (_sah_max * Dict_Seq.Count), 2);
            decimal per = _Cur_Sah_Max * Dict_Seq.Count == 0 ? 0 : decimal.Round((_sah_total * 100) / (_Cur_Sah_Max * Dict_Seq.Count), 2);
            edtLB4Per.Text = per.ToString();
            edtLb4TotalSAH.Text = _total_sah_lb4.ToString();
            CurMaster.Balance_LB4 = per;
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();
            ClsRight.GetUserRight(this.MenuID, "Confirm", barBtnConfirm);
            ClsRight.GetUserRight(this.MenuID, "Unconfirm", barBtnUnconfirm);
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            var CurFLM = this.BindingSource.Current as WPMaster;
            if (CurFLM.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                string CurFactory = DBAccess.CurFactory();
                (this.BindingSource.Current as WPMaster).Factory = CurFactory;
                DataTable linetb = DBAccess.GetInterBaseTable(string.Format("SELECT distinct PLINE FROM TBLSHEDULE WHERE (TPLANT =''{0}'')  AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ", CurFactory));
                lineCodeComboBoxEdit.Properties.Items.AddRange(linetb.AsEnumerable().Select(P => P.Field<string>("PLINE")).ToArray());

                factoryComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "FACTORY").Select(S => S.Code).ToArray());
                this.ControlState(false);
                this.barBtnConfirm.Enabled = false;
                this.barBtnUnconfirm.Enabled = false;
            }
            if (this.IsEditting)
            {
                //this.childList1.barBtnSave.Visibility = BarItemVisibility.Always;
                this.childList1.RowChangeAutoSave = false;
                this.childList1.AllowGridEdit = true;
                childList1.AllowAddRow = false;
            }

            txtQNShow.Properties.ReadOnly = true;

        }



        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            ControlState(false);


        }
        protected override void OnClickEdit()
        {
            if (isConfirmedCheckEdit.Checked)
            {
                MessageBox.Show("It already confirmed,you could not open it to edit !", "Notice", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            this.childList1.AllowGridEdit = true;
            base.OnClickEdit();
            ControlState(true);
            ClsRight.GetUserRight(this.MenuID, "AttachWF", this.childList1.barBtnWF);
            ClsRight.GetUserRight(this.MenuID, "AttachMC", this.childList1.barBtnMC);
            ClsRight.GetUserRight(this.MenuID, "Copy", this.childList1.barBtnCopy);
            //ClsRight.GetUserRight(this.MenuID, "Delete", barBtnDel); 
            this.childList1.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;

        }

        protected override void OnClickSave()
        {

            if ((this.BindingSource.Current as WPMaster).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {

                if (ValidationSaveCondition(factoryComboBoxEdit.Text, lineCodeComboBoxEdit.Text, j_NOTextEdit.Text, j2_jobTextEdit.Text, rwoTextEdit.Text, qnTextEdit.Text, bcolorTextEdit.Text)) return;
                if ((this.DataContext as RAPLQDataContext).Matchings.Where(P => P.Factory == factoryComboBoxEdit.Text && P.LineCode == lineCodeComboBoxEdit.Text && P.j_NO == j_NOTextEdit.Text && P.J2_job == j2_jobTextEdit.Text && P.Rwo == rwoTextEdit.Text && P.Qn == qnTextEdit.Text && P.Bcolor == bcolorTextEdit.Text).Count() > 0)
                {
                    (this.DataContext as RAPLQDataContext).LB4_UPD_ClearMatching(factoryComboBoxEdit.Text, lineCodeComboBoxEdit.Text, j_NOTextEdit.Text, j2_jobTextEdit.Text, rwoTextEdit.Text, qnTextEdit.Text, bcolorTextEdit.Text);
                }
            }
            ControlState(true);
            this.ReCaculateLB();
            base.OnClickSave();
            this.childList1.objListGridControl.RefreshDataSource();
            ClsRight.GetUserRight(this.MenuID, "AttachWF", this.childList1.barBtnWF);
            ClsRight.GetUserRight(this.MenuID, "AttachMC", this.childList1.barBtnMC);
            ClsRight.GetUserRight(this.MenuID, "Copy", this.childList1.barBtnCopy);


            //this.childList1.objListGridControl.DataSource = null;
            //this.childList1.objListGridControl.DataSource = (this.BindingSource.Current as WPMaster).Matchings;

        }
        protected override void OnClickSaveAndReturn()
        {
            if ((this.BindingSource.Current as WPMaster).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {

                if (ValidationSaveCondition(factoryComboBoxEdit.Text, lineCodeComboBoxEdit.Text, j_NOTextEdit.Text, j2_jobTextEdit.Text, rwoTextEdit.Text, qnTextEdit.Text, bcolorTextEdit.Text)) return;
                if ((this.DataContext as RAPLQDataContext).Matchings.Where(P => P.Factory == factoryComboBoxEdit.Text && P.LineCode == lineCodeComboBoxEdit.Text && P.j_NO == j_NOTextEdit.Text && P.J2_job == j2_jobTextEdit.Text && P.Rwo == rwoTextEdit.Text && P.Qn == qnTextEdit.Text && P.Bcolor == bcolorTextEdit.Text).Count() > 0)
                {
                    (this.DataContext as RAPLQDataContext).LB4_UPD_ClearMatching(factoryComboBoxEdit.Text, lineCodeComboBoxEdit.Text, j_NOTextEdit.Text, j2_jobTextEdit.Text, rwoTextEdit.Text, qnTextEdit.Text, bcolorTextEdit.Text);
                }
            }
            this.ReCaculateLB();
            base.OnClickSaveAndReturn();


            //this.childList1.objListGridControl.DataSource = null;
            //this.childList1.objListGridControl.DataSource = (this.BindingSource.Current as WPMaster).Matchings;
        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            //factoryComboBoxEdit.Properties.ReadOnly = true;
            startTimeDateEdit.Properties.ReadOnly = true;
            sTimeSpinEdit.Properties.ReadOnly = true;
            endTimeDateEdit.Properties.ReadOnly = true;
            eTimeSpinEdit.Properties.ReadOnly = true;
            pHStyleCodeTextEdit.Properties.ReadOnly = true;
            custStyleCodeTextEdit.Properties.ReadOnly = true;
            versionSpinEdit.Properties.ReadOnly = true;
            bcolorTextEdit.Properties.ReadOnly = true;
            j2_jobTextEdit.Properties.ReadOnly = true;
            j_NOTextEdit.Properties.ReadOnly = true;
            wocTextEdit.Properties.ReadOnly = true;
            rwoTextEdit.Properties.ReadOnly = true;
            qnTextEdit.Properties.ReadOnly = true;
            isConfirmedCheckEdit.Properties.ReadOnly = true;
            totalSAHSpinEdit.Properties.ReadOnly = true;
            lBPercentTextEdit.Properties.ReadOnly = true;
            zHTextEdit.Properties.ReadOnly = true;
            locationTextEdit.Properties.ReadOnly = true;
            bestSAHSpinEdit.Properties.ReadOnly = true;
            seqSpinEdit.Properties.ReadOnly = true;
            confirmTimeDateEdit.Properties.ReadOnly = true;


        }
        Boolean LB3Version()
        {
            var CurWPs = this.BindingSource.Current as WPMaster;

            var LB4Cnt = this.childList1.BindingSource.Count;
            var LB3CurMaster = DLQlb3Cnn.StyleMasters.Where(P => P.KHKH == CurWPs.CustStyleCode && P.PHKH == CurWPs.PHStyleCode && P.Edition == CurWPs.Version && P.ZH == CurWPs.ZH).FirstOrDefault();
            if (LB3CurMaster == null)
            {
                return true;
            }
            else
            {
                string kh = LB3CurMaster.KHKH.TrimEnd();
                string ph = LB3CurMaster.PHKH.TrimEnd();
                Int32 version = LB3CurMaster.Edition;
                string zh = LB3CurMaster.ZH;
                if (CurWPs.CustStyleCode.TrimEnd() != LB3CurMaster.KHKH.TrimEnd() || CurWPs.PHStyleCode.TrimEnd() != LB3CurMaster.PHKH.TrimEnd() || Convert.ToInt32(CurWPs.Version) != LB3CurMaster.Edition || CurWPs.ZH.TrimEnd() != LB3CurMaster.ZH)
                //if (CurWPs.CustStyleCode.TrimEnd() != kh || CurWPs.PHStyleCode.TrimEnd() !=ph || CurWPs.Version != version || CurWPs.ZH.TrimEnd() != zh)
                {
                    return true;
                }
                else
                {
                    Int32 LB3Cnt = LB3CurMaster.StyleProcedures.Count();
                    if (LB4Cnt != LB3Cnt)
                    {
                        return true;
                    }
                }
            }
            return false;

        }

        private void ChildFrm_Load(object sender, EventArgs e)
        {
            this.childList1.barBtnWF.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.SelectWF);
            this.childList1.barBtnMC.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.SelectMC);
            this.childList1.barBtnCopy.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.CopyWFandMC);

            //this.CaculateHeadCount();

        }

        private void bindingSourceLWPM_CurrentChanged(object sender, EventArgs e)
        {
            if (bindingSourceLWPM.Count > 0)
            {
                string KH = (this.bindingSourceLWPM.Current as DataRowView)["CSTYLE"].ToString().TrimEnd();
                bindingSourceLB3.DataSource = DLQlb3Cnn.StyleMasters.Where(p => p.KHKH == KH && (p.Statu == null || p.Statu == 0 || p.Statu == 1));
            }
        }

        private void c_btn_OK_Click(object sender, EventArgs e)
        {
            if (bindingSourceLB3.Count > 0 && bindingSourceLWPM.Count > 0)
            {
                if (string.IsNullOrEmpty((bindingSourceLWPM.Current as DataRowView)["CFKSRQ"].ToString()))
                {
                    MessageBox.Show("This QN's start date can't empty!!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }
                var CurStyleMaster = bindingSourceLB3.Current as StyleMaster;
                lineCodePopupContainerEdit.EditValue = (bindingSourceLWPM.Current as DataRowView)["PLINE"].ToString().TrimEnd();
                startTimeDateEdit.EditValue = Convert.ToDateTime((bindingSourceLWPM.Current as DataRowView)["CFKSRQ"]);
                endTimeDateEdit.EditValue = Convert.ToDateTime((bindingSourceLWPM.Current as DataRowView)["CFWCRQ"]);
                sTimeSpinEdit.EditValue = Convert.ToDecimal((bindingSourceLWPM.Current as DataRowView)["CFKSJS"]);
                eTimeSpinEdit.EditValue = Convert.ToDecimal((bindingSourceLWPM.Current as DataRowView)["CKJS"]);
                j_NOTextEdit.EditValue = (bindingSourceLWPM.Current as DataRowView)["j_no"].ToString().TrimEnd();
                j2_jobTextEdit.EditValue = (bindingSourceLWPM.Current as DataRowView)["j2_job"].ToString().TrimEnd();
                //rwoTextEdit.EditValue = (bindingSourceLWPM.Current as DataRowView)["rwo"].ToString().TrimEnd();
                //qnTextEdit.EditValue = (bindingSourceLWPM.Current as DataRowView)["fccs"].ToString().TrimEnd();
                seqSpinEdit.EditValue = (bindingSourceLWPM.Current as DataRowView)["seq"].ToString().TrimEnd();
                bcolorTextEdit.EditValue = (bindingSourceLWPM.Current as DataRowView)["acol"].ToString().TrimEnd();
                zHTextEdit.EditValue = CurStyleMaster.ZH;
                versionSpinEdit.EditValue = CurStyleMaster.Edition;
                pHStyleCodeTextEdit.EditValue = CurStyleMaster.PHKH;
                custStyleCodeTextEdit.EditValue = CurStyleMaster.KHKH;
                locationTextEdit.EditValue = (bindingSourceLWPM.Current as DataRowView)["TSHOP"].ToString().TrimEnd();
                //wocTextEdit.EditValue = (bindingSourceLWPM.Current as DataRowView)["CWO"].ToString().TrimEnd();
                txtQNQty.EditValue = (bindingSourceLWPM.Current as DataRowView)["SCQty"].ToString().TrimEnd();

                WPMaster CurWPM = this.BindingSource.Current as WPMaster;
                CurWPM.Rwo = (bindingSourceLWPM.Current as DataRowView)["rwo"].ToString().TrimEnd();
                CurWPM.Woc = (bindingSourceLWPM.Current as DataRowView)["CWO"].ToString().TrimEnd();
                CurWPM.Qn = (bindingSourceLWPM.Current as DataRowView)["fccs"].ToString().TrimEnd();

                #region Get Matching
                this.childList1.BindingSource.Clear();
                int xh = 0;
                string mtype = (this.ListForm as LB4PListFrm).OptionType;


                //己導入過資料就不再執行.
                if (CurWPM.Matchings.Where(p => p.FAE == "A").Count() == 0)
                {
                    var SPLst = CurStyleMaster.StyleProcedures.OrderBy(P => P.XH);

                    foreach (StyleProcedure Ps in SPLst)
                    {
                        //if (start == 0)
                        //    xh = 0;
                        Matching Lf = new Matching();
                        Lf.WPSN = ++xh;
                        //Lf.WPSN = Convert.ToInt32(Ps.XH);
                        Lf.OperationSN = Ps.SN;
                        Lf.OperationGroup = Ps.TeamYH != null ? Ps.TeamYH : string.Empty;
                        Lf.OperationCode = Ps.WorkSN;
                        Lf.OperationName = Ps.WorkName;
                        Lf.FAE = mtype == "PP" ? "PP" : Ps.FAE;
                        Lf.MCType = Ps.YCDM;
                        Lf.GSD_SAH = Ps.CWorkSN;
                        Lf.Rpm = Ps.YCSD;
                        Lf.mc = true;
                        Lf.JFlag = Ps.JFlag;
                        Lf.BestSAH = Ps.PJHSAHSN;
                        Lf.BestMTM = Ps.PJHMTM;
                        Lf.WorkforceNum = Ps.LDL;
                        Lf.IsFloater = false;

                        //15/06/10 add
                        Lf.Move_LB3 = Ps.Move;
                        Lf.CWorkSN_LB3 = Ps.CWorkSN;
                        Lf.BN_Seq_LB3 = Ps.BNCX;
                        Lf.CWorkSN_LB3 = Ps.CWorkSN;
                        Lf.JWorkSN_LB3 = Ps.JWorkSN;
                        Lf.WFCode_LB3 = Ps.GRDH;
                        Lf.GZW_LB3 = Ps.GZW;
                        Lf.StaitonCount_LB3 = Ps.GZW;
                        // Lf.WKStaitonSeq_LB3 = Ps.WKStaitonSeq;

                        Lf.Mtm_Suggest = Ps.PJHMTM;
                        Lf.Move = Ps.Move;


                        Lf.CurrentDataContext = this.DataContext;
                        // this.childList1.BindingSource.Add(Lf);
                        CurWPM.Matchings.Add(Lf);
                    }

                    var SPLst1 = CurStyleMaster.StyleProcedure_Es.OrderBy(P => P.XH);
                    foreach (StyleProcedure_E Ps in SPLst1)
                    {
                        Matching Lf = new Matching();
                        Lf.WPSN = ++xh;
                        //Lf.WPSN = Convert.ToInt32(Ps.XH);
                        Lf.OperationSN = Ps.SN;
                        Lf.OperationGroup = Ps.TeamYH != null ? Ps.TeamYH : string.Empty;
                        Lf.OperationCode = Ps.WorkSN;
                        Lf.OperationName = Ps.WorkName;
                        Lf.FAE = mtype == "PP" ? "PP" : Ps.FAE;
                        Lf.MCType = Ps.YCDM;
                        Lf.GSD_SAH = Ps.CWorkSN;
                        Lf.Rpm = Ps.YCSD;
                        Lf.mc = true;
                        Lf.JFlag = Ps.JFlag;
                        Lf.BestSAH = Ps.PJHSAHSN;
                        Lf.BestMTM = Ps.PJHMTM;
                        Lf.WorkforceNum = Ps.LDL;
                        Lf.Mtm_Suggest = Ps.PJHMTM;
                        Lf.Move = Ps.Move;
                        Lf.IsFloater = false;
                        CurWPM.Matchings.Add(Lf);

                    }

                    var SPLst2 = CurStyleMaster.StyleProcedure_Fs.OrderBy(P => P.XH);
                    foreach (StyleProcedure_F Ps in SPLst2)
                    {
                        //if (start == 0)
                        //    xh = 0;
                        Matching Lf = new Matching();
                        Lf.WPSN = ++xh;
                        //Lf.WPSN = Convert.ToInt32(Ps.XH);
                        Lf.OperationSN = Ps.SN;
                        Lf.OperationGroup = Ps.TeamYH != null ? Ps.TeamYH : string.Empty;
                        Lf.OperationCode = Ps.WorkSN;
                        Lf.OperationName = Ps.WorkName;
                        Lf.FAE = mtype == "PP" ? "PP" : Ps.FAE;
                        Lf.MCType = Ps.YCDM;
                        Lf.GSD_SAH = Ps.CWorkSN;
                        Lf.Rpm = Ps.YCSD;
                        Lf.mc = true;
                        Lf.JFlag = Ps.JFlag;
                        Lf.BestSAH = Ps.PJHSAHSN;
                        Lf.BestMTM = Ps.PJHMTM;
                        Lf.WorkforceNum = Ps.LDL;
                        Lf.Mtm_Suggest = Ps.PJHMTM;
                        Lf.Move = Ps.Move;
                        Lf.IsFloater = false;
                        CurWPM.Matchings.Add(Lf);
                    }

                    //string mtype = (this.ListForm as LB4PListFrm).OptionType;
                    // this.childList1.objListGridControl.DataSource = CurWPM.Matchings.Where(p => p.FAE == mtype);
                    this.childList1.BindingSource.DataSource = (this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE == mtype);
                }
                #endregion
            }
            else  // add by shulin 2022 - 02 - 10 (處理当Boo2中未做该QN工序时提示需要找IE部去处理)
            {
                //   if (this == null || this.J2_job == null || this.Woc == null || this.Rwo == null || this.Qn == null) return "";
                //return string.Format("{0}-{1}-{2}-{3}", this.J2_job.Trim(), this.Woc.Trim(), this.Rwo.Trim(), this.Qn.Trim());


                if (bindingSourceLB3.Count == 0)
                {
                    string Projecttxt = (bindingSourceLWPM.Current as DataRowView)["J_NO"].ToString().TrimEnd();
                    string Qntxt = (bindingSourceLWPM.Current as DataRowView)["J2_JOB"].ToString().TrimEnd() + "-" +
                                           (bindingSourceLWPM.Current as DataRowView)["CWO"].ToString().TrimEnd() + "-" +
                                           (bindingSourceLWPM.Current as DataRowView)["RWO"].ToString().TrimEnd() + "-" +
                                           (bindingSourceLWPM.Current as DataRowView)["FCCS"].ToString().TrimEnd();

                    string StrTxt = "The Project#: {0}, QN#: {1} not exists Operational information in LB(BOO2), Please contact IE Department !";
                    StrTxt = string.Format(StrTxt, Projecttxt, Qntxt);
                    MessageBox.Show(StrTxt, "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            ClosePopup();
            this.childList1.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
        }
        #region Select WF && MC
        private void SelectWF(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            var CurWP = this.BindingSource.Current as WPMaster;
            //WFFrm frm = new WFFrm(CurWP.Matchings);
            WFFrm frm = new WFFrm(CurWP.Matchings.Where(p => p.FAE == vtype));
            frm.Factory = CurWP.Factory;
            frm.LineCode = CurWP.LineCode;
            frm.IsPPWs = CurWP.Location.TrimEnd() == "PPW";
            frm.StartTime = Convert.ToDateTime(CurWP.StartTime != null ? CurWP.StartTime : null);
            frm.EndTime = Convert.ToDateTime(CurWP.EndTime != null ? CurWP.EndTime : null);
            frm.context = this.DataContext as RAPLQDataContext;
            frm.ShowDialog();

        }

        private void SelectMC(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var CurWP = this.BindingSource.Current as WPMaster;
            IEnumerable<Matching> MatchingList;
            if (vtype == "FAE")
            {
                MatchingList = CurWP.Matchings.Where(p => p.FAE == "F" || p.FAE == "A" || p.FAE == "E");
            }
            else
            {
                MatchingList = CurWP.Matchings.Where(p => p.FAE == vtype);
            }
            MCFrm frm = new MCFrm(this.DataContext as RAPLQDataContext, CurWP, MatchingList);

            // MCFrm frm = new MCFrm(CurWP.Matchings);
            //frm.Factory = CurWP.Factory;
            //frm.LineCode = CurWP.LineCode;
            //frm.CurrentWPMaster = CurWP;
            //frm.context = this.DataContext as RAPLQDataContext;

            frm.mctype = (this.childList1.BindingSource.Current as Matching).MCType != null ? (this.childList1.BindingSource.Current as Matching).MCType : string.Empty;
            frm.ShowDialog();
        }
        #endregion

        #region Copy WF && MC
        void CopyWFandMC(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var CurWP = this.BindingSource.Current as WPMaster;
            CopyWFMCFrm frm = new CopyWFMCFrm(CurWP.Matchings.Where(p => p.FAE == vtype));
            frm.Var_CustStyleCode = CurWP.CustStyleCode;
            frm.Var_PHStyleCode = CurWP.PHStyleCode;
            frm.Var_line = CurWP.LineCode;
            frm.Var_Version = Convert.ToInt32(CurWP.Version != null ? CurWP.Version : 0);
            frm.Context = this.DataContext as RAPLQDataContext;
            frm.ShowDialog();


        }
        #endregion
        void ClosePopup()
        {
            if (popupContainerControl1.OwnerEdit != null)
                popupContainerControl1.OwnerEdit.ClosePopup();
        }

        private void barBtnNormal_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            (this.BindingSource.Current as WPMaster).YNRunRpt = true;
            Report.MatchingRpt Rpt = new PH.LWPM.UI.LB4.Report.MatchingRpt(this.BindingSource.Current as WPMaster);
            Rpt.ShowPreviewDialog();

        }

        private void headerTitleBar_Paint(object sender, PaintEventArgs e)
        {

        }

        private void barBtnProof_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            (this.BindingSource.Current as WPMaster).YNRunRpt = true;
            Report.ProofRpt Rpt = new PH.LWPM.UI.LB4.Report.ProofRpt(this.BindingSource.Current as WPMaster);
            Rpt.ShowPreviewDialog();
        }

        private void barBtnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (LB3Version())
            {
                MessageBox.Show("LB3 Version have been changed!!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            WPMaster obj = this.BindingSource.Current as WPMaster;
            if (!(obj.ToBeConfirmedFlag ?? false))
            {
                MessageBox.Show("Resource deployment - WF is incomplete!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!(obj.ToBeConfirmedFlag_MC ?? false))
            {
                MessageBox.Show("Resource deployment - Workstation is incomplete!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (MessageBox.Show("Are you sure to confirm ?", "Ensure to confirm", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                isConfirmedCheckEdit.EditValue = true;
                confirmTimeDateEdit.EditValue = DateTime.Now;
                (this.BindingSource.Current as WPMaster).IsConfirmed = true;
                (this.BindingSource.Current as WPMaster).ConfirmTime = DateTime.Now;
                (this.BindingSource.Current as WPMaster).Confirmer = PH.Platform.Common.SysParamHelper.Instance.UserID;
                (this.DataContext as RAPLQDataContext).SubmitChanges(true);
            }
        }

        private void barBtnUnconfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if ((this.BindingSource.Current as WPMaster).PoolInfos.Where(P => P.IsConfirmed == true).Count() > 0)
            {
                if (MessageBox.Show("This CustStyleCode's QN have been confirmed in LB5,then you can't unconfirm it.", "LB5", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    return;
                }
            }


            if (MessageBox.Show("Are you sure to cancel confirm ?", "Ensure to confirm", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                isConfirmedCheckEdit.EditValue = false;
                confirmTimeDateEdit.EditValue = null;
                (this.BindingSource.Current as WPMaster).IsConfirmed = false;
                (this.BindingSource.Current as WPMaster).ConfirmTime = null;
                (this.BindingSource.Current as WPMaster).Confirmer = null;
                (this.BindingSource.Current as WPMaster).PoolInfos.Clear();
                (this.DataContext as RAPLQDataContext).SubmitChanges(true);
            }
        }
        private Boolean ValidationSaveCondition(string factory, string linecode, string jno, string j2job, string rwo, string qn, string bcolor)
        {
            if (factory.Trim() == string.Empty)
            {
                if (MessageBox.Show("Please select \"Factory\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }

            if (linecode.Trim() == string.Empty)
            {
                if (MessageBox.Show("Please select \"Line Code\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }
            if ((this.DataContext as RAPLQDataContext).WPMasters.Where(P => P.Factory == factory.Trim() && P.LineCode == linecode.Trim() && P.j_NO == jno.Trim() && P.J2_job == j2job && P.Rwo == rwo && P.Qn == qn && P.Bcolor == bcolor.Trim()).Count() > 0)
            {
                if (MessageBox.Show("The custyle' QN already exists,Save will be cancel!!!！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }
            if (zHTextEdit.Text.TrimEnd() == string.Empty)
            {
                if (MessageBox.Show("Please input \"Class\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }

            return false;
        }

        private void ControlState(Boolean En)
        {
            this.childList1.barBtnWF.Enabled = En;
            this.childList1.barBtnMC.Enabled = En;
            this.childList1.barBtnCopy.Enabled = En;


        }

        private void barBtngphProof_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var CurWPs = this.BindingSource.Current as WPMaster;
            var lb3master = (from l3 in DLQlb3Cnn.StyleMasters where l3.KHKH == CurWPs.CustStyleCode && l3.PHKH == CurWPs.PHStyleCode && l3.Edition == CurWPs.Version && l3.ZH == CurWPs.ZH select l3).FirstOrDefault();

            if (lb3master != null)
            {

                PH.MachineLayoutChart.Library Lib = new PH.MachineLayoutChart.Library(lb3master, CurWPs.Matchings.ToList(), Application.StartupPath);

                Lib.Factory = factoryComboBoxEdit.Text;
                Lib.Line = lineCodePopupContainerEdit.Text;
                Lib.QNBeginDate = Convert.ToDateTime((this.BindingSource.Current as WPMaster).StartTime);
                Lib.QNEndDate = Convert.ToDateTime((this.BindingSource.Current as WPMaster).EndTime);
                Lib.SideProgramID = "P0000166";
                Lib.FileID = "LBLayout000001";
                Lib.InvokePhase = "LB4";
                string currentLangID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
                if (currentLangID == "TW" || currentLangID == "CN")
                {
                    Lib.LangID = "TW";
                }
                else
                {
                    Lib.LangID = "EN";
                }
                Lib.DoOutput();
                System.Diagnostics.Process.Start(System.Windows.Forms.Application.StartupPath + "\\" + Lib.OutputVisioName);
                //System.Diagnostics.Process.Start(System.Windows.Forms.Application.StartupPath + "\\output.vsd");
            }
        }

        private void barBtngphNormal_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var CurWPs = this.BindingSource.Current as WPMaster;
            var lb3master = (from l3 in DLQlb3Cnn.StyleMasters where l3.KHKH == CurWPs.CustStyleCode && l3.PHKH == CurWPs.PHStyleCode && l3.Edition == CurWPs.Version && l3.ZH == CurWPs.ZH select l3).FirstOrDefault();
            if (lb3master != null)
            {
                //PH.MachineLayoutChart.Library Lib = new PH.MachineLayoutChart.Library(lb3master, GetLayGrpMatchingData(CurWPs.Matchings.ToList()), Application.StartupPath);                   
                PH.MachineLayoutChart.Library Lib = new PH.MachineLayoutChart.Library(lb3master, GetLayGrpMatchingData(CurWPs.Matchings.Where(p => p.FAE == "A").ToList()), Application.StartupPath);
                Lib.Factory = factoryComboBoxEdit.Text;
                Lib.Line = lineCodePopupContainerEdit.Text;
                //Lib.QNBeginDate = Convert.ToDateTime((this.BindingSource.Current as WPMaster).StartTime);
                //Lib.QNEndDate = Convert.ToDateTime((this.BindingSource.Current as WPMaster).EndTime);
                Lib.SideProgramID = "P0000166";
                Lib.FileID = "LBLayout000001";
                Lib.InvokePhase = "LB4";


                string currentLangID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
                if (currentLangID == "TW" || currentLangID == "CN")
                {
                    Lib.LangID = "TW";
                }
                else
                {
                    Lib.LangID = "EN";
                }

                //Lib.OutputVisioName 
                Lib.DoOutput();

                System.Diagnostics.Process.Start(System.Windows.Forms.Application.StartupPath + "\\" + Lib.OutputVisioName);


            }
        }
        List<Matching> GetLayGrpMatchingData(List<Matching> maching)
        {
            foreach (Matching mg in maching)
            {
                mg.addMachineId3 = string.Empty;
                mg.addRpm3 = string.Empty;
                mg.addworker3 = string.Empty;
                mg.addWorkStyle3 = string.Empty;


            }
            return maching;
        }

        private void BindingSource_CurrentChanged(object sender, EventArgs e)
        {
            var CurWPs = this.BindingSource.Current as WPMaster;

            var StyleMasterList = (from l3 in DLQlb3Cnn.StyleMasters where l3.KHKH == CurWPs.CustStyleCode && l3.PHKH == CurWPs.PHStyleCode && l3.Edition == CurWPs.Version && l3.ZH == CurWPs.ZH select l3).FirstOrDefault();

            if (StyleMasterList != null)
            {
                StyleMasterList.CalSummary();
                totalSAHSpinEdit.Text = Convert.ToString(StyleMasterList.Sum_JSCSAH);
                lBPercentTextEdit.Text = StyleMasterList.JSCLPHS.ToString();
                //lBPercentTextEdit.Text = (StyleMasterList.JSCLPHS / 100).ToString("0.00");
            }
        }

        private void lineCodePopupContainerEdit_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void c_btn_Cancel_Click(object sender, EventArgs e)
        {
            ClosePopup();
        }


        private void lineCodeComboBoxEdit_Closed(object sender, DevExpress.XtraEditors.Controls.ClosedEventArgs e)
        {
            bindingSourceLWPM.DataSource = DBAccess.GetInterBaseTable(string.Format("SELECT PLINE,j_no ,J2_JOB,RWO,CSTYLE,ACOL,SCQTY,ARTNO,CFKSJS,CKJS,CFKSRQ,CFWCRQ,FCCS,SEQ,TSHOP,CWO FROM TBLSHEDULE WHERE (TPLANT =''{0}'') AND (PLINE=''{1}'')  AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ORDER BY CFKSRQ", factoryComboBoxEdit.Text.TrimEnd(), lineCodeComboBoxEdit.Text.TrimEnd()));
            lineCodePopupContainerEdit.ShowPopup();
            this.gridView1.BestFitColumns();
        }

        private void startTimeDateEdit_EditValueChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(startTimeDateEdit.Text.Trim()) && !string.IsNullOrEmpty(endTimeDateEdit.Text.Trim()))
            {
                startTimeDateEdit.BackColor = Convert.ToDateTime(startTimeDateEdit.Text) > Convert.ToDateTime(endTimeDateEdit.Text) ? Color.Red : System.Drawing.Color.WhiteSmoke;
            }
        }

        private void barBtnSave_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }

        private void barButtonLBSAH_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Report.LBSAHReport RPT = new PH.LWPM.UI.LB4.Report.LBSAHReport(this.DataContext as RAPLQDataContext, this.BindingSource.Current as WPMaster);
            RPT.ShowPreviewDialog();
        }



        private void CalHeadCount(Matching mc)
        {

            // var _datalist = (IEnumerable<Matching>)this.childList1.BindingSource.DataSource;



            IEnumerable<Matching> _datalist = (this.BindingSource.Current as WPMaster).Matchings.Where(p => p.FAE == vtype).OrderBy(p => p.WorkerId);
            var query = (from c in _datalist
                         orderby c.JWorkSN descending
                         where c.Mtm_Suggest.GetValueOrDefault() == (decimal)100.0
                         select c).FirstOrDefault();

            if (query != null && query.Mtm_Suggest.GetValueOrDefault() > 0 && mc.Mtm_Suggest.GetValueOrDefault() > 0)
            {
                //int _icount = _datalist.Where(p => p.WorkerId == query.WorkerId).Count(); //此人所做工序數
                decimal _hc = (mc.GSD_SAH.GetValueOrDefault() * query.Mtm_Suggest.GetValueOrDefault()) / (mc.Mtm_Suggest.GetValueOrDefault() * query.JWorkSN.GetValueOrDefault());
                mc.HeadCount = decimal.Round(_hc, 2);
            }

        }

        private void factoryComboBoxEdit_SelectedValueChanged(object sender, EventArgs e)
        {
            lineCodeComboBoxEdit.Properties.Items.Clear();
            string fac = this.factoryComboBoxEdit.Text.Trim();
            DataTable linetb = DBAccess.GetInterBaseTable(string.Format("SELECT distinct PLINE FROM TBLSHEDULE WHERE (TPLANT =''{0}'')  AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ", fac));
            lineCodeComboBoxEdit.Properties.Items.AddRange(linetb.AsEnumerable().Select(P => P.Field<string>("PLINE")).ToArray());
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            TestForm1 frm = new TestForm1();
            frm.ShowDialog();
        }

    }
}
