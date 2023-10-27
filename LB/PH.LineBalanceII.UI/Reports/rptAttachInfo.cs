using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LineBalanceII.BO;
using System.Linq;

namespace PH.LineBalanceII.UI.Reports
{
    public partial class rptAttachInfo : DevExpress.XtraReports.UI.XtraReport
    {
        string[,] PartLeft = new string[11, 3];
        string[] PartBott =new string[6];
        StyleMaster CurMaster;
        public bool IsEnglish = false;
        public rptAttachInfo(StyleMaster smt, string[,] partleft, string[] partbottorm, bool IsEnglish)
        {
            InitializeComponent();
            this.IsEnglish = IsEnglish;
            CurMaster =smt;
            PartLeft = partleft;
            PartBott = partbottorm;
            TranslationEnglish(IsEnglish);
           // SetMasterReport();

        }

        private void SetMasterReport()
        {
            //MasterReport.Bands[BandKind.PageHeader].Visible = false;
            //MasterReport.Bands[BandKind.Detail].Visible = false;
            //this.MasterReport.Bands[BandKind.PageHeader].Visible = false;
        }

        PH.LineBalanceII.BO.LineBalanceIIDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<PH.LineBalanceII.BO.LineBalanceIIDataContext>();


        public void TranslationEnglish(bool IsEnglish) 
        {

            var MasterDBList = db.MasterDBs;

              string ZH = "";
             if (!string.IsNullOrEmpty(this.CurMaster.ZH))
             {
                 string bb = this.CurMaster.ZH.Replace("(", "").Replace(")", "").Replace(" ", "").ToUpper();
                 string ZHXX = MasterDBList.Where(dr => dr.Type == "Class" && dr.Cn.Replace(" ", "").ToUpper() == bb).Select(dr => dr.En).FirstOrDefault();

                 ZH = MasterDBList.Where(dr => dr.Type == "Class" && dr.Cn.Replace(" ", "").ToUpper() == bb).Select(dr => dr.En).FirstOrDefault();
             }
            xrLabel2.Text = IsEnglish ? "Associated Bill of Operation" + ZH : "組合工序單 " + this.CurMaster.ZH;
            xrTZh.Text = IsEnglish ? ZH : this.CurMaster.ZH;
            xrLabel1.Text = IsEnglish ? "IE Boo  -  Line Balance" : "IE工序清單 - 拉平衡工程表";
            if (IsEnglish) 
            {
                

                xrTableCell1.Text = "Cust Style";
                xrTableCell4.Text = "PH Style";
                xrTableCell2.Text = "Product Type";
                xrTableCell7.Text = "Size";
                xrTableCell3.Text = "Class";
                xrTableCell10.Text = "Version";
                xrTableCell6.Text = "Status";

                xrTableCell13.Text = "The Detail Of LB Steps";
                xrTableCell25.Text = "TTL GSD SAH(No pack SAH)";
                xrTableCell29.Text = "TTL SAH Of A Group";
                xrTableCell33.Text = "Output per section (pcs)";
                xrTableCell37.Text = "TTL Workforce";
                xrTableCell41.Text = "TTL Floater";
                xrTableCell45.Text = "TTL Workstation(M+HWT)";
                xrTableCell49.Text = "BN SAH";
                xrTableCell53.Text = "Secondly bottom SAH";
                xrTableCell64.Text = "Minimum SAH";
                xrTableCell69.Text = "LB% Usage";
                xrTableCell73.Text = "Average SAH";


                xrTableCell14.Text = "GSD";
                xrTableCell18.Text = "SAH/Opt";
                xrTableCell15.Text = "Split";
                xrTableCell19.Text = "SAH/Opt";
                xrTableCell16.Text = "Interval";




                xrTableCell57.Text = "Workstation";
                xrTableCell63.Text = "Code";
                xrTableCell99.Text = "Type";
                xrTableCell113.Text = "None LB";
                xrTableCell114.Text = "Count(M+HWT)";
                xrTableCell115.Text = "Total";

                xrTableCell58.Text = "Split & Merge LB";
                xrTableCell81.Text = "Count(M+HWT)";
                xrTableCell61.Text = "Main";
                xrTableCell91.Text = "Support";
                xrTableCell123.Text = "Qty";

                xrTableCell59.Text = "Best LB";
                xrTableCell62.Text = "Count(M+HWT)";
                xrTableCell65.Text = "Main";
                xrTableCell83.Text = "Support";
                xrTableCell107.Text = "Qty";

                xrTableCell78.Text = "Prepare By";
                xrTableCell82.Text = "Date";
                xrTableCell79.Text = "Conform By IE Dept.";
                xrTableCell84.Text = "Date";
                xrTableCell80.Text = "Confirm By Workshop";
                xrTableCell85.Text = "Date";
            }

        }

