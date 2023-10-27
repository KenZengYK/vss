using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LineBalanceII.BO;
using DevExpress.XtraPrinting;
using System.Linq;
using System.Collections.Generic;

namespace PH.LineBalanceII.UI.Reports
{
    public partial class rptLineBalance : DevExpress.XtraReports.UI.XtraReport
    {
        private StyleMaster CurMaster;
        private string FAE = "A";
        private string[,] AryList;
        public bool IsEnglish;

        PH.LineBalanceII.BO.LineBalanceIIDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<PH.LineBalanceII.BO.LineBalanceIIDataContext>();

        public rptLineBalance(StyleMaster master,string fae,string[,] values, bool AisEnglish)
        {
            InitializeComponent();
            CurMaster = master;
            FAE = fae;
            AryList = values;
            IsEnglish = AisEnglish;
            PrepareData();

           
        }

        private void PrepareData()
         {
            //lblJKLM7_O.Text ; lblJKLM7_R.Text ;lblJKLM7_Y.Text --勞動力合計
            //lblJKLM8_O.Text; lblJKLM8_R.Text ;lblJKLM8_Y.Text --工作位 (衣車+手工臺) 合計
            //lblJKLM13_O.Text; lblJKLM13_R.Text;lblJKLM13_Y.Text --拉平衡率



             var MasterDBList = db.MasterDBs;
             if (FAE == "A")
             {     // CurMaster.StyleProcedures.OrderBy(dr=>dr.XH);
                 foreach (StyleProcedure Obj in CurMaster.StyleProcedures.OrderBy(dr => dr.XH))
                 {
                     Obj.WorkNameShow = IsEnglish ? Obj.WorkNameEN : Obj.WorkName;
                     Obj.YCTypeShow = IsEnglish ? MasterDBList.Where(dr => dr.Type == "YCtype" && dr.Cn == Obj.YCType).Select(dr => dr.En).FirstOrDefault() : Obj.YCType;
                     Obj.MoveShow = IsEnglish ? GetMoveEn(Obj.Move) : Obj.Move;
                 }
                 bsBalance.DataSource = CurMaster.StyleProcedures.OrderBy(dr => dr.XH);

             }
             else if (FAE == "E")
             {
                 foreach (StyleProcedure_E Obj in CurMaster.StyleProcedure_Es.OrderBy(dr => dr.XH))
                 {
                     Obj.WorkNameShow = IsEnglish ? Obj.WorkNameEN : Obj.WorkName;
                     Obj.YCTypeShow = IsEnglish ? MasterDBList.Where(dr => dr.Type == "YCtype" && dr.Cn == Obj.YCType).Select(dr => dr.En).FirstOrDefault() : Obj.YCType;
                     Obj.MoveShow = IsEnglish ? GetMoveEn(Obj.Move) : Obj.Move;
                 }
                 bsBalance.DataSource = CurMaster.StyleProcedure_Es.OrderBy(dr => dr.XH);
             }
             else if (FAE == "F")
             {

                 foreach (StyleProcedure_F Obj in CurMaster.StyleProcedure_Fs.OrderBy(dr => dr.XH))
                 {
                     Obj.WorkNameShow = IsEnglish ? Obj.WorkNameEN : Obj.WorkName;
                     Obj.YCTypeShow = IsEnglish ? MasterDBList.Where(dr => dr.Type == "YCtype" && dr.Cn == Obj.YCType).Select(dr => dr.En).FirstOrDefault() : Obj.YCType;
                     Obj.MoveShow = IsEnglish ? GetMoveEn(Obj.Move) : Obj.Move;
                 }
                 
                 bsBalance.DataSource = CurMaster.StyleProcedure_Fs.OrderBy(dr => dr.XH);
             }
             else if (FAE == "PB")
             {
                 foreach (StyleProcedure_F Obj in CurMaster.StyleProcedure_Fs.Where(p => p.TeamGSD == "P" || p.TeamGSD == "B").OrderBy(dr => dr.XH))
                 {
                     Obj.WorkNameShow = IsEnglish ? Obj.WorkNameEN : Obj.WorkName;
                     Obj.YCTypeShow = IsEnglish ? MasterDBList.Where(dr => dr.Type == "YCtype" && dr.Cn == Obj.YCType).Select(dr => dr.En).FirstOrDefault() : Obj.YCType;
                     Obj.MoveShow = IsEnglish ? GetMoveEn(Obj.Move) : Obj.Move;
                 }
                 bsBalance.DataSource = CurMaster.StyleProcedure_Fs.Where(p => p.TeamGSD == "P" || p.TeamGSD == "B").OrderBy(dr => dr.XH);
             }
             else if (FAE == "All")
             {
                 foreach (StyleProcedure Obj in CurMaster.GetAllDataStyleProcedure())
                 {
                     Obj.WorkNameShow = IsEnglish ? Obj.WorkNameEN : Obj.WorkName;
                     Obj.YCTypeShow = IsEnglish ? MasterDBList.Where(dr => dr.Type == "YCtype" && dr.Cn == Obj.YCType).Select(dr => dr.En).FirstOrDefault() : Obj.YCType;
                     Obj.MoveShow = IsEnglish ? GetMoveEn(Obj.Move) : Obj.Move;
                 }
                 bsBalance.DataSource = CurMaster.GetAllDataStyleProcedure();
             }

             string ZH = "";
             if (!string.IsNullOrEmpty(this.CurMaster.ZH))
             {
                 string bb = this.CurMaster.ZH.Replace("(", "").Replace(")", "").Replace(" ", "").ToUpper();
                 string ZHXX = MasterDBList.Where(dr => dr.Type == "Class" && dr.Cn.Replace(" ", "").ToUpper() == bb).Select(dr => dr.En).FirstOrDefault();

                 ZH = MasterDBList.Where(dr => dr.Type == "Class" && dr.Cn.Replace(" ", "").ToUpper() == bb).Select(dr => dr.En).FirstOrDefault();
             }
             xrLabel2.Text = IsEnglish ? "Associated Bill of Operation " + ZH : "組合工序單 " + this.CurMaster.ZH;

             xrTZh.Text = IsEnglish ? ZH : this.CurMaster.ZH;

             xrLabel1.Text = IsEnglish ? " IEBOO (Bill of Operations) - 3rd Step for Optimum Line Balance" 
                 : "IE生產工序清單 - 三步之優化拉平衡";


            if (IsEnglish)           
            {

               

                xrTableCell1.Text = "Cust Style";
                xrTableCell4.Text = "PH Style";
                xrTableCell2.Text = "Product Type";
                xrTableCell7.Text = "Size";
                xrTableCell3.Text = "Class";
                xrTableCell10.Text = "Version";

                xrTableCell13.Text = "Group";
                xrTableCell16.Text = "LB None LB";

                xrTableCell19.Text = "Operatipns";
                xrTableCell20.Text = "Sequence";
                xrTableCell34.Text = "Critical Op";
                xrTableCell33.Text = "OP codes";
                xrTableCell35.Text = "OP description";
                xrTableCell36.Text = "Moveable\r\nWorker/\r\nMoveable Materials";


                xrTableCell21.Text = "Work station(Incl Machines)";
                xrTableCell22.Text = "Codes";
                xrTableCell39.Text = "Kinds";
                xrTableCell37.Text = "Attachments";
                xrTableCell41.Text = "RPM";

                xrTableCell14.Text = "LB None LB";
                xrTableCell38.Text = "Section Output";

                xrTableCell25.Text = "Spit/Merge LB";
                xrTableCell42.Text = "Confirm by Workshop";
                xrTableCell26.Text = "Spit SAH";
                xrTableCell24.Text = "Merge SAH";

                xrTableCell23.Text = "Best LB(Interval split)";
                xrTableCell40.Text = "BN sequence";

                xrTableCell31.Text = "Interval split SAH";
                xrTableCell43.Text = "BN sequence";
                xrTableCell44.Text = "Floater Interval section O/Out";

                xrTableCell15.Text = "Best (Standlized) for reference";
                xrTableCell18.Text = "Standard MTM";
                xrTableCell46.Text = "Standard SAH";

                xrTableCell29.Text = "Workforce";
                xrTableCell30.Text = "Worker No.";
                xrTableCell45.Text = "Codes";

                xrTableCell27.Text = "Workstation";
                xrTableCell28.Text = "Main Stations";
                xrTableCell47.Text = "Support Stations";
                

                xrLabel3.Text = "Demo1 \r\n Note";

                xrLabel8.Text = "Split";
                xrLabel9.Text = "Merge";
                xrLabel10.Text = "Best";
                xrLabel7.Text = "2.Confirm by Workshop codes\r\n0 is the SAH confirmed the the Op SAH, but not confirm the chose operations is right or wrong";


                xrTableCell74.Text = "The Detail Of LB Steps";
                xrTableCell77.Text = "TTL Workforce";
                xrTableCell80.Text = "TTL Workstation(M+HWT)";
                xrTableCell83.Text = "LB% Usage";

                xrTableCell75.Text = "LB None LB";
                xrTableCell76.Text = "Spit/Merge LB";
                xrTableCell86.Text = "Best LB(Interval Split)";




            }


         }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrTcA01.Text = AryList[0, 0]; xrTcA02.Text = AryList[0, 1]; xrTcA03.Text = AryList[0, 2];
            xrTcB01.Text = AryList[1, 0]; xrTcB02.Text = AryList[1, 1]; xrTcB03.Text = AryList[1, 2];
            xrTcC01.Text = AryList[2, 0]; xrTcC02.Text = AryList[2, 1]; xrTcC03.Text = AryList[2, 2];
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrTCustStyle.Text = CurMaster.KHKH;
            xrTPhStyle.Text = CurMaster.PHKH;
            xrTType.Text = CurMaster.CPLB;
            xrTBase.Text = CurMaster.SizeYJ;
            //xrTZh.Text = CurMaster.ZH;
            xrTEdition.Text = CurMaster.Edition.ToString();
           // xrLabel2.Text = "組合工序單 " + this.CurMaster.ZH;

            

        }


