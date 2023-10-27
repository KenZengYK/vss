using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq;
using System.Text;
using PH.MIDc.BO;
using PH.Platform.BO;

namespace PH.MIDc.UI 
{
    public class ColorAllInfo : DevExpress.XtraReports.UI.XtraReport
    {
        #region


        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.XRLabel xrLabel113;
        private DevExpress.XtraReports.UI.XRLabel xl_ColorCategory;
        private DevExpress.XtraReports.UI.XRLabel xl_Color;
        private DevExpress.XtraReports.UI.XRLabel xrLabel110;
        private DevExpress.XtraReports.UI.XRLabel xrLabel115;
        private DevExpress.XtraReports.UI.XRLabel xl_SuppRef;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRSubreport xrSubreport1;
        private PH.MIDc.UI.ColorAllInfoSub colorAllInfoSub1;
        private DevExpress.XtraReports.UI.DetailBand Detail1;
        private DevExpress.XtraReports.UI.XRLabel xrLabel4;
        private DevExpress.XtraReports.UI.XRLabel xlb_Pressure;
        private DevExpress.XtraReports.UI.XRLabel xlb_Temperature;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRLabel xlb_CoolingTime;
        private DevExpress.XtraReports.UI.XRLabel xrLabel5;
        private DevExpress.XtraReports.UI.XRLabel xlb_Timing;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRLine xrLine1;
        private DevExpress.XtraReports.UI.XRLabel xrLabel6;
        private DevExpress.XtraReports.UI.XRLabel xlb_SampleOrder;
        private DevExpress.XtraReports.UI.XRLabel xlb_midcStatus;
        private DevExpress.XtraReports.UI.TopMarginBand TopMargin;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.BottomMarginBand BottomMargin;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo2;
        private DevExpress.XtraReports.UI.XRLabel xrLabel7;
        private DevExpress.XtraReports.UI.XRLabel xrLabel8;
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        #endregion

        public ColorAllInfo()
        {
            InitializeComponent();
        }

        public ColorAllInfo(Spec obj)
        {
            InitializeComponent();
            if (obj != null)
            {

                PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext < MIDcDataContext>();     
                var aa = from a in context.TechnicalInformations
                         where a.Color == obj.Color && a.ColorCategory == obj.ColorCategory
                         select a;
                               
                this.colorAllInfoSub1.DataSource = aa;

                this.xl_SuppRef.Text = obj.SuppRef;
                this.xl_Color.Text = obj.Color;
                this.xl_ColorCategory.Text = obj.ColorCategory;
                this.xlb_CoolingTime.Text = obj.CoolingTime;
                this.xlb_Pressure.Text = obj.Pressure;
                this.xlb_Temperature.Text = obj.Temperature;
                this.xlb_Timing.Text = obj.Timing;


                var sos = from b in context.Details
                          where b.SuppRef == obj.SuppRef
                          select b;
 
                foreach (Detail  item in sos)
                {
                    this.xlb_SampleOrder.Text = item.SampleOrderNo;
                    this.xlb_midcStatus.Text = "(" + item.MIDStatus + ")";
                    break;
                }
                
                
            }
           
        }

