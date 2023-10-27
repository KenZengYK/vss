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
using PH.Platform.BO;
using DevExpress.XtraBars;
using System.Data.Linq;
using System.Data.Linq.SqlClient;

namespace PH.LWPM.UI.LB5
{
    public partial class LB5ChildFrmN : ParentChildForm
    {


        string vtype = "";
        Dictionary<string, decimal> Dict_Seq = new Dictionary<string, decimal>();
        decimal _Cur_Sah_Max = 0;
        PoolInfo CurPoolInfo = null;
        public List<Lb5Matching> mclist = new List<Lb5Matching>();

        public LB5ChildFrmN()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            string mtype = (this.FirstForm as LB5PListFrm).OptionType;
            vtype = mtype;
            IEnumerable<Lb5Matching> matchins;
            IEnumerable<Lb5Matching> matchins1;

            if (mtype == "FAE")
                matchins = (this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE == "F" || p.FAE == "A" || p.FAE == "E").OrderBy(p => p.WorkerId);
            else
                matchins = (this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.WorkerId);

            //if (mtype == "F")
            //    //this.childListY1.BindingSource.DataSource = (this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE!= "A" && p.FAE != "E");
            //    matchins = (this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE != "A" && p.FAE != "E").OrderBy(p => p.WorkerId);
            //else
            //    //this.childListY1.BindingSource.DataSource = (this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE == mtype);
            //    matchins = (this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.WorkerId);

            //this.childListY1.BindingSource.DataSource = (this.BindingSource.Current as PoolInfo).Lb5Matchings;
            CurPoolInfo = this.BindingSource.Current as PoolInfo;
            this.childListY1.RowChangeAutoSave = false;
            //this.childListY1.AllowGridEdit = true;

            //計算head count
            string _curid = "";
            int m = 0;
            decimal? mergetotal = 0;
            Lb5Matching prematching = null; //上一個Matching
            decimal _sah_total = 0;

            foreach (Lb5Matching mc in matchins)
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

                }
                else if (_curid != "" && _curid == prematching.WorkerId)
                {
                    //  _curid = mc.WorkerId;
                    mc.HeadCount = 0; m++;
                    mergetotal += mc.GSD_SAH.GetValueOrDefault();
                    prematching = mc;
                }
                else if (_curid != "" && _curid != prematching.WorkerId)
                {
                    // _curid = mc.WorkerId; 
                    if (m > 1)
                    {
                        prematching.JWorkSN = mergetotal;
                        if (!string.IsNullOrEmpty(prematching.WorkerId))
                            Dict_Seq.Add(prematching.WorkerId, mergetotal.GetValueOrDefault());
                    }
                    else
                    {
                        prematching.CWorkSN = 0;
                        prematching.JWorkSN = 0;
                        if (!string.IsNullOrEmpty(prematching.WorkerId))
                            Dict_Seq.Add(prematching.WorkerId, prematching.GSD_SAH.GetValueOrDefault());
                    }


                    if (!mc.IsFloater.GetValueOrDefault())
                        mc.HeadCount = 1;
                    else
                        CalHeadCount(mc);
                    //  _workerid = mc.WorkerId;
                    m = 1;
                    prematching = mc;
                    mergetotal = mc.GSD_SAH.GetValueOrDefault();
                }

