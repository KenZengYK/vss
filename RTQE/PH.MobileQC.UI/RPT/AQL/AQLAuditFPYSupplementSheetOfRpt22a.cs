using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.MobileQC.BO;
using System.Data;
using System.Linq;
using System.Collections.Generic;
using PH.MobileQC.UI.UserControllibrary;

namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class AQLAuditFPYSupplementSheetOfRpt22a : DevExpress.XtraReports.UI.XtraReport
    {
        List<sp_AQLAuditFPYSupplementSheetOfRpt22a> DetailList = new List<sp_AQLAuditFPYSupplementSheetOfRpt22a>();
        List<sp_AQLAuditFPYSupplementSheetOfRpt22aWorkShop> WorkShopList = new List<sp_AQLAuditFPYSupplementSheetOfRpt22aWorkShop>();
        List<sp_AQLAuditFPYSupplementSheetOfRpt22aFactoryByLotByPcs> FactoryByLotByPcsList = new List<sp_AQLAuditFPYSupplementSheetOfRpt22aFactoryByLotByPcs>();
        List<sp_AQLAuditFPYSupplementSheetOfRpt22aTips> TipsList = new List<sp_AQLAuditFPYSupplementSheetOfRpt22aTips>();

        public AQLAuditFPYSupplementSheetOfRpt22a(DatePeroidTypes AReportDatePeroidType, string AFactory, string AWeekOrMonth, DateTime ADateFrom, DateTime ADateTo)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000029");
            xrRptName.Text = reportHelper.ReportInfo.ReportName_CN;
            xrVerContext.Text = reportHelper.ReportInfo.VerContext;


            xrlPrint.Text = DateTime.Now.ToString("yyyy-MM-dd");
            if (AReportDatePeroidType == DatePeroidTypes.Daily)
            {
                //title_En.Text = "Daily " + title_En.Text;
                xrllDate.Text = "[AQL Audit Date/審定日期 : " + ADateFrom.ToString("yyyy-MM-dd") + "]";
            }
            else if (AReportDatePeroidType == DatePeroidTypes.Weekly)
            {
                //title_En.Text = "Weekly " + title_En.Text;
                xrllDate.Text = string.Format("[Week/周 {0} (AQL Audit Date/審定日期 : {1} ~ {2})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
            }
            else if (AReportDatePeroidType == DatePeroidTypes.Monthly)
            {
                //title_En.Text = "Monthly " + title_En.Text;
                //xrllDate.Text = string.Format("[Month/月 {0} (AQL Audit Date/審定日期 : {1})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"));
                xrllDate.Text = string.Format("[Month/月 {0} (AQL Audit Date/審定日期 : {1} ~ {2})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
            }
            else if (AReportDatePeroidType == DatePeroidTypes.PeroidRang)
            {
                //title_En.Text = "Period Range of " + title_En.Text;
                xrllDate.Text = string.Format("[Period Range/週期範圍 (AQL Audit Date/審定日期 : {0} ~ {1})]", ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
            }
           
            List<string> FactoryList = new List<string>();
            FactoryList.Add("SL");
            FactoryList.Add("RX");
            FactoryList.Add("CL");
            if ((AReportDatePeroidType != DatePeroidTypes.Daily))
            {
               
                    FactoryList.Clear();
                    FactoryList.Add(AFactory);
                

            }
  
            //if ( (AReportDatePeroidType == DatePeroidTypes.Daily))
            //{
            //    if (FactoryList.Where(dr => dr == AFactory).Count() == 0)
            //    {
            //        FactoryList.Clear();
            //        FactoryList.Add(AFactory);
            //    }
                
            //}
            //else
            //{
            //    FactoryList.Clear();
            //    FactoryList.Add(AFactory);
            //}

            foreach (string FactoryObj in FactoryList)
            {
                MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
                string SqlStr = "exec sp_AQLAuditFPYSupplementSheetOfRpt22a '{0}','{1}','{2}'";

                SqlStr = string.Format(SqlStr, FactoryObj, ADateFrom, ADateTo);
                DataSet ds = context.ExecuteDataSet(SqlStr, new DataSet(), "Opts");              


                DetailList.AddRange(ListSource(ds, FactoryObj));
                WorkShopList.AddRange(WorkShopListSource(ds, FactoryObj));
                FactoryByLotByPcsList.AddRange(FactoryByLotByPcsListSource(ds, FactoryObj));
                TipsList.AddRange(TipsListSource(ds, FactoryObj));               
               
            }
            this.bindingSource1.DataSource = DetailList;




        }


        public List<sp_AQLAuditFPYSupplementSheetOfRpt22a> ListSource(DataSet ds, string Factory)
        {
            List<sp_AQLAuditFPYSupplementSheetOfRpt22a> ListSource = new List<sp_AQLAuditFPYSupplementSheetOfRpt22a>();
            ListSource = ds.Tables[0].AsEnumerable().Select(dr => new sp_AQLAuditFPYSupplementSheetOfRpt22a
            {
                FactoryFlag = Factory,

                SeqNo = dr["SeqNo"].ToString(),

                factory1 = dr["factory1"].ToString(),
                WorkShop1 = dr["WorkShop1"].ToString(),
                Line1 = dr["Line1"].ToString(),
                ByLot1 = dr["ByLot1"].ToString(),
                LotRank1 = dr["LotRank1"].ToString(),
                ByPcs1 = dr["ByPcs1"].ToString(),
                PcsRank1 = dr["PcsRank1"].ToString(),

                factory2 = dr["factory2"].ToString(),
                WorkShop2 = dr["WorkShop2"].ToString(),
                Line2 = dr["Line2"].ToString(),
                ByLot2 = dr["ByLot2"].ToString(),
                LotRank2 = dr["LotRank2"].ToString(),
                ByPcs2 = dr["ByPcs2"].ToString(),
                PcsRank2 = dr["PcsRank2"].ToString(),

                factory3 = dr["factory3"].ToString(),
                WorkShop3 = dr["WorkShop3"].ToString(),
                Line3 = dr["Line3"].ToString(),
                ByLot3 = dr["ByLot3"].ToString(),
                LotRank3 = dr["LotRank3"].ToString(),
                ByPcs3 = dr["ByPcs3"].ToString(),
                PcsRank3 = dr["PcsRank3"].ToString(),

                factory4 = dr["factory4"].ToString(),
                WorkShop4 = dr["WorkShop4"].ToString(),
                Line4 = dr["Line4"].ToString(),
                ByLot4 = dr["ByLot4"].ToString(),
                LotRank4 = dr["LotRank4"].ToString(),
                ByPcs4 = dr["ByPcs4"].ToString(),
                PcsRank4 = dr["PcsRank4"].ToString(),

                factory5 = dr["factory5"].ToString(),
                WorkShop5 = dr["WorkShop5"].ToString(),
                Line5 = dr["Line5"].ToString(),
                ByLot5 = dr["ByLot5"].ToString(),
                LotRank5 = dr["LotRank5"].ToString(),
                ByPcs5 = dr["ByPcs5"].ToString(),
                PcsRank5 = dr["PcsRank5"].ToString(),


                factory6 = dr["factory6"].ToString(),
                WorkShop6 = dr["WorkShop6"].ToString(),
                Line6 = dr["Line6"].ToString(),
                ByLot6 = dr["ByLot6"].ToString(),
                LotRank6 = dr["LotRank6"].ToString(),
                ByPcs6 = dr["ByPcs6"].ToString(),
                PcsRank6 = dr["PcsRank6"].ToString(),

            }).ToList();
            return ListSource;
        }

        public List<sp_AQLAuditFPYSupplementSheetOfRpt22aWorkShop> WorkShopListSource(DataSet ds, string Factory)
        {
            List<sp_AQLAuditFPYSupplementSheetOfRpt22aWorkShop> ListSource = new List<sp_AQLAuditFPYSupplementSheetOfRpt22aWorkShop>();
            ListSource = ds.Tables[1].AsEnumerable().Select(dr => new sp_AQLAuditFPYSupplementSheetOfRpt22aWorkShop
            {
                FactoryFlag = Factory,
                xh = dr["xh"].ToString(),   
                WorkShop = dr["WorkShop"].ToString()  
            }).ToList();
            return ListSource;
         }

        public List<sp_AQLAuditFPYSupplementSheetOfRpt22aFactoryByLotByPcs> FactoryByLotByPcsListSource(DataSet ds, string Factory)
        {
            List<sp_AQLAuditFPYSupplementSheetOfRpt22aFactoryByLotByPcs> ListSource = new List<sp_AQLAuditFPYSupplementSheetOfRpt22aFactoryByLotByPcs>();
            ListSource = ds.Tables[2].AsEnumerable().Select(dr => new sp_AQLAuditFPYSupplementSheetOfRpt22aFactoryByLotByPcs
            {
                FactoryFlag = Factory,
                FactoryByLotByPcs = dr["FactoryByLotByPcs"].ToString(),               
            }).ToList();

            return ListSource;
        }

        public List<sp_AQLAuditFPYSupplementSheetOfRpt22aTips>TipsListSource(DataSet ds, string Factory)
        {
            List<sp_AQLAuditFPYSupplementSheetOfRpt22aTips> ListSource = new List<sp_AQLAuditFPYSupplementSheetOfRpt22aTips>();
            ListSource = ds.Tables[3].AsEnumerable().Select(dr => new sp_AQLAuditFPYSupplementSheetOfRpt22aTips
            {
                FactoryFlag = Factory,
                Tips = dr["Tips"].ToString(),
            }).ToList();

            return ListSource;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string LotRank1 = this.GetCurrentColumnValue("LotRank1").ToString();
            string PcsRank1 = this.GetCurrentColumnValue("PcsRank1").ToString(); 
            string LotRank2 = this.GetCurrentColumnValue("LotRank2").ToString();
            string PcsRank2 = this.GetCurrentColumnValue("PcsRank2").ToString();
            string LotRank3 = this.GetCurrentColumnValue("LotRank3").ToString();
            string PcsRank3 = this.GetCurrentColumnValue("PcsRank3").ToString();
            string LotRank4 = this.GetCurrentColumnValue("LotRank4").ToString();
            string PcsRank4 = this.GetCurrentColumnValue("PcsRank4").ToString();
            string LotRank5 = this.GetCurrentColumnValue("LotRank5").ToString();
            string PcsRank5 = this.GetCurrentColumnValue("PcsRank5").ToString();
            string LotRank6 = this.GetCurrentColumnValue("LotRank6").ToString();
            string PcsRank6 = this.GetCurrentColumnValue("PcsRank6").ToString();

            if (PcsRank1 == "1" || PcsRank1 == "2" || PcsRank1 == "3")
            {
                this.xrPcsRank1.ForeColor = System.Drawing.Color.Green;
                this.xrPcsRank1.Font = new System.Drawing.Font("Arial Unicode MS", 6F,System.Drawing.FontStyle.Bold);
            }
            else 
            {
                this.xrPcsRank1.ForeColor = System.Drawing.Color.Black;
                this.xrPcsRank1.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }
            if (LotRank1 == "1" || LotRank1 == "2" || LotRank1 == "3")
            {
                this.xrLotRank1.ForeColor = System.Drawing.Color.Green;
                this.xrLotRank1.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else
            {
                this.xrLotRank1.ForeColor = System.Drawing.Color.Black;
                this.xrLotRank1.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }
            if (PcsRank2 == "1" || PcsRank2 == "2" || PcsRank2 == "3")
            {
                this.xrPcsRank2.ForeColor = System.Drawing.Color.Green;
                this.xrPcsRank2.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else 
            {
                this.xrPcsRank2.ForeColor = System.Drawing.Color.Black;
                this.xrPcsRank2.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }
            if (LotRank2 == "1" || LotRank2 == "2" || LotRank2 == "3")
            {
                this.xrLotRank2.ForeColor = System.Drawing.Color.Green;
                this.xrLotRank2.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else 
            {
                this.xrLotRank2.ForeColor = System.Drawing.Color.Black;
                this.xrLotRank2.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }
            if (PcsRank3 == "1" || PcsRank3 == "2" || PcsRank3 == "3")
            {
                this.xrPcsRank3.ForeColor = System.Drawing.Color.Green;
                this.xrPcsRank3.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else 
            {
                this.xrPcsRank3.ForeColor = System.Drawing.Color.Black;
                this.xrPcsRank3.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }
            if (LotRank3 == "1" || LotRank3 == "2" || LotRank3 == "3")
            {
                this.xrLotRank3.ForeColor = System.Drawing.Color.Green;
                this.xrLotRank3.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else 
            {
                this.xrLotRank3.ForeColor = System.Drawing.Color.Black;
                this.xrLotRank3.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }
            if (PcsRank4 == "1" || PcsRank4 == "2" || PcsRank4 == "3")
            {
                this.xrPcsRank4.ForeColor = System.Drawing.Color.Green;
                this.xrPcsRank4.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else
            {
                this.xrPcsRank4.ForeColor = System.Drawing.Color.Black;
                this.xrPcsRank4.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }
            if (LotRank4 == "1" || LotRank4 == "2" || LotRank4 == "3")
            {
                this.xrLotRank4.ForeColor = System.Drawing.Color.Green;
                this.xrLotRank4.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else 
            {
                this.xrLotRank4.ForeColor = System.Drawing.Color.Black;
                this.xrLotRank4.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }
            if (PcsRank5 == "1" || PcsRank5 == "2" || PcsRank5 == "3")
            {
                this.xrPcsRank5.ForeColor = System.Drawing.Color.Green;
                this.xrPcsRank5.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else 
            {
                this.xrPcsRank5.ForeColor = System.Drawing.Color.Black;
                this.xrPcsRank5.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }
            if (LotRank5 == "1" || LotRank5 == "2" || LotRank5 == "3")
            {
                this.xrLotRank5.ForeColor = System.Drawing.Color.Green;
                this.xrLotRank5.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else 
            {
                this.xrLotRank5.ForeColor = System.Drawing.Color.Black;
                this.xrLotRank5.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }

            if (PcsRank6 == "1" || PcsRank6 == "2" || PcsRank6 == "3")
            {
                this.xrPcsRank6.ForeColor = System.Drawing.Color.Green;
                this.xrPcsRank6.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else
            {
                this.xrPcsRank6.ForeColor = System.Drawing.Color.Black;
                this.xrPcsRank6.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }


            if (LotRank6 == "1" || LotRank6 == "2" || LotRank6 == "3")
            {
                this.xrLotRank6.ForeColor = System.Drawing.Color.Green;
                this.xrLotRank6.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Bold);
            }
            else
            {
                this.xrLotRank6.ForeColor = System.Drawing.Color.Black;
                this.xrLotRank6.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            }


        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (TipsList.Count == 0) return;
            string Factory = this.GetCurrentColumnValue("FactoryFlag").ToString();
            this.xrTips.Text = TipsList.Where(dr => dr.FactoryFlag == Factory).Select(dr => dr.Tips).FirstOrDefault();
           //this.xrTips.Text = ds.Tables[3].Rows[0]["Tips"].ToString();
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (FactoryByLotByPcsList.Count == 0) return;
            string Factory = this.GetCurrentColumnValue("FactoryFlag").ToString();

            string FactoryByLotByPcs = FactoryByLotByPcsList.Where(dr => dr.FactoryFlag == Factory).Select(dr => dr.FactoryByLotByPcs).FirstOrDefault();

            this.xrFactory.Text = "Fty: " + Factory + " (PY by lot / PY by pcs / Rank) among Ws" + FactoryByLotByPcs;

            var VWorkShop = WorkShopList.Where(dr => dr.FactoryFlag == Factory).Select(dr => dr.WorkShop).ToList();

            for (int i = 0; i < 6; i++)
            {
                if (i < VWorkShop.Count)
                {
                    this.FindControl("xrWorkShop" + (i + 1), true).Text = "Ws " + VWorkShop[i];

                    this.FindControl("xrNameAL" + (i + 1), true).Text = "AL#";
                    this.FindControl("xrLot" + (i + 1), true).Text = "PY by lot";
                    this.FindControl("xrNameLotRank" + (i + 1), true).Text = "Rank";
                    this.FindControl("xrPcs" + (i + 1), true).Text = "PY by pcs";
                    this.FindControl("xrNamePcsRank" + (i + 1), true).Text = "Rank";

                }
                else
                {
                    this.FindControl("xrWorkShop" + (i + 1), true).Text = "";
                    this.FindControl("xrNameAL" + (i + 1), true).Text = "";
                    this.FindControl("xrLot" + (i + 1), true).Text = "";
                    this.FindControl("xrNameLotRank" + (i + 1), true).Text = "";
                    this.FindControl("xrPcs" + (i + 1), true).Text = "";
                    this.FindControl("xrNamePcsRank" + (i + 1), true).Text = "";

                }

            }


        }



    }
}
