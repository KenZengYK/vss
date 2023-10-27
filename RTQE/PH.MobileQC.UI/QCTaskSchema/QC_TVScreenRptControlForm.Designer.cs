namespace PH.MobileQC.UI.QCTaskSchema
{
    partial class QC_TVScreenRptControlForm
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.imageCBox_LineNO = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.imageCBox_WorkShop = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.sBtn_ShowRpt = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.imageCBox_Factory = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.webBrowser1 = new System.Windows.Forms.WebBrowser();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.spinEdit_RefreshInterval = new DevExpress.XtraEditors.SpinEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.sBtn_StopAndGO = new DevExpress.XtraEditors.SimpleButton();
            this.timer_RefreshScreen = new System.Windows.Forms.Timer(this.components);
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.lblLastRefreshTime = new DevExpress.XtraEditors.LabelControl();
            this.sBtn_PrintScreen = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.imageCBox_LineNO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageCBox_WorkShop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageCBox_Factory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit_RefreshInterval.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(183, 14);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(36, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "車間：";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(422, 14);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(48, 14);
            this.labelControl2.TabIndex = 2;
            this.labelControl2.Text = "組裝線：";
            // 
            // imageCBox_LineNO
            // 
            this.imageCBox_LineNO.Location = new System.Drawing.Point(477, 11);
            this.imageCBox_LineNO.Name = "imageCBox_LineNO";
            this.imageCBox_LineNO.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.imageCBox_LineNO.Size = new System.Drawing.Size(127, 21);
            this.imageCBox_LineNO.TabIndex = 3;
            // 
            // imageCBox_WorkShop
            // 
            this.imageCBox_WorkShop.Location = new System.Drawing.Point(226, 11);
            this.imageCBox_WorkShop.Name = "imageCBox_WorkShop";
            this.imageCBox_WorkShop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.imageCBox_WorkShop.Size = new System.Drawing.Size(136, 21);
            this.imageCBox_WorkShop.TabIndex = 4;
            this.imageCBox_WorkShop.SelectedValueChanged += new System.EventHandler(this.imageCBox_WorkShop_SelectedValueChanged);
            // 
            // sBtn_ShowRpt
            // 
            this.sBtn_ShowRpt.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_ShowRpt.Location = new System.Drawing.Point(798, 4);
            this.sBtn_ShowRpt.Name = "sBtn_ShowRpt";
            this.sBtn_ShowRpt.Size = new System.Drawing.Size(99, 32);
            this.sBtn_ShowRpt.TabIndex = 5;
            this.sBtn_ShowRpt.Text = "顯示Screen";
            this.sBtn_ShowRpt.Click += new System.EventHandler(this.sBtn_ShowRpt_Click);
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(15, 14);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(36, 14);
            this.labelControl3.TabIndex = 0;
            this.labelControl3.Text = "廠別：";
            // 
            // imageCBox_Factory
            // 
            this.imageCBox_Factory.Location = new System.Drawing.Point(58, 11);
            this.imageCBox_Factory.Name = "imageCBox_Factory";
            this.imageCBox_Factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.imageCBox_Factory.Size = new System.Drawing.Size(110, 21);
            this.imageCBox_Factory.TabIndex = 4;
            this.imageCBox_Factory.SelectedValueChanged += new System.EventHandler(this.imageCBox_Factory_SelectedValueChanged);
            // 
            // webBrowser1
            // 
            this.webBrowser1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.webBrowser1.Location = new System.Drawing.Point(0, 41);
            this.webBrowser1.MinimumSize = new System.Drawing.Size(20, 20);
            this.webBrowser1.Name = "webBrowser1";
            this.webBrowser1.Size = new System.Drawing.Size(1008, 368);
            this.PlatetoolTipController.SetSuperTip(this.webBrowser1, null);
            this.webBrowser1.TabIndex = 6;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.sBtn_PrintScreen);
            this.panelControl1.Controls.Add(this.sBtn_ShowRpt);
            this.panelControl1.Controls.Add(this.labelControl1);
            this.panelControl1.Controls.Add(this.labelControl2);
            this.panelControl1.Controls.Add(this.imageCBox_Factory);
            this.panelControl1.Controls.Add(this.labelControl3);
            this.panelControl1.Controls.Add(this.imageCBox_WorkShop);
            this.panelControl1.Controls.Add(this.imageCBox_LineNO);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1008, 41);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 7;
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.lblLastRefreshTime);
            this.panelControl2.Controls.Add(this.labelControl5);
            this.panelControl2.Controls.Add(this.spinEdit_RefreshInterval);
            this.panelControl2.Controls.Add(this.labelControl4);
            this.panelControl2.Controls.Add(this.sBtn_StopAndGO);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl2.Location = new System.Drawing.Point(0, 409);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(1008, 37);
            this.PlatetoolTipController.SetSuperTip(this.panelControl2, null);
            this.panelControl2.TabIndex = 8;
            // 
            // spinEdit_RefreshInterval
            // 
            this.spinEdit_RefreshInterval.EditValue = new decimal(new int[] {
            3,
            0,
            0,
            0});
            this.spinEdit_RefreshInterval.Location = new System.Drawing.Point(157, 9);
            this.spinEdit_RefreshInterval.Name = "spinEdit_RefreshInterval";
            this.spinEdit_RefreshInterval.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit_RefreshInterval.Properties.MaxValue = new decimal(new int[] {
            30,
            0,
            0,
            0});
            this.spinEdit_RefreshInterval.Properties.MinValue = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.spinEdit_RefreshInterval.Size = new System.Drawing.Size(75, 21);
            this.spinEdit_RefreshInterval.TabIndex = 2;
            this.spinEdit_RefreshInterval.EditValueChanged += new System.EventHandler(this.spinEdit_RefreshInterval_EditValueChanged);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(15, 12);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(134, 14);
            this.labelControl4.TabIndex = 1;
            this.labelControl4.Text = "屏幕刷新時間頻率(分鐘):";
            // 
            // sBtn_StopAndGO
            // 
            this.sBtn_StopAndGO.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_StopAndGO.Location = new System.Drawing.Point(912, 7);
            this.sBtn_StopAndGO.Name = "sBtn_StopAndGO";
            this.sBtn_StopAndGO.Size = new System.Drawing.Size(75, 25);
            this.sBtn_StopAndGO.TabIndex = 0;
            this.sBtn_StopAndGO.Tag = "STOP";
            this.sBtn_StopAndGO.Text = "暫停";
            this.sBtn_StopAndGO.Click += new System.EventHandler(this.sBtn_StopAndGO_Click);
            // 
            // timer_RefreshScreen
            // 
            this.timer_RefreshScreen.Tick += new System.EventHandler(this.timer_RefreshScreen_Tick);
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(350, 12);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(120, 14);
            this.labelControl5.TabIndex = 3;
            this.labelControl5.Text = "上一次刷新屏幕時間：";
            // 
            // lblLastRefreshTime
            // 
            this.lblLastRefreshTime.Location = new System.Drawing.Point(476, 12);
            this.lblLastRefreshTime.Name = "lblLastRefreshTime";
            this.lblLastRefreshTime.Size = new System.Drawing.Size(7, 14);
            this.lblLastRefreshTime.TabIndex = 3;
            this.lblLastRefreshTime.Text = "_";
            // 
            // sBtn_PrintScreen
            // 
            this.sBtn_PrintScreen.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_PrintScreen.Location = new System.Drawing.Point(903, 5);
            this.sBtn_PrintScreen.Name = "sBtn_PrintScreen";
            this.sBtn_PrintScreen.Size = new System.Drawing.Size(99, 30);
            this.sBtn_PrintScreen.TabIndex = 6;
            this.sBtn_PrintScreen.Text = "打印Screen";
            this.sBtn_PrintScreen.Click += new System.EventHandler(this.sBtn_PrintScreen_Click);
            // 
            // QC_TVScreenRptControlForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.webBrowser1);
            this.Controls.Add(this.panelControl2);
            this.Controls.Add(this.panelControl1);
            this.Name = "QC_TVScreenRptControlForm";
            this.Size = new System.Drawing.Size(1008, 446);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.QC_TVScreenRptControlForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.imageCBox_LineNO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageCBox_WorkShop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageCBox_Factory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            this.panelControl2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit_RefreshInterval.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.ImageComboBoxEdit imageCBox_LineNO;
        private DevExpress.XtraEditors.ImageComboBoxEdit imageCBox_WorkShop;
        private DevExpress.XtraEditors.SimpleButton sBtn_ShowRpt;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.ImageComboBoxEdit imageCBox_Factory;
        private System.Windows.Forms.WebBrowser webBrowser1;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraEditors.SimpleButton sBtn_StopAndGO;
        private DevExpress.XtraEditors.SpinEdit spinEdit_RefreshInterval;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private System.Windows.Forms.Timer timer_RefreshScreen;
        private DevExpress.XtraEditors.LabelControl lblLastRefreshTime;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.SimpleButton sBtn_PrintScreen;
    }
}
