namespace PH.FabricInspection.UI
{
    partial class FrmPreview
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

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.sBtn_SendToWebSite = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.sbPrint = new DevExpress.XtraEditors.SimpleButton();
            this.sbNext = new DevExpress.XtraEditors.SimpleButton();
            this.sbPrevious = new DevExpress.XtraEditors.SimpleButton();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.pcPreview = new DevExpress.XtraPrinting.Control.PrintControl();
            this.printingSystem1 = new DevExpress.XtraPrinting.PrintingSystem(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.printingSystem1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.sBtn_SendToWebSite);
            this.panelControl1.Controls.Add(this.simpleButton2);
            this.panelControl1.Controls.Add(this.simpleButton1);
            this.panelControl1.Controls.Add(this.sbPrint);
            this.panelControl1.Controls.Add(this.sbNext);
            this.panelControl1.Controls.Add(this.sbPrevious);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(743, 45);
            this.panelControl1.TabIndex = 0;
            // 
            // sBtn_SendToWebSite
            // 
            this.sBtn_SendToWebSite.Location = new System.Drawing.Point(624, 12);
            this.sBtn_SendToWebSite.Name = "sBtn_SendToWebSite";
            this.sBtn_SendToWebSite.Size = new System.Drawing.Size(107, 21);
            this.sBtn_SendToWebSite.TabIndex = 4;
            this.sBtn_SendToWebSite.Text = "Send To WebSite";
            this.sBtn_SendToWebSite.Visible = false;
            this.sBtn_SendToWebSite.Click += new System.EventHandler(this.sBtn_SendToWebSite_Click);
            // 
            // simpleButton2
            // 
            this.simpleButton2.Location = new System.Drawing.Point(505, 12);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(90, 21);
            this.simpleButton2.TabIndex = 4;
            this.simpleButton2.Text = "Design";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(387, 12);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(90, 21);
            this.simpleButton1.TabIndex = 3;
            this.simpleButton1.Text = "Close";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // sbPrint
            // 
            this.sbPrint.Location = new System.Drawing.Point(262, 12);
            this.sbPrint.Name = "sbPrint";
            this.sbPrint.Size = new System.Drawing.Size(90, 21);
            this.sbPrint.TabIndex = 2;
            this.sbPrint.Text = "Print";
            this.sbPrint.Click += new System.EventHandler(this.sbPrint_Click);
            // 
            // sbNext
            // 
            this.sbNext.Location = new System.Drawing.Point(137, 12);
            this.sbNext.Name = "sbNext";
            this.sbNext.Size = new System.Drawing.Size(90, 21);
            this.sbNext.TabIndex = 1;
            this.sbNext.Text = "Next Page";
            this.sbNext.Click += new System.EventHandler(this.sbNext_Click);
            // 
            // sbPrevious
            // 
            this.sbPrevious.Location = new System.Drawing.Point(12, 12);
            this.sbPrevious.Name = "sbPrevious";
            this.sbPrevious.Size = new System.Drawing.Size(90, 21);
            this.sbPrevious.TabIndex = 0;
            this.sbPrevious.Text = "Previous Page";
            this.sbPrevious.Click += new System.EventHandler(this.sbPrevious_Click);
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.pcPreview);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl2.Location = new System.Drawing.Point(0, 45);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(743, 406);
            this.panelControl2.TabIndex = 1;
            // 
            // pcPreview
            // 
            this.pcPreview.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pcPreview.ForeColor = System.Drawing.Color.White;
            this.pcPreview.IsMetric = true;
            this.pcPreview.Location = new System.Drawing.Point(2, 2);
            this.pcPreview.Name = "pcPreview";
            this.pcPreview.PrintingSystem = this.printingSystem1;
            this.pcPreview.ShowPageMargins = false;
            this.pcPreview.Size = new System.Drawing.Size(739, 402);
            this.pcPreview.TabIndex = 0;
            // 
            // FrmPreview
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(743, 451);
            this.Controls.Add(this.panelControl2);
            this.Controls.Add(this.panelControl1);
            this.Name = "FrmPreview";
            this.Text = "Report Preview";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.printingSystem1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraPrinting.Control.PrintControl pcPreview;
        private DevExpress.XtraPrinting.PrintingSystem printingSystem1;
        private DevExpress.XtraEditors.SimpleButton sbPrevious;
        private DevExpress.XtraEditors.SimpleButton sbNext;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.SimpleButton sbPrint;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private DevExpress.XtraEditors.SimpleButton sBtn_SendToWebSite;
    }
}