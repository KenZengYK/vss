using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using System.Linq;

namespace PH.FabricInspection.UI
{
    public partial class SupplierAnalyseReport : DevExpress.XtraReports.UI.XtraReport
    {

        //Xsj20120907:©w¸qDefectÅã¥Üªº·sªº¼Æ¾Ú·½
        List<ReportMsg> ReportMsgList = new List<ReportMsg>();
        //----End

        List<SupplierQA> SList = new List<SupplierQA>();
        public SupplierAnalyseReport(List<SupplierQA> sqas,string period)
        {
            InitializeComponent();
            SList = sqas;

            //Xsj20120907:­«·s¾ã²zDefectªº¼Æ¾Ú·½
            MadeUpNewVersionDataSourc();
            //----End

            bindRptDataSource();
           // xrLabel2.Text=this.PageHeader.Index.ToString();
            xrLabel3.Text = xrLabel3.Text + DateTime.Now.ToShortDateString();
            xrLabel8.Text = period;
        }
     
        /// <summary>
        /// °ó¶¨±í¸ñÊý¾Ý
        /// </summary>
        public void bindRptDataSource()
        {
            //this.DataSource = SList;

            //this.xrLabel6.DataBindings.Add("Text", this.DataSource, "MCount");
            //this.c1.DataBindings.Add("Text", this.DataSource, "SupplierName");
            //this.c2.DataBindings.Add("Text", this.DataSource, "TotalQty");
            //this.c3.DataBindings.Add("Text", this.DataSource, "RefuseQty");
            //this.c4.DataBindings.Add("Text", this.DataSource, "RefusePercent");
            ////´²§G«¬²«ÂI

            //this.SPName1.DataBindings.Add("Text", this.DataSource, "SpreadDefectName1");
            //this.c5.DataBindings.Add("Text", this.DataSource, "SpreadDefectQty1");
 
            //this.SPName2.DataBindings.Add("Text", this.DataSource, "SpreadDefectName2");
            //this.c6.DataBindings.Add("Text", this.DataSource, "SpreadDefectQty2");

            //this.SPName3.DataBindings.Add("Text", this.DataSource, "SpreadDefectName3");
            //this.c7.DataBindings.Add("Text", this.DataSource, "SpreadDefectQty3");

            //this.SPName4.DataBindings.Add("Text", this.DataSource, "SpreadDefectName4");
            //this.c8.DataBindings.Add("Text", this.DataSource, "SpreadDefectQty4");

            //this.SPName5.DataBindings.Add("Text", this.DataSource, "SpreadDefectName5");
            //this.c9.DataBindings.Add("Text", this.DataSource, "SpreadDefectQty5");


            //this.c10.DataBindings.Add("Text", this.DataSource, "SpreadDefectQtyOther");


            ////§½³¡«¬²«ÂIüc

            //this.T1.DataBindings.Add("Text", this.DataSource, "PartDefectName1");
            //this.C11.DataBindings.Add("Text", this.DataSource, "PartDefectQty1");

            //this.T2.DataBindings.Add("Text", this.DataSource, "PartDefectName2");
            //this.C12.DataBindings.Add("Text", this.DataSource, "PartDefectQty2");

            //this.T3.DataBindings.Add("Text", this.DataSource, "PartDefectName3");
            //this.C13.DataBindings.Add("Text", this.DataSource, "PartDefectQty3");

            //this.T4.DataBindings.Add("Text", this.DataSource, "PartDefectName4");
            //this.C14.DataBindings.Add("Text", this.DataSource, "PartDefectQty4");

            //this.T5.DataBindings.Add("Text", this.DataSource, "PartDefectName5");
            //this.C15.DataBindings.Add("Text", this.DataSource, "PartDefectQty5");

            //this.T6.DataBindings.Add("Text", this.DataSource, "PartDefectName6");
            //this.C16.DataBindings.Add("Text", this.DataSource, "PartDefectQty6");

            //this.T7.DataBindings.Add("Text", this.DataSource, "PartDefectName7");
            //this.C17.DataBindings.Add("Text", this.DataSource, "PartDefectQty7");

            //this.T8.DataBindings.Add("Text", this.DataSource, "PartDefectName8");
            //this.C18.DataBindings.Add("Text", this.DataSource, "PartDefectQty8");

            //this.T9.DataBindings.Add("Text", this.DataSource, "PartDefectName9");
            //this.C19.DataBindings.Add("Text", this.DataSource, "PartDefectQty9");

            //this.T10.DataBindings.Add("Text", this.DataSource, "PartDefectName10");
            //this.C20.DataBindings.Add("Text", this.DataSource, "PartDefectQty10");

            //this.C21.DataBindings.Add("Text", this.DataSource, "PartDefectQtyOther");
            ////¶Ì´a”µÁ¿
            //this.C22.DataBindings.Add("Text", this.DataSource, "ActualQty");
            //this.C23.DataBindings.Add("Text", this.DataSource, "MouldTrail");
            //this.C24.DataBindings.Add("Text", this.DataSource, "FabricColor");

            //Xsj20120907¡GÀ³Shelleyªº­n¨D¡A­«·s³]¸m³øªíªºª©­±¡A¦Óª`ÄÀ±¼¥H¤W¥N½X²K¥[¥H¤U¥N½X¡C
            this.DataSource = this.ReportMsgList;


            this.xrLabel6.DataBindings.Add("Text", this.DataSource, "MCount");
            this.c1.DataBindings.Add("Text", this.DataSource, "SupplierName"); 


            this.c2.DataBindings.Add("Text", this.DataSource, "TotalQty");
            this.c3.DataBindings.Add("Text", this.DataSource, "RefuseQty");
            this.c4.DataBindings.Add("Text", this.DataSource, "RefusePercent");

            this.SPName1.DataBindings.Add("Text", this.DataSource, "DefectName1");
            this.c5.DataBindings.Add("Text", this.DataSource, "DefectQty1");

            this.SPName2.DataBindings.Add("Text", this.DataSource, "DefectName2");
            this.c6.DataBindings.Add("Text", this.DataSource, "DefectQty2");

            this.SPName3.DataBindings.Add("Text", this.DataSource, "DefectName3");
            this.c7.DataBindings.Add("Text", this.DataSource, "DefectQty3");

            this.SPName4.DataBindings.Add("Text", this.DataSource, "DefectName4");
            this.c8.DataBindings.Add("Text", this.DataSource, "DefectQty4");

            this.SPName5.DataBindings.Add("Text", this.DataSource, "DefectName5");
            this.c9.DataBindings.Add("Text", this.DataSource, "DefectQty5");

            this.c10.DataBindings.Add("Text", this.DataSource, "DefectQtyOther");


            this.C22.DataBindings.Add("Text", this.DataSource, "ActualQty");
            this.C23.DataBindings.Add("Text", this.DataSource, "MouldTrail");
            this.C24.DataBindings.Add("Text", this.DataSource, "FabricColor");


            this.C22.DataBindings.Add("Text", this.DataSource, "ActualQty");
            this.C23.DataBindings.Add("Text", this.DataSource, "MouldTrail");
            this.C24.DataBindings.Add("Text", this.DataSource, "FabricColor");

            //this.C25.DataBindings.Add("Text", this.DataSource, "Width");
            //this.C26.DataBindings.Add("Text", this.DataSource, "Weight");
            //this.C27.DataBindings.Add("Text", this.DataSource, "Elongation");
            //------End

            DevExpress.XtraReports.UI.GroupField groupFields = new GroupField("SupplierName");
            this.GroupHeader1.GroupFields.Add(groupFields); 

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //Xsj20120717:²K¥[¦Ê¤À¤ñÅã¥Ü
            #region
            //SupplierQA currMQA = this.Detail.Report.GetCurrentRow() as SupplierQA;
            //this.xrChartDefPercent.DataSource = currMQA.DefPercentageInfoList;
            //this.xrChartDefPercentBar.DataSource = currMQA.DefPercentageInfoList;


            //¬W¹Ï
            ReportMsg rptMsg = this.Detail.Report.GetCurrentRow() as ReportMsg;
            this.xrChartDefPercent.DataSource = rptMsg.DefPercentageInfoList;
            //»æ¹Ï 
            List<MaterialQA.DefectPercentInfo> defPercentageInfoList = new List<MaterialQA.DefectPercentInfo>();
            decimal defectSum = (rptMsg.DefectQty1 ?? 0) + (rptMsg.DefectQty2 ?? 0) + (rptMsg.DefectQty3 ?? 0) + (rptMsg.DefectQty4 ?? 0) + (rptMsg.DefectQty5 ?? 0) + (rptMsg.DefectQtyOther ?? 0);
            defectSum = (defectSum == 0 ? 1 : defectSum);

            MaterialQA.DefectPercentInfo dpInfo = new MaterialQA.DefectPercentInfo();
            if ((rptMsg.DefectQty1 ?? 0) > 0)
            {
                dpInfo.DefectType = rptMsg.DefectName1;
                dpInfo.Percentage = (rptMsg.DefectQty1 ?? 0) / defectSum;
                defPercentageInfoList.Add(dpInfo);
            }

            if ((rptMsg.DefectQty2 ?? 0) > 0)
            {
                dpInfo = new MaterialQA.DefectPercentInfo();
                dpInfo.DefectType = rptMsg.DefectName2;
                dpInfo.Percentage = (rptMsg.DefectQty2 ?? 0) / defectSum;
                defPercentageInfoList.Add(dpInfo);
            }

            if ((rptMsg.DefectQty2 ?? 0) > 0)
            {
                dpInfo = new MaterialQA.DefectPercentInfo();
                dpInfo.DefectType = rptMsg.DefectName3;
                dpInfo.Percentage = (rptMsg.DefectQty3 ?? 0) / defectSum;
                defPercentageInfoList.Add(dpInfo);
            }

            if ((rptMsg.DefectQty2 ?? 0) > 0)
            {
                dpInfo = new MaterialQA.DefectPercentInfo();
                dpInfo.DefectType = rptMsg.DefectName4;
                dpInfo.Percentage = (rptMsg.DefectQty4 ?? 0) / defectSum;
                defPercentageInfoList.Add(dpInfo);
            }

            if ((rptMsg.DefectQty2 ?? 0) > 0)
            {
                dpInfo = new MaterialQA.DefectPercentInfo();
                dpInfo.DefectType = rptMsg.DefectName5;
                dpInfo.Percentage = (rptMsg.DefectQty5 ?? 0) / defectSum;
                defPercentageInfoList.Add(dpInfo);
            }

            if ((rptMsg.DefectQty2 ?? 0) > 0)
            {
                dpInfo = new MaterialQA.DefectPercentInfo();
                dpInfo.DefectType = "Other";
                dpInfo.Percentage = (rptMsg.DefectQtyOther ?? 0) / defectSum;
                defPercentageInfoList.Add(dpInfo);
            }
            this.xrChartDefPercentBar.DataSource = defPercentageInfoList;
            this.xrChartDefPercentBar.DataSource = defPercentageInfoList;
            #endregion
        }
        //Xsj20120907:¾ã²z·sªº¼Æ¾Ú·½
        private void MadeUpNewVersionDataSourc()
        {
            foreach (SupplierQA currMQA in SList)
            {
                List<DefectInfo> defectInfoList = new List<DefectInfo>();
                DefectInfo currDefectInfo = null;
                if (!string.IsNullOrEmpty(currMQA.SpreadDefectName1))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.SpreadDefectName1).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.SpreadDefectQty1 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.SpreadDefectName1;
                        currDefectInfo.Qty = (currMQA.SpreadDefectQty1 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.SpreadDefectName2))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.SpreadDefectName2).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.SpreadDefectQty2 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.SpreadDefectName2;
                        currDefectInfo.Qty = (currMQA.SpreadDefectQty2 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.SpreadDefectName3))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.SpreadDefectName3).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.SpreadDefectQty3 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.SpreadDefectName3;
                        currDefectInfo.Qty = (currMQA.SpreadDefectQty3 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.SpreadDefectName4))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.SpreadDefectName4).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.SpreadDefectQty4 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.SpreadDefectName4;
                        currDefectInfo.Qty = (currMQA.SpreadDefectQty4 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.SpreadDefectName5))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.SpreadDefectName5).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.SpreadDefectQty5 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.SpreadDefectName5;
                        currDefectInfo.Qty = (currMQA.SpreadDefectQty5 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if ((currMQA.SpreadDefectQtyOther ?? 0) != 0)
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == "Others").FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.SpreadDefectPercentage ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = "Others";
                        currDefectInfo.Qty = (currMQA.SpreadDefectPercentage ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.PartDefectName1))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.PartDefectName1).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQty1 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.PartDefectName1;
                        currDefectInfo.Qty = (currMQA.PartDefectQty1 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.PartDefectName2))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.PartDefectName2).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQty2 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.PartDefectName2;
                        currDefectInfo.Qty = (currMQA.PartDefectQty2 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.PartDefectName3))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.PartDefectName3).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQty3 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.PartDefectName3;
                        currDefectInfo.Qty = (currMQA.PartDefectQty3 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.PartDefectName4))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.PartDefectName4).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQty4 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.PartDefectName4;
                        currDefectInfo.Qty = (currMQA.PartDefectQty4 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.PartDefectName5))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.PartDefectName5).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQty5 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.PartDefectName5;
                        currDefectInfo.Qty = (currMQA.PartDefectQty5 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.PartDefectName6))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.PartDefectName6).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQty6 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.PartDefectName6;
                        currDefectInfo.Qty = (currMQA.PartDefectQty6 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.PartDefectName7))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.PartDefectName7).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQty7 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.PartDefectName7;
                        currDefectInfo.Qty = (currMQA.PartDefectQty7 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.PartDefectName8))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.PartDefectName8).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQty8 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.PartDefectName8;
                        currDefectInfo.Qty = (currMQA.PartDefectQty8 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.PartDefectName9))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.PartDefectName9).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQty9 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.PartDefectName9;
                        currDefectInfo.Qty = (currMQA.PartDefectQty9 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if (!string.IsNullOrEmpty(currMQA.PartDefectName10))
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == currMQA.PartDefectName10).FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQty10 ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = currMQA.PartDefectName10;
                        currDefectInfo.Qty = (currMQA.PartDefectQty10 ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                if ((currMQA.PartDefectQtyOther ?? 0) != 0)
                {
                    currDefectInfo = defectInfoList.Where(p => p.DefectName == "Other").FirstOrDefault();
                    if (currDefectInfo != null)
                    {
                        currDefectInfo.Qty = (currDefectInfo.Qty ?? 0) + (currMQA.PartDefectQtyOther ?? 0);
                    }
                    else
                    {
                        currDefectInfo = new DefectInfo();
                        currDefectInfo.DefectName = "Other";
                        currDefectInfo.Qty = (currMQA.PartDefectQtyOther ?? 0);
                        defectInfoList.Add(currDefectInfo);
                    }
                }

                //Xsj20120907:Åã¥Ü«e5­Ó¡A«á­±ªºÂk¬°Other¡C
                defectInfoList = defectInfoList.OrderByDescending(p => p.Qty).ToList();

                ReportMsg reportMsg = new ReportMsg();
                for (int n = 0; n < defectInfoList.Count; n++)
                {
                    if (n == 0)
                    {
                        //²«ÂI 
                        reportMsg.DefectName1 = defectInfoList[n].DefectName;
                        reportMsg.DefectQty1 = defectInfoList[n].Qty;
                    }
                    if (n == 1)
                    {
                        //²«ÂI 
                        reportMsg.DefectName2 = defectInfoList[n].DefectName;
                        reportMsg.DefectQty2 = defectInfoList[n].Qty;
                    }
                    if (n == 2)
                    {
                        //²«ÂI 
                        reportMsg.DefectName3 = defectInfoList[n].DefectName;
                        reportMsg.DefectQty3 = defectInfoList[n].Qty;
                    }
                    if (n == 3)
                    {
                        //²«ÂI 
                        reportMsg.DefectName4 = defectInfoList[n].DefectName;
                        reportMsg.DefectQty4 = defectInfoList[n].Qty;
                    }
                    if (n == 4)
                    {
                        //²«ÂI 
                        reportMsg.DefectName5 = defectInfoList[n].DefectName;
                        reportMsg.DefectQty5 = defectInfoList[n].Qty;
                    }

                    if (n > 4)
                    {
                        decimal? otherQty = null;
                        //²«ÂI
                        for (int k = 5; k < defectInfoList.Count; k++)
                        {
                            otherQty = (otherQty ?? 0) + (defectInfoList[k].Qty ?? 0);
                        }
                        reportMsg.DefectQtyOther = otherQty;

                        break;
                    }
                }

                //reportMsg.ERP = currMQA.ERP;
                //reportMsg.SupplierItemNo = currMQA.SupplierItemNo;
                reportMsg .SupplierName = currMQA.SupplierName;
                reportMsg.MCount = currMQA.MCount;
                reportMsg.TotalQty = currMQA.TotalQty;
                reportMsg.RefuseQty = currMQA.RefuseQty;
                reportMsg.RefusePercent = currMQA.RefusePercent;
                reportMsg.ActualQty = currMQA.ActualQty;
                reportMsg.MouldTrail = currMQA.MouldTrail;
                reportMsg.FabricColor = currMQA.FabricColor;

                reportMsg.DefectPercentage = currMQA.DefectPercentage;
                reportMsg.OffColorPercentage = currMQA.OffColorPercentage;
                reportMsg.MouldTrialPercentage = currMQA.MouldTrialPercentage;
                reportMsg.ShortLengthPercentage = currMQA.ShortLengthPercentage;

                reportMsg.DefPercentageInfoList = currMQA.DefPercentageInfoList;

                this.ReportMsgList.Add(reportMsg);
            }
        }

        /// <summary>
        /// Xsj20120907¡GÀ³Shelleyªº­n¨D§ó§ï­ì³øªíªºª©­±
        /// ¨Ã¦X¨Ã´²¥¬Î¸ÂI©M§½¥¬Î¸ÂI¦WºÙ¬Û¦Pªº¶µ¡C
        /// </summary>
        public class DefectInfo
        {
            public string DefectName { get; set; }
            public decimal? Qty { get; set; }
        }

        public class ReportMsg
        {
            public string ERP { get; set; }
            public string SupplierItemNo { get; set; }
            public string SupplierName { get; set; }
            public int? MCount { get; set; }
            public decimal? TotalQty { get; set; }
            public decimal? RefuseQty { get; set; }
            public decimal? RefusePercent { get; set; }
            public decimal? ActualQty { get; set; }
            public decimal? MouldTrail { get; set; }
            public decimal? FabricColor { get; set; }
            public decimal? Width { get; set; }
            public decimal? Weight { get; set; }
            public decimal? Elongation { get; set; }

            public decimal? DefectPercentage { get; set; }
            public decimal? OffColorPercentage { get; set; }
            public decimal? MouldTrialPercentage { get; set; }
            public decimal? ShortLengthPercentage { get; set; }

            public string DefectName1 { get; set; }
            public decimal? DefectQty1 { get; set; }

            public string DefectName2 { get; set; }
            public decimal? DefectQty2 { get; set; }

            public string DefectName3 { get; set; }
            public decimal? DefectQty3 { get; set; }

            public string DefectName4 { get; set; }
            public decimal? DefectQty4 { get; set; }

            public string DefectName5 { get; set; }
            public decimal? DefectQty5 { get; set; }

            public decimal? DefectQtyOther { get; set; }

            public List<SupplierQA.DefectPercentInfo> DefPercentageInfoList { get; set; }
        } 
    }
}