        private void InitializeComponent()
        {
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrLabel7 = new DevExpress.XtraReports.UI.XRLabel();
            this.xlb_midcStatus = new DevExpress.XtraReports.UI.XRLabel();
            this.xlb_SampleOrder = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel6 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLine1 = new DevExpress.XtraReports.UI.XRLine();
            this.xlb_CoolingTime = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.xlb_Timing = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            this.xlb_Pressure = new DevExpress.XtraReports.UI.XRLabel();
            this.xlb_Temperature = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel115 = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_SuppRef = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel113 = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_ColorCategory = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Color = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel110 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail1 = new DevExpress.XtraReports.UI.DetailBand();
            this.TopMargin = new DevExpress.XtraReports.UI.TopMarginBand();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.BottomMargin = new DevExpress.XtraReports.UI.BottomMarginBand();
            this.xrPageInfo2 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrLabel8 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrSubreport1 = new DevExpress.XtraReports.UI.XRSubreport();
            this.colorAllInfoSub1 = new PH.MIDc.UI.ColorAllInfoSub();
            ((System.ComponentModel.ISupportInitialize)(this.colorAllInfoSub1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel7,
            this.xlb_midcStatus,
            this.xlb_SampleOrder,
            this.xrLabel6,
            this.xrLine1,
            this.xlb_CoolingTime,
            this.xrLabel5,
            this.xlb_Timing,
            this.xrLabel3,
            this.xrLabel4,
            this.xlb_Pressure,
            this.xlb_Temperature,
            this.xrLabel2,
            this.xrLabel115,
            this.xl_SuppRef,
            this.xrLabel113,
            this.xl_ColorCategory,
            this.xl_Color,
            this.xrLabel110,
            this.xrLabel1});
            this.PageHeader.Height = 126;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrLabel7
            // 
            this.xrLabel7.Font = new System.Drawing.Font("Arial", 13F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))));
            this.xrLabel7.Location = new System.Drawing.Point(8, 50);
            this.xrLabel7.Name = "xrLabel7";
            this.xrLabel7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel7.Size = new System.Drawing.Size(208, 25);
            this.xrLabel7.StylePriority.UseFont = false;
            this.xrLabel7.Text = "Technincal Information ";
            // 
            // xlb_midcStatus
            // 
            this.xlb_midcStatus.Font = new System.Drawing.Font("Arial", 12F);
            this.xlb_midcStatus.Location = new System.Drawing.Point(317, 8);
            this.xlb_midcStatus.Name = "xlb_midcStatus";
            this.xlb_midcStatus.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xlb_midcStatus.Size = new System.Drawing.Size(142, 25);
            this.xlb_midcStatus.StylePriority.UseFont = false;
            // 
            // xlb_SampleOrder
            // 
            this.xlb_SampleOrder.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xlb_SampleOrder.Location = new System.Drawing.Point(625, 8);
            this.xlb_SampleOrder.Name = "xlb_SampleOrder";
            this.xlb_SampleOrder.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xlb_SampleOrder.Size = new System.Drawing.Size(83, 17);
            this.xlb_SampleOrder.StylePriority.UseFont = false;
            // 
            // xrLabel6
            // 
            this.xrLabel6.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrLabel6.Location = new System.Drawing.Point(625, 25);
            this.xrLabel6.Name = "xrLabel6";
            this.xrLabel6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel6.Size = new System.Drawing.Size(83, 17);
            this.xrLabel6.StylePriority.UseFont = false;
            this.xrLabel6.Text = "SHEET3";
            // 
            // xrLine1
            // 
            this.xrLine1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.xrLine1.LineWidth = 3;
            this.xrLine1.Location = new System.Drawing.Point(8, 42);
            this.xrLine1.Name = "xrLine1";
            this.xrLine1.Size = new System.Drawing.Size(717, 8);
            // 
            // xlb_CoolingTime
            // 
            this.xlb_CoolingTime.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xlb_CoolingTime.Font = new System.Drawing.Font("Arial", 8F);
            this.xlb_CoolingTime.Location = new System.Drawing.Point(633, 100);
            this.xlb_CoolingTime.Name = "xlb_CoolingTime";
            this.xlb_CoolingTime.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xlb_CoolingTime.Size = new System.Drawing.Size(100, 17);
            this.xlb_CoolingTime.StylePriority.UseBorders = false;
            this.xlb_CoolingTime.StylePriority.UseFont = false;
            // 
            // xrLabel5
            // 
            this.xrLabel5.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrLabel5.Location = new System.Drawing.Point(542, 100);
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(83, 17);
            this.xrLabel5.StylePriority.UseFont = false;
            this.xrLabel5.Text = "Cooling Time:";
            // 
            // xlb_Timing
            // 
            this.xlb_Timing.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xlb_Timing.Font = new System.Drawing.Font("Arial", 8F);
            this.xlb_Timing.Location = new System.Drawing.Point(417, 100);
            this.xlb_Timing.Name = "xlb_Timing";
            this.xlb_Timing.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xlb_Timing.Size = new System.Drawing.Size(108, 17);
            this.xlb_Timing.StylePriority.UseBorders = false;
            this.xlb_Timing.StylePriority.UseFont = false;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrLabel3.Location = new System.Drawing.Point(367, 100);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(50, 17);
            this.xrLabel3.StylePriority.UseFont = false;
            this.xrLabel3.Text = "Timing:";
            // 
            // xrLabel4
            // 
            this.xrLabel4.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrLabel4.Location = new System.Drawing.Point(192, 100);
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(58, 17);
            this.xrLabel4.StylePriority.UseFont = false;
            this.xrLabel4.Text = "Pressure:";
            // 
            // xlb_Pressure
            // 
            this.xlb_Pressure.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xlb_Pressure.Font = new System.Drawing.Font("Arial", 8F);
            this.xlb_Pressure.Location = new System.Drawing.Point(258, 100);
            this.xlb_Pressure.Name = "xlb_Pressure";
            this.xlb_Pressure.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xlb_Pressure.Size = new System.Drawing.Size(75, 17);
            this.xlb_Pressure.StylePriority.UseBorders = false;
            this.xlb_Pressure.StylePriority.UseFont = false;
            // 
            // xlb_Temperature
            // 
            this.xlb_Temperature.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xlb_Temperature.Font = new System.Drawing.Font("Arial", 8F);
            this.xlb_Temperature.Location = new System.Drawing.Point(100, 100);
            this.xlb_Temperature.Name = "xlb_Temperature";
            this.xlb_Temperature.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xlb_Temperature.Size = new System.Drawing.Size(67, 17);
            this.xlb_Temperature.StylePriority.UseBorders = false;
            this.xlb_Temperature.StylePriority.UseFont = false;
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrLabel2.Location = new System.Drawing.Point(8, 100);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(83, 17);
            this.xrLabel2.StylePriority.UseFont = false;
            this.xrLabel2.Text = "Temperature:";
            // 
            // xrLabel115
            // 
            this.xrLabel115.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrLabel115.Location = new System.Drawing.Point(8, 83);
            this.xrLabel115.Name = "xrLabel115";
            this.xrLabel115.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel115.Size = new System.Drawing.Size(58, 17);
            this.xrLabel115.StylePriority.UseFont = false;
            this.xrLabel115.Text = "SuppRef:";
            // 
            // xl_SuppRef
            // 
            this.xl_SuppRef.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_SuppRef.Font = new System.Drawing.Font("Arial", 8F);
            this.xl_SuppRef.Location = new System.Drawing.Point(75, 83);
            this.xl_SuppRef.Name = "xl_SuppRef";
            this.xl_SuppRef.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_SuppRef.Size = new System.Drawing.Size(150, 17);
            this.xl_SuppRef.StylePriority.UseBorders = false;
            this.xl_SuppRef.StylePriority.UseFont = false;
            // 
            // xrLabel113
            // 
            this.xrLabel113.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrLabel113.Location = new System.Drawing.Point(467, 83);
            this.xrLabel113.Name = "xrLabel113";
            this.xrLabel113.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel113.Size = new System.Drawing.Size(92, 17);
            this.xrLabel113.StylePriority.UseFont = false;
            this.xrLabel113.Text = "ColorCategory:";
            // 
            // xl_ColorCategory
            // 
            this.xl_ColorCategory.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_ColorCategory.Font = new System.Drawing.Font("Arial", 8F);
            this.xl_ColorCategory.Location = new System.Drawing.Point(567, 83);
            this.xl_ColorCategory.Name = "xl_ColorCategory";
            this.xl_ColorCategory.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_ColorCategory.Size = new System.Drawing.Size(108, 17);
            this.xl_ColorCategory.StylePriority.UseBorders = false;
            this.xl_ColorCategory.StylePriority.UseFont = false;
            // 
            // xl_Color
            // 
            this.xl_Color.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Color.Font = new System.Drawing.Font("Arial", 8F);
            this.xl_Color.Location = new System.Drawing.Point(333, 83);
            this.xl_Color.Name = "xl_Color";
            this.xl_Color.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Color.Size = new System.Drawing.Size(100, 17);
            this.xl_Color.StylePriority.UseBorders = false;
            this.xl_Color.StylePriority.UseFont = false;
            // 
            // xrLabel110
            // 
            this.xrLabel110.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrLabel110.Location = new System.Drawing.Point(275, 83);
            this.xrLabel110.Name = "xrLabel110";
            this.xrLabel110.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel110.Size = new System.Drawing.Size(50, 17);
            this.xrLabel110.StylePriority.UseFont = false;
            this.xrLabel110.Text = "Color:";
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial", 16F, System.Drawing.FontStyle.Bold);
            this.xrLabel1.Location = new System.Drawing.Point(8, 8);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(300, 25);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.Text = "Material IDentity  Certificate";
            // 
            // Detail1
            // 
            this.Detail1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrSubreport1});
            this.Detail1.Height = 25;
            this.Detail1.Name = "Detail1";
            // 
            // TopMargin
            // 
            this.TopMargin.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPageInfo1});
            this.TopMargin.Height = 34;
            this.TopMargin.Name = "TopMargin";
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Font = new System.Drawing.Font("Arial", 8F);
            this.xrPageInfo1.Format = "Print On:{0:yyyy-MM-dd}";
            this.xrPageInfo1.Location = new System.Drawing.Point(608, 17);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.PageInfo = DevExpress.XtraPrinting.PageInfo.DateTime;
            this.xrPageInfo1.Size = new System.Drawing.Size(133, 17);
            this.xrPageInfo1.StylePriority.UseFont = false;
            // 
            // BottomMargin
            // 
            this.BottomMargin.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel8,
            this.xrPageInfo2});
            this.BottomMargin.Height = 31;
            this.BottomMargin.Name = "BottomMargin";
            // 
            // xrPageInfo2
            // 
            this.xrPageInfo2.Font = new System.Drawing.Font("Arial", 8F);
            this.xrPageInfo2.Location = new System.Drawing.Point(667, 0);
            this.xrPageInfo2.Name = "xrPageInfo2";
            this.xrPageInfo2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo2.Size = new System.Drawing.Size(58, 17);
            this.xrPageInfo2.StylePriority.UseFont = false;
            // 
            // xrLabel8
            // 
            this.xrLabel8.Font = new System.Drawing.Font("Arial", 8F);
            this.xrLabel8.Location = new System.Drawing.Point(625, 0);
            this.xrLabel8.Name = "xrLabel8";
            this.xrLabel8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel8.Size = new System.Drawing.Size(42, 17);
            this.xrLabel8.StylePriority.UseFont = false;
            this.xrLabel8.Text = "Page";
            // 
            // xrSubreport1
            // 
            this.xrSubreport1.Location = new System.Drawing.Point(8, 0);
            this.xrSubreport1.Name = "xrSubreport1";
            this.xrSubreport1.ReportSource = this.colorAllInfoSub1;
            this.xrSubreport1.Size = new System.Drawing.Size(708, 25);
            // 
            // ColorAllInfo
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail1,
            this.TopMargin,
            this.BottomMargin});
            this.Margins = new System.Drawing.Printing.Margins(40, 40, 34, 31);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.colorAllInfoSub1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
    }
}
