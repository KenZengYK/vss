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
using PH.LWPM.UI.IRepository;
using System.Collections;
namespace PH.LWPM.UI.LB4
{

    public partial class WFFrm : DevExpress.XtraEditors.XtraForm
    {
        public string Factory { get; set; }
        public string LineCode { get; set; }
        public RAPLQDataContext context { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public bool IsPPWs { get; set; }



        private IEnumerable<Matching> mching;
        private IEnumerable<PH.LWPM.BO.WorkForce> WFs;

        private IRepository.IWorkForceTrim repostory;
        private IRepository.IPublicLibrary publicLibary;

        public WFFrm()
        {
            InitializeComponent();
            this.repostory = new Repository.WorkForceTrim();
            this.publicLibary = new Repository.PublicLibrary();
        }

        public WFFrm(IEnumerable<Matching> mchings)
        {
            InitializeComponent();
            this.mching = mchings;
            this.ConditionsAdjustment();
            this.repostory = new Repository.WorkForceTrim();
            this.publicLibary = new Repository.PublicLibrary();
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

        bool firstload = false;
        private void WFFrm_Load(object sender, EventArgs e)
        {
            firstload = true;
            Thread t = new Thread(new ThreadStart(ProFrm));
            t.Start();
            try
            {

                //int bb = context.Connection.ConnectionTimeout;
                //int aa = context.CommandTimeout;
                context.CommandTimeout = 300;

                //WFs = from wf in context.WorkForces
                //      where ((wf.ClsName == "dWF-Core Production" && wf.WorkerType == "Stationed"
                //          && wf.LineCode == LineCode) || (wf.WorkerType == "Mobile" || wf.WorkerType == "Floater" || wf.WorkerType == "Specific WF"
                //          || wf.WorkerType == "Stationed WF" || wf.WorkerType == "Mobile WF" || wf.WorkerType == "Floating WF"
                //          || wf.WorkerType == "Floater WF")) && wf.Factory == Factory
                //          && wf.JobTitleEn != "1.4 Line Leader" && (wf.LongLeave == false || wf.LongLeave == null)
                //          && (wf.InActive == null || wf.InActive == false)
                //      select wf;


                //   ClsName='{0}' and Inactive='0' and  (mtm='0' or mtm is null)

                //string sworktype = string.Empty;
                //2014/3/4 update
                string[] allworktype = publicLibary.getItems("WorkerType", context);
                string[] _worktypes = new string[allworktype.Length];
                ArrayList _wktypes = new ArrayList();

                for (int j = 0; j < allworktype.Length - 1; j++)
                {
                    if (!allworktype[j].Equals("Stationed"))
                    {

                        //_worktypes+=allworktype[j]+";";
                        // _wktypes.Add(allworktype[j]);
                        _worktypes[j] = allworktype[j];

                    }
                }

                //Get Line所在組
                string team = "", loc = "";
                DepartalSort _dst = (from dst in context.DepartalSorts where dst.Class_EN == LineCode select dst).FirstOrDefault();
                if (_dst != null)
                    team = _dst.Team_EN;

                //string team = (from dst in context.DepartalSorts where dst.Class_EN == LineCode select dst).FirstOrDefault().Team_EN;

                //Get Line所在车间 
                PH.LWPM.BO.WorkForce _wor = (from ws in context.WorkForces
                                             where ws.Factory == Factory &&
                                                   ws.LineCode == LineCode &&
                                                 //ws.WFWhere_2 == LineCode &&
                                                   !ws.MTM.GetValueOrDefault() &&
                                                 //!ws.MTM.GetValueOrDefault() && --兩個一模一樣的條件，需要寫兩次嗎？由David註釋掉 2018-07-10
                                                   ws.REDate.HasValue && ws.REDate > DateTime.Now
                                             // && ws.ApprovalExitByDept != null 
                                             //&& ws.LineCode == LineCode
                                             select ws)
                                             .Union
                                             (from wf in context.WorkForces
                                              where wf.Factory == Factory &&
                                                    wf.LineCode == LineCode &&
                                                  //wf.WFWhere_2 == LineCode &&
                                                    !wf.REDate.HasValue &&
                                                    !wf.MTM.GetValueOrDefault() &&
                                                    !wf.InActive.GetValueOrDefault()
                                              // && wf.ApprovalExitByDept == null 
                                              select wf
                                             ).FirstOrDefault();
                if (_wor != null)
                    loc = _wor.Location;

                this.Text = string.Format("Setp 3 Select Worker -- Ws: {0}  Line: {1}", loc, this.LineCode);


                //string loc = (from ws in context.WorkForces where ws.LineCode==LineCode select ws).FirstOrDefault().Location;

                //從Line所在同一組或全廠Mobile,Floater中選人
                //if (LineCode.Substring(0, 4) != "PPWS")
                if (!IsPPWs)
                {
                    /*
                    WFs = (from wf in context.WorkForces
                           where (
                                   wf.Factory == Factory
                                  && (_worktypes.Contains(wf.WorkerType))
                                  && wf.NextLineCode.Contains("WFPart020")
                                  && (wf.MTM.GetValueOrDefault() == false)
                               && (wf.InActive.GetValueOrDefault() == false))
                           select wf).Union(                              //modify by joseph 15/05/08
                                from wf in context.WorkForces
                                where (
                                        wf.Factory == Factory
                                       && (wf.WFWhere_1 == team || wf.Location == loc || wf.WFWhere_1 == "- -")
                                       && wf.NextLineCode.Contains("WFPart020")
                                       && (wf.MTM.GetValueOrDefault() == false)
                                    && (wf.InActive.GetValueOrDefault() == false))
                                select wf

                          );
                     */


                    //modify by joseph 16/09/12



                    //WFs = context.WorkForces.Where(p => !p.IsProjection ?? false && p.Vacancy != "SF" && p.Vacancy != "OSF" &&
                    //    );

                    WFs = from a in context.WorkForces
                          //from b in context.BaseCodes
                          where a.Factory == Factory &&
                                !(a.IsProjection ?? false) && a.Vacancy != "SF" && a.Vacancy != "OSF" && !(a.InActive ?? false) &&
                                (!a.REDate.HasValue || (a.REDate.HasValue && a.REDate > DateTime.Now)) &&
                                !(a.MTM ?? false) && a.DeptName == "Sewing Dept"
                          select a;

                    //                    select  * 
                    //from workforce
                    //where isprojection=0 and 
                    //      (vacancy !='SF' and vacancy != 'OSF') and 
                    //exists (select 1 from basecode where Type='WFPart' and Name=workforce.WFPart) and  
                    //exists (select 1 from basecode where Type='WFclass' and Name=workforce.ClsName) and 
                    //Inactive='0' and  
                    //(ReDate is null or ReDate > getdate()) and
                    //(mtm='0' or mtm is null) and
                    //DeptName = 'Sewing Dept' and Factory = 'SL' and 
                    //(ReDate is null or ReDate > getdate())


                    /* 由david註釋后改寫算法  2018-07-18 -----begin

                    WFs = (from wf in context.WorkForces
                           where (
                                   wf.Factory == Factory
                                  && (_worktypes.Contains(wf.WorkerType))
                                  && wf.NextLineCode.Contains("WFPart020")
                                  && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
                               // && wf.ApprovalExitByDept!=null
                                  && wf.REDate.HasValue && wf.REDate > DateTime.Now
                                  && wf.ClsName != ""
                                  && wf.WFPart != ""
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
                                      && wf.ClsName != ""
                                      && wf.WFPart != ""
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
                                       && wf.REDate.HasValue && wf.REDate > DateTime.Now
                                       && wf.ClsName != ""
                                       && wf.WFPart != ""
                                  )


                                select wf

                          ).Union(
                             from wf in context.WorkForces
                             where (
                                     wf.Factory == Factory
                                     && (wf.WFWhere_1 == team || wf.Location == loc || wf.WFWhere_1 == "- -")
                                     && wf.NextLineCode.Contains("WFPart020")
                                 //&& wf.ApprovalExitByDept== null 
                                    && !wf.REDate.HasValue
                                    && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
                                    && wf.ClsName != ""
                                    && wf.WFPart != ""
                                   )
                             select wf
                          );

                     
                     */
                    //由david註釋后改寫算法  2018-07-18 -----end





                    //WFs =
                    //         from wf in context.WorkForces
                    //         where wf.Factory == Factory
                    //                && (wf.WFWhere_1 == team || wf.Location == loc || wf.WFWhere_1 == "- -")
                    //                && wf.NextLineCode.Contains("WFPart020")
                    //             //&& wf.ApprovalExitByDept== null 
                    //               && !wf.REDate.HasValue
                    //              && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
                    //         select wf;
                }
                else //
                {
                    WFs = from wf in context.WorkForces
                          where wf.Factory == Factory
                             && wf.WFWhere == "Pre-Production Section"
                             && !wf.MTM.GetValueOrDefault()
                             && !wf.InActive.GetValueOrDefault()
                              // && wf.ApprovalExitByDept == null 
                             && !wf.REDate.HasValue
                             && !(wf.IsStaff ?? false)
                          select wf;
                }

                // &&((wf.WorkerType == "Stationed"&& wf.WFWhere_2 == LineCode)
                // && wf.LineCode == LineCode) ||allworktype.Contains(wf.WorkerType)) 
                //&& wf.WFPart == "Sewing Direct Labors Cost"
                //&& wf.WFPart.Contains("Sewing Direct Labors")

                //ClsName='{0}' and Inactive='0' and  (mtm='0' or mtm is null)

                //remar&update at 13/12/26
                //WFs = from wf in context.WorkForces where (wf.ClsName == "dWF-Core Production" && wf.LineCode == LineCode && wf.Factory == Factory && (wf.MTM == false || wf.MTM == null) && wf.InActive == false) select wf;
                //remark at 2014/3/4
                //WFs = from wf in context.WorkForces where (wf.WFPart == "Sewing Direct Labors Cost" && wf.LineCode == LineCode && wf.Factory == Factory && (wf.MTM == false || wf.MTM == null) && wf.InActive == false) select wf;
                // int count = WFs.Count();

                //bindingSource1.DataSource = WFs;
                //bindingSource1.DataSource = from a in WFs.ToList()
                //                            orderby a.WsGroupNameSort, a.JobTitleSort
                //                            select a;

                //var aaaa = WFs.Select(p => p.Id).Distinct().ToList();

                var _NoFloaterLst = WFs; //WFs.Where(P => P.WorkerType != null);

                //var WPMs_Rese = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != LineCode && (SqlMethods.Like(P.Flag, "%h%") || P.Flag == null || P.Flag == "" || (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == false)) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime) || (P.StartTime >= StartTime && P.StartTime > EndTime && P.EndTime > EndTime))).ToList();
                //var WPMs_lock = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != LineCode && (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == true) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime) || (P.StartTime >= StartTime && P.StartTime > EndTime && P.EndTime > EndTime))).ToList();
                // Factory,LineCode,j_NO,J2_job,Rwo,Qn,Bcolor
                string[] workerId = WFs.Select(p => p.Id).ToArray();
                //string[] j_no_Rese = WPMs_Rese.Select(p => p.j_NO).ToArray();
                //string[] j2_job_Rese = WPMs_Rese.Select(p => p.J2_job).ToArray();
                //string[] Rwo_Rese = WPMs_Rese.Select(p => p.Rwo).ToArray();
                //string[] Qn_Rese = WPMs_Rese.Select(p => p.Qn).ToArray();
                //string[] Bcolor_Rese = WPMs_Rese.Select(p => p.Bcolor).ToArray();


                //var matching_Rese = context.Matchings.Where(p => p.Factory == Factory && Bcolor_Rese.Contains(p.Bcolor) && Rwo_Rese.Contains(p.Rwo) && Qn_Rese.Contains(p.Qn)
                //    && p.LineCode == LineCode && j_no_Rese.Contains(p.j_NO) && j2_job_Rese.Contains(p.J2_job) && workerId.Contains(p.WorkerId)).ToList();


                ////Factory,LineCode,j_NO,J2_job,Rwo,Qn,Date,OTN,Bcolor
                //string[] j_no_Lock = WPMs_lock.Select(p => p.j_NO).ToArray();
                //string[] j2_job_Lock = WPMs_lock.Select(p => p.J2_job).ToArray();
                //string[] Rwo_Lock = WPMs_lock.Select(p => p.Rwo).ToArray();
                //string[] Qn_Lock = WPMs_lock.Select(p => p.Qn).ToArray();
                //string[] Bcolor_Lock = WPMs_lock.Select(p => p.Bcolor).ToArray();
                //var Lb5m_Lock = context.Lb5Matchings.Where(p => p.Factory == Factory && Bcolor_Lock.Contains(p.Bcolor) && Rwo_Lock.Contains(p.Rwo) && Qn_Lock.Contains(p.Qn)
                //    && p.LineCode == LineCode && j_no_Lock.Contains(p.j_NO) && j2_job_Lock.Contains(p.J2_job) && workerId.Contains(p.WorkerId)).ToList();

                foreach (PH.LWPM.BO.WorkForce wf in _NoFloaterLst)
                {
                    //    wf.Locked = Lockeds(wf.Id.TrimEnd(), Factory, LineCode, StartTime, EndTime);
                    //   wf.Resered = Reserveds(wf.Id.TrimEnd(), Factory, LineCode, StartTime, EndTime);  

                    //wf.Locked = LockedsNew(wf.Id.TrimEnd(), Factory, LineCode, StartTime, EndTime, WPMs_lock, Lb5m_Lock);
                    //wf.Resered = ReservedsNew(wf.Id.TrimEnd(), Factory, LineCode, StartTime, EndTime, WPMs_Rese, matching_Rese);

                    wf.CurrentWorkshop = loc; //保存當前選擇Line所在的車間, 用于LB4選人時區分是否為本Workshop，由David加入 2018-07-12
                }

                foreach (Matching mc in mching)
                { mc.CurrentDataContext = this.context; }
                bindingSource2.DataSource = mching;
                RefreshWFState();

                bindingSource1.DataSource = from a in WFs.ToList()
                                            orderby a.WsGroupNameSort, a.JobTitleSort
                                            select a;

            }
            //catch (Exception ex)
            //{
            //    throw ex;
            //}
            finally
            {
                t.Abort();
                firstload = false;
            }
        }

        //bool firstload = false;
        //private void WFFrm_Load(object sender, EventArgs e)
        //{
        //    firstload = true;
        //    Thread t = new Thread(new ThreadStart(ProFrm));
        //    t.Start();
        //    try
        //    {

        //        //int bb = context.Connection.ConnectionTimeout;
        //        //int aa = context.CommandTimeout;
        //        context.CommandTimeout = 300;

        //        //WFs = from wf in context.WorkForces
        //        //      where ((wf.ClsName == "dWF-Core Production" && wf.WorkerType == "Stationed"
        //        //          && wf.LineCode == LineCode) || (wf.WorkerType == "Mobile" || wf.WorkerType == "Floater" || wf.WorkerType == "Specific WF"
        //        //          || wf.WorkerType == "Stationed WF" || wf.WorkerType == "Mobile WF" || wf.WorkerType == "Floating WF"
        //        //          || wf.WorkerType == "Floater WF")) && wf.Factory == Factory
        //        //          && wf.JobTitleEn != "1.4 Line Leader" && (wf.LongLeave == false || wf.LongLeave == null)
        //        //          && (wf.InActive == null || wf.InActive == false)
        //        //      select wf;


        //        //   ClsName='{0}' and Inactive='0' and  (mtm='0' or mtm is null)

        //        //string sworktype = string.Empty;
        //        //2014/3/4 update
        //        string[] allworktype = publicLibary.getItems("WorkerType", context);
        //        string[] _worktypes = new string[allworktype.Length];
        //        ArrayList _wktypes = new ArrayList();

        //        for (int j = 0; j < allworktype.Length - 1; j++)
        //        {
        //            if (!allworktype[j].Equals("Stationed"))
        //            {

        //                //_worktypes+=allworktype[j]+";";
        //                // _wktypes.Add(allworktype[j]);
        //                _worktypes[j] = allworktype[j];

        //            }
        //        }

        //        //Get Line所在組
        //        string team = "", loc = "";
        //        DepartalSort _dst = (from dst in context.DepartalSorts where dst.Class_EN == LineCode select dst).FirstOrDefault();
        //        if (_dst != null)
        //            team = _dst.Team_EN;

        //        //string team = (from dst in context.DepartalSorts where dst.Class_EN == LineCode select dst).FirstOrDefault().Team_EN;

        //        //Get Line所在车间 
        //        PH.LWPM.BO.WorkForce _wor = (from ws in context.WorkForces
        //                                     where ws.Factory == Factory &&
        //                                           ws.LineCode == LineCode &&
        //                                         //ws.WFWhere_2 == LineCode &&
        //                                           !ws.MTM.GetValueOrDefault() &&
        //                                         //!ws.MTM.GetValueOrDefault() && --兩個一模一樣的條件，需要寫兩次嗎？由David註釋掉 2018-07-10
        //                                           ws.REDate.HasValue && ws.REDate > DateTime.Now
        //                                     // && ws.ApprovalExitByDept != null 
        //                                     //&& ws.LineCode == LineCode
        //                                     select ws)
        //                                     .Union
        //                                     (from wf in context.WorkForces
        //                                      where wf.Factory == Factory &&
        //                                            wf.LineCode == LineCode &&
        //                                          //wf.WFWhere_2 == LineCode &&
        //                                            !wf.REDate.HasValue &&
        //                                            !wf.MTM.GetValueOrDefault() &&
        //                                            !wf.InActive.GetValueOrDefault()
        //                                      // && wf.ApprovalExitByDept == null 
        //                                      select wf
        //                                     ).FirstOrDefault();
        //        if (_wor != null)
        //            loc = _wor.Location;

        //        this.Text = string.Format("Select Worker -- Ws: {0}  Line: {1}", loc, this.LineCode);


        //        //string loc = (from ws in context.WorkForces where ws.LineCode==LineCode select ws).FirstOrDefault().Location;

        //        //從Line所在同一組或全廠Mobile,Floater中選人
        //        if (LineCode.Substring(0, 4) != "PPWS")
        //        {
        //            /*
        //            WFs = (from wf in context.WorkForces
        //                   where (
        //                           wf.Factory == Factory
        //                          && (_worktypes.Contains(wf.WorkerType))
        //                          && wf.NextLineCode.Contains("WFPart020")
        //                          && (wf.MTM.GetValueOrDefault() == false)
        //                       && (wf.InActive.GetValueOrDefault() == false))
        //                   select wf).Union(                              //modify by joseph 15/05/08
        //                        from wf in context.WorkForces
        //                        where (
        //                                wf.Factory == Factory
        //                               && (wf.WFWhere_1 == team || wf.Location == loc || wf.WFWhere_1 == "- -")
        //                               && wf.NextLineCode.Contains("WFPart020")
        //                               && (wf.MTM.GetValueOrDefault() == false)
        //                            && (wf.InActive.GetValueOrDefault() == false))
        //                        select wf

        //                  );
        //             */


        //            //modify by joseph 16/09/12



        //            //WFs = context.WorkForces.Where(p => !p.IsProjection ?? false && p.Vacancy != "SF" && p.Vacancy != "OSF" &&
        //            //    );

        //            WFs = from a in context.WorkForces
        //                  //from b in context.BaseCodes
        //                  where a.Factory == Factory &&
        //                        !(a.IsProjection ?? false) && a.Vacancy != "SF" && a.Vacancy != "OSF" && !(a.InActive ?? false) &&
        //                        (!a.REDate.HasValue || (a.REDate.HasValue && a.REDate > DateTime.Now)) &&
        //                        !(a.MTM ?? false) && a.DeptName == "Sewing Dept"
        //                  select a;

        //            //                    select  * 
        //            //from workforce
        //            //where isprojection=0 and 
        //            //      (vacancy !='SF' and vacancy != 'OSF') and 
        //            //exists (select 1 from basecode where Type='WFPart' and Name=workforce.WFPart) and  
        //            //exists (select 1 from basecode where Type='WFclass' and Name=workforce.ClsName) and 
        //            //Inactive='0' and  
        //            //(ReDate is null or ReDate > getdate()) and
        //            //(mtm='0' or mtm is null) and
        //            //DeptName = 'Sewing Dept' and Factory = 'SL' and 
        //            //(ReDate is null or ReDate > getdate())


        //            /* 由david註釋后改寫算法  2018-07-18 -----begin

        //            WFs = (from wf in context.WorkForces
        //                   where (
        //                           wf.Factory == Factory
        //                          && (_worktypes.Contains(wf.WorkerType))
        //                          && wf.NextLineCode.Contains("WFPart020")
        //                          && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
        //                       // && wf.ApprovalExitByDept!=null
        //                          && wf.REDate.HasValue && wf.REDate > DateTime.Now
        //                          && wf.ClsName != ""
        //                          && wf.WFPart != ""
        //                    )
        //                   select wf).Union(
        //                        from wf in context.WorkForces
        //                        where (
        //                                wf.Factory == Factory
        //                               && (_worktypes.Contains(wf.WorkerType))
        //                               && wf.NextLineCode.Contains("WFPart020")
        //                            // && wf.ApprovalExitByDept == null 
        //                              && !wf.REDate.HasValue
        //                              && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
        //                              && wf.ClsName != ""
        //                              && wf.WFPart != ""
        //                        )
        //                        select wf
        //                   )
        //                   .Union(
        //                        from wf in context.WorkForces
        //                        where (
        //                               wf.Factory == Factory
        //                               && (wf.WFWhere_1 == team || wf.Location == loc || wf.WFWhere_1 == "- -")
        //                               && wf.NextLineCode.Contains("WFPart020")
        //                               && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
        //                            // && wf.ApprovalExitByDept!=null 
        //                               && wf.REDate.HasValue && wf.REDate > DateTime.Now
        //                               && wf.ClsName != ""
        //                               && wf.WFPart != ""
        //                          )


        //                        select wf

        //                  ).Union(
        //                     from wf in context.WorkForces
        //                     where (
        //                             wf.Factory == Factory
        //                             && (wf.WFWhere_1 == team || wf.Location == loc || wf.WFWhere_1 == "- -")
        //                             && wf.NextLineCode.Contains("WFPart020")
        //                         //&& wf.ApprovalExitByDept== null 
        //                            && !wf.REDate.HasValue
        //                            && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
        //                            && wf.ClsName != ""
        //                            && wf.WFPart != ""
        //                           )
        //                     select wf
        //                  );


        //             */
        //            //由david註釋后改寫算法  2018-07-18 -----end





        //            //WFs =
        //            //         from wf in context.WorkForces
        //            //         where wf.Factory == Factory
        //            //                && (wf.WFWhere_1 == team || wf.Location == loc || wf.WFWhere_1 == "- -")
        //            //                && wf.NextLineCode.Contains("WFPart020")
        //            //             //&& wf.ApprovalExitByDept== null 
        //            //               && !wf.REDate.HasValue
        //            //              && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
        //            //         select wf;
        //        }
        //        else //
        //        {
        //            WFs = from wf in context.WorkForces
        //                  where wf.Factory == "SL (Sales)"
        //                     && wf.WFWhere == "Pre-Production Section"
        //                     && !wf.MTM.GetValueOrDefault()
        //                     && !wf.InActive.GetValueOrDefault()
        //                      // && wf.ApprovalExitByDept == null 
        //                     && !wf.REDate.HasValue
        //                  select wf;
        //        }

        //        // &&((wf.WorkerType == "Stationed"&& wf.WFWhere_2 == LineCode)
        //        // && wf.LineCode == LineCode) ||allworktype.Contains(wf.WorkerType)) 
        //        //&& wf.WFPart == "Sewing Direct Labors Cost"
        //        //&& wf.WFPart.Contains("Sewing Direct Labors")

        //        //ClsName='{0}' and Inactive='0' and  (mtm='0' or mtm is null)

        //        //remar&update at 13/12/26
        //        //WFs = from wf in context.WorkForces where (wf.ClsName == "dWF-Core Production" && wf.LineCode == LineCode && wf.Factory == Factory && (wf.MTM == false || wf.MTM == null) && wf.InActive == false) select wf;
        //        //remark at 2014/3/4
        //        //WFs = from wf in context.WorkForces where (wf.WFPart == "Sewing Direct Labors Cost" && wf.LineCode == LineCode && wf.Factory == Factory && (wf.MTM == false || wf.MTM == null) && wf.InActive == false) select wf;
        //        // int count = WFs.Count();

        //        //bindingSource1.DataSource = WFs;
        //        //bindingSource1.DataSource = from a in WFs.ToList()
        //        //                            orderby a.WsGroupNameSort, a.JobTitleSort
        //        //                            select a;

        //        //var aaaa = WFs.Select(p => p.Id).Distinct().ToList();

        //        var _NoFloaterLst = WFs; //WFs.Where(P => P.WorkerType != null);

        //        var WPMs_Rese = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != LineCode && (SqlMethods.Like(P.Flag, "%h%") || P.Flag == null || P.Flag == "" || (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == false)) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime) || (P.StartTime >= StartTime && P.StartTime > EndTime && P.EndTime > EndTime))).ToList();
        //        var WPMs_lock = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != LineCode && (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == true) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime) || (P.StartTime >= StartTime && P.StartTime > EndTime && P.EndTime > EndTime))).ToList();
        //        // Factory,LineCode,j_NO,J2_job,Rwo,Qn,Bcolor
        //        string[] workerId = WFs.Select(p => p.Id).ToArray();
        //        string[] j_no_Rese = WPMs_Rese.Select(p => p.j_NO).ToArray();
        //        string[] j2_job_Rese = WPMs_Rese.Select(p => p.J2_job).ToArray();
        //        string[] Rwo_Rese = WPMs_Rese.Select(p => p.Rwo).ToArray();
        //        string[] Qn_Rese = WPMs_Rese.Select(p => p.Qn).ToArray();
        //        string[] Bcolor_Rese = WPMs_Rese.Select(p => p.Bcolor).ToArray();


        //        var matching_Rese = context.Matchings.Where(p => p.Factory == Factory && Bcolor_Rese.Contains(p.Bcolor) && Rwo_Rese.Contains(p.Rwo) && Qn_Rese.Contains(p.Qn)
        //            && p.LineCode == LineCode && j_no_Rese.Contains(p.j_NO) && j2_job_Rese.Contains(p.J2_job) && workerId.Contains(p.WorkerId)).ToList();


        //        //Factory,LineCode,j_NO,J2_job,Rwo,Qn,Date,OTN,Bcolor
        //        string[] j_no_Lock = WPMs_lock.Select(p => p.j_NO).ToArray();
        //        string[] j2_job_Lock = WPMs_lock.Select(p => p.J2_job).ToArray();
        //        string[] Rwo_Lock = WPMs_lock.Select(p => p.Rwo).ToArray();
        //        string[] Qn_Lock = WPMs_lock.Select(p => p.Qn).ToArray();
        //        string[] Bcolor_Lock = WPMs_lock.Select(p => p.Bcolor).ToArray();
        //        var Lb5m_Lock = context.Lb5Matchings.Where(p => p.Factory == Factory && Bcolor_Lock.Contains(p.Bcolor) && Rwo_Lock.Contains(p.Rwo) && Qn_Lock.Contains(p.Qn)
        //            && p.LineCode == LineCode && j_no_Lock.Contains(p.j_NO) && j2_job_Lock.Contains(p.J2_job) && workerId.Contains(p.WorkerId)).ToList();

        //        foreach (PH.LWPM.BO.WorkForce wf in _NoFloaterLst)
        //        {
        //            //    wf.Locked = Lockeds(wf.Id.TrimEnd(), Factory, LineCode, StartTime, EndTime);
        //            //   wf.Resered = Reserveds(wf.Id.TrimEnd(), Factory, LineCode, StartTime, EndTime);  

        //            wf.Locked = LockedsNew(wf.Id.TrimEnd(), Factory, LineCode, StartTime, EndTime, WPMs_lock, Lb5m_Lock);
        //            wf.Resered = ReservedsNew(wf.Id.TrimEnd(), Factory, LineCode, StartTime, EndTime, WPMs_Rese, matching_Rese);

        //            wf.CurrentWorkshop = loc; //保存當前選擇Line所在的車間, 用于LB4選人時區分是否為本Workshop，由David加入 2018-07-12
        //        }

        //        foreach (Matching mc in mching)
        //        { mc.CurrentDataContext = this.context; }
        //        bindingSource2.DataSource = mching;
        //        RefreshWFState();

        //        bindingSource1.DataSource = from a in WFs.ToList()
        //                                    orderby a.WsGroupNameSort, a.JobTitleSort
        //                                    select a;

        //    }
        //    //catch (Exception ex)
        //    //{
        //    //    throw ex;
        //    //}
        //    finally
        //    {
        //        t.Abort();
        //        firstload = false;
        //    }
        //}

        void RefreshWFState()
        {

            foreach (PH.LWPM.BO.WorkForce wf in WFs)
            {
                foreach (Matching mt in this.mching.Where(P => P.WorkerId != null || P.addworkerId1 != null || P.addworkerId2 != null))
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
            string jf = string.Empty;
            int sn = 0;
            PH.LWPM.BO.WorkForce curWK = this.bindingSource1.Current as PH.LWPM.BO.WorkForce;
            curWK.CurrentDataContext = this.context;
            string Wtype = (this.bindingSource1.Current as PH.LWPM.BO.WorkForce).WorkerType != null ? (this.bindingSource1.Current as PH.LWPM.BO.WorkForce).WorkerType.TrimEnd() : string.Empty;
            string id = (this.bindingSource1.Current as PH.LWPM.BO.WorkForce).Id != null ? (this.bindingSource1.Current as PH.LWPM.BO.WorkForce).Id.TrimEnd() : string.Empty;
            if ((this.bindingSource1.Current as PH.LWPM.BO.WorkForce).Locked || (this.bindingSource1.Current as PH.LWPM.BO.WorkForce).Resered)
            {
                if (MessageBox.Show("The worker has been locked!!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) == DialogResult.OK)
                {
                    return;
                }
            }
            string name = (this.bindingSource1.Current as PH.LWPM.BO.WorkForce).NameCn != null ? (this.bindingSource1.Current as PH.LWPM.BO.WorkForce).NameCn.TrimEnd() : string.Empty;
            jf = (this.bindingSource2.Current as Matching).JFlag != null ? (this.bindingSource2.Current as Matching).JFlag.ToString().TrimEnd() : string.Empty;
            sn = (this.bindingSource2.Current as Matching).WPSN;
            (this.bindingSource1.Current as PH.LWPM.BO.WorkForce).LB4YNSel = true;
            if (RbtWF.Checked)
            {

                (this.bindingSource2.Current as Matching).WorkStyle = Wtype;
                (this.bindingSource2.Current as Matching).WorkerId = id;
                (this.bindingSource2.Current as Matching).WorkerName = name;
                (this.bindingSource2.Current as Matching).Mtm_Past = curWK.PastMTM;


                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                mg.WorkStyle = Wtype;
                                mg.WorkerId = id;
                                mg.WorkerName = name;
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
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Matching).WorkerId) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Matching).WorkerId));
                    }
                }

