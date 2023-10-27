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
using System.Threading;
using PH.LWPM.BO;
using System.Collections;
using System.Data.Linq;
namespace PH.LWPM.UI.LB5
{

    public partial class WFFrm : DevExpress.XtraEditors.XtraForm
    {
        public string Factory { get; set; }
        public string LineCode { get; set; }

        public RAPLQDataContext context { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public DateTime CurTime { get; set; }
        public string TimeRange { get; set; }

        private IEnumerable<Lb5Matching> mching;
        private IEnumerable<PH.LWPM.BO.WorkForce> WFs;

        private Hashtable SaveOperationWF = new Hashtable();
        private Hashtable SaveOperationAddWF1 = new Hashtable();
        private Hashtable SaveOperationAddWF2 = new Hashtable();



        private IRepository.IPublicLibrary publicLibary;

        public WFFrm()
        {
            InitializeComponent();
            this.publicLibary = new Repository.PublicLibrary();

        }

        public WFFrm(IEnumerable<Lb5Matching> mchings)
        {
            InitializeComponent();
            this.mching = mchings;
            this.ConditionsAdjustment();
            this.publicLibary = new Repository.PublicLibrary();

            var WFList = this.mching.Select(p => new { p.WPSN, p.WorkerId }).Distinct();
            foreach (var obj in WFList)
            {
                this.SaveOperationWF.Add(obj.WPSN, obj.WorkerId == null ? "" : obj.WorkerId);
            }

            var AddWF1List = this.mching.Select(p => new { p.WPSN, p.addworkerId1 }).Distinct();
            foreach (var obj in AddWF1List)
            {
                this.SaveOperationAddWF1.Add(obj.WPSN, obj.addworkerId1 == null ? "" : obj.addworkerId1);
            }


            var AddWF2List = this.mching.Select(p => new { p.WPSN, p.addworkerId2 }).Distinct();
            foreach (var obj in AddWF2List)
            {
                this.SaveOperationAddWF2.Add(obj.WPSN, obj.addworkerId2 == null ? "" : obj.addworkerId2);
            }

        }
        private void ConditionsAdjustment()
        {
            StyleFormatCondition cn;
            cn = new StyleFormatCondition(FormatConditionEnum.Equal, gridView1.Columns["LB4YNSel"], null, true);
            cn.Appearance.BackColor = Color.Red;
            cn.ApplyToRow = true;
            gridView1.FormatConditions.Add(cn);
            cn = new StyleFormatCondition(FormatConditionEnum.Equal, gridView1.Columns["Locked"], null, true);
            cn.Appearance.BackColor = Color.Gray;
            cn.ApplyToRow = true;
            gridView1.FormatConditions.Add(cn);
            cn = new StyleFormatCondition(FormatConditionEnum.Equal, gridView1.Columns["Resered"], null, true);
            cn.Appearance.BackColor = Color.Gray;
            cn.ApplyToRow = true;
            gridView1.FormatConditions.Add(cn);
        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);

        }