        private void InsertRows()
        {

            var MasterDBList = db.MasterDBs;
            int _len = CurMaster.SummaryList.Count;

            if (_len == 0)
                return;

            int i = 0;

   
            //處理工作位
            int Sum_CJMainArea, Sum_CJSupportArea, Sum_YHMainArea, Sum_YHSupportArea, Sum_BestMainArea, Sum_BestSupportArea, Sum_BestFloatArea;
            Sum_CJMainArea = Sum_CJSupportArea = Sum_YHMainArea = Sum_YHSupportArea = Sum_BestMainArea = Sum_BestSupportArea = Sum_BestFloatArea = 0;
            foreach (Summary obj in this.CurMaster.SummaryList)
            {
                Sum_CJMainArea += obj.CJLBMainAreaYCCount;
                Sum_CJSupportArea += obj.CJLBSupportAreaYCCount;
                Sum_YHMainArea += obj.YHLBMainAreaYCCount;
                Sum_YHSupportArea += obj.YHLBSupportAreaYCCount;
                Sum_BestMainArea += obj.BestLBMainAreaYCCount;
                Sum_BestSupportArea += obj.BestLBSupportAreaYCCount;
                Sum_BestFloatArea += obj.BestLBFloaterAreaYCCount;
            }

            foreach (Summary obj in this.CurMaster.SummaryList)
            {
                
                 DevExpress.XtraReports.UI.XRTableRow lrow =  xrTable3.Rows.LastRow;
                 xrTable3.InsertRowBelow(lrow);
                 DevExpress.XtraReports.UI.XRTableRow row = xrTable3.Rows.LastRow;
                 row.Cells[0].Text = obj.YCDM;
                 row.Cells[1].Text = IsEnglish ? MasterDBList.Where(dr => dr.Type == "YCtype" && dr.Cn == obj.YCType).Select(dr => dr.En).FirstOrDefault() : obj.YCType;
                 row.Cells[2].Text = obj.NoneLBYCCount.ToString();
                 row.Cells[3].Text = obj.CJLBMainAreaYCCount.ToString();
                 row.Cells[4].Text = obj.CJLBSupportAreaYCCount.ToString();
                 row.Cells[5].Text = obj.CJLBYCCount.ToString();
                 row.Cells[6].Text = obj.BestLBMainAreaYCCount.ToString();
                 row.Cells[7].Text = obj.BestLBFloaterAreaYCCount.ToString();
                 row.Cells[8].Text = obj.BestLBYCCount.ToString();

                 i++;
            }

            //insert 合計行

            DevExpress.XtraReports.UI.XRTableRow vrow = xrTable3.Rows.LastRow;
            xrTable3.InsertRowBelow(vrow);
            DevExpress.XtraReports.UI.XRTableRow mrow = xrTable3.Rows.LastRow;
            mrow.Cells[0].Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                    // | DevExpress.XtraPrinting.BorderSide.Right)
                     | DevExpress.XtraPrinting.BorderSide.Bottom))));

            mrow.Cells[1].Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top)
                // | DevExpress.XtraPrinting.BorderSide.Right)
                     | DevExpress.XtraPrinting.BorderSide.Bottom))));

            mrow.Cells[0].Text = IsEnglish?"":"合";
            mrow.Cells[0].TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            mrow.Cells[1].Text = IsEnglish ? "Total" : "計";
            mrow.Cells[1].TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;

            mrow.Cells[2].Text = CurMaster.GSDGZW;
            mrow.Cells[3].Text = Sum_CJMainArea.ToString();
            mrow.Cells[4].Text = Sum_CJSupportArea.ToString();
            mrow.Cells[5].Text = CurMaster.CJGZW;
            mrow.Cells[6].Text = Sum_BestMainArea.ToString();
            mrow.Cells[7].Text = Sum_BestFloatArea.ToString();
            mrow.Cells[8].Text = CurMaster.PJHGZW;

            int aa =xrTable3.Location.Y;
            xrTbott.Location = new Point(583, 89+30*(i+1));

        
        
        }

        private DevExpress.XtraReports.UI.XRTable CreateTable()
        {
  
            int _len = CurMaster.SummaryList.Count;

            if (_len == 0)
                return null;

           // string[,] gzwinfo = new string[_len, 9];

            int i=0;

            DevExpress.XtraReports.UI.XRTable tblBasic = new DevExpress.XtraReports.UI.XRTable();

          //  DevExpress.XtraReports.UI.XRTableRow firstrow = xrTbasic.Rows.FirstRow;

            //tblBasic.Location = new Point(583,93);
            tblBasic.Location = new Point(584, 89);

            System.Drawing.Size rowSize = new System.Drawing.Size(517, 22);

            //處理工作位
            int Sum_CJMainArea, Sum_CJSupportArea, Sum_YHMainArea, Sum_YHSupportArea, Sum_BestMainArea, Sum_BestSupportArea, Sum_BestFloatArea;
            Sum_CJMainArea = Sum_CJSupportArea = Sum_YHMainArea = Sum_YHSupportArea = Sum_BestMainArea = Sum_BestSupportArea = Sum_BestFloatArea = 0;
            foreach (Summary obj in this.CurMaster.SummaryList)
            {
                Sum_CJMainArea += obj.CJLBMainAreaYCCount;
                Sum_CJSupportArea += obj.CJLBSupportAreaYCCount;
                Sum_YHMainArea += obj.YHLBMainAreaYCCount;
                Sum_YHSupportArea += obj.YHLBSupportAreaYCCount;
                Sum_BestMainArea += obj.BestLBMainAreaYCCount;
                Sum_BestSupportArea += obj.BestLBSupportAreaYCCount;
                Sum_BestFloatArea += obj.BestLBFloaterAreaYCCount;
            
            }

            foreach (Summary obj in this.CurMaster.SummaryList)
            {
                //gzwinfo[i, 0] = obj.YCDM; gzwinfo[i, 1] = obj.YCDM; gzwinfo[i, 2] = obj.YCDM;
                //gzwinfo[i, 3] = obj.YCDM; gzwinfo[i, 4] = obj.YCDM; gzwinfo[i, 0] = obj.YCDM;
                //gzwinfo[i, 0] = obj.YCDM; gzwinfo[i, 0] = obj.YCDM; gzwinfo[i, 0] = obj.YCDM;

                 DevExpress.XtraReports.UI.XRTableRow xrnewrow = new DevExpress.XtraReports.UI.XRTableRow();

                 xrnewrow.Size = rowSize;
                 
                 DevExpress.XtraReports.UI.XRTableCell tcell1 = new DevExpress.XtraReports.UI.XRTableCell();
               //  tcell1.Size = new System.Drawing.Size(59, 22);
                 tcell1.Size = new System.Drawing.Size(58, 22);
                 tcell1.Text = obj.YCDM;

                 DevExpress.XtraReports.UI.XRTableCell tcell2 = new DevExpress.XtraReports.UI.XRTableCell();
                 tcell2.Size = new System.Drawing.Size(67, 22);
                 tcell2.Text = obj.YCType;


                 DevExpress.XtraReports.UI.XRTableCell tcell3 = new DevExpress.XtraReports.UI.XRTableCell();
                 tcell3.Size = new System.Drawing.Size(74, 22);
                 tcell3.Text = obj.NoneLBYCCount.ToString();

                 DevExpress.XtraReports.UI.XRTableCell tcell4 = new DevExpress.XtraReports.UI.XRTableCell();
                 //tcell4.Size = new System.Drawing.Size(55, 22);
                 tcell4.Size = new System.Drawing.Size(54, 22);
                 tcell4.Text = obj.CJLBMainAreaYCCount.ToString();



                 DevExpress.XtraReports.UI.XRTableCell tcell5 = new DevExpress.XtraReports.UI.XRTableCell();
                 //tcell5.Size = new System.Drawing.Size(45, 22);
                 tcell5.Size = new System.Drawing.Size(46, 22);
                 tcell5.Text = obj.CJLBSupportAreaYCCount.ToString();


                 DevExpress.XtraReports.UI.XRTableCell tcell6 = new DevExpress.XtraReports.UI.XRTableCell();
                 tcell6.Size = new System.Drawing.Size(43, 22);
                 tcell6.Text = obj.CJLBYCCount.ToString();


                 DevExpress.XtraReports.UI.XRTableCell tcell7 = new DevExpress.XtraReports.UI.XRTableCell();
                 tcell7.Size = new System.Drawing.Size(57, 22);
                 tcell7.Text = obj.BestLBMainAreaYCCount.ToString();

                 DevExpress.XtraReports.UI.XRTableCell tcell8 = new DevExpress.XtraReports.UI.XRTableCell();
                 tcell8.Size = new System.Drawing.Size(54, 22);
                 tcell8.Text = obj.BestLBFloaterAreaYCCount.ToString();

                 DevExpress.XtraReports.UI.XRTableCell tcell9 = new DevExpress.XtraReports.UI.XRTableCell();
                 //tcell9.Size = new System.Drawing.Size(63, 22);
                 tcell9.Size = new System.Drawing.Size(64, 22);
                 tcell9.Text = obj.BestLBYCCount.ToString();


                 xrnewrow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {tcell1,tcell2,tcell3,                   
                       tcell4,tcell5,tcell6,tcell7,tcell8,tcell9
                   });

                 tblBasic.Rows.Add(xrnewrow);
                 i++;
            }

            //合計行
            DevExpress.XtraReports.UI.XRTableRow ttlrow = new DevExpress.XtraReports.UI.XRTableRow();
            DevExpress.XtraReports.UI.XRTableCell tcellA1 = new DevExpress.XtraReports.UI.XRTableCell();
            tcellA1.Size = new System.Drawing.Size(126, 22);
            tcellA1.Text = " 合 計";

            DevExpress.XtraReports.UI.XRTableCell tcellA2 = new DevExpress.XtraReports.UI.XRTableCell();
            tcellA2.Size = new System.Drawing.Size(74, 22);
            tcellA2.Text = CurMaster.GSDGZW;
            //_Master.GSDGZW
            

            DevExpress.XtraReports.UI.XRTableCell tcellA3 = new DevExpress.XtraReports.UI.XRTableCell();
            tcellA3.Size = new System.Drawing.Size(55, 22);
            tcellA3.Text = Sum_CJMainArea.ToString();


            DevExpress.XtraReports.UI.XRTableCell tcellA4 = new DevExpress.XtraReports.UI.XRTableCell();
            tcellA4.Size = new System.Drawing.Size(45, 22);
            tcellA4.Text = Sum_CJSupportArea.ToString();


            DevExpress.XtraReports.UI.XRTableCell tcellA5 = new DevExpress.XtraReports.UI.XRTableCell();
            tcellA5.Size = new System.Drawing.Size(43, 22);
            tcellA5.Text = CurMaster.CJGZW;

            DevExpress.XtraReports.UI.XRTableCell tcellA6 = new DevExpress.XtraReports.UI.XRTableCell();
            tcellA6.Size = new System.Drawing.Size(57, 22);
            tcellA6.Text = Sum_BestMainArea.ToString();


            DevExpress.XtraReports.UI.XRTableCell tcellA7 = new DevExpress.XtraReports.UI.XRTableCell();
            tcellA7.Size = new System.Drawing.Size(54, 22);
            tcellA7.Text = Sum_BestFloatArea.ToString();


            DevExpress.XtraReports.UI.XRTableCell tcellA8 = new DevExpress.XtraReports.UI.XRTableCell();
            tcellA8.Size = new System.Drawing.Size(63, 22);
            tcellA8.Text = CurMaster.PJHGZW;


            ttlrow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {tcellA1,tcellA2,tcellA3,                   
                    tcellA4,tcellA5,tcellA6,tcellA7,tcellA8
                   });

            tblBasic.Rows.Add(ttlrow);
            tblBasic.Size = new System.Drawing.Size(517, 22 * (i + 1));


            // tblBasic.Font = new Font("Arial Unicode MS,style=Bold", 7); Arimo, 8pt
            tblBasic.Font = new Font("Arimo", 8);
            tblBasic.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;


            xrTbott.Location = new Point(583, 89+22*(i+1));

            return tblBasic;
        
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            SetHeadValue();
        }

        private void SetHeadValue()
        {

            xrTCustStyle.Text = CurMaster.KHKH;
            xrTPhStyle.Text = CurMaster.PHKH;
            xrTType.Text = CurMaster.CPLB;
            xrTBase.Text = CurMaster.SizeYJ;
            //xrTZh.Text = CurMaster.ZH;
            xrTEdition.Text = CurMaster.Edition.ToString();

            string _statu = "";

            if (CurMaster.Statu == 0)
                _statu = "Dvp";
            else if (CurMaster.Statu == 1)
                _statu = "Active";
            else if (CurMaster.Statu == 2)
                _statu = "Inactive";
            else if (CurMaster.Statu == 3)
                _statu = "Drop";
            else
                _statu = "Active";
            xrTstatu.Text = _statu;        
        }

        private void SetLeftValue()
        {
            TCA01.Text = PartLeft[0, 0]; TCA02.Text = PartLeft[0, 1]; TCA03.Text = PartLeft[0, 2];

            TCA11.Text = PartLeft[1, 0]; TCA12.Text = PartLeft[1, 1]; TCA13.Text = PartLeft[1, 2];
            TCA21.Text = PartLeft[2, 0]; TCA22.Text = PartLeft[2, 1]; TCA23.Text = PartLeft[2, 2];
            TCA31.Text = PartLeft[3, 0]; TCA32.Text = PartLeft[3, 1]; TCA33.Text = PartLeft[3, 2];

            TCA41.Text = PartLeft[4, 0]; TCA42.Text = PartLeft[4, 1]; TCA43.Text = PartLeft[4, 2];
            TCA51.Text = PartLeft[5, 0]; TCA52.Text = PartLeft[5, 1]; TCA53.Text = PartLeft[5, 2];
            TCA61.Text = PartLeft[6, 0]; TCA62.Text = PartLeft[6, 1]; TCA63.Text = PartLeft[6, 2];

            TCA71.Text = PartLeft[7, 0]; TCA72.Text = PartLeft[7, 1]; TCA73.Text = PartLeft[7, 2];
            TCA81.Text = PartLeft[8, 0]; TCA82.Text = PartLeft[8, 1]; TCA83.Text = PartLeft[8, 2];
            TCA91.Text = PartLeft[9, 0]; TCA92.Text = PartLeft[9, 1]; TCA93.Text = PartLeft[9, 2];
            TCA101.Text = PartLeft[10, 0]; TCA102.Text = PartLeft[10, 1]; TCA103.Text = PartLeft[10, 2];            
        }
        private void SetBottomValue()
        {
            xrZbr.Text = PartBott[0]; xrConfirm.Text = PartBott[1]; xrProdConfirm.Text = PartBott[2];
            xrzbrq.Text = PartBott[3]; xrConfirmDT.Text = PartBott[4]; xrProdDT.Text = PartBott[5];
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SetLeftValue();
            SetBottomValue();

            InsertRows();
            //DevExpress.XtraReports.UI.XRTable tb = CreateTable();
            //if (tb!=null)
            //  this.xrPanel1.Controls.Add(tb);
        }




    }
}
