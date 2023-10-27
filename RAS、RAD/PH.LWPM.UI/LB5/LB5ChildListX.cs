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
using PH.LWPM.UI.Report;

namespace PH.LWPM.UI.LB5
{
    public partial class LB5ChildListX : ListForm
    {
        public LB5ChildListX()
        {
            InitializeComponent();
        }

        protected override void OnClickAddNew()
        {
            //base.OnClickAddNew();

            if (this.BindingSource.Current == null) return;

            PoolInfo pi = this.BindingSource.Current as PoolInfo;
            if (pi == null) return;

            pi.WPMaster.CopyPreviousPoolInfo();
            this.BindingSource.DataSource = null;
            (this.ParentForm as LB5ChildFrmM).DataBind();
        }

    


        //protected override void OnClickOpen()
        //{
        //    RAPLQDataContext RAPDataCnx = ContextBuilder.CreateContext<RAPLQDataContext>();
        //    var CurPoolInfo = this.BindingSource.Current as PoolInfo;
        //    var CurWPMaster = CurPoolInfo.WPMaster;
        //    Lb5Matching LB5Lst = RAPDataCnx.Lb5Matchings.Where(P => P.Factory == CurWPMaster.Factory && P.LineCode == CurWPMaster.LineCode && P.j_NO == CurWPMaster.j_NO && P.J2_job == P.J2_job && P.Bcolor == CurWPMaster.Bcolor && P.Rwo == CurWPMaster.Rwo && P.Qn == CurWPMaster.Qn && P.Date == CurPoolInfo.Date && P.OTN == CurPoolInfo.OTN).FirstOrDefault();

        //    if (CurPoolInfo.Lb5Matchings.Count == 0 && LB5Lst == null)
        //    {

        //        foreach (Matching Mg in CurWPMaster.Matchings)
        //        {
        //            Lb5Matching Lg = new Lb5Matching();
        //            Lg.Factory = Mg.Factory;
        //            Lg.j_NO = Mg.j_NO;
        //            Lg.J2_job = Mg.J2_job;
        //            Lg.Rwo = Mg.Rwo;
        //            Lg.Qn = Mg.Qn;
        //            Lg.Bcolor = Mg.Bcolor;
        //            Lg.LineCode = Mg.LineCode;
        //            Lg.Date = CurPoolInfo.Date;
        //            Lg.OTN = CurPoolInfo.OTN;
        //            Lg.WPSN = Mg.WPSN;
        //            Lg.OperationSN = Mg.OperationSN;
        //            Lg.OperationGroup = Mg.OperationGroup;
        //            Lg.OperationCode = Mg.OperationCode;
        //            Lg.OperationName = Mg.OperationName;
        //            Lg.MCType = Mg.MCType;
        //            Lg.GSD_SAH = Mg.GSD_SAH;
        //            Lg.BestSAH = Mg.BestSAH;
        //            Lg.BestMTM = Mg.BestMTM;
        //            Lg.WorkforceNum = Mg.WorkforceNum;
        //            Lg.Rpm = Mg.Rpm;
        //            Lg.WorkerName = Mg.WorkerName;
        //            Lg.WorkerId = Mg.WorkerId;
        //            Lg.WorkStyle = Mg.WorkStyle;
        //            Lg.MachineId = Mg.MachineId;
        //            Lg.addworker1 = Mg.addworker1;
        //            Lg.addworkerId1 = Mg.addworkerId1;
        //            Lg.addWorkStyle1 = Mg.addWorkStyle1;
        //            Lg.addMachineId1 = Mg.addMachineId1;
        //            Lg.addworker2 = Mg.addworker2;
        //            Lg.addworkerId2 = Mg.addworkerId2;
        //            Lg.addWorkStyle2 = Mg.addWorkStyle2;
        //            Lg.addMachineId2 = Mg.addMachineId2;
        //            Lg.addworker3 = Mg.addworker3;
        //            Lg.addworkerId3 = Mg.addworkerId3;
        //            Lg.addWorkStyle3 = Mg.addWorkStyle3;
        //            Lg.addMachineId3 = Mg.addMachineId3;
        //            Lg.Rpm0 = Mg.Rpm0;
        //            Lg.addRpm1 = Mg.addRpm1;
        //            Lg.addRpm2 = Mg.addRpm2;
        //            Lg.addRpm3 = Mg.addRpm3;
        //            Lg.Bcolor = Mg.Bcolor;
        //            Lg.mc = Mg.mc;
        //            Lg.JFlag = Mg.JFlag;
        //            CurPoolInfo.Lb5Matchings.Add(Lg);
        //        }

        //        (this.DataContext as RAPLQDataContext).SubmitChanges();
        //    }

        //    base.OnClickOpen();
        //}
    }
}