                #endregion
            }
            else if (RbtWF1.Checked)
            {

                (this.bindingSource2.Current as Matching).addWorkStyle1 = Wtype;
                (this.bindingSource2.Current as Matching).addworkerId1 = id;
                (this.bindingSource2.Current as Matching).addworker1 = name;

                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                mg.addWorkStyle1 = Wtype;
                                mg.addworkerId1 = id;
                                mg.addworker1 = name;
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
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Matching).addworkerId1) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Matching).addworkerId1));
                    }
                }
                #endregion
            }
            else if (RbtWF2.Checked)
            {

                (this.bindingSource2.Current as Matching).addWorkStyle2 = Wtype;
                (this.bindingSource2.Current as Matching).addworkerId2 = id;
                (this.bindingSource2.Current as Matching).addworker2 = name;

                if (chkJFlag.Checked)
                {
                    if (jf != string.Empty)
                    {
                        foreach (Matching mg in mching)
                        {
                            if (jf == (mg.JFlag != null ? mg.JFlag.ToString().TrimEnd() : string.Empty) && mg.WPSN != sn)
                            {
                                mg.addWorkStyle2 = Wtype;
                                mg.addworkerId2 = id;
                                mg.addworker2 = name;
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
                            if (string.IsNullOrEmpty((this.bindingSource2.Current as Matching).addworkerId2) || this.bindingSource2.Position == this.bindingSource2.Count - 1)
                            {
                                break;
                            }
                        } while (!string.IsNullOrEmpty((this.bindingSource2.Current as Matching).addworkerId2));
                    }
                }
                #endregion
            }
            RefreshWFState();
        }
        void RemoveWF()
        {
            if (RbtWF.Checked)
            {
                (this.bindingSource2.Current as Matching).WorkStyle = string.Empty;
                (this.bindingSource2.Current as Matching).WorkerId = string.Empty;
                (this.bindingSource2.Current as Matching).WorkerName = string.Empty;
                (this.bindingSource2.Current as Matching).Mtm_Past = null;
            }
            else if (RbtWF1.Checked)
            {
                (this.bindingSource2.Current as Matching).addWorkStyle1 = string.Empty;
                (this.bindingSource2.Current as Matching).addworkerId1 = string.Empty;
                (this.bindingSource2.Current as Matching).addworker1 = string.Empty;
            }
            else if (RbtWF2.Checked)
            {
                (this.bindingSource2.Current as Matching).addWorkStyle2 = string.Empty;
                (this.bindingSource2.Current as Matching).addworkerId2 = string.Empty;
                (this.bindingSource2.Current as Matching).addworker2 = string.Empty;
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


            var WPMs = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != Line && (SqlMethods.Like(P.Flag, "%h%") || P.Flag == null || P.Flag == "" || (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == false)) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime) || (P.StartTime >= StartTime && P.StartTime > EndTime && P.EndTime > EndTime)));

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

        private bool ReservedsNew(string wkid, string Factory, string Line, DateTime StartTime, DateTime EndTime, List<WPMaster> WPMs, List<Matching> Matching)
        {
            foreach (WPMaster wp in WPMs)
            {
                //Factory,LineCode,j_NO,J2_job,Rwo,Qn,Bcolor
                var Mgs = Matching.Where(X => X.Factory == wp.Factory && X.LineCode == wp.LineCode && X.j_NO == wp.j_NO && X.J2_job == wp.J2_job &&
                      X.Rwo == wp.Rwo & X.Qn == wp.Qn && X.Bcolor == wp.Bcolor && (X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid ||
                      X.addworkerId3 == wkid)).Count();

                if (Mgs > 0)
                {
                    return true;
                }
            }
            return false;
        }


        private bool Lockeds(string wkid, string Factory, string Line, DateTime StartTime, DateTime EndTime)
        {
            var WPMs = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != Line && (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == true) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime) || (P.StartTime >= StartTime && P.StartTime > EndTime && P.EndTime > EndTime)));
            foreach (WPMaster wp in WPMs)
            {
                foreach (PoolInfo pf in wp.PoolInfos)
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
        private bool LockedsNew(string wkid, string Factory, string Line, DateTime StartTime, DateTime EndTime, List<WPMaster> WPMs, List<Lb5Matching> Lb5M)
        {

            foreach (WPMaster wp in WPMs)
            {
                foreach (PoolInfo pf in wp.PoolInfos)
                {//Factory,LineCode,j_NO,J2_job,Rwo,Qn,Date,OTN,Bcolor
                    var Mgs = Lb5M.Where(X => X.Factory == pf.Factory && X.LineCode == pf.LineCode && X.j_NO == pf.j_NO && X.J2_job == pf.J2_job && X.Rwo == X.Rwo && X.Qn == X.Qn && X.Date == pf.Date && X.OTN == pf.OTN && X.Bcolor == wp.Bcolor && (X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid || X.addworkerId3 == wkid)).Count();//( pf.Lb5Matchings.Where(X => X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid || X.addworkerId3 == wkid).Count();
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
            if (RbtWF.Checked)
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
            var WPMs = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != Line && (SqlMethods.Like(P.Flag, "%h%") || P.Flag == null || P.Flag == "" || SqlMethods.Like(P.Flag, "%s%")) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime) || (P.StartTime >= StartTime && P.StartTime > EndTime && P.EndTime > EndTime)));
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
                        rs.EndTime = wp.EndTime;
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

        private void btnOK_Click(object sender, EventArgs e)
        {

        }




        private void Cust_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {

            if (firstload)
                return;

            if (this.gridView1.FocusedRowHandle >= 0 && this.gridView2.FocusedRowHandle >= 0)
            {
                //PH.LWPM.BO.WorkForce wf = gridView1.GetRow(gridView1.FocusedRowHandle) as PH.LWPM.BO.WorkForce;
                PH.LWPM.BO.Matching mc = gridView2.GetRow(gridView2.FocusedRowHandle) as PH.LWPM.BO.Matching;
                //lblSeniorityS.Text = wf.SeniorityDisp;
                //lblHaveDone.Text = context.GetCount(wf.Id, mc.OperationCode).GetValueOrDefault().ToString();
                //for (int i = 0; i < gridView1.RowCount; i++)
                //{
                int i = gridView1.FocusedRowHandle;
                PH.LWPM.BO.WorkForce wf = gridView1.GetRow(i) as PH.LWPM.BO.WorkForce;

                if (wf != null && mc != null)
                {
                    wf.CurrentDataContext = context;
                    wf.OperationCode = mc.OperationCode.Trim();
                    gridView1.SetRowCellValue(i, colPastMTM, wf.PastMTM);
                    // gridView1.SetRowCellValue(i, colDidInFac, wf.DidTime_InFac);
                    gridView1.SetRowCellValue(i, colDidByWf, wf.DidTime_ByWf);
                    gridView1.SetRowCellValue(i, colFirstPass, wf.Per_FirsPass); //首通率
                }

                // }

                gridView1.RefreshData();

            }
        }

        private void bindingSource2_CurrentChanged(object sender, EventArgs e)
        {
            //if (this.bindingSource2.Current == null) return;
            //Matching obj = this.bindingSource2.Current as Matching;
            //if (obj == null) return;

            //if (string.IsNullOrEmpty(obj.WorkerId) && string.IsNullOrEmpty(obj.WorkerName))
            //{
            //    if (this.radReArrangeWF.Checked)
            //    {
            //        this.RbtWF.Checked = true;
            //    }
            //}
            //else
            //{
            //    if (this.RbtWF.Checked)
            //    {
            //        this.radReArrangeWF.Checked = true;
            //    }
            //}
        }

    }
}