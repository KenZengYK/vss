namespace PH.MIDc.BackEnd
{
    partial class WipWeightReport
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tcName = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcHSCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcWeight = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrPageInfo2 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.lbTips = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbName = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbHSCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbWeight = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csGroupFooter = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csGroupType = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csGroupSatus2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csTitle2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Height = 0;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTable2
            // 
            this.xrTable2.Location = new System.Drawing.Point(0, 0);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2});
            this.xrTable2.Size = new System.Drawing.Size(686, 20);
            this.xrTable2.StyleName = "csDetail";
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tcName,
            this.tcHSCode,
            this.tcWeight,
            this.tcQty});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(686, 20);
            // 
            // tcName
            // 
            this.tcName.Location = new System.Drawing.Point(0, 0);
            this.tcName.Name = "tcName";
            this.tcName.Padding = new DevExpress.XtraPrinting.PaddingInfo(10, 2, 0, 0, 100F);
            this.tcName.Size = new System.Drawing.Size(217, 20);
            this.tcName.StylePriority.UsePadding = false;
            this.tcName.StylePriority.UseTextAlignment = false;
            this.tcName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcHSCode
            // 
            this.tcHSCode.Location = new System.Drawing.Point(217, 0);
            this.tcHSCode.Name = "tcHSCode";
            this.tcHSCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(10, 2, 0, 0, 100F);
            this.tcHSCode.Size = new System.Drawing.Size(177, 20);
            this.tcHSCode.StylePriority.UsePadding = false;
            this.tcHSCode.StylePriority.UseTextAlignment = false;
            this.tcHSCode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcWeight
            // 
            this.tcWeight.Location = new System.Drawing.Point(394, 0);
            this.tcWeight.Name = "tcWeight";
            this.tcWeight.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 5, 0, 0, 100F);
            this.tcWeight.Size = new System.Drawing.Size(130, 20);
            this.tcWeight.StylePriority.UsePadding = false;
            this.tcWeight.StylePriority.UseTextAlignment = false;
            this.tcWeight.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcQty
            // 
            this.tcQty.Location = new System.Drawing.Point(524, 0);
            this.tcQty.Name = "tcQty";
            this.tcQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 5, 0, 0, 100F);
            this.tcQty.Size = new System.Drawing.Size(162, 20);
            this.tcQty.StylePriority.UsePadding = false;
            this.tcQty.StylePriority.UseTextAlignment = false;
            this.tcQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPageInfo2,
            this.lbTips,
            this.xrPageInfo1,
            this.xrTable1,
            this.xrLabel1});
            this.PageHeader.Height = 92;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrPageInfo2
            // 
            this.xrPageInfo2.Format = "Page:  {0} of {1}";
            this.xrPageInfo2.Location = new System.Drawing.Point(601, 21);
            this.xrPageInfo2.Name = "xrPageInfo2";
            this.xrPageInfo2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo2.Size = new System.Drawing.Size(122, 15);
            this.xrPageInfo2.StyleName = "csDetail";
            this.xrPageInfo2.StylePriority.UseTextAlignment = false;
            this.xrPageInfo2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbTips
            // 
            this.lbTips.Location = new System.Drawing.Point(285, 2);
            this.lbTips.Multiline = true;
            this.lbTips.Name = "lbTips";
            this.lbTips.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbTips.Size = new System.Drawing.Size(281, 47);
            this.lbTips.StyleName = "csGroupSatus2";
            this.lbTips.StylePriority.UseTextAlignment = false;
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Format = "Printed Date: {0:yyyy\'/\'MM\'/\'dd}";
            this.xrPageInfo1.Location = new System.Drawing.Point(601, 2);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.PageInfo = DevExpress.XtraPrinting.PageInfo.DateTime;
            this.xrPageInfo1.Size = new System.Drawing.Size(122, 19);
            this.xrPageInfo1.StyleName = "csDetail";
            this.xrPageInfo1.StylePriority.UseTextAlignment = false;
            this.xrPageInfo1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTable1
            // 
            this.xrTable1.Location = new System.Drawing.Point(0, 66);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrTable1.Size = new System.Drawing.Size(726, 26);
            this.xrTable1.StyleName = "csTitle2";
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbName,
            this.lbHSCode,
            this.lbWeight,
            this.lbQty});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(726, 26);
            // 
            // lbName
            // 
            this.lbName.Location = new System.Drawing.Point(0, 0);
            this.lbName.Name = "lbName";
            this.lbName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbName.Size = new System.Drawing.Size(217, 26);
            this.lbName.Text = "Material Name";
            // 
            // lbHSCode
            // 
            this.lbHSCode.Location = new System.Drawing.Point(217, 0);
            this.lbHSCode.Name = "lbHSCode";
            this.lbHSCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbHSCode.Size = new System.Drawing.Size(177, 26);
            this.lbHSCode.Text = "Material HS Code";
            // 
            // lbWeight
            // 
            this.lbWeight.Location = new System.Drawing.Point(394, 0);
            this.lbWeight.Multiline = true;
            this.lbWeight.Name = "lbWeight";
            this.lbWeight.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbWeight.Size = new System.Drawing.Size(170, 26);
            this.lbWeight.Text = "Weight (KG)";
            // 
            // lbQty
            // 
            this.lbQty.Location = new System.Drawing.Point(564, 0);
            this.lbQty.Name = "lbQty";
            this.lbQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbQty.Size = new System.Drawing.Size(162, 26);
            this.lbQty.Text = "Qty";
            // 
            // xrLabel1
            // 
            this.xrLabel1.Location = new System.Drawing.Point(0, 2);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(246, 47);
            this.xrLabel1.StyleName = "csHeader";
            this.xrLabel1.Text = "Wip Weight Report";
            // 
            // csDetail
            // 
            this.csDetail.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.csDetail.Name = "csDetail";
            this.csDetail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csDetail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csGroupFooter
            // 
            this.csGroupFooter.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(180)))), ((int)(((byte)(210)))), ((int)(((byte)(255)))));
            this.csGroupFooter.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.csGroupFooter.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.csGroupFooter.Name = "csGroupFooter";
            this.csGroupFooter.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csGroupFooter.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // csGroupType
            // 
            this.csGroupType.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(242)))), ((int)(((byte)(248)))), ((int)(((byte)(255)))));
            this.csGroupType.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.csGroupType.Name = "csGroupType";
            this.csGroupType.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csGroupType.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // csGroupSatus2
            // 
            this.csGroupSatus2.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.csGroupSatus2.Name = "csGroupSatus2";
            this.csGroupSatus2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csGroupSatus2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomLeft;
            // 
            // csTitle2
            // 
            this.csTitle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(237)))), ((int)(((byte)(249)))), ((int)(((byte)(255)))));
            this.csTitle2.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(180)))), ((int)(((byte)(210)))), ((int)(((byte)(255)))));
            this.csTitle2.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.csTitle2.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.csTitle2.Name = "csTitle2";
            this.csTitle2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csTitle2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csHeader
            // 
            this.csHeader.Font = new System.Drawing.Font("Arial Unicode MS", 16F);
            this.csHeader.Name = "csHeader";
            this.csHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.Height = 0;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable2});
            this.GroupFooter1.Height = 20;
            this.GroupFooter1.Name = "GroupFooter1";
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.MIDc.BO.GetWipWeightResult);
            // 
            // WipWeightReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.GroupHeader1,
            this.GroupFooter1});
            this.DataSource = this.bindingSource1;
            this.Margins = new System.Drawing.Printing.Margins(50, 50, 50, 50);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csDetail,
            this.csGroupFooter,
            this.csGroupType,
            this.csGroupSatus2,
            this.csTitle2,
            this.csHeader});
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.WipWeightReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.XRControlStyle csDetail;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo2;
        private DevExpress.XtraReports.UI.XRControlStyle csGroupFooter;
        private DevExpress.XtraReports.UI.XRControlStyle csGroupType;
        private DevExpress.XtraReports.UI.XRControlStyle csGroupSatus2;
        private DevExpress.XtraReports.UI.XRControlStyle csTitle2;
        private DevExpress.XtraReports.UI.XRControlStyle csHeader;
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.GroupHeaderBand GroupHeader1;
        private DevExpress.XtraReports.UI.GroupFooterBand GroupFooter1;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell lbQty;
        private DevExpress.XtraReports.UI.XRTableCell lbName;
        private DevExpress.XtraReports.UI.XRTableCell lbWeight;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell tcName;
        private DevExpress.XtraReports.UI.XRTableCell tcWeight;
        private DevExpress.XtraReports.UI.XRTableCell tcQty;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.XRTableCell lbHSCode;
        private DevExpress.XtraReports.UI.XRTableCell tcHSCode;
        private DevExpress.XtraReports.UI.XRLabel lbTips;
    }
}
