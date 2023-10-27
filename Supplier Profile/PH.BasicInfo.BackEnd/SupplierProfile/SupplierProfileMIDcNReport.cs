using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.BasicInfo.BO;
using System.Windows.Forms;
using System.Linq;

namespace PH.BasicInfo.BackEnd.TimeElement.Report
{
    public partial class SupplierProfileMIDcNReport : DevExpress.XtraReports.UI.XtraReport
    {
        public BasicInfoDataContext DataContext { get; set; }
        public string WhereCondition { get; set; }
        Int32 CurRowsCount = 0;
        Int32 TtlRows = 0;
        string ERPSupplier = string.Empty;
        string location = string.Empty;
        string _dimension = string.Empty;
        string _specialNote = string.Empty;

        public SupplierProfileMIDcNReport()
        {
            InitializeComponent();
        }


        //Xsj100820:砞﹚计沮方
        private void PCNAndPORpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.bindingSource1.DataSource = null;
            this.bindingSource1.DataSource = DataContext.ExecuteQuery<SupplierProfile>(string.Format("select * from SupplierProfile {0}", WhereCondition)).ToList();
        }

        //Xsj100820:紀
        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        //Xsj100820:砞竚Cell_ERPSupplier/Cell_ERPName/Cell_Currency/Cell_Multiplepxpolicy/Cell_TermsDays/Cell_BusinessNatureΑ
        private void Cell_ERPSupplier_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            CurRowsCount++;
            if (CurRowsCount != TtlRows && Cell_ERPSupplier.Text.Trim() != ERPSupplier)
            {
                Cell_ERPSupplier.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_Address.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_BusinessNature.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_Currency.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                //Cell_ItemWidth.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_Multiplepxpolicy.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_TermsDays.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_ERPName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));

            }
            if (CurRowsCount == TtlRows && Cell_ERPSupplier.Text.Trim() != ERPSupplier)
            {
                Cell_ERPSupplier.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_ERPName.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_BusinessNature.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_Currency.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_Multiplepxpolicy.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_TermsDays.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));


            }
            if (CurRowsCount != TtlRows && Cell_ERPSupplier.Text.Trim() == ERPSupplier)
            {
                Cell_ERPSupplier.Text = string.Empty;
                Cell_BusinessNature.Text = string.Empty;
                Cell_Currency.Text = string.Empty;
                Cell_Multiplepxpolicy.Text = string.Empty;
                Cell_TermsDays.Text = string.Empty;
                Cell_ERPName.Text = string.Empty;
                Cell_ERPSupplier.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_ERPName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_BusinessNature.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_Currency.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_Multiplepxpolicy.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
                Cell_TermsDays.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));


            }
            if (CurRowsCount == TtlRows && Cell_ERPSupplier.Text.Trim() == ERPSupplier)
            {
                Cell_ERPSupplier.Text = string.Empty;
                Cell_BusinessNature.Text = string.Empty;
                Cell_Currency.Text = string.Empty;
                Cell_Multiplepxpolicy.Text = string.Empty;
                Cell_TermsDays.Text = string.Empty;
                Cell_ERPName.Text = string.Empty;

                Cell_ERPSupplier.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_ERPName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

                Cell_BusinessNature.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_Currency.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_Multiplepxpolicy.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                Cell_TermsDays.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));

            }

        }

        private void Cell_ERPSupplier_AfterPrint(object sender, EventArgs e)
        {
            ERPSupplier = GetCurrentColumnValue("ERPSupplier") != null ? GetCurrentColumnValue("ERPSupplier").ToString() : string.Empty;
            //ERPSupplier = DetailReport.GetCurrentColumnValue("ERPSupplier") != null ? DetailReport.GetCurrentColumnValue("ERPSupplier").ToString() : string.Empty;
        }

        //Xsj100820:癘魁羆︽计,ノ砞竚Α
        private void DetailReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            TtlRows = bindingSource1.Current != null ? (bindingSource1.Current as SupplierProfile).IncontermsTransitForMIDcs.Count : 0;
        }

        //Xsj100820:玡簿笆计沮方,狡闽跑秖
        private void DetailReport_AfterPrint(object sender, EventArgs e)
        {
            this.bindingSource1.MoveNext();
            TtlRows = 0;
            CurRowsCount = 0;
        }

        //Xsj100820:砞﹚Cell_LocationΑ
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

        //Xsj100820:癘魁讽玡LocationofSuppFactory
        private void Cell_Location_AfterPrint(object sender, EventArgs e)
        {
            location = DetailReport.GetCurrentColumnValue("LocationofSuppFactory") != null ? DetailReport.GetCurrentColumnValue("LocationofSuppFactory").ToString() : string.Empty;

        }

        //Xsj100820:紀
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

        //Xsj100820:紀
        private void Cell_Seq_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _dimension = DetailReport.GetCurrentColumnValue("Seq") != null ? DetailReport.GetCurrentColumnValue("Seq").ToString() : string.Empty;

        }

        //Xsj100820:陪ボ┪留旅Transit Point
        private void Detail1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            IncontermsTransitForMIDc it = DetailReport.GetCurrentRow() as PH.BasicInfo.BO.IncontermsTransitForMIDc;
            if (it != null && string.IsNullOrEmpty(_specialNote))
                _specialNote = it.SpecialNote;

            if (DetailReport.GetCurrentColumnValue("FCLIncotermsPointPortDesc") == null)
            {
                return;
            }
            //this.tbTransitPointFCL.Visible = DetailReport.GetCurrentColumnValue("FCLIncotermsPointPortDesc").ToString() != "n.a";

        }

        private void Detail1_AfterPrint(object sender, EventArgs e)
        {
            //Xsj101007:蔼糤
            //this.Tab_LogisticInformation.Height = this.Cell_LogisticInformation.Height + 4;
            //this.tbTransitPointLCL.Height = this.cellTransitPont.Height;
            //this.tbTransitPointFCL.Height = this.cellTransitPointFCL.Height;
        }


        //Xsj100820:竕﹚厨のㄤ计沮方
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //Xsj100820:竕﹚厨の戳计沮方
            PH.BasicInfo.BO.SupplierProfile supp = this.GetCurrentRow() as PH.BasicInfo.BO.SupplierProfile;
            if (supp == null) return;

            MaterialTypeDimensionRpt r1 = new MaterialTypeDimensionRpt();
            r1.DataSource = supp.MaterialTypeDimensions;
            this.xrSubreport_MatTypeDimension.ReportSource = r1;

            SupplierWithAffiliatePartnersGroupRpt r2 = new SupplierWithAffiliatePartnersGroupRpt();
            SupplierProfileList SPDataList = new SupplierProfileList();
            IEnumerable<SupplierProfile> r2DataSource = SPDataList.GetAffiliatePartners(supp.SupplierGroup);
            //r2.DataSource = r2DataSource;
            r2.Source = r2DataSource;
            this.xrSubreport_AffiliatePartners.ReportSource = r2;

            //xsj100824:糤絏ノ北SupplierWithAffiliatePartnersGroupRpt厨留旅㎝陪ボ
            if (r2DataSource.Count() == 0)
            {
                this.ReportFooter.Visible = false;
                //this.cellNextPage.Visible = false;
            }
            else
            {
                //SupplierProfile sp = r2DataSource.First();
                //this.cellAssociatePartner.Text = sp.AssociatePartnerStr;
                //xsj100820:竚夹醚"Y"/"N"
                string getAssociatePartnerStr = "N";
                foreach (SupplierProfile val in r2DataSource)
                {
                    if (!string.IsNullOrEmpty(val.AssociatePartnerStr) && val.AssociatePartnerStr.ToUpper() == "Y")
                    {
                        getAssociatePartnerStr = "Y";
                    }
                }
                //this.cellAssociatePartner.Text = getAssociatePartnerStr;
                if (getAssociatePartnerStr == "N")
                {
                    //this.Detail1.Visible = false;

                    this.ReportFooter.Visible = false;
                    //this.cellNextPage.Visible = false;
                }
            }

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tbSpecialNote.Visible = !string.IsNullOrEmpty(_specialNote);
            this.lblSpecialNote.Text = _specialNote;
        }
    }
}