        void ProFrm()
        {
            ProcessFrm frm = new ProcessFrm();
            frm.ShowDialog();
        }
        private void WFFrm_Load(object sender, EventArgs e)
        {

            Thread t = new Thread(new ThreadStart(ProFrm));
            t.Start();
            try
            {
                context.CommandTimeout = 300;

                //Get Line所在組
                string team = "", loc = "";

                if (LineCode.Substring(0, 4) != "PPWS")

                /*
                WFs =
              (from wf in context.WorkForces
               where ((wf.WorkerType == "Stationed" && wf.LineCode == LineCode) || (wf.WorkerType == "Floating"
                   || wf.WorkerType == "Mobile"
                   || wf.WorkerType == "Mobile 1" ||
                   wf.WorkerType == "Mobile 2" || wf.WorkerType == "Floater" || wf.WorkerType == "Specific WF" || wf.WorkerType == "Stationed WF" ||
                   wf.WorkerType == "Mobile WF" || wf.WorkerType == "Floating WF" || wf.WorkerType == "Floater WF")) && wf.Factory == Factory &&
                   wf.JobTitleEn != "1.4 Line Leader" && (wf.LongLeave == false || wf.LongLeave == null) &&
                  // (wf.InActive == false || wf.InActive == null) &&
                     !wf.MTM.GetValueOrDefault() && //remark at 9/12 updated as below
                     !wf.InActive.GetValueOrDefault()&&

                     wf.ApprovalExitByDept == null  //modify at 16/9/12
               select wf
               ).Union(

                    from wf in context.WorkForces
                    where ((wf.WorkerType == "Stationed" && wf.LineCode == LineCode) || (wf.WorkerType == "Floating"
                        || wf.WorkerType == "Mobile"
                        || wf.WorkerType == "Mobile 1" ||
                        wf.WorkerType == "Mobile 2" || wf.WorkerType == "Floater" || wf.WorkerType == "Specific WF" || wf.WorkerType == "Stationed WF" ||
                        wf.WorkerType == "Mobile WF" || wf.WorkerType == "Floating WF" || wf.WorkerType == "Floater WF")) && wf.Factory == Factory &&
                        wf.JobTitleEn != "1.4 Line Leader" && (wf.LongLeave == false || wf.LongLeave == null) &&
                      //  (wf.InActive == false || wf.InActive == null) &&
                      !wf.MTM.GetValueOrDefault() && 
                      !wf.InActive.GetValueOrDefault() &&
                       // wf.ApprovalExitByDept != null 
                         wf.REDate.HasValue && wf.REDate > DateTime.Now               //modify at 16/9/12
                    select wf
                 * 
                 * */
                {



                    string[] allworktype = publicLibary.getItems("WorkerType", context);

                    string[] _worktypes = new string[allworktype.Length];

                    ArrayList _wktypes = new ArrayList();

                    for (int j = 0; j < allworktype.Length - 1; j++)
                    {
                        if (!allworktype[j].Equals("Stationed"))
                        {
                            _worktypes[j] = allworktype[j];

                        }
                    }


                    ////Get Line所在組
                    //string team = "", loc = "";
                    DepartalSort _dst = (from dst in context.DepartalSorts where dst.Class_EN == LineCode select dst).FirstOrDefault();
                    if (_dst != null)
                        team = _dst.Team_EN;

                    //string team = (from dst in context.DepartalSorts where dst.Class_EN == LineCode select dst).FirstOrDefault().Team_EN;

                    //Get Line所在车间 
                    PH.LWPM.BO.WorkForce _wor = (from ws in context.WorkForces
                                                 where ws.Factory == Factory
                                                 && ws.LineCode == LineCode
                                                     //&& ws.WFWhere_2 == LineCode
                                                 && !ws.MTM.GetValueOrDefault()
                                                 && !ws.MTM.GetValueOrDefault()
                                                     // && ws.ApprovalExitByDept != null 
                                                 && ws.REDate.HasValue && ws.REDate > DateTime.Now

                                                 select ws).Union(
                                                    from wf in context.WorkForces
                                                    where (
                                                            wf.Factory == Factory
                                                            && wf.LineCode == LineCode
                                                        //&& wf.WFWhere_2 == LineCode
                                                        // && wf.ApprovalExitByDept == null 
                                                          && !wf.REDate.HasValue
                                                          && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
                                                    )
                                                    select wf
                                                 ).FirstOrDefault();
                    if (_wor != null)
                        loc = _wor.Location;

                    this.Text = string.Format("Step 5 Select Worker -- Ws: {0}  Line: {1}", loc, this.LineCode);


                    WFs = from a in context.WorkForces
                          where a.Factory == Factory &&
                                !(a.IsProjection ?? false) && a.Vacancy != "SF" && a.Vacancy != "OSF" && !(a.InActive ?? false) &&
                                (!a.REDate.HasValue || (a.REDate.HasValue && a.REDate > DateTime.Now)) &&
                                !(a.MTM ?? false) && a.DeptName == "Sewing Dept"
                          select a;

                    /*
                    WFs = (from wf in context.WorkForces
                           where (
                                   wf.Factory == Factory
                                  && (_worktypes.Contains(wf.WorkerType))
                                  && wf.NextLineCode.Contains("WFPart020")
                                  && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
                               // && wf.ApprovalExitByDept!=null
                                  && wf.REDate.HasValue && wf.REDate > DateTime.Now
                            )
                           select wf).Union(
                                from wf in context.WorkForces
                                where (
                                        wf.Factory == Factory
                                       && (_worktypes.Contains(wf.WorkerType))
                                       && wf.NextLineCode.Contains("WFPart020")
                                    // && wf.ApprovalExitByDept == null 
                                      && !wf.REDate.HasValue
                                      && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
                                )
                                select wf
                           )
                           .Union(
                                from wf in context.WorkForces
                                where (
                                        wf.Factory == Factory
                                       && (wf.WFWhere_1 == team || wf.Location == loc || wf.WFWhere_1 == "- -")
                                       && wf.NextLineCode.Contains("WFPart020")
                                       && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
                                    // && wf.ApprovalExitByDept!=null 
                                     && wf.REDate.HasValue && wf.REDate > DateTime.Now)

                                select wf

                          ).Union(
                             from wf in context.WorkForces
                             where (
                                     wf.Factory == Factory
                                    && (wf.WFWhere_1 == team || wf.Location == loc || wf.WFWhere_1 == "- -")
                                    && wf.NextLineCode.Contains("WFPart020")
                                 //&& wf.ApprovalExitByDept== null 
                                   && !wf.REDate.HasValue
                                  && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault())
                             select wf
                          );
                      */


                }
                else
                    WFs = (from wf in context.WorkForces
                           where wf.Factory == "SL (Sales)"

                                  && !wf.MTM.GetValueOrDefault()
                               && !wf.InActive.GetValueOrDefault()
                               // && wf.ApprovalExitByDept == null   //modify at 16/9/12 
                               && wf.WFWhere == "Pre-Production Section"
                           select wf).Union(
                               from wf in context.WorkForces
                               where wf.Factory == "SL (Sales)" &&

                            !wf.MTM.GetValueOrDefault() &&
                            !wf.InActive.GetValueOrDefault() &&
                                   // wf.ApprovalExitByDept != null && 
                             wf.REDate.HasValue && wf.REDate > DateTime.Now &&
                              wf.WFWhere == "Pre-Production Section"
                               select wf
                           );


                //bindingSource1.DataSource = WFs;
                bindingSource2.DataSource = mching;


                //var _NoFloaterLst = WFs.Where(P => P.WorkerType.TrimEnd() == "Mobile" || P.WorkerType.TrimEnd() == "Mobile WF");

                foreach (PH.LWPM.BO.WorkForce obj in WFs)
                {
                    obj.CurrentWorkshop = loc; //保存當前選擇Line所在的車間, 用于LB4選人時區分是否為本Workshop，由David加入 2018-07-13
                }

                var _NoFloaterLst = WFs.Where(P => !string.IsNullOrEmpty(P.WorkerType) && P.WorkerType.TrimEnd().Contains("Mobile"));
                foreach (PH.LWPM.BO.WorkForce wf in _NoFloaterLst)
                {
                    wf.Locked = Lockeds(wf.Id.TrimEnd(), Factory, LineCode, StartTime, EndTime, CurTime);
                    wf.Resered = Reserveds(wf.Id.TrimEnd(), Factory, LineCode, StartTime, EndTime);
                }


                RefreshWFState();

                bindingSource1.DataSource = from a in WFs.ToList()
                                            orderby a.WsGroupNameSort, a.JobTitleSort
                                            select a;


            }
            finally
            {
                t.Abort();
            }
        }

