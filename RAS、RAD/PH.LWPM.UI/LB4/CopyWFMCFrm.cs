using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;
using System.Linq;
using System.Data.Linq.SqlClient;

namespace PH.LWPM.UI.LB4
{
    public partial class CopyWFMCFrm : DevExpress.XtraEditors.XtraForm
    {
        public string Var_line { get; set; }
        public string Var_CustStyleCode { get; set; }
        public string Var_PHStyleCode { get; set; }
        public int Var_Version { get; set; }
        public RAPLQDataContext Context { get; set; }
        private IEnumerable<Matching> mching;

        public CopyWFMCFrm()
        {
            InitializeComponent();
        }

        public CopyWFMCFrm(IEnumerable<Matching> mchings)
        {
            this.mching = mchings;
            InitializeComponent();
        }

        private void CopyWFMCFrm_Load(object sender, EventArgs e)
        {
            //bindingSource1.DataSource = Context.WPMasters.Where(P => P.LineCode == Var_line && SqlMethods.Like(P.CustStyleCode,Var_CustStyleCode.Substring(0,4)+"%") );
            bindingSource1.DataSource = Context.WPMasters.Where(P => P.LineCode == Var_line);
            gridView1.ActiveFilterString = string.Format("Version ='{0}' and CustStyleCode='{1}'", Var_Version, Var_CustStyleCode);
            gridControl1.FindForm().Refresh();


        }

        private void BtnOK_Click(object sender, EventArgs e)
        {
            WPMaster CurMaster = this.bindingSource1.Current as WPMaster;

            if (CurMaster.PoolInfos.Count() > 0)
            {


                // var MatchingLst =CurMaster.PoolInfos.Where(P => P.Date ==CurMaster.EndTime && P.OTN.TrimEnd() == "OT2").FirstOrDefault();

                //var MatchingLst = CurMaster.PoolInfos.Where(P => P.IsConfirmed.GetValueOrDefault())
                //    .OrderByDescending(P => P.Date).OrderByDescending(P => P.OTN).FirstOrDefault(); 
                
                var MatchingLst = CurMaster.PoolInfos.OrderByDescending(p => p.Date).FirstOrDefault();
                if (MatchingLst != null)
                {
                    if (MatchingLst.Lb5Matchings.Count > 0)
                    {
                        foreach (Lb5Matching mg in MatchingLst.Lb5Matchings)
                        {
                            var CurXHopt = mching.Where(P => P.WPSN == mg.WPSN).FirstOrDefault();
                            if (CurXHopt != null)
                            {
                                CurXHopt.WorkerName = mg.WorkerName;
                                CurXHopt.WorkerId = mg.WorkerId;
                                CurXHopt.WorkStyle = mg.WorkStyle;
                                CurXHopt.MachineId = mg.MachineId;
                                CurXHopt.Rpm0 = mg.Rpm0;
                                CurXHopt.addworker1 = mg.addworker1;
                                CurXHopt.addworker2 = mg.addworker2;
                                CurXHopt.addworker3 = mg.addworker3;
                                CurXHopt.addworkerId1 = mg.addworkerId1;
                                CurXHopt.addworkerId2 = mg.addworkerId2;
                                CurXHopt.addworkerId3 = mg.addworkerId3;
                                CurXHopt.addWorkStyle1 = mg.addWorkStyle1;
                                CurXHopt.addWorkStyle2 = mg.addWorkStyle2;
                                CurXHopt.addWorkStyle3 = mg.addWorkStyle3;
                                CurXHopt.addMachineId1 = mg.addMachineId1;
                                CurXHopt.addMachineId2 = mg.addMachineId2;
                                CurXHopt.addMachineId3 = mg.addMachineId3;
                                CurXHopt.addRpm1 = mg.addRpm1;
                                CurXHopt.addRpm2 = mg.addRpm2;
                                CurXHopt.addRpm3 = mg.addRpm3;
                            }
                        }
                    }

                    else
                    {
                        foreach (Matching mg in (bindingSource1.Current as WPMaster).Matchings)
                        {
                            var CurXHopt = mching.Where(P => P.WPSN == mg.WPSN).FirstOrDefault();
                            if (CurXHopt != null)
                            {
                                CurXHopt.WorkerName = mg.WorkerName;
                                CurXHopt.WorkerId = mg.WorkerId;
                                CurXHopt.WorkStyle = mg.WorkStyle;
                                CurXHopt.MachineId = mg.MachineId;
                                CurXHopt.Rpm0 = mg.Rpm0;
                                CurXHopt.addworker1 = mg.addworker1;
                                CurXHopt.addworker2 = mg.addworker2;
                                CurXHopt.addworker3 = mg.addworker3;
                                CurXHopt.addworkerId1 = mg.addworkerId1;
                                CurXHopt.addworkerId2 = mg.addworkerId2;
                                CurXHopt.addworkerId3 = mg.addworkerId3;
                                CurXHopt.addWorkStyle1 = mg.addWorkStyle1;
                                CurXHopt.addWorkStyle2 = mg.addWorkStyle2;
                                CurXHopt.addWorkStyle3 = mg.addWorkStyle3;
                                CurXHopt.addMachineId1 = mg.addMachineId1;
                                CurXHopt.addMachineId2 = mg.addMachineId2;
                                CurXHopt.addMachineId3 = mg.addMachineId3;
                                CurXHopt.addRpm1 = mg.addRpm1;
                                CurXHopt.addRpm2 = mg.addRpm2;
                                CurXHopt.addRpm3 = mg.addRpm3;
                            }

                        }
                    }

                }


            }
            else
            {
                foreach (Matching mg in (bindingSource1.Current as WPMaster).Matchings)
                {
                    var CurXHopt = mching.Where(P => P.WPSN == mg.WPSN).FirstOrDefault();
                    if (CurXHopt != null)
                    {
                        CurXHopt.WorkerName = mg.WorkerName;
                        CurXHopt.WorkerId = mg.WorkerId;
                        CurXHopt.WorkStyle = mg.WorkStyle;
                        CurXHopt.MachineId = mg.MachineId;
                        CurXHopt.Rpm0 = mg.Rpm0;
                        CurXHopt.addworker1 = mg.addworker1;
                        CurXHopt.addworker2 = mg.addworker2;
                        CurXHopt.addworker3 = mg.addworker3;
                        CurXHopt.addworkerId1 = mg.addworkerId1;
                        CurXHopt.addworkerId2 = mg.addworkerId2;
                        CurXHopt.addworkerId3 = mg.addworkerId3;
                        CurXHopt.addWorkStyle1 = mg.addWorkStyle1;
                        CurXHopt.addWorkStyle2 = mg.addWorkStyle2;
                        CurXHopt.addWorkStyle3 = mg.addWorkStyle3;
                        CurXHopt.addRpm1 = mg.addRpm1;
                        CurXHopt.addRpm2 = mg.addRpm2;
                        CurXHopt.addRpm3 = mg.addRpm3;
                    }

                }
            }

        }
    }
}