        public void calBorders(XRTableCell TableCell, string FieldName)
        {
            //object PreviousLine = this.GetPreviousColumnValue("ResponsibleDept");
            //object CurrentLine = this.GetCurrentColumnValue("ResponsibleDept");
            //object NextLine = this.GetNextColumnValue("ResponsibleDept");


            object PreviousLine = this.GetPreviousColumnValue(FieldName);
            object CurrentLine = this.GetCurrentColumnValue(FieldName);
            object NextLine = this.GetNextColumnValue(FieldName);


            if (CurrentLine == null) //沒有記錄
            {
                return;
            }

           
            TableCell.Borders = BorderSide.Left | BorderSide.Right;

            if (this.CurrentRowIndex > 0 && Object.Equals(CurrentLine, PreviousLine))
            {
                TableCell.Text = "";
            }

            if (this.CurrentRowIndex == this.RowCount - 1) //最后一行
            {
                TableCell.Borders |= BorderSide.Bottom;
                return; //畫完最后一行的Bottom線，打完收工
            }

            if (!Object.Equals(CurrentLine, NextLine)) //當前行與一行不相等，畫Bottom線
            {
                TableCell.Borders |= BorderSide.Bottom;
            }
        }

        private void xrTableCell66_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "JFlag");
        }

        private void xrTableCell48_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell60_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell52_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell61_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell51_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell62_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell72_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell73_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell63_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrYCSD_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell64_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell55_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "CFlag");
        }

        private void xrTableCell56_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.calBorders(sender as XRTableCell, "JFlag");
        }

        private void xrTableCell67_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object PreviousLine = this.GetPreviousColumnValue("JSCSAHSN");
            object CurrentLine = this.GetCurrentColumnValue("JSCSAHSN");
            //object NextLine = this.GetNextColumnValue("JSCSAHSN");
            if (CurrentLine != null && PreviousLine != null && CurMaster.Phase == "PJHLB") 
            {
                this.calBorders(sender as XRTableCell, "JFlag");
                //if (CurrentLine.ToString() == PreviousLine.ToString()) 
                //{
                    
                //}
            }
            
        }

        private void xrTableCell50_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object PreviousLine = this.GetPreviousColumnValue("JSCSAHSN");
            object CurrentLine = this.GetCurrentColumnValue("JSCSAHSN");
            //object NextLine = this.GetNextColumnValue("JSCSAHSN");
            if (CurrentLine != null && PreviousLine != null && CurMaster.Phase == "PJHLB")
            {
                this.calBorders(sender as XRTableCell, "JFlag");
                //if (CurrentLine.ToString() == PreviousLine.ToString())
                //{
                    
                //}
            }
        }

        private void xrTableCell58_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (CurMaster.Phase == "PJHLB") 
            {
                this.calBorders(sender as XRTableCell, "JFlag");
            }
        }

        private void xrTableCell69_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (CurMaster.Phase == "PJHLB")
            {
                this.calBorders(sender as XRTableCell, "JFlag");
            }
        }

        private void xrTableCell57_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("GRDH") != null) 
            {
                if (this.GetCurrentColumnValue("GRDH").ToString() != "Floater") 
                {
                    this.calBorders(sender as XRTableCell, "JFlag");
                }
            }
        }

        private void xrTableCell70_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object PreviousLine = this.GetPreviousColumnValue("GRDH");
            object CurrentLine = this.GetCurrentColumnValue("GRDH");
            //object NextLine = this.GetNextColumnValue("GRDH");
            if (CurrentLine != null && PreviousLine != null)
            {
                this.calBorders(sender as XRTableCell, "JFlag");
                //if (CurrentLine.ToString() == PreviousLine.ToString())
                //{
                   
                //}
            }
        }

       public string GetMoveEn(string MoveCn)
        {
            if (MoveCn == null) 
            {
                return "";
            }
            else if (MoveCn.Replace(" ", "") == "人移")
            {
                return "Moveable Worker";
            }
            else if (MoveCn.Replace(" ", "") == "物移") 
            {
                return "Moveable Materials";
            }
            else if (MoveCn.Replace(" ", "") == "人物移")
            {
                return "Moveable Materials And Worker";
            }
            else 
            {
                return "";
            }
        }

        


    }
}
