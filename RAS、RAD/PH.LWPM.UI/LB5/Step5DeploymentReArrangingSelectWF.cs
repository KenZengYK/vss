using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using System.Collections;
using System.Data.Linq.SqlClient;

namespace PH.LWPM.UI.LB5
{
    public partial class Step5DeploymentReArrangingSelectWF : Form
    {
        RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();

        private IRepository.IPublicLibrary publicLibary;
        private IEnumerable<PH.LWPM.BO.WorkForce> WFs;

        public string WFID { get; set; }

        public Step5DeploymentReArrangingSelectWF(string AFactory, string ALineCode)
        {
            InitializeComponent();
            publicLibary = new Repository.PublicLibrary();

            this.PrepareData(AFactory, ALineCode);
        }

        void PrepareData(string AFactory, string ALineCode)
        {
            //RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();

            context.CommandTimeout = 3000;

            //Get Line所在組
            string team = "", loc = "";

            if (ALineCode.Substring(0, 4) != "PPWS")
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
                DepartalSort _dst = (from dst in context.DepartalSorts where dst.Class_EN == ALineCode select dst).FirstOrDefault();
                if (_dst != null)
                    team = _dst.Team_EN;

                //string team = (from dst in context.DepartalSorts where dst.Class_EN == LineCode select dst).FirstOrDefault().Team_EN;

                //Get Line所在车间 
                PH.LWPM.BO.WorkForce _wor = (from ws in context.WorkForces
                                             where ws.Factory == AFactory
                                             && ws.LineCode == ALineCode
                                                 //&& ws.WFWhere_2 == LineCode
                                             && !ws.MTM.GetValueOrDefault()
                                             && !ws.MTM.GetValueOrDefault()
                                                 // && ws.ApprovalExitByDept != null 
                                             && ws.REDate.HasValue && ws.REDate > DateTime.Now

                                             select ws).Union(
                                                from wf in context.WorkForces
                                                where (
                                                        wf.Factory == AFactory
                                                        && wf.LineCode == ALineCode
                                                    //&& wf.WFWhere_2 == LineCode
                                                    // && wf.ApprovalExitByDept == null 
                                                      && !wf.REDate.HasValue
                                                      && !wf.MTM.GetValueOrDefault() && !wf.InActive.GetValueOrDefault()
                                                )
                                                select wf
                                             ).FirstOrDefault();
                if (_wor != null)
                    loc = _wor.Location;

                this.Text = string.Format("Step 5 Select Worker -- Ws: {0}  Line: {1}", loc, ALineCode);


                WFs = from a in context.WorkForces
                      where a.Factory == AFactory &&
                            !(a.IsProjection ?? false) && a.Vacancy != "SF" && a.Vacancy != "OSF" && !(a.InActive ?? false) &&
                            (!a.REDate.HasValue || (a.REDate.HasValue && a.REDate > DateTime.Now)) &&
                            !(a.MTM ?? false) && a.DeptName == "Sewing Dept"
                      select a;

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
            //bindingSource2.DataSource = mching;


            //var _NoFloaterLst = WFs.Where(P => P.WorkerType.TrimEnd() == "Mobile" || P.WorkerType.TrimEnd() == "Mobile WF");

            foreach (PH.LWPM.BO.WorkForce obj in WFs)
            {
                obj.CurrentWorkshop = loc; //保存當前選擇Line所在的車間, 用于LB4選人時區分是否為本Workshop，由David加入 2018-07-13
            }

            //var _NoFloaterLst = WFs.Where(P => !string.IsNullOrEmpty(P.WorkerType) && P.WorkerType.TrimEnd().Contains("Mobile"));
            //foreach (PH.LWPM.BO.WorkForce wf in _NoFloaterLst)
            //{
            //    wf.Locked = Lockeds(wf.Id.TrimEnd(), AFactory, ALineCode, StartTime, EndTime, CurTime);
            //    wf.Resered = Reserveds(wf.Id.TrimEnd(), AFactory, ALineCode, StartTime, EndTime);
            //}


            //RefreshWFState();

            bindingSource1.DataSource = from a in WFs.ToList()
                                        orderby a.WsGroupNameSort, a.JobTitleSort
                                        select a;



        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            this.WFID = (this.bindingSource1.Current as PH.LWPM.BO.WorkForce).Id;

            this.DialogResult = DialogResult.OK;
        }

        //private bool Reserveds(string wkid, string Factory, string Line, DateTime StartTime, DateTime EndTime)
        //{


        //    var WPMs = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != Line && (SqlMethods.Like(P.Flag, "%h%") || P.Flag == null || P.Flag == "" || (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == false)) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime)));
        //    foreach (WPMaster wp in WPMs)
        //    {
        //        var Mgs = wp.Matchings.Where(X => X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid || X.addworkerId3 == wkid).Count();
        //        if (Mgs > 0)
        //        {
        //            return true;
        //        }
        //    }
        //    return false;


        //}
        //private bool Lockeds(string wkid, string Factory, string Line, DateTime StartTime, DateTime EndTime, DateTime CurTime)
        //{
        //    var WPMs = context.WPMasters.Where(P => P.Factory == Factory && P.LineCode != Line && (SqlMethods.Like(P.Flag, "%s%") && P.IsConfirmed == true) && ((P.StartTime >= StartTime && P.EndTime <= EndTime) || (P.StartTime < StartTime && P.EndTime > StartTime && P.EndTime <= EndTime) || (P.StartTime <= StartTime && P.EndTime >= EndTime && P.StartTime <= EndTime)));
        //    foreach (WPMaster wp in WPMs)
        //    {

        //        var PILst = wp.PoolInfos.Where(P => P.Date == CurTime && P.OTN == TimeRange);
        //        foreach (PoolInfo pf in PILst)
        //        {
        //            var Mgs = pf.Lb5Matchings.Where(X => X.WorkerId == wkid || X.addworkerId1 == wkid || X.addworkerId2 == wkid || X.addworkerId3 == wkid).Count();
        //            if (Mgs > 0)
        //            {
        //                return true;
        //            }
        //        }
        //    }
        //    return false;

        //}



    }
}
