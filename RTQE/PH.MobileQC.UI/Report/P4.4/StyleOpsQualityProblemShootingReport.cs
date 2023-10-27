using System;
using System.Drawing;
using System.Data;
using System.Collections;
using System.ComponentModel;
using System.Collections.Generic;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Windows.Forms;
using System.Linq;
using PH.MobileQC.UI.RPT;

namespace PH.MobileQC.UI
{
    public partial class StyleOpsQualityProblemShootingReport : DevExpress.XtraReports.UI.XtraReport
    {
        DataTable dtDate;
        DataTable dtDetail;

        public StyleOpsQualityProblemShootingReport(DataSet ds, string ACustStyle, string ADateFrom, string ADateTo , string AFactory)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000008");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;
            xrFactory.Text = AFactory;
            xrLabel12.Text =reportHelper.ReportInfo.ReportName_EN;
            xrLabel6.Text = reportHelper.ReportInfo.ReportName_CN; 

            //MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            //string SqlStr = string.Format("exec sp_StyleOptQualityProblemShootingReport '{0}', '{1}', '{2}' , '{3}'",  AFactory, ACustStyle, ADateFrom, ADateTo);

            //DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "tb_ShootingReport");

            if (ds.Tables.Count == 0) return;

            //處理表頭信息
            DataTable dtHeader = ds.Tables[0];
            if (dtHeader != null)
            {
                this.lbCustStyle.Text = dtHeader.Rows[0]["Style"].ToString();
                //this.lbWs.Text = dtHeader.Rows[0]["Workshop"].ToString();
                this.lbTotalLine.Text = dtHeader.Rows[0]["TotalLine"].ToString();
                this.lbTotalQN.Text = dtHeader.Rows[0]["TotalQN"].ToString();
                //this.lbFirstFailureDate.Text = dtHeader.Rows[0]["FirstFailureDate"].ToString();
            }

            //處理明細表中6個日期
          dtDate = ds.Tables[1];
            int Index = 1;
            if (dtDate != null || dtDate.Rows.Count > 0)
            {
                foreach (DataRow dr in dtDate.Rows)
                {
                        this.FindControl("tcDate" + Index.ToString(), true).Text = dr["QCDate"].ToString();
                        Index++;
                }
            }
            List<StyleOptQualityProblemShootingReportResultByOptCode> OptList = ds.Tables[3].AsEnumerable().Select(dr => new StyleOptQualityProblemShootingReportResultByOptCode
            {
                OptCode = dr["OptCode"].ToString(),
                OptName = dr["OptName"].ToString(),
                OptNameCN = dr["OptNameCN"].ToString(),
            }).ToList();

            StyleOpsQualityProblemShootingReport_SubByOptsCde SubOpt = new StyleOpsQualityProblemShootingReport_SubByOptsCde(OptList);
            xrSubreport1.ReportSource = SubOpt;


            List<StyleOptQualityProblemShootingReportResultByWF> WFList = ds.Tables[4].AsEnumerable().Select(dr => new StyleOptQualityProblemShootingReportResultByWF
            {
                WFID = dr["WFID"].ToString(),
                WFName = dr["WFName"].ToString()

            }).ToList();

            StyleOpsQualityProblemShootingReport_SubByWF SubWF = new StyleOpsQualityProblemShootingReport_SubByWF(WFList);
            xrSubreport2.ReportSource = SubWF;


            //處理明細表中的數據
            dtDetail = ds.Tables[2];
            //int a = dtDetail.Rows.Count;
           

