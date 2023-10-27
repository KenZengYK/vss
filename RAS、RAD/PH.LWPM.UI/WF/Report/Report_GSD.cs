using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;
using PH.LWPM.UI.Report;

namespace PH.LWPM.UI.WF.Report
{
    public partial class Report_GSD : PH.Platform.UI.CS.UI0.BlankForm
    {
        private WorkForceList Context;
        private PH.LWPM.BO.RAPLQDataContext context;


        public Report_GSD()
        {
            InitializeComponent();
        }

        string _Deployment;
        public Report_GSD(string ADeployment)
        {
            InitializeComponent();
            _Deployment = ADeployment;

            this.Context = new WorkForceList();
            this.context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        }

        private void Report_GSD_Load(object sender, EventArgs e)
        {

            BindCombx();

        }


        private void BindCombx()
        {
            //this.T_factory.Properties.Items.AddRange(context.WorkForces.Where(P => P.Factory != "").Select(S => S.Factory).Distinct().ToArray());
            //this.T_factory.Properties.Items.AddRange(context.BaseCodes.Where(p => p.Type == "factory").Select(S => S.Code).Distinct().ToArray());
            string[] Factories = new string[] { "ALL Regions", "China", "SL", "RX", "Bangladesh", "CL" };
            this.T_factory.Properties.Items.AddRange(Factories);

        }

        private void BindReport(string factory, GSDReport gsdreport)
        {

            gsdreport.bindingSource1.DataSource = BindReportLbl(factory, gsdreport);

            gsdreport.ShowPreviewDialog();
        }
        private List<GSDreport> BindReportLbl(string factory, GSDReport gsdreport)
        {
            string sql = string.Format("exec rap_GSD '{0}', '{1}'", factory, _Deployment);
            List<GSDreport> li = context.ExecuteQuery<GSDreport>(sql).ToList();

            int? totalsmfcut = 0;
            int? sumStationedcut = 0;
            int? sumMobilecut = 0;
            int? sumFloatingcut = 0;
            //decimal lblsumF = 0;
            //decimal lblsumA = 0;
            //decimal lblsumE = 0;

            //decimal lblsumB = 0;
            decimal lblsumS = 0;
            decimal lblsumM = 0;

            decimal lblsumLeaveStatus = 0;

            foreach (var item in li)
            {

                sumStationedcut = sumStationedcut + item.Stationedcut;
                sumMobilecut = sumMobilecut + item.Mobilecut;
                sumFloatingcut = sumFloatingcut + item.Floatingcut;
                //lblsumF = lblsumF + item.F;
                //lblsumA = lblsumA + item.A;
                //lblsumE = lblsumE + item.E;

                //BSM
                //lblsumB = lblsumB + item.ppB;
                lblsumS = lblsumS + item.ppS;
                lblsumM = lblsumM + item.ppM;

                lblsumLeaveStatus = lblsumLeaveStatus + item.LongLeave;
                if (item.Stationedcut == null)
                {

                }
                else
                {
                    item.strStationedcut = item.Stationedcut.ToString();
                }
                if (item.Mobilecut == null)
                {

                }
                else
                {
                    item.strMobilecut = item.Mobilecut.ToString();
                }
                if (item.Floatingcut == null)
                {

                }

                else
                {
                    item.strFloatingcut = item.Floatingcut.ToString();
                }

                //FAE
                item.strF = getTotal(item.SMFcut, item.F, item.strF);
                item.strA = getTotal(item.SMFcut, item.A, item.strA);
                item.strE = getTotal(item.SMFcut, item.E, item.strE);


                //BSM
                item.strppB = getTotal(item.SMFcut, item.ppB, item.strppB);
                item.strppS = getTotal(item.SMFcut, item.ppS, item.strppS);
                item.strppM = getTotal(item.SMFcut, item.ppM, item.strppM);
                item.strLongLeave = getTotal(item.SMFcut, item.LongLeave, item.strLongLeave);


            }
            totalsmfcut = li.Select(p => p.tbtotal).FirstOrDefault();


            string strlblsumF = string.Empty;
            string strlblsumA = string.Empty;
            string strlblsumE = string.Empty;

            string strlblsumB = string.Empty;
            string strlblsumS = string.Empty;
            string strlblsumM = string.Empty;
            string strlblsumLeaveStatus = string.Empty;
            //FAE
            //strlblsumF = getTotal(totalsmfcut, lblsumF, strlblsumF);
            //strlblsumA = getTotal(totalsmfcut, lblsumA, strlblsumA);
            //strlblsumE = getTotal(totalsmfcut, lblsumE, strlblsumE);


            //BSM
            //strlblsumB = getTotal(totalsmfcut, lblsumB, strlblsumB);
            strlblsumS = getTotal(totalsmfcut, lblsumS, strlblsumS);
            strlblsumM = getTotal(totalsmfcut, lblsumM, strlblsumM);

            strlblsumLeaveStatus = getTotal(totalsmfcut, lblsumLeaveStatus, strlblsumLeaveStatus);



            gsdreport.lblsumF.Text = String.Format("{0}", strlblsumF);
            gsdreport.lblsumA.Text = String.Format("{0}", strlblsumA);
            gsdreport.lblsumE.Text = String.Format("{0}", strlblsumE);
            gsdreport.lblsumB.Text = String.Format("{0}", strlblsumB);
            //gsdreport.lblsumS.Text = String.Format("{0}", strlblsumS);
            //gsdreport.lblsumM.Text = String.Format("{0}", strlblsumM);
            //gsdreport.lblsumLeaveStatus.Text = String.Format("{0}", strlblsumLeaveStatus);

            //gsdreport.lbl_factory.Text = String.Format("( {0} )", li.Select(p => p.Factory).FirstOrDefault().Trim());

            return li;
        }

