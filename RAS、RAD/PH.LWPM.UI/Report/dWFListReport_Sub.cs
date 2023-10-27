using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.LWPM.BO;
using System.Data;
using System.Linq;

namespace PH.LWPM.UI.Report
{
    public partial class dWFListReport_Sub : DevExpress.XtraReports.UI.XtraReport
    {

        string _Factory;
        public dWFListReport_Sub(string AFactory, DataSet ds)
        {
            InitializeComponent();
            _Factory = AFactory;

            this.bindingSource1.DataSource = SubSource(ds);
        }

        public List<dWFListResult_Sub> SubSource(DataSet ds)
        {
            List<dWFListResult_Sub> List = ds.Tables[1].AsEnumerable().Select(dr => new dWFListResult_Sub()
            {
                Factory = dr["Factory"].ToString(),
                dWFQty = Convert.ToInt32(dr["dWFQty"].ToString()),

                DeploymentYesQty = Convert.ToInt32(dr["DeploymentYesQty"].ToString()),
                DeploymentNonQty = Convert.ToInt32(dr["DeploymentNonQty"].ToString()),
                HeadOfficeCostQty = Convert.ToInt32(dr["HeadOfficeCostQty"].ToString()),
                FactoryCostQty = Convert.ToInt32(dr["FactoryCostQty"].ToString()),
                B = Convert.ToInt32(dr["B"].ToString()),
                F = Convert.ToInt32(dr["F"].ToString()),
                A = Convert.ToInt32(dr["A"].ToString()),
                E = Convert.ToInt32(dr["E"].ToString()),
                StrapMaking = Convert.ToInt32(dr["StrapMaking"].ToString()),
                PadPrint = Convert.ToInt32(dr["PadPrint"].ToString()),


                OtherWs = Convert.ToInt32(dr["OtherWs"].ToString()),
                PPWs = Convert.ToInt32(dr["PPWs"].ToString()),
                OtherDept = Convert.ToInt32(dr["OtherDept"].ToString()),



                PerDeploymentYesQty = Convert.ToDecimal(dr["PerDeploymentYesQty"].ToString()),
                PerDeploymentNonQty = Convert.ToDecimal(dr["PerDeploymentNonQty"].ToString()),
                PerHeadOfficeCostQty = Convert.ToDecimal(dr["PerHeadOfficeCostQty"].ToString()),
                PerFactoryCostQty = Convert.ToDecimal(dr["PerFactoryCostQty"].ToString()),
                PerB = Convert.ToDecimal(dr["PerB"].ToString()),
                PerF = Convert.ToDecimal(dr["PerF"].ToString()),
                PerA = Convert.ToDecimal(dr["PerA"].ToString()),
                PerE = Convert.ToDecimal(dr["PerE"].ToString()),
                PerStrapMaking = Convert.ToDecimal(dr["PerStrapMaking"].ToString()),
                PerPadPrint = Convert.ToDecimal(dr["PerPadPrint"].ToString()),

                PerOtherWs = Convert.ToDecimal(dr["PerOtherWs"].ToString()),
                PerPPWs = Convert.ToDecimal(dr["PerPPWs"].ToString()),
                PerOtherDept = Convert.ToDecimal(dr["PerOtherDept"].ToString()),

            }).ToList();



            return List;
        }

        private void xrTableRow2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string FactoryText = this.GetCurrentColumnValue("Factory") == null ? "" : this.GetCurrentColumnValue("Factory").ToString();
            string[] Factories = new string[] { "ALL Regions", "China", "Bangladesh" };

            if (Factories.Contains(_Factory) && FactoryText == _Factory)
            {
                this.xrTableRow2.BackColor = Color.PaleTurquoise;
                tcTotal.Text = "Total:";
            }
            else
            {
                tcTotal.Text = "Sub-Total:";
            }

            int dWFQty = Convert.ToInt32(this.GetCurrentColumnValue("dWFQty"));
            int iWsCount = Convert.ToInt32(this.GetCurrentColumnValue("PadPrint")) +
                          Convert.ToInt32(this.GetCurrentColumnValue("StrapMaking")) +
                          Convert.ToInt32(this.GetCurrentColumnValue("B")) +
                          Convert.ToInt32(this.GetCurrentColumnValue("A")) +
                          Convert.ToInt32(this.GetCurrentColumnValue("E")) +
                          Convert.ToInt32(this.GetCurrentColumnValue("PPWs")) +
                          Convert.ToInt32(this.GetCurrentColumnValue("OtherWs"));

            if (dWFQty != iWsCount)
            {
                lblsumSMF1.ForeColor = Color.Red;
            }
            else
            {
                lblsumSMF1.ForeColor = System.Drawing.SystemColors.ControlText;
            }
        }










    }
}