            this.bindingSource.DataSource = dtDetail;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.bindingSource.Count >= 1)
            {
                double? FPY1 = this.GetActualFPY(1);
                double? FPY2 = this.GetActualFPY(2);
                double? FPY3 = this.GetActualFPY(3);
                double? FPY4 = this.GetActualFPY(4);
                double? FPY5 = this.GetActualFPY(5);
                double? FPY6 = this.GetActualFPY(6);



                if ((FPY1 ?? -19) == -19)
                //if ((ConvertToDouble(this.GetCurrentColumnValue("FPY2").ToString()) ?? -19.00) == -19)
                //if (this.GetCurrentColumnValue("FPY1") is DBNull)
                {
                    this.tcFPY2.ForeColor = Color.Black;
                }
                else
                {
                    this.tcFPY2.ForeColor = (FPY2 < FPY1) ? Color.Red : ((FPY2 > FPY1) ? Color.Green : Color.Black);
                }

                if ((FPY2 ?? -19) == -19)
                {
                    this.tcFPY3.ForeColor = Color.Black;
                }
                else
                {
                    this.tcFPY3.ForeColor = (FPY3 < FPY2) ? Color.Red : ((FPY3 > FPY2) ? Color.Green : Color.Black);
                }

                if ((FPY3 ?? -19) == -19)
                {
                    this.tcFPY4.ForeColor = Color.Black;
                }
                else
                {

                    this.tcFPY4.ForeColor = (FPY4 < FPY3) ? Color.Red : ((FPY4 > FPY3) ? Color.Green : Color.Black);

                }


                if ((FPY4 ?? -19) == -19)
                { this.tcFPY5.ForeColor = Color.Black; }
                else
                {
                    this.tcFPY5.ForeColor = (FPY5 < FPY4) ? Color.Red : ((FPY5 > FPY4) ? Color.Green : Color.Black);
                }

                if ((FPY5 ?? -19) == -19)
                { this.tcFPY6.ForeColor = Color.Black; }
                else
                {
                    this.tcFPY6.ForeColor = (FPY6 < FPY5) ? Color.Red : ((FPY6 > FPY5) ? Color.Green : Color.Black);
                }
            }
       
        }

        double? GetActualFPY(int ACurrentFPYIndex)
        {
            if (ACurrentFPYIndex == 1)
            {
                if (this.GetCurrentColumnValue("FPY1") is DBNull)
                    return null;

                ConvertToDouble(this.GetCurrentColumnValue("FPY1").ToString());
            }


            if (this.GetCurrentColumnValue("FPY" + ACurrentFPYIndex.ToString()) is DBNull)
            {
                return GetActualFPY(ACurrentFPYIndex - 1);
            }
            else
            {
                return ConvertToDouble(this.GetCurrentColumnValue("FPY" + ACurrentFPYIndex.ToString()).ToString());
            }

        }


        void ProcessDataShow(string ACurrentColumnFPY, string APreviousColumnrFPY, string ACurrentColumnIndex)
        {
            string CurrentColumnDate = this.FindControl("tcDate" + ACurrentColumnIndex, true).Text;
            //string CurrentColumnExamQty = this.FindControl("tcExamQty" + ACurrentColumnIndex, true).Text;

            if (string.IsNullOrEmpty(CurrentColumnDate) || ACurrentColumnFPY == APreviousColumnrFPY)
            {
                this.FindControl("tcExamQty" + ACurrentColumnIndex, true).DataBindings.Clear();
                this.FindControl("tcPQty" + ACurrentColumnIndex, true).DataBindings.Clear();
                this.FindControl("tcFQty" + ACurrentColumnIndex, true).DataBindings.Clear();
                this.FindControl("tcFPY" + ACurrentColumnIndex, true).DataBindings.Clear();
            }
            else
            {
                this.FindControl("tcExamQty" + ACurrentColumnIndex, true).DataBindings.Add("Text", this.bindingSource.DataSource, "ExamQty" + ACurrentColumnIndex);
                this.FindControl("tcPQty" + ACurrentColumnIndex, true).DataBindings.Add("Text", this.bindingSource.DataSource, "PQty" + ACurrentColumnIndex);
                this.FindControl("tcFQty" + ACurrentColumnIndex, true).DataBindings.Add("Text", this.bindingSource.DataSource, "FQty" + ACurrentColumnIndex);
                this.FindControl("tcFPY" + ACurrentColumnIndex, true).DataBindings.Add("Text", this.bindingSource.DataSource, "FPY" + ACurrentColumnIndex, "{0}%");
            }
        }

        double ConvertToDouble(string AValue)
        {
            if (string.IsNullOrEmpty(AValue))
            {
                return 0.00;
            }

            try
            {
                return Convert.ToDouble(AValue.Replace("%", ""));
            }
            catch
            {
                return 0.00;
            }
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
    
            if (dtDetail.Rows.Count == 0) return;
            string QN = this.GetCurrentColumnValue("QN").ToString();


                int Index = 1;
                foreach (DataRow dr in dtDate.Rows)
                {
                        this.FindControl("tcDate" + Index.ToString(), true).Text = dr["QCDate"].ToString();
                        Index++;
                }
           
          
            var lists = dtDetail.AsEnumerable().Where(dr => dr["QN"].ToString() == QN);


            if (lists.Where(dr => dr["FPY1"] != DBNull.Value).Select(p => p["FPY1"]).Count() > 0)
            {

                this.tcDate1.Text = "1st Failure dd\r\n" + dtDate.Rows[0]["QCDate"].ToString();
                return;
            }
            if (lists.Where(dr => dr["FPY2"] != DBNull.Value).Select(p => p["FPY2"]).Count() > 0)
            {
                this.tcDate2.Text = "1st Failure dd\r\n" + dtDate.Rows[1]["QCDate"].ToString();
                return;
            }
            if (lists.Where(dr => dr["FPY3"] != DBNull.Value).Select(p => p["FPY3"]).Count() > 0)
            {
                this.tcDate3.Text = "1st Failure dd\r\n" + dtDate.Rows[2]["QCDate"].ToString();
                return;
            }
            if (lists.Where(dr => dr["FPY4"] != DBNull.Value).Select(p => p["FPY4"]).Count() > 0)
            {
                this.tcDate4.Text = "1st Failure dd\r\n" + dtDate.Rows[3]["QCDate"].ToString();
                return;
            }
            if (lists.Where(dr => dr["FPY5"] != DBNull.Value).Select(p => p["FPY5"]).Count() > 0)
            {
                this.tcDate5.Text = "1st Failure dd\r\n" + dtDate.Rows[4]["QCDate"].ToString();
                return;
            }
            if (lists.Where(dr => dr["FPY6"] != DBNull.Value).Select(p => p["FPY6"]).Count() > 0)
            {
                this.tcDate6.Text = "1st Failure dd\r\n" + dtDate.Rows[5]["QCDate"].ToString();
                return;
            }

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            if (dtDetail.Rows.Count == 0) return;
            string QN = this.GetCurrentColumnValue("QN").ToString();
            decimal OptCodeNub = dtDetail.AsEnumerable().Where(dr => dr["QN"].ToString() == QN).Select(dr => dr["OptCode"]).Distinct().Count();
            decimal OptCodettl = Convert.ToDecimal(dtDetail.AsEnumerable().Where(dr => dr["QN"].ToString() == QN).Select(dr => dr["TotalOpt"]).First().ToString());

            decimal OptWFNub = dtDetail.AsEnumerable().Where(dr => dr["QN"].ToString() == QN).Select(dr => dr["WFID"]).Distinct().Count();
            decimal OptWFttl = Convert.ToDecimal(dtDetail.AsEnumerable().Where(dr => dr["QN"].ToString() == QN).Select(dr => dr["TotalWF"]).First().ToString());

            if (OptCodettl == 0)
            {
                xrTtlOptCode.Text = "0%";
            }
            else
            {
                xrTtlOptCode.Text = OptCodeNub.ToString() + " (" + Math.Round(Convert.ToDecimal(OptCodeNub * 100 / OptCodettl), 2).ToString() + "%)";
            }

            if (OptWFttl == 0)
            {
                xrTtlOptWF.Text = "0%";
            }
            else
            {
                xrTtlOptWF.Text = OptWFNub.ToString() + " (" + Math.Round(Convert.ToDecimal(OptWFNub * 100 / OptWFttl), 2).ToString() + "%)";
            }
            //this.GetCurrentColumnValue("TotalOpt").ToString();
            //string    dtDetail.AsEnumerable().Where(dr => dr["QN"].ToString() == QN).Select(dr => dr["OptCode"]).Distinct().Count().ToString();

            //xrTtlOptCode.Text = dtDetail.AsEnumerable().Where(dr => dr["QN"].ToString() == QN).Select(dr => dr["OptCode"]).Distinct().Count().ToString();
            
        }

    }
}