        void RefreshWFState()
        {

            foreach (PH.LWPM.BO.WorkForce wf in WFs)
            {
                foreach (Lb5Matching mt in this.mching.Where(P => P.WorkerId != null || P.addworkerId1 != null || P.addworkerId2 != null))
                {
                    if (wf.Id.TrimEnd() == (mt.WorkerId != null ? mt.WorkerId.TrimEnd() : string.Empty) || wf.Id.TrimEnd() == (mt.addworkerId1 != null ? mt.addworkerId1.TrimEnd() : string.Empty) || wf.Id.TrimEnd() == (mt.addworkerId2 != null ? mt.addworkerId2.TrimEnd() : string.Empty) || wf.Id.TrimEnd() == (mt.addworkerId3 != null ? mt.addworkerId3.TrimEnd() : string.Empty))
                    {
                        wf.LB4YNSel = true;
                        break;
                    }
                    else
                    {
                        wf.LB4YNSel = false;
                    }

                }
            }
            this.bindingSource1.ResetBindings(false);
            this.bindingSource2.ResetBindings(false);
        }

        private void BtnRight_Click(object sender, EventArgs e)
        {
            AddWF();
        }
        void AddWF()
        {
            var CurLB = this.bindingSource2.Current as Lb5Matching;
            var CurWF = this.bindingSource1.Current as PH.LWPM.BO.WorkForce;
            CurWF.CurrentDataContext = this.context;
            string jf = string.Empty;
            int sn = 0;
            string Wtype = CurWF.WorkerType != null ? CurWF.WorkerType.TrimEnd() : string.Empty;
            string id = CurWF.Id != null ? CurWF.Id.TrimEnd() : string.Empty;
            if (CurWF.Locked || CurWF.Resered)
            {
                if (MessageBox.Show("The worker has been locked!!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) == DialogResult.OK)
                {
                    return;
                }
            }
            string name = CurWF.NameCn != null ? CurWF.NameCn.TrimEnd() : string.Empty;
            jf = CurLB.JFlag != null ? CurLB.JFlag.ToString().TrimEnd() : string.Empty;
            sn = CurLB.WPSN;
            CurWF.LB4YNSel = true;

            if (radReArrangeWF.Checked)
            {
                string WorkerID = this.SaveOperationWF[CurLB.WPSN].ToString(); //有可能在沒保存之前多次修改，要取得最早的那個WorderID

                context.InsertLB5MatchingLog("WF", 0, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                      CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, WorkerID, id);

                CurLB.WorkStyle = Wtype;
                CurLB.WorkerId = id;
                CurLB.WorkerName = name;
                CurLB.Mtm_Past = CurWF.PastMTM;

                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, Wtype, name, id, CurLB.MachineId, CurLB.Rpm0, 1);

                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Lb5Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                context.InsertLB5MatchingLog("WF", 0, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                                    mg.OperationSN ?? 0, mg.OperationName, mg.OperationCode, WorkerID, id);

                                mg.WorkStyle = Wtype;
                                mg.WorkerId = id;
                                mg.WorkerName = name;
                                WPMasterList.UPD_NextOTN(context, mg.Factory, mg.LineCode, mg.j_NO, mg.J2_job, mg.Rwo, mg.Qn, mg.Bcolor, mg.OTN.TrimEnd(), mg.WPSN, mg.Date, Wtype, name, id, mg.MachineId, mg.Rpm0, 1);

                            }
                        }
                    }
                }

