using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace PH.LWPM.UI.Report
{
    public partial class WFListReport_Sub : DevExpress.XtraReports.UI.XtraReport
    {
        string _Factory;
        public WFListReport_Sub(string AFactory, DataSet ds)
        {
            InitializeComponent();
            _Factory = AFactory;

            this.bindingSource1.DataSource = SubSource(ds);
        }

        public List<WFListReportResult_Sub> SubSource(DataSet ds)
        {
            List<WFListReportResult_Sub> List = ds.Tables[1].AsEnumerable().Select(dr => new WFListReportResult_Sub()
            {
                Factory = dr["Factory"].ToString(),
                WFQty = Convert.ToInt32(dr["WFQty"].ToString()),

                DeploymentYesQty = Convert.ToInt32(dr["DeploymentYesQty"].ToString()),
                DeploymentNonQty = Convert.ToInt32(dr["DeploymentNonQty"].ToString()),
                HeadOfficeCostQty = Convert.ToInt32(dr["HeadOfficeCostQty"].ToString()),
                FactoryCostQty = Convert.ToInt32(dr["FactoryCostQty"].ToString()),
                Qty_PDDept = Convert.ToInt32(dr["Qty_PDDept"].ToString()),
                Qty_AdminDept = Convert.ToInt32(dr["Qty_AdminDept"].ToString()),
                Qty_QADept = Convert.ToInt32(dr["Qty_QADept"].ToString()),
                Qty_WarehouseDept = Convert.ToInt32(dr["Qty_WarehouseDept"].ToString()),
                Qty_CuttingDept = Convert.ToInt32(dr["Qty_CuttingDept"].ToString()),
                Qty_MouldingDept = Convert.ToInt32(dr["Qty_MouldingDept"].ToString()),
                Qty_SewingDept = Convert.ToInt32(dr["Qty_SewingDept"].ToString()),
                Qty_PackingDept = Convert.ToInt32(dr["Qty_PackingDept"].ToString()),
                Qty_MEDept = Convert.ToInt32(dr["Qty_MEDept"].ToString()),

                PerDeploymentYesQty = Convert.ToDecimal(dr["PerDeploymentYesQty"].ToString()),
                PerDeploymentNonQty = Convert.ToDecimal(dr["PerDeploymentNonQty"].ToString()),
                PerHeadOfficeCostQty = Convert.ToDecimal(dr["PerHeadOfficeCostQty"].ToString()),
                PerFactoryCostQty = Convert.ToDecimal(dr["PerFactoryCostQty"].ToString()),
                PerQty_PDDept = Convert.ToDecimal(dr["PerQty_PDDept"].ToString()),
                PerQty_AdminDept = Convert.ToDecimal(dr["PerQty_AdminDept"].ToString()),
                PerQty_QADept = Convert.ToDecimal(dr["PerQty_QADept"].ToString()),
                PerQty_WarehouseDept = Convert.ToDecimal(dr["PerQty_WarehouseDept"].ToString()),
                PerQty_CuttingDept = Convert.ToDecimal(dr["PerQty_CuttingDept"].ToString()),
                PerQty_MouldingDept = Convert.ToDecimal(dr["PerQty_MouldingDept"].ToString()),
                PerQty_SewingDept = Convert.ToDecimal(dr["PerQty_SewingDept"].ToString()),
                PerQty_PackingDept = Convert.ToDecimal(dr["PerQty_PackingDept"].ToString()),
                PerQty_MEDept = Convert.ToDecimal(dr["PerQty_MEDept"].ToString())

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

        }





    }
}
