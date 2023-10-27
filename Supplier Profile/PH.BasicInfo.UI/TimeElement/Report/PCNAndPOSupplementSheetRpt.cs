using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.BasicInfo.BO;
using System.Windows.Forms;
using System.Linq;

namespace PH.BasicInfo.UI.TimeElement.Report
{
    public partial class PCNAndPOSupplementSheetRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public BasicInfoDataContext DataContext { get; set; }
        public string WhereCondition { get; set; }
        Int32 CurRowsCount = 0;
        Int32 TtlRows = 0;
        string ERPSupplier = string.Empty;
        string location = string.Empty;
        string _dimension = string.Empty;

        public PCNAndPOSupplementSheetRpt()
        {
            InitializeComponent();
        }

        private void PCNAndPORpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            //IEnumerable<ERPSupplierProfile> ERP=DataContext.ExecuteQuery<ERPSupplierProfile>(string.Format("select * from ERPSupplierProfile {0}", WhereCondition));
            //this.bindingSource1.DataSource = DataContext.ExecuteQuery<ERPSupplierProfile>(string.Format("select * from ERPSupplierProfile where ERPSupplier like 'PINR%' OR ERPSupplier like 'YSHU%' or ERPSupplier like 'PCTX%'"));
            this.bindingSource1.DataSource = DataContext.ExecuteQuery<SupplierProfile>(string.Format("select * from SupplierProfile {0}", WhereCondition));
          
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           
        }

        private void Cell_ERPSupplier_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            CurRowsCount++;
            if (CurRowsCount != TtlRows && Cell_ERPSupplier.Text.Trim() != ERPSupplier)
            {
                Cell_ERPSupplier.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_Address.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_BusinessNature.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_TransitMode.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_ItemWidth.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_Multiplepxpolicy.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_TransitMode.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_UM.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));

                //Cell_Tolerant.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));

                //Cell_ERPName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_Incoterms1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));

               //Cell_Seq.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
               //Cell_DimentionNo.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
               //Cell_ItemColor.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
               //Cell_ColorIssue.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
  


            }
            if (CurRowsCount == TtlRows && Cell_ERPSupplier.Text.Trim() != ERPSupplier)
            {
                Cell_ERPSupplier.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_ERPName.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));


                //Cell_Address.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_BusinessNature.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_TransitMode.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_ItemWidth.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_Multiplepxpolicy.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_TransitMode.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_UM.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                //Cell_Tolerant.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_Incoterms1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                //Cell_Seq.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_DimentionNo.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_ItemColor.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                //Cell_ColorIssue.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));


            }
            if (CurRowsCount != TtlRows && Cell_ERPSupplier.Text.Trim() == ERPSupplier)
            {
                Cell_ERPSupplier.Text = string.Empty;
                //Cell_Address.Text = string.Empty;
                Cell_BusinessNature.Text = string.Empty;
                //Cell_TransitMode.Text = string.Empty;
                //Cell_ItemWidth.Text = string.Empty;
                //Cell_Multiplepxpolicy.Text = string.Empty;
                //Cell_TransitMode.Text = string.Empty;
                //Cell_UM.Text = string.Empty;
                //Cell_Tolerant.Text = string.Empty;
                //Cell_ERPName.Text = string.Empty;
                //Cell_Incoterms1.Text = string.Empty;

                //Cell_Seq.Text = string.Empty;
                //Cell_DimentionNo.Text = string.Empty;
                //Cell_ItemColor.Text = string.Empty;
               // Cell_ColorIssue.Text = string.Empty;

                Cell_ERPSupplier.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_ERPName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_Address.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_BusinessNature.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_TransitMode.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_ItemWidth.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_Multiplepxpolicy.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_TransitMode.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_UM.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));

                //Cell_Incoterms1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_Tolerant.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));

                //Cell_Seq.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_DimentionNo.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_ItemColor.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
               // Cell_ColorIssue.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));


            }
            if (CurRowsCount == TtlRows && Cell_ERPSupplier.Text.Trim() == ERPSupplier)
            {
                Cell_ERPSupplier.Text = string.Empty;
                //Cell_Address.Text = string.Empty;
                Cell_BusinessNature.Text = string.Empty;
                //Cell_TransitMode.Text = string.Empty;
                //Cell_ItemWidth.Text = string.Empty;
                //Cell_Multiplepxpolicy.Text = string.Empty;
                //Cell_TransitMode.Text = string.Empty;
                //Cell_UM.Text = string.Empty;
                //Cell_Tolerant.Text = string.Empty;
                //Cell_ERPName.Text = string.Empty;
                //Cell_Incoterms1.Text = string.Empty;

                //Cell_Seq.Text =string.Empty ;
                //Cell_DimentionNo.Text =string.Empty ;
                //Cell_ItemColor.Text =string.Empty ;
               // Cell_ColorIssue.Text = string.Empty;

                Cell_ERPSupplier.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_ERPName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                //Cell_Address.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_BusinessNature.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_TransitMode.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_ItemWidth.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_Multiplepxpolicy.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_TransitMode.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_UM.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                //Cell_Incoterms1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_Tolerant.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                //Cell_Seq.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_DimentionNo.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                //Cell_ItemColor.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
               // Cell_ColorIssue.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

            }



        }

        private void DetailReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            TtlRows = bindingSource1.Current!=null ? (bindingSource1.Current as SupplierProfile).IncontermsTransits.Count : 0;

            //MessageBox.Show(TtlRows.ToString());
        }

        private void DetailReport_AfterPrint(object sender, EventArgs e)
        {
            this.bindingSource1.MoveNext();
            TtlRows = 0;
            CurRowsCount = 0;
        }

        private void Cell_ERPSupplier_AfterPrint(object sender, EventArgs e)
        {
            ERPSupplier = GetCurrentColumnValue("ERPSupplier") != null ? GetCurrentColumnValue("ERPSupplier").ToString() : string.Empty;
            //ERPSupplier = DetailReport.GetCurrentColumnValue("ERPSupplier") != null ? DetailReport.GetCurrentColumnValue("ERPSupplier").ToString() : string.Empty;


        }

        private void Cell_Location_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (CurRowsCount != TtlRows && Cell_Location.Text.Trim() != location)
            {
                Cell_Location.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));

            }
            if (CurRowsCount == TtlRows && Cell_Location.Text.Trim() != location)
            {
                Cell_Location.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

            }
            if (CurRowsCount != TtlRows && Cell_Location.Text.Trim() == location)
            {
                Cell_Location.Text = string.Empty;
                Cell_Location.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));

            }
            if (CurRowsCount == TtlRows && Cell_Location.Text.Trim() == location)
            {
                Cell_Location.Text = string.Empty;

                Cell_Location.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
            }

        }

        private void Cell_Location_AfterPrint(object sender, EventArgs e)
        {
            location = DetailReport.GetCurrentColumnValue("LocationofSuppFactory") != null ? DetailReport.GetCurrentColumnValue("LocationofSuppFactory").ToString() : string.Empty;

        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //var SSS = DataContext.Dimensions.OrderBy(E => E.Seq);
            //foreach (Dimension Ds in SSS)
            //{
            //    XRTableRow Row1 = new XRTableRow();
            //    XRTableCell C1 = new XRTableCell();
            //    C1.Text = Ds.Seq;
            //    C1.Width = 51;
            //    Row1.Cells.Add(C1);
                
            //    XRTableCell C2 = new XRTableCell();
            //    C2.Text = Ds.DimensionNo;
            //    //C2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            //    C2.Width = 150;
            //    Row1.Cells.Add(C2);
                
            //    XRTableCell C3 = new XRTableCell();
            //    C3.Text = Ds.ItemColor;
            //    //C3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            //    C3.Width = 121;
            //    Row1.Cells.Add(C3);

            //    //XRTableCell C4 = new XRTableCell();
            //    //C4.Text = Ds.ColorIssueYesNo;
            //    ////C4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            //    //C4.Width = 77;
            //    //Row1.Cells.Add(C4);

            //    XRTableCell C4 = new XRTableCell();
            //    C4.Width = 445;
            //    //C5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            //    Row1.Cells.Add(C4);
            //    Table5.Rows.Add(Row1);             
            //}
            //XRTableRow Row2 = new XRTableRow();
            //XRTableCell C5 = new XRTableCell();
            //C5.Text = "* For Width/Size/Meas,we can choice either [A] or [B] or [C] only";
            //C5.Width = 767;
            //C5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            //C5.Multiline = true;
            ////Row2.Height = 35;
            //Row2.Cells.Add(C5);
            //Table5.Rows.Add(Row2);

            //XRTableRow Row3 = new XRTableRow();
            //XRTableCell C6 = new XRTableCell();
            //C6.Text = "Notepad for Width/Size/Meas:-\r\n         A) For the items of bone and wire, we hv 2 kind of PO format.:-\r\n            1) Buyer and supplier has same qty b/down dimension on 4 dimension of item/color/size/cup,\r\n            2) Buyer is based on 4 dimension of item/color/size/cup but supplier is based on 3 dimension of item/color/size.\r\n         B) For width is mainly apply to fabric and lace, incl. band lace.\r\n         C) For Trim/Band width is apply to elastic webbing and H+E tape only.	\r\n         D) For Size range or Size/Cup range is apply to Wire, Bone....., etc.";
            //C6.Width = 767;
            //C6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            //C6.Multiline = true;
            ////Row3.Height = 35;
            //Row3.Cells.Add(C6);
            //Table5.Rows.Add(Row3);
        }

        private void Cell_Seq_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _dimension = DetailReport.GetCurrentColumnValue("Seq") != null ? DetailReport.GetCurrentColumnValue("Seq").ToString() : string.Empty;

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

    }
}