        private static string getTotal(int? totalsmfcut, decimal lblsumB, string strlblsumB)
        {
            if (lblsumB != 0 && totalsmfcut != 0)
            {
                strlblsumB = lblsumB.ToString() + " (" + string.Format("{0:f}", Math.Round((((lblsumB) / (decimal)totalsmfcut * 100)), 2)) + "%)";
            }
            else
            {
                strlblsumB = "0 (" + string.Format("{0:f}", 0) + "%)";
            }
            return strlblsumB;
        }
        private void bt_ok_Click(object sender, EventArgs e)
        {
            if (this.T_factory.EditValue == null || string.IsNullOrEmpty(this.T_factory.EditValue.ToString()))
            {
                MessageBox.Show("Please choice factory!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            string factory = this.T_factory.Text.ToString();

            dWFListReport rptdWFList = new dWFListReport(factory, _Deployment);
            rptdWFList.ShowPreview();


            //GSDReport gsdreport = new GSDReport(factory, _Deployment);
            ////if (getCountWF(factory) > 0)
            ////{
            //BindReport(factory, gsdreport);
            ////}
            //else
            //{
            //    MessageBox.Show("Not Data!");
            //}

        }
        //        private int getCountWF(string Ftys)
        //        {
        //            int count = 0;
        //            string[] ClsNames = context.BaseCodes.Where(p => p.Type == "WFClass").Select(s => s.Name).ToArray();
        //            //count = context.WorkForces.Where(p => p.Factory == Ftys && p.IsRelated == true && p.InActive == false && (ClsNames).Contains(p.ClsName) && (p.MTM == false || p.MTM == null)).Count();
        ////            string SqlStr = @"select 1 from workforce
        ////                              where IsProjection = 0 and Vacancy not in ('SF', 'OSF', 'OV', 'BV') and 
        ////                             (ReDate is null or ReDate > getdate()) and 
        ////                              isnull(InActive, 0) = 0 and isnull(MTM, 0) = 0 and 
        ////                              Factory = '{0}' and WFPart like 'Direct Manufacturing Labors%' and 
        ////                              isnull(IsDeployment, 0) = 1'";
        ////            int count = context.ExecuteCommand(string.Format(SqlStr, T_factory.Text));
        //            return count;
        //        }

    }


}
