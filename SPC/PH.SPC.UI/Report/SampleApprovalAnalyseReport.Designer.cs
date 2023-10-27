namespace PH.SPC.UI
{
    partial class SampleApprovalAnalyseReport
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bar2 = new DevExpress.XtraBars.Bar();
            this.btnPrintSum = new DevExpress.XtraBars.BarButtonItem();
            this.bar3 = new DevExpress.XtraBars.Bar();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.btnPrintReport = new DevExpress.XtraBars.BarButtonItem();
            this.jobSampleApprovalAnalyseReport1 = new PH.SPC.BackEnd.ReportJob.JobSampleApprovalAnalyseReport();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            this.SuspendLayout();
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar2,
            this.bar3});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnPrintSum});
            this.barManager1.MainMenu = this.bar2;
            this.barManager1.MaxItemId = 2;
            this.barManager1.StatusBar = this.bar3;
            // 
            // bar2
            // 
            this.bar2.BarName = "Main menu";
            this.bar2.DockCol = 0;
            this.bar2.DockRow = 0;
            this.bar2.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnPrintSum, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.bar2.OptionsBar.MultiLine = true;
            this.bar2.OptionsBar.UseWholeRow = true;
            this.bar2.Text = "Main menu";
            // 
            // btnPrintSum
            // 
            this.btnPrintSum.Caption = "Print";
            this.btnPrintSum.Glyph = global::PH.SPC.UI.Properties.Resources.Print;
            this.btnPrintSum.Id = 1;
            this.btnPrintSum.Name = "btnPrintSum";
            this.btnPrintSum.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrintSum_Click);
            // 
            // bar3
            // 
            this.bar3.BarName = "Status bar";
            this.bar3.CanDockStyle = DevExpress.XtraBars.BarCanDockStyle.Bottom;
            this.bar3.DockCol = 0;
            this.bar3.DockRow = 0;
            this.bar3.DockStyle = DevExpress.XtraBars.BarDockStyle.Bottom;
            this.bar3.OptionsBar.AllowQuickCustomization = false;
            this.bar3.OptionsBar.DrawDragBorder = false;
            this.bar3.OptionsBar.UseWholeRow = true;
            this.bar3.Text = "Status bar";
            // 
            // barDockControlTop
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlTop, null);
            // 
            // barDockControlBottom
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlBottom, null);
            // 
            // barDockControlLeft
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlLeft, null);
            // 
            // barDockControlRight
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlRight, null);
            // 
            // btnPrintReport
            // 
            this.btnPrintReport.Caption = "Print";
            this.btnPrintReport.Glyph = global::PH.SPC.UI.Properties.Resources.Print;
            this.btnPrintReport.Id = 0;
            this.btnPrintReport.Name = "btnPrintReport";
            // 
            // jobSampleApprovalAnalyseReport1
            // 
            this.jobSampleApprovalAnalyseReport1.ActFrom = null;
            this.jobSampleApprovalAnalyseReport1.ActTo = null;
            this.jobSampleApprovalAnalyseReport1.CreateFrom = null;
            this.jobSampleApprovalAnalyseReport1.CreateTo = null;
            this.jobSampleApprovalAnalyseReport1.Cust = null;
            this.jobSampleApprovalAnalyseReport1.IssueFrom = null;
            this.jobSampleApprovalAnalyseReport1.IssueTo = null;
            this.jobSampleApprovalAnalyseReport1.Location = new System.Drawing.Point(51, 47);
            this.jobSampleApprovalAnalyseReport1.Name = "jobSampleApprovalAnalyseReport1";
            this.jobSampleApprovalAnalyseReport1.Param = null;
            this.jobSampleApprovalAnalyseReport1.Phase = 0;
            this.jobSampleApprovalAnalyseReport1.PreFrom = null;
            this.jobSampleApprovalAnalyseReport1.PreTo = null;
            this.jobSampleApprovalAnalyseReport1.ReportType = typeof(PH.SPC.BackEnd.SampleApprovalAnalyseReport);
            this.jobSampleApprovalAnalyseReport1.ReqFrom = null;
            this.jobSampleApprovalAnalyseReport1.ReqTo = null;
            this.jobSampleApprovalAnalyseReport1.SampleType = null;
            this.jobSampleApprovalAnalyseReport1.Season1 = null;
            this.jobSampleApprovalAnalyseReport1.Season2 = null;
            this.jobSampleApprovalAnalyseReport1.Size = new System.Drawing.Size(838, 538);
            this.jobSampleApprovalAnalyseReport1.SortID = null;
            this.jobSampleApprovalAnalyseReport1.Status = 0;
            this.PlatetoolTipController.SetSuperTip(this.jobSampleApprovalAnalyseReport1, null);
            this.jobSampleApprovalAnalyseReport1.TabIndex = 4;
            // 
            // SampleApprovalAnalyseReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.jobSampleApprovalAnalyseReport1);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "SampleApprovalAnalyseReport";
            this.Size = new System.Drawing.Size(964, 712);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bar2;
        private DevExpress.XtraBars.Bar bar3;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraBars.BarButtonItem btnPrintReport;
        private DevExpress.XtraBars.BarButtonItem btnPrintSum;
        private PH.SPC.BackEnd.ReportJob.JobSampleApprovalAnalyseReport jobSampleApprovalAnalyseReport1;
    }
}
