using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Linq;
using PH.PHGDB2.BO;
using System.Collections.Generic;

namespace PH.HDO.UI.ByPiece
{
    public partial class ELWFilteringMachineReport : DevExpress.XtraReports.UI.XtraReport
    {
        public ELWFilteringMachineReport(DataSet dt, DateTime StratTime, DateTime DueTime)
        {
            InitializeComponent();
            GetDataSet(dt);

            xrLabel7.Text = DateTime.Now.ToString("yyyy-MM-dd");
            xrLabel8.Text = StratTime.ToString("yyyy-MM-dd");
            xrLabel9.Text = DueTime.ToString("yyyy-MM-dd");
        }

        public void GetDataSet(DataSet dtAll) 
        {
            DataTable dt = dtAll.Tables[2];

            List<ByPiece_ELWFilteringMachine> List = new List<ByPiece_ELWFilteringMachine>();
            for (int i = 0; i < dt.Rows.Count; i++) 
            {
                ByPiece_ELWFilteringMachine obj=new ByPiece_ELWFilteringMachine();
                obj.Nub = i + 1;
                obj.EmpName=dt.Rows[i]["EmpName"].ToString();
                obj.ELWDate=dt.Rows[i]["ELWDate"].ToString();
                obj.EmpID=dt.Rows[i]["EmpID"].ToString();
                obj.ELWFilteringMachineSAH = Convert.ToDouble(dt.Rows[i]["ELWFilteringMachineSAH"].ToString());
                obj.ELWPrice = Convert.ToDouble(dt.Rows[i]["ELWPrice"].ToString());
                obj.Qty = Convert.ToInt32(dt.Rows[i]["Qty"].ToString());
                obj.Amount = Convert.ToDouble(dt.Rows[i]["Amount"].ToString());
                obj.WorkTime = Convert.ToDouble(dt.Rows[i]["WorkTime"].ToString());
                obj.Remark=dt.Rows[i]["Remark"].ToString();
                
                List.Add(obj);
            }
            this.bindingSource1.DataSource = List;


            DataTable dtSummary = dtAll.Tables[3];
            List<ByPiece_ELWFilteringMachineSummary> ListSummary = new List<ByPiece_ELWFilteringMachineSummary>();
            for (int i = 0; i < dtSummary.Rows.Count; i++)
            {
                ByPiece_ELWFilteringMachineSummary obj = new ByPiece_ELWFilteringMachineSummary();
                obj.Nub = i + 1;
                obj.EmpName = dtSummary.Rows[i]["EmpName"].ToString();
                obj.EmpID = dtSummary.Rows[i]["EmpID"].ToString();
                obj.Qty = Convert.ToInt32(dtSummary.Rows[i]["Qty"].ToString());
                obj.Amount = Convert.ToDouble(dtSummary.Rows[i]["Amount"].ToString());
                obj.WorkTime = Convert.ToDouble(dtSummary.Rows[i]["WorkTime"].ToString());     
                ListSummary.Add(obj);
            }

            ELWFilteringMachineReportSummary rpt_Sub2 = new ELWFilteringMachineReportSummary(ListSummary);
            xrSubreport1.ReportSource = rpt_Sub2;
        }
    }
}