                mclist.Add(mc);

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
                }


                //計算并更新BN Seq
                List<KeyValuePair<string, decimal>> lstorder = Dict_Seq.OrderByDescending(p => p.Value).ToList();
                int i = 0;
                decimal beforevalue = 0;
                decimal _sah_max = 0;
                foreach (KeyValuePair<string, decimal> item in lstorder)
                {
                    IEnumerable<Lb5Matching> matchings = matchins.Where(p => p.WorkerId == item.Key);
                    if (i == 0)
                    {
                        _sah_max = item.Value;
                        _Cur_Sah_Max = item.Value;
                    }
                    if (beforevalue != item.Value)
                        i++;


                    string seqno = "BN" + i.ToString();
                    beforevalue = item.Value;
                    foreach (Lb5Matching mc in matchings)
                    {
                        mc.JWorkSN = item.Value;
                        mc.BN_Seq = seqno;
                    }

                }

                decimal per = _sah_max * Dict_Seq.Count == 0 ? 0 : decimal.Round((_sah_total * 100) / (_sah_max * Dict_Seq.Count), 2);
                edtLB5_Per.Text = per.ToString();

                //計算Workstation Count
                string _mcid = "", _curmcid = "";
                int m1 = 0;
                decimal _total_sah_lb5 = 0;
                Lb5Matching _prematching = null; //上一個Matching
                // IEnumerable<Lb5Matching> matchins1 = (this.BindingSource.Current as PoolInfo).Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.MachineId);

                if (mtype == "F")
                    matchins1 = (this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE != "A" && p.FAE != "E").OrderBy(p => p.MachineId);
                else
                    matchins1 = (this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE == mtype).OrderBy(p => p.MachineId);

                foreach (Lb5Matching mc in matchins1)
                {

                    _total_sah_lb5 += mc.Sugg_SAH;
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

                this.edtTotalSah.Text = _total_sah_lb5.ToString();
            }

            this.childListY1.BindingSource.DataSource = matchins.OrderBy(p => QNHelper.GetFAESort(p.FAE)).ThenBy(p => p.WPSN);
            this.childListY1.OptionType = this.vtype;

            string[] OptionTypes = new string[] { "P", "B", "F", "A", "E" };
            LB5PListFrm frmLB5PList = this.ListForm.PrevForm as LB5PListFrm;
            if (frmLB5PList == null) return;

            this.childListY1.barBtnWF.Visibility = (OptionTypes.Contains(frmLB5PList.OptionType) && frmLB5PList.MCParam == "WF") ? BarItemVisibility.Always : BarItemVisibility.Never;
            this.childListY1.barBtnMC.Visibility = frmLB5PList.MCParam == "MC" ? BarItemVisibility.Always : BarItemVisibility.Never;


            this.childListY1.barBtnWF.Enabled = false;
            this.childListY1.barBtnMC.Enabled = false;
            this.childListY1.barBtnCopy.Enabled = false;
            base.DataBind();

            RAPLQDataContext db = this.DataContext as RAPLQDataContext;
            this.cbReason.Properties.Items.AddRange(db.PoolInfoReasons.OrderBy(p => p.ID).Select(p => p.Reason).ToArray());
        }



        private void ReCaculateLB()
        {

            if (CurPoolInfo == null)
                return;

            IEnumerable<Lb5Matching> matchins = CurPoolInfo.Lb5Matchings;
            decimal _sah_total = 0;
            decimal _total_sah_lb5 = 0;
            int _idx = 1;
            foreach (Lb5Matching mc in matchins)
            {
                _sah_total += mc.GSD_SAH.GetValueOrDefault();
                _total_sah_lb5 += mc.Sugg_SAH;
                if (mc.WKStaitonCount > 0)
                {
                    // mc.WKStaitonSeq = _idx;
                    _idx++;
                }
            }

            //decimal per = _sah_max * Dict_Seq.Count == 0 ? 0 : decimal.Round((_sah_total * 100) / (_sah_max * Dict_Seq.Count), 2);
            decimal per = _Cur_Sah_Max * Dict_Seq.Count == 0 ? 0 : decimal.Round((_sah_total * 100) / (_Cur_Sah_Max * Dict_Seq.Count), 2);
            edtLB5_Per.Text = per.ToString();
            edtTotalSah.Text = _total_sah_lb5.ToString();


        }

        protected override void OnClickSave()
        {
            UPD_OPSkill();
            this.ReCaculateLB();
            this.childListY1.objListGridControl.RefreshDataSource();
            base.OnClickSave();

        }
        protected override void OnClickSaveAndReturn()
        {
            UPD_OPSkill();
            this.ReCaculateLB();
            base.OnClickSaveAndReturn();

        }

        protected override void OnClickEdit()
        {
            base.OnClickEdit();
            ClsRight.GetUserRight(this.MenuID, "AttachWF", this.childListY1.barBtnWF);
            ClsRight.GetUserRight(this.MenuID, "AttachMC", this.childListY1.barBtnMC);

            if (this.IsEditting)
            {
                //this.childListY1.barBtnSave.Visibility = BarItemVisibility.Always;
                this.childListY1.RowChangeAutoSave = false;
                this.childListY1.AllowGridEdit = true;
                childListY1.AllowAddRow = false;
            }

        }
        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            this.childListY1.barBtnWF.Enabled = false;
            this.childListY1.barBtnMC.Enabled = false;
        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            factoryTextEdit.Properties.ReadOnly = true;
            lineCodePopupContainerEdit.Properties.ReadOnly = true;
            startTimeDateEdit.Properties.ReadOnly = true;

            endTimeDateEdit.Properties.ReadOnly = true;

            pHStyleCodeTextEdit.Properties.ReadOnly = true;
            custStyleCodeTextEdit.Properties.ReadOnly = true;
            versionSpinEdit.Properties.ReadOnly = true;
            bcolorTextEdit.Properties.ReadOnly = true;
            j_NOTextEdit.Properties.ReadOnly = true;
            j2_jobTextEdit.Properties.ReadOnly = true;
            wocTextEdit.Properties.ReadOnly = true;
            rwoTextEdit.Properties.ReadOnly = true;
            qnTextEdit.Properties.ReadOnly = true;
            isConfirmedCheckEdit.Properties.ReadOnly = true;
            confirmTimeDateEdit.Properties.ReadOnly = true;
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID == "sean")
            {
                isConfirmedCheckEdit.Properties.ReadOnly = false;
                confirmTimeDateEdit.Properties.ReadOnly = false;
            }

        }


        string GetSeqNo(PH.LWPM.BO.WorkForce curWF)
        {
            DepartalSort depsort = (this.DataContext as RAPLQDataContext).DepartalSorts.Where(p => p.Deptmental_EN == curWF.DeptName && p.Section_EN == curWF.WFWhere &&
                p.Team_EN == curWF.WFWhere_1 && p.Class_EN == curWF.WFWhere_2).FirstOrDefault();
            string seqno = string.Empty;
            if (depsort != null)
                seqno = depsort.SeqNo;
            return seqno;
        }

        private void barBtnconfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (MessageBox.Show("Are you sure to confirm ?", "Ensure to confirm", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                (this.BindingSource.Current as PoolInfo).IsConfirmed = true;
                (this.BindingSource.Current as PoolInfo).ConfirmTime = DateTime.Now;
                var CurWP = this.BindingSource.Current as PoolInfo;
                string LineCode = CurWP.LineCode;
                string factory = CurWP.Factory;
                var LB5 = (this.BindingSource.Current as PoolInfo).Lb5Matchings;
                foreach (Lb5Matching lb in LB5)
                {
                    var work = (this.DataContext as RAPLQDataContext).WorkForces.Where(P => P.Id == lb.WorkerId && P.Factory == factory);
                    foreach (PH.LWPM.BO.WorkForce wk in work)
                    {
                        wk.LineCode = LineCode;

                        //if (wk.WFWhere.Contains("Assembly"))
                        //{
                        //13/12/20 remark
                        //wk.WFWhere_1 = LineCode;
                        //wk.WFWhere_1Cn = LineCode;

                        //}

                        //int Sub_idcount = (from p in (this.DataContext as RAPLQDataContext).LineCodes
                        //                   where p.LineCodeName == LineCode
                        //                   select p).Count();
                        // int Sub_id = (this.DataContext as RAPLQDataContext).LineCodes.Where(p => p.LineCodeName == LineCode).Select(p => p.Sub_Id).FirstOrDefault();                        
                        //if (Sub_idcount > 0)
                        //{
                        //var q=  (from p in (this.DataContext as RAPLQDataContext).Sub_Sections
                        //        where p.Sub_Id==Sub_id select  p).Single();
                        //wk.Sub_Section_FAE = q.NameEn;
                        //wk.Sub_Section_FAECn = q.NameCn;
                        //wk.Co_Team = q.LinkageNameEn;
                        //wk.Co_TeamCn = q.LinkageNameCn;
                        //}

                        wk.SeqNo = GetSeqNo(wk);
                    }
                    var Mach = (this.DataContext as RAPLQDataContext).Machines.Where(P => P.Id == lb.MachineId && P.Factory == factory);
                    foreach (Machine mc in Mach)
                    {
                        // mc.oldLine = mc.Line;
                        mc.UpdateTime = DateTime.Now;
                        mc.Line = LineCode;
                        //mc.TeamEn = LineCode;
                        //mc.TeamCn = LineCode;
                    }
                }
                (this.DataContext as RAPLQDataContext).SubmitChanges();

            }


        }

        private void barBtnUnconfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to cancel confirm ?", "Ensure to confirm", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                (this.BindingSource.Current as PoolInfo).IsConfirmed = false;
                (this.BindingSource.Current as PoolInfo).ConfirmTime = null;
                (this.DataContext as RAPLQDataContext).SubmitChanges();
            }
        }
        #region Select WF && MC
        private void SelectWF(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var CurWP = this.BindingSource.Current as PoolInfo;
            //WFFrm frm = new WFFrm(CurWP.Lb5Matchings);
            WFFrm frm = new WFFrm(CurWP.Lb5Matchings.Where(p => p.FAE == vtype));
            frm.Factory = CurWP.Factory;
            frm.LineCode = CurWP.LineCode;
            frm.StartTime = Convert.ToDateTime(CurWP.StartTime != null ? CurWP.StartTime : null);
            frm.EndTime = Convert.ToDateTime(CurWP.EndTime != null ? CurWP.EndTime : null);
            frm.CurTime = CurWP.Date;
            frm.TimeRange = CurWP.OTN;
            frm.context = this.DataContext as RAPLQDataContext;
            //frm.ShowDialog();

            if (frm.ShowDialog() == DialogResult.Cancel)  //由David加入2019-01-08
            {
                //取消選人時回刷LB5 QN工序表
                RAPLQDataContext db = this.DataContext as RAPLQDataContext;
                PoolInfo poolInfo = this.BindingSource.Current as PoolInfo;
                (this.DataContext as RAPLQDataContext).Refresh(RefreshMode.OverwriteCurrentValues, poolInfo.Lb5Matchings);
                this.childListY1.BindingSource.ResetBindings(false);

                //清除選人界面上預插入的日誌
                IEnumerable<object> WaitInsertList = db.GetChangeSet().Inserts.Where(p => p.GetType() == typeof(LB5MatchingLog));
                foreach (var obj in WaitInsertList)
                {
                    if ((obj as LB5MatchingLog).LogType == "WF")
                    {
                        db.LB5MatchingLogs.DeleteOnSubmit(obj as LB5MatchingLog);
                    }
                }
            }

        }

        private void SelectMC(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var CurWP = this.BindingSource.Current as PoolInfo;
            //MCFrm frm = new MCFrm(CurWP.Lb5Matchings);
            IEnumerable<Lb5Matching> LB5MatchingList;
            if (vtype == "FAE")
            {
                LB5MatchingList = CurWP.Lb5Matchings.Where(p => p.FAE == "F" || p.FAE == "A" || p.FAE == "E");
            }
            else
            {
                LB5MatchingList = CurWP.Lb5Matchings.Where(p => p.FAE == vtype);
            }
            MCFrm frm = new MCFrm(this.DataContext as RAPLQDataContext, CurWP.WPMaster, LB5MatchingList);
            //frm.CurrentWPMaster = CurWP.WPMaster;
            //frm.Factory = CurWP.Factory;
            //frm.LineCode = CurWP.LineCode;
            //frm.context = this.DataContext as RAPLQDataContext;
            frm.mctype = (this.childListY1.BindingSource.Current as Lb5Matching).MCType != null ? (this.childListY1.BindingSource.Current as Lb5Matching).MCType : string.Empty;

            //frm.ShowDialog();
            RAPLQDataContext db = this.DataContext as RAPLQDataContext;
            PoolInfo poolInfo = this.BindingSource.Current as PoolInfo;

            DialogResult result = frm.ShowDialog();
            if (result == DialogResult.Cancel)  //由David加入2019-02-18
            {
                //取消選人時回刷LB5 QN工序表
                //RAPLQDataContext db = this.DataContext as RAPLQDataContext;
                //PoolInfo poolInfo = this.BindingSource.Current as PoolInfo;
                (this.DataContext as RAPLQDataContext).Refresh(RefreshMode.OverwriteCurrentValues, poolInfo.Lb5Matchings);
                this.childListY1.BindingSource.ResetBindings(false);

                //清除選人界面上預插入的日誌
                IEnumerable<object> WaitInsertList = db.GetChangeSet().Inserts.Where(p => p.GetType() == typeof(LB5MatchingLog));
                foreach (var obj in WaitInsertList)
                {
                    if ((obj as LB5MatchingLog).LogType == "HW")
                    {
                        db.LB5MatchingLogs.DeleteOnSubmit(obj as LB5MatchingLog);
                    }
                }
            }
            else if (result == DialogResult.OK)
            {
                //將QN在Step 5中使用的衣車在哪條Line的信息更新到Machine表中
                db.sp_UpdateLB5MachineWhereToMachineInfo(poolInfo.Factory, poolInfo.LineCode, poolInfo.j_NO, poolInfo.J2_job, 
                    poolInfo.Rwo, poolInfo.Qn, poolInfo.Bcolor, poolInfo.Date, poolInfo.OTN);
            }
        }
        #endregion

        private void ChildFrmN_Load(object sender, EventArgs e)
        {
            this.childListY1.barBtnWF.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.SelectWF);
            this.childListY1.barBtnMC.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.SelectMC);


        }

        string MachineDes(string machineid)
        {
            var MCLst = (this.DataContext as RAPLQDataContext).Machines.Where(P => P.Id == machineid).Select(S => S.Name).FirstOrDefault();
            if (MCLst != null)
            {
                return MCLst.TrimEnd();
            }
            return string.Empty;
        }
        void UPD_OPSkill()
        {

            string mfac = CurPoolInfo.LineCode.Substring(0, 4) == "PPWS" ? "SL (Sales)" : factoryTextEdit.Text;

            foreach (Lb5Matching mg in this.childListY1.BindingSource)
            {
                if (mg.WorkerId != null)
                {
                    if (mg.WorkerId.TrimEnd() != string.Empty)
                    {
                        if (!ExistsOperation(mg.Factory, mg.WorkerId, mg.OperationCode.TrimEnd()))
                        {
                            OpSkill os = new OpSkill();
                            os.Factory = mfac; // factoryTextEdit.Text;
                            os.Id = mg.WorkerId;
                            os.Guid = Guid.NewGuid();
                            os.ThisOp_Code = mg.OperationCode;
                            os.ThisOp_Name = mg.OperationName;
                            if (!string.IsNullOrEmpty(mg.MachineId))
                            {
                                if (mg.MachineId.TrimEnd().IndexOf("NA") < 0)
                                {
                                    os.ThisPartialStyle_Code = mg.MachineId.TrimEnd();
                                    os.ThisPartialStyle_Name = MachineDes(mg.MachineId.TrimEnd());
                                }
                            }
                            //  (this.DataContext as RAPLQDataContext).OpSkills.Attach(os);
                            (this.DataContext as RAPLQDataContext).OpSkills.InsertOnSubmit(os);

                        }
                    }

                }
                if (mg.addworkerId1 != null)
                {
                    if (mg.addworkerId1.Trim() != string.Empty)
                    {
                        if (!ExistsOperation(mg.Factory, mg.addworkerId1, mg.OperationCode.TrimEnd()))
                        {
                            OpSkill os = new OpSkill();
                            os.Factory = mfac;  // factoryTextEdit.Text;
                            os.Id = mg.addworkerId1;
                            os.Guid = Guid.NewGuid();
                            os.ThisOp_Code = mg.OperationCode;
                            os.ThisOp_Name = mg.OperationName;
                            if (!string.IsNullOrEmpty(mg.addMachineId1))
                            {
                                if (mg.addMachineId1.TrimEnd().IndexOf("NA") < 0)
                                {
                                    os.ThisPartialStyle_Code = mg.addMachineId1.TrimEnd();
                                    os.ThisPartialStyle_Name = MachineDes(mg.addMachineId1.TrimEnd());
                                }
                            }

                            (this.DataContext as RAPLQDataContext).OpSkills.InsertOnSubmit(os);
                        }
                    }

                }
                if (mg.addworkerId2 != null)
                {
                    if (mg.addworkerId2.Trim() != string.Empty)
                    {
                        if (!ExistsOperation(mg.Factory, mg.addworkerId2, mg.OperationCode.TrimEnd()))
                        {
                            OpSkill os = new OpSkill();
                            os.Factory = mfac;// factoryTextEdit.Text;
                            os.Id = mg.addworkerId2;
                            os.Guid = Guid.NewGuid();
                            os.ThisOp_Code = mg.OperationCode;
                            os.ThisOp_Name = mg.OperationName;
                            if (!string.IsNullOrEmpty(mg.addMachineId2))
                            {
                                if (mg.addMachineId2.TrimEnd().IndexOf("NA") < 0)
                                {
                                    os.ThisPartialStyle_Code = mg.addMachineId2.TrimEnd();
                                    os.ThisPartialStyle_Name = MachineDes(mg.addMachineId2.TrimEnd());
                                }
                            }

                            (this.DataContext as RAPLQDataContext).OpSkills.InsertOnSubmit(os);
                        }
                    }
                }

                //if (ValidationSaveCondition(mg.LineCode, mg.WorkerId, mg.addworkerId1, mg.addworkerId2, mg.addworkerId3, mg.MachineId,mg.addMachineId1,mg.addMachineId2,mg.addMachineId3)) return;

                //(this.DataContext as RAPLQDataContext).LB5_UPD_WFMcSTATE(mg.LineCode, "", mg.WorkerId, mg.addworkerId1, mg.addworkerId2, mg.addworkerId3, mg.MachineId, mg.addMachineId1, mg.addMachineId2, mg.addMachineId3);


            }

        }

        //private Boolean ValidationSaveCondition(string LineCode, string WorkerId, string addworkerId1, string addworkerId2, string addworkerId3, string MachineId, string addMachineId1, string addMachineId2, string addMachineId3)
        //{
        //    if (LineCode.Trim() == string.Empty)
        //    {
        //        if (MessageBox.Show("Please select \"LineCode\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
        //        {
        //            return true;
        //        }
        //    }

        //    if (WorkerId.Trim() == string.Empty)
        //    {
        //        if (MessageBox.Show("Please select \"WorkerId\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
        //        {
        //            return true;
        //        }
        //    }
        //    if (addworkerId1.TrimEnd() == string.Empty)
        //    {
        //        if (MessageBox.Show("Please input \"addworkerId1\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
        //        {
        //            return true;
        //        }
        //    }

        //    return false;
        //}
        Boolean ExistsOperation(string factory, string workerid, string operationcode)
        {
            var WFs = (this.DataContext as RAPLQDataContext).WorkForces.Where(P => P.Id == workerid.TrimEnd()).Count();
            if (WFs == 0)
            {
                return true;
            }
            var OPs = (this.DataContext as RAPLQDataContext).OpSkills.Where(P => P.Factory == factory && P.Id == workerid && P.ThisOp_Code == operationcode).Count();
            return OPs > 0 ? true : false;
        }

        private void barBtnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var CurPoolInfo = this.BindingSource.Current as PoolInfo;
            CurPoolInfo.YNRunRpt = true;
            Report.MatchingRpt Rpt = new PH.LWPM.UI.LB5.Report.MatchingRpt(CurPoolInfo);
            Rpt.ShowPreviewDialog();
        }

        private void barBtnGraph_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var CurWPs = (this.BindingSource.Current as PoolInfo).WPMaster;
            var lb3master = (ContextBuilder.CreateContext<PH.LineBalanceII.BO.LineBalanceIIDataContext>()).StyleMasters.Where(P => P.KHKH == CurWPs.CustStyleCode && P.PHKH == CurWPs.PHStyleCode && P.Edition == CurWPs.Version && P.ZH == CurWPs.ZH).FirstOrDefault();

            if (lb3master != null)
            {
                //PH.MachineLayoutChart.Library Lib = new PH.MachineLayoutChart.Library(lb3master, CloneLB4((this.BindingSource.Current as PoolInfo).Lb5Matchings.ToList()), Application.StartupPath); 
                PH.MachineLayoutChart.Library Lib = new PH.MachineLayoutChart.Library(lb3master, CloneLB4((this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE == "A").ToList()), Application.StartupPath);
                Lib.Factory = CurWPs.Factory.Trim();
                Lib.Line = CurWPs.LineCode.Trim();
                Lib.InvokePhase = "LB4";
                Lib.SideProgramID = "P0000166";
                Lib.FileID = "LBLayout000001";
                // Lib.SelfDefineMsg.Add("HDInvokePhase", "LB5");
                string currentLangID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
                if (currentLangID == "TW" || currentLangID == "CN")
                {
                    Lib.LangID = "TW";
                }
                else
                {
                    Lib.LangID = "EN";
                }
                Lib.QNBeginDate = Convert.ToDateTime(CurWPs.StartTime);
                Lib.QNEndDate = Convert.ToDateTime(CurWPs.EndTime);
                Lib.DoOutput();
                System.Diagnostics.Process.Start(System.Windows.Forms.Application.StartupPath + "\\" + Lib.OutputVisioName);
                //System.Diagnostics.Process.Start(System.Windows.Forms.Application.StartupPath + "\\output.vsd");
            }

        }

        private List<Matching> CloneLB4(List<Lb5Matching> LB5Data)
        {
            List<Matching> LB4Data = new List<Matching>();
            foreach (Lb5Matching lb in LB5Data)
            {
                Matching ming = new Matching();
                ming.Factory = lb.Factory;
                ming.LineCode = lb.LineCode;
                ming.j_NO = lb.j_NO;
                ming.J2_job = lb.J2_job;
                ming.Rwo = lb.Rwo;
                ming.Qn = lb.Qn;
                ming.Date = lb.Date;
                ming.OTN = lb.OTN;
                ming.WPSN = lb.WPSN;
                ming.OperationSN = lb.OperationSN;
                ming.OperationGroup = lb.OperationGroup;
                ming.OperationCode = lb.OperationCode;
                ming.OperationName = lb.OperationName;
                ming.FAE = lb.FAE;

                ming.MCType = lb.MCType;
                ming.GSD_SAH = lb.GSD_SAH;
                ming.BestSAH = lb.BestSAH;
                ming.BestMTM = lb.BestMTM;
                ming.WorkforceNum = lb.WorkforceNum;
                ming.Rpm = lb.Rpm;
                ming.WorkerName = lb.WorkerName;
                ming.WorkerId = lb.WorkerId;
                ming.WorkStyle = lb.WorkStyle;
                ming.MachineId = lb.MachineId;
                ming.addworker1 = lb.addworker1;
                ming.addworkerId1 = lb.addworkerId1;
                ming.addWorkStyle1 = lb.addWorkStyle1;
                ming.addMachineId1 = lb.addMachineId1;
                ming.addworker2 = lb.addworker2;
                ming.addworkerId2 = lb.addworkerId2;
                ming.addWorkStyle2 = lb.addWorkStyle2;
                ming.addMachineId2 = lb.addMachineId2;
                ming.addworker3 = lb.addworker3;
                ming.addworkerId3 = lb.addworkerId3;
                ming.addWorkStyle3 = lb.addWorkStyle3;
                ming.addMachineId3 = lb.addMachineId3;
                ming.Rpm0 = lb.Rpm0;
                ming.addRpm1 = lb.addRpm1;
                ming.addRpm2 = lb.addRpm2;
                ming.addRpm3 = lb.addRpm3;
                ming.Bcolor = lb.Bcolor;
                ming.mc = lb.mc;
                ming.JFlag = lb.JFlag;
                LB4Data.Add(ming);

            }
            return LB4Data;

        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();

            ClsRight.GetUserRight(this.MenuID, "Confirm", barBtnConfirm);
            ClsRight.GetUserRight(this.MenuID, "Unconfirm", barBtnUnconfirm);
        }

        private void CalHeadCount(Lb5Matching mc)
        {


            IEnumerable<Lb5Matching> _datalist;
            if (vtype == "F")
                _datalist = (this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE != "A" && p.FAE != "E").OrderBy(p => p.WorkerId);
            else
                _datalist = (this.BindingSource.Current as PoolInfo).Lb5Matchings.Where(p => p.FAE == vtype).OrderBy(p => p.WorkerId);


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

    }
}