                #region Move Next Record
                if (ChkMoveNext.Checked)
                {
                    if (this.mching.Where(P => string.IsNullOrEmpty(P.WorkerId)).Count() > 0 && this.bindingSource2.Position != this.bindingSource2.Count - 1)
                    {
                        do
                        {

                            this.bindingSource2.MoveNext();
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).WorkerId) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).WorkerId));
                    }
                }

                #endregion
            }
            else if (RbtWF1.Checked)
            {
                string AddWorker1ID = this.SaveOperationAddWF1[CurLB.WPSN].ToString(); //有可能在沒保存之前多次修改，要取得最早的那個WorderID

                context.InsertLB5MatchingLog("WF", 1, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                      CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, AddWorker1ID, id);


                CurLB.addWorkStyle1 = Wtype;
                CurLB.addworkerId1 = id;
                CurLB.addworker1 = name;

                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, Wtype, name, id, CurLB.addMachineId1, CurLB.addRpm1, 2);

                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Lb5Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                AddWorker1ID = this.SaveOperationAddWF1[CurLB.WPSN].ToString(); //有可能在沒保存之前多次修改，要取得最早的那個WorderID

                                context.InsertLB5MatchingLog("WF", 1, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                                    mg.OperationSN ?? 0, mg.OperationName, mg.OperationCode, AddWorker1ID, id);

                                mg.addWorkStyle1 = Wtype;
                                mg.addworkerId1 = id;
                                mg.addworker1 = name;
                                WPMasterList.UPD_NextOTN(context, mg.Factory, mg.LineCode, mg.j_NO, mg.J2_job, mg.Rwo, mg.Qn, mg.Bcolor, mg.OTN.TrimEnd(), mg.WPSN, mg.Date, Wtype, name, id, mg.addMachineId1, mg.addRpm1, 2);
                            }
                        }
                    }
                }

                #region Move Next Record
                if (ChkMoveNext.Checked)
                {
                    if (this.mching.Where(P => string.IsNullOrEmpty(P.addworkerId1)).Count() > 0 && this.bindingSource2.Position != this.bindingSource2.Count - 1)
                    {
                        do
                        {
                            this.bindingSource2.MoveNext();
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).addworkerId1))
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).addworkerId1) || this.bindingSource2.Position == this.bindingSource2.Count - 1);
                    }
                }
                #endregion
            }
            else if (RbtWF2.Checked)
            {
                string AddWorker2ID = this.SaveOperationAddWF2[CurLB.WPSN].ToString(); //有可能在沒保存之前多次修改，要取得最早的那個WorderID

                context.InsertLB5MatchingLog("WF", 2, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                      CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, AddWorker2ID, id);

                CurLB.addWorkStyle2 = Wtype;
                CurLB.addworkerId2 = id;
                CurLB.addworker2 = name;

                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, Wtype, name, id, CurLB.addMachineId2, CurLB.addRpm2, 3);

                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Lb5Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                AddWorker2ID = this.SaveOperationAddWF2[CurLB.WPSN].ToString(); //有可能在沒保存之前多次修改，要取得最早的那個WorderID

                                context.InsertLB5MatchingLog("WF", 2, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                                    mg.OperationSN ?? 0, mg.OperationName, mg.OperationCode, AddWorker2ID, id);

                                mg.addWorkStyle2 = Wtype;
                                mg.addworkerId2 = id;
                                mg.addworker2 = name;
                                WPMasterList.UPD_NextOTN(context, mg.Factory, mg.LineCode, mg.j_NO, mg.J2_job, mg.Rwo, mg.Qn, mg.Bcolor, mg.OTN.TrimEnd(), mg.WPSN, mg.Date, Wtype, name, id, mg.addMachineId2, mg.addRpm2, 3);

                            }
                        }
                    }
                }


                #region Move Next Record
                if (ChkMoveNext.Checked)
                {
                    if (this.mching.Where(P => string.IsNullOrEmpty(P.addworkerId2)).Count() > 0 && this.bindingSource2.Position != this.bindingSource2.Count - 1)
                    {
                        do
                        {

                            this.bindingSource2.MoveNext();
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).addworkerId2) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Lb5Matching).addworkerId2));
                    }
                }
                #endregion
            }

            RefreshWFState();
        }
        void RemoveWF()
        {
            var CurLB = this.bindingSource2.Current as Lb5Matching;
            if (radReArrangeWF.Checked)
            {
                CurLB.WorkStyle = string.Empty;
                CurLB.WorkerId = string.Empty;
                CurLB.WorkerName = string.Empty;
                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, string.Empty, string.Empty, string.Empty, CurLB.MachineId, CurLB.Rpm0, 1);

            }
            else if (RbtWF1.Checked)
            {
                context.InsertLB5MatchingLog("WF", 1, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                    CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, CurLB.addworkerId1, "");

                CurLB.addWorkStyle1 = string.Empty;
                CurLB.addworkerId1 = string.Empty;
                CurLB.addworker1 = string.Empty;

                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, string.Empty, string.Empty, string.Empty, CurLB.addMachineId1, CurLB.addRpm1, 2);

            }
            else if (RbtWF2.Checked)
            {
                context.InsertLB5MatchingLog("WF", 2, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor,
                    CurLB.OperationSN ?? 0, CurLB.OperationName, CurLB.OperationCode, CurLB.addworkerId2, "");

                CurLB.addWorkStyle2 = string.Empty;
                CurLB.addworkerId2 = string.Empty;
                CurLB.addworker2 = string.Empty;

                WPMasterList.UPD_NextOTN(context, CurLB.Factory, CurLB.LineCode, CurLB.j_NO, CurLB.J2_job, CurLB.Rwo, CurLB.Qn, CurLB.Bcolor, CurLB.OTN.TrimEnd(), CurLB.WPSN, CurLB.Date, string.Empty, string.Empty, string.Empty, CurLB.addMachineId2, CurLB.addRpm2, 3);

            }
            RefreshWFState();
        }


        private void BtnLeft_Click(object sender, EventArgs e)
        {
            RemoveWF();
        }

        private void GridWF_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                AddWF();
            }
        }

        private void GridMatching_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Delete)
            {
                RemoveWF();
            }
        }

        private void GridWF_DoubleClick(object sender, EventArgs e)
        {
            AddWF();
        }

        private bool Reserveds(string wkid, string Factory, string Line, DateTime StartTime, DateTime EndTime)
        {


            var WPMs = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != Line && (SqlMethods.Like(P.Flag, "%h%") || P.Flag == null || P.Flag == "" || (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == false)) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime)));
            foreach (WPMaster wp in WPMs)
            {
                var Mgs = wp.Matchings.Where(X => X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid || X.addworkerId3 == wkid).Count();
                if (Mgs > 0)
                {
                    return true;
                }
            }
            return false;


        }
        private bool Lockeds(string wkid, string Factory, string Line, DateTime StartTime, DateTime EndTime, DateTime CurTime)
        {
            //var WPMs = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != Line && (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == true) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime) || (P.StartTime >= StartTime && P.StartTime > EndTime && P.EndTime > EndTime)));
            //foreach (WPMaster wp in WPMs)
            //{
            //    foreach (PoolInfo pf in wp.PoolInfos)
            //    {
            //        var Mgs = pf.Lb5Matchings.Where(X => X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid || X.addworkerId3 == wkid).Count();
            //        if (Mgs > 0)
            //        {
            //            return true;
            //        }
            //    }                
            //}
            //return false;


            //var Mgs =context.Lb5Matchings.Where(X =>X.Factory == Factory && X.LineCode != Line && X.Date==EndTime && (X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid || X.addworkerId3 == wkid)).Count();
            //if (Mgs > 0)
            //{
            //    return true;
            //}
            //return false;
            var WPMs = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != Line && (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == true) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime)));
            foreach (WPMaster wp in WPMs)
            {

                var PILst = wp.PoolInfos.Where(P => P.Date == CurTime && P.OTN == TimeRange);
                foreach (PoolInfo pf in PILst)
                {
                    var Mgs = pf.Lb5Matchings.Where(X => X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid || X.addworkerId3 == wkid).Count();
                    if (Mgs > 0)
                    {
                        return true;
                    }
                }
            }
            return false;

        }


        private void RbtWF_CheckedChanged(object sender, EventArgs e)
        {
            //if (RbtWF.Checked)
            //{
            //    ColMType.FieldName = "WorkStyle";
            //    ColMId.FieldName = "WorkerId";
            //    ColMName.FieldName = "WorkerName";
            //}



        }

        private void radReArrangeWF_CheckedChanged(object sender, EventArgs e)
        {
            if (this.radReArrangeWF.Checked)
            {
                ColMType.FieldName = "WorkStyle";
                ColMId.FieldName = "WorkerId";
                ColMName.FieldName = "WorkerName";
            }
        }


        private void RbtWF1_CheckedChanged(object sender, EventArgs e)
        {
            if (RbtWF1.Checked)
            {
                ColMType.FieldName = "addWorkStyle1";
                ColMId.FieldName = "addworkerId1";
                ColMName.FieldName = "addworker1";
            }

        }

        private void RbtWF2_CheckedChanged(object sender, EventArgs e)
        {
            if (RbtWF2.Checked)
            {

                ColMType.FieldName = "addWorkStyle2";
                ColMId.FieldName = "addworkerId2";
                ColMName.FieldName = "addworker2";
            }
        }
        private List<LockAndReserve> GetLR(string wkid, string Factory, string Line, DateTime StartTime, DateTime EndTime)
        {
            List<LockAndReserve> myLR = new List<LockAndReserve>();
            var WPMs = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != Line && (SqlMethods.Like(P.Flag, "%h%") || P.Flag == null || P.Flag == "" || SqlMethods.Like(P.Flag, "%s%")) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime)));
            foreach (WPMaster wp in WPMs)
            {
                var Mgs = wp.Matchings.Where(X => X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid || X.addworkerId3 == wkid).Count();
                if (Mgs > 0)
                {
                    LockAndReserve rs = new LockAndReserve();
                    rs.Factory = wp.Factory;
                    rs.CustStyleCode = wp.CustStyleCode;
                    rs.PHStyleCode = wp.PHStyleCode;
                    rs.Line = wp.LineCode;
                    rs.StartTime = wp.StartTime;
                    rs.EndTime = wp.EndTime;
                    rs.J_NO = wp.j_NO;
                    rs.IsConfirmed = wp.IsConfirmed;
                    rs.lr = "Reserved";
                    myLR.Add(rs);
                }

                foreach (PoolInfo pf in wp.PoolInfos)
                {
                    Mgs = pf.Lb5Matchings.Where(X => X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid || X.addworkerId3 == wkid).Count();
                    if (Mgs > 0)
                    {
                        LockAndReserve rs = new LockAndReserve();
                        rs.Factory = wp.Factory;
                        rs.CustStyleCode = wp.CustStyleCode;
                        rs.PHStyleCode = wp.PHStyleCode;
                        rs.Line = wp.LineCode;
                        rs.StartTime = wp.StartTime;
                        rs.EndTime = CurTime;
                        rs.J_NO = wp.j_NO;
                        rs.lr = "Locked";
                        rs.IsConfirmed = wp.IsConfirmed;
                        myLR.Add(rs);
                        break;
                    }
                }

            } return myLR;

        }

        private void Btn_View_Click(object sender, EventArgs e)
        {
            string Id = (this.bindingSource1.Current as PH.LWPM.BO.WorkForce).Id.TrimEnd();
            LockAndReserveFrm Frm = new LockAndReserveFrm();
            Frm.LRLst = GetLR(Id, Factory, LineCode, StartTime, EndTime);
            Frm.ShowDialog();
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

        private void gridView2_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {

            if (this.gridView1.FocusedRowHandle >= 0 && this.gridView2.FocusedRowHandle >= 0)
            {

                PH.LWPM.BO.Lb5Matching mc = gridView2.GetRow(gridView2.FocusedRowHandle) as PH.LWPM.BO.Lb5Matching;
                int i = gridView1.FocusedRowHandle;
                PH.LWPM.BO.WorkForce wf = gridView1.GetRow(i) as PH.LWPM.BO.WorkForce;

                if (wf != null && mc != null)
                {
                    wf.CurrentDataContext = context;
                    wf.OperationCode = mc.OperationCode.Trim();
                    gridView1.SetRowCellValue(i, colMTM, wf.PastMTM);
                    gridView1.SetRowCellValue(i, colDone, wf.DidTime_ByWf);
                    //  gridView1.SetRowCellValue(i, colDidByWf, wf.DidTime_ByWf);
                    gridView1.SetRowCellValue(i, colFirstPass, wf.Per_FirsPass); //首通率
                }

                // }

                gridView1.RefreshData();

            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            var CurLB = this.bindingSource2.Current as Lb5Matching;
            CurLB.PoolInfo.WPMaster.UpdateTime = DateTime.Now;
            CurLB.PoolInfo.WPMaster.Save();
        }


        private void Btn_Cancel_Click(object sender, EventArgs e)
        {
            //var CurLB = this.bindingSource2.Current as Lb5Matching;
            //(this.context as RAPLQDataContext).Refresh(RefreshMode.OverwriteCurrentValues, CurLB.PoolInfo.Lb5Matchings);
        }


        private void bindingSource2_CurrentChanged(object sender, EventArgs e)
        {
            //    if (this.bindingSource2.Current == null) return;
            //    Lb5Matching obj = this.bindingSource2.Current as Lb5Matching;
            //    if (obj == null) return;

            //    if (string.IsNullOrEmpty(obj.WorkerId) && string.IsNullOrEmpty(obj.WorkerName))
            //    {
            //        if (this.radReArrangeWF.Checked)
            //        {
            //            this.RbtWF.Checked = true;
            //        }
            //    }
            //    else
            //    {
            //        if (this.RbtWF.Checked)
            //        {
            //            this.radReArrangeWF.Checked = true;
            //        }
            //    }
        }




    }
}