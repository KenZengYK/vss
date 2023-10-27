namespace PH.POPC.AutoUpdate.UI
{
    partial class frmMain
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
            this.editShowFrom = new DevExpress.XtraEditors.CheckEdit();
            this.editLogs = new DevExpress.XtraEditors.MemoEdit();
            this.groupTimer = new DevExpress.XtraEditors.GroupControl();
            this.label10 = new System.Windows.Forms.Label();
            this.btnSetTimer = new DevExpress.XtraEditors.SimpleButton();
            this.editSecond = new DevExpress.XtraEditors.SpinEdit();
            this.label11 = new System.Windows.Forms.Label();
            this.editIntervalIsSecond = new DevExpress.XtraEditors.CheckEdit();
            this.editMinute = new DevExpress.XtraEditors.SpinEdit();
            this.label12 = new System.Windows.Forms.Label();
            this.btnStopTimer = new DevExpress.XtraEditors.SimpleButton();
            this.btnStartTimer = new DevExpress.XtraEditors.SimpleButton();
            this.timer_update = new System.Windows.Forms.Timer(this.components);
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editShowFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editLogs.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupTimer)).BeginInit();
            this.groupTimer.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editSecond.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editIntervalIsSecond.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMinute.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.editShowFrom);
            this.panelControl1.Controls.Add(this.editLogs);
            this.panelControl1.Controls.Add(this.groupTimer);
            this.panelControl1.Controls.Add(this.btnStopTimer);
            this.panelControl1.Controls.Add(this.btnStartTimer);
            this.panelControl1.Location = new System.Drawing.Point(12, 16);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(569, 464);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 9;
            // 
            // editShowFrom
            // 
            this.editShowFrom.Location = new System.Drawing.Point(24, 174);
            this.editShowFrom.Name = "editShowFrom";
            this.editShowFrom.Properties.Caption = "Show Process Form";
            this.editShowFrom.Size = new System.Drawing.Size(132, 19);
            this.editShowFrom.TabIndex = 17;
            // 
            // editLogs
            // 
            this.editLogs.Location = new System.Drawing.Point(26, 197);
            this.editLogs.Name = "editLogs";
            this.editLogs.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.editLogs.Properties.Appearance.Options.UseBackColor = true;
            this.editLogs.Properties.ReadOnly = true;
            this.editLogs.Properties.WordWrap = false;
            this.editLogs.Size = new System.Drawing.Size(506, 251);
            this.editLogs.TabIndex = 16;
            // 
            // groupTimer
            // 
            this.groupTimer.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupTimer.Controls.Add(this.label10);
            this.groupTimer.Controls.Add(this.btnSetTimer);
            this.groupTimer.Controls.Add(this.editSecond);
            this.groupTimer.Controls.Add(this.label11);
            this.groupTimer.Controls.Add(this.editIntervalIsSecond);
            this.groupTimer.Controls.Add(this.editMinute);
            this.groupTimer.Controls.Add(this.label12);
            this.groupTimer.Location = new System.Drawing.Point(179, 6);
            this.groupTimer.Name = "groupTimer";
            this.groupTimer.Size = new System.Drawing.Size(273, 174);
            this.PlatetoolTipController.SetSuperTip(this.groupTimer, null);
            this.groupTimer.TabIndex = 15;
            this.groupTimer.Text = "Timer Interval: (please stop timer then set it)";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(5, 161);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.label10, null);
            this.label10.TabIndex = 16;
            this.label10.Text = "Current Interval:";
            // 
            // btnSetTimer
            // 
            this.btnSetTimer.Location = new System.Drawing.Point(186, 101);
            this.btnSetTimer.Name = "btnSetTimer";
            this.btnSetTimer.Size = new System.Drawing.Size(62, 35);
            this.btnSetTimer.TabIndex = 14;
            this.btnSetTimer.Text = "Set";
            this.btnSetTimer.Click += new System.EventHandler(this.btnSetTimer_Click);
            // 
            // editSecond
            // 
            this.editSecond.EditValue = new decimal(new int[] {
            30,
            0,
            0,
            0});
            this.editSecond.Location = new System.Drawing.Point(32, 47);
            this.editSecond.Name = "editSecond";
            this.editSecond.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editSecond.Properties.IsFloatValue = false;
            this.editSecond.Properties.Mask.EditMask = "N00";
            this.editSecond.Size = new System.Drawing.Size(108, 21);
            this.editSecond.TabIndex = 7;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(148, 50);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.label11, null);
            this.label11.TabIndex = 8;
            this.label11.Text = "Seconds(秒)";
            // 
            // editIntervalIsSecond
            // 
            this.editIntervalIsSecond.EditValue = true;
            this.editIntervalIsSecond.Location = new System.Drawing.Point(25, 25);
            this.editIntervalIsSecond.Name = "editIntervalIsSecond";
            this.editIntervalIsSecond.Properties.Caption = "以秒計算";
            this.editIntervalIsSecond.Size = new System.Drawing.Size(75, 19);
            this.editIntervalIsSecond.TabIndex = 11;
            this.editIntervalIsSecond.CheckedChanged += new System.EventHandler(this.editIntervalIsSecond_CheckedChanged);
            // 
            // editMinute
            // 
            this.editMinute.EditValue = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.editMinute.Enabled = false;
            this.editMinute.Location = new System.Drawing.Point(32, 73);
            this.editMinute.Name = "editMinute";
            this.editMinute.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editMinute.Properties.IsFloatValue = false;
            this.editMinute.Properties.Mask.EditMask = "N00";
            this.editMinute.Size = new System.Drawing.Size(108, 21);
            this.editMinute.TabIndex = 9;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Enabled = false;
            this.label12.Location = new System.Drawing.Point(148, 76);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.label12, null);
            this.label12.TabIndex = 10;
            this.label12.Text = "Minutes(分)";
            // 
            // btnStopTimer
            // 
            this.btnStopTimer.Location = new System.Drawing.Point(26, 101);
            this.btnStopTimer.Name = "btnStopTimer";
            this.btnStopTimer.Size = new System.Drawing.Size(100, 35);
            this.btnStopTimer.TabIndex = 13;
            this.btnStopTimer.Text = "Stop Timer";
            this.btnStopTimer.Click += new System.EventHandler(this.btnStopTimer_Click);
            // 
            // btnStartTimer
            // 
            this.btnStartTimer.Location = new System.Drawing.Point(26, 17);
            this.btnStartTimer.Name = "btnStartTimer";
            this.btnStartTimer.Size = new System.Drawing.Size(100, 35);
            this.btnStartTimer.TabIndex = 12;
            this.btnStartTimer.Text = "Start Timer";
            this.btnStartTimer.Click += new System.EventHandler(this.btnStartTimer_Click);
            // 
            // timer_update
            // 
            this.timer_update.Interval = 600000;
            this.timer_update.Tick += new System.EventHandler(this.timer_update_Tick);
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_update_Tick);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelControl1);
            this.Name = "frmMain";
            this.Size = new System.Drawing.Size(630, 541);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.editShowFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editLogs.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupTimer)).EndInit();
            this.groupTimer.ResumeLayout(false);
            this.groupTimer.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editSecond.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editIntervalIsSecond.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMinute.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private System.Windows.Forms.Label label11;
        private DevExpress.XtraEditors.SpinEdit editSecond;
        private System.Windows.Forms.Label label12;
        private DevExpress.XtraEditors.SpinEdit editMinute;
        private DevExpress.XtraEditors.CheckEdit editIntervalIsSecond;
        private DevExpress.XtraEditors.SimpleButton btnStartTimer;
        private DevExpress.XtraEditors.SimpleButton btnStopTimer;
        private DevExpress.XtraEditors.SimpleButton btnSetTimer;
        private DevExpress.XtraEditors.GroupControl groupTimer;
        private System.Windows.Forms.Label label10;
        private DevExpress.XtraEditors.MemoEdit editLogs;
        private DevExpress.XtraEditors.CheckEdit editShowFrom;
        private System.Windows.Forms.Timer timer_update;
        private System.Windows.Forms.Timer timer1;

    }
}