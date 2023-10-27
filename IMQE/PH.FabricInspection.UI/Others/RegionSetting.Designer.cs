namespace PH.FabricInspection.UI
{
    partial class FrmSpreadDefectSetting
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
            this.pcFromTo = new DevExpress.XtraEditors.PanelControl();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.teLengthTo = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.teLengthFrom = new DevExpress.XtraEditors.TextEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.teWidthTo = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.teWidthFrom = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.sbReturn = new DevExpress.XtraEditors.SimpleButton();
            this.sbPoint = new DevExpress.XtraEditors.SimpleButton();
            this.btnClose = new DevExpress.XtraEditors.SimpleButton();
            this.sbNumEnter = new DevExpress.XtraEditors.SimpleButton();
            this.sbNumClear = new DevExpress.XtraEditors.SimpleButton();
            this.sbNum0 = new DevExpress.XtraEditors.SimpleButton();
            this.sbNum3 = new DevExpress.XtraEditors.SimpleButton();
            this.sbNum2 = new DevExpress.XtraEditors.SimpleButton();
            this.sbNum1 = new DevExpress.XtraEditors.SimpleButton();
            this.sbNum6 = new DevExpress.XtraEditors.SimpleButton();
            this.sbNum5 = new DevExpress.XtraEditors.SimpleButton();
            this.sbNum4 = new DevExpress.XtraEditors.SimpleButton();
            this.sbNum9 = new DevExpress.XtraEditors.SimpleButton();
            this.sbNum8 = new DevExpress.XtraEditors.SimpleButton();
            this.sbNum7 = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.pcFromTo)).BeginInit();
            this.pcFromTo.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teLengthTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teLengthFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teWidthTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teWidthFrom.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // pcFromTo
            // 
            this.pcFromTo.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pcFromTo.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pcFromTo.Controls.Add(this.groupControl2);
            this.pcFromTo.Controls.Add(this.groupControl1);
            this.pcFromTo.Controls.Add(this.sbReturn);
            this.pcFromTo.Controls.Add(this.sbPoint);
            this.pcFromTo.Controls.Add(this.btnClose);
            this.pcFromTo.Controls.Add(this.sbNumEnter);
            this.pcFromTo.Controls.Add(this.sbNumClear);
            this.pcFromTo.Controls.Add(this.sbNum0);
            this.pcFromTo.Controls.Add(this.sbNum3);
            this.pcFromTo.Controls.Add(this.sbNum2);
            this.pcFromTo.Controls.Add(this.sbNum1);
            this.pcFromTo.Controls.Add(this.sbNum6);
            this.pcFromTo.Controls.Add(this.sbNum5);
            this.pcFromTo.Controls.Add(this.sbNum4);
            this.pcFromTo.Controls.Add(this.sbNum9);
            this.pcFromTo.Controls.Add(this.sbNum8);
            this.pcFromTo.Controls.Add(this.sbNum7);
            this.pcFromTo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pcFromTo.Location = new System.Drawing.Point(0, 0);
            this.pcFromTo.Name = "pcFromTo";
            this.pcFromTo.Size = new System.Drawing.Size(312, 458);
            this.pcFromTo.TabIndex = 3;
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.teLengthTo);
            this.groupControl2.Controls.Add(this.labelControl3);
            this.groupControl2.Controls.Add(this.teLengthFrom);
            this.groupControl2.Controls.Add(this.labelControl4);
            this.groupControl2.Location = new System.Drawing.Point(8, 88);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(298, 65);
            this.groupControl2.TabIndex = 50;
            this.groupControl2.Text = "Length (m)";
            // 
            // teLengthTo
            // 
            this.teLengthTo.Location = new System.Drawing.Point(183, 27);
            this.teLengthTo.Name = "teLengthTo";
            this.teLengthTo.Properties.AutoHeight = false;
            this.teLengthTo.Size = new System.Drawing.Size(100, 30);
            this.teLengthTo.TabIndex = 39;
            this.teLengthTo.Enter += new System.EventHandler(this.teFrom_Enter);
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(10, 35);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(31, 14);
            this.labelControl3.TabIndex = 36;
            this.labelControl3.Text = "From:";
            // 
            // teLengthFrom
            // 
            this.teLengthFrom.Location = new System.Drawing.Point(48, 27);
            this.teLengthFrom.Name = "teLengthFrom";
            this.teLengthFrom.Properties.AutoHeight = false;
            this.teLengthFrom.Size = new System.Drawing.Size(100, 30);
            this.teLengthFrom.TabIndex = 37;
            this.teLengthFrom.Enter += new System.EventHandler(this.teFrom_Enter);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(157, 35);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(19, 14);
            this.labelControl4.TabIndex = 38;
            this.labelControl4.Text = "To:";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.teWidthTo);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Controls.Add(this.teWidthFrom);
            this.groupControl1.Controls.Add(this.labelControl2);
            this.groupControl1.Location = new System.Drawing.Point(8, 17);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(298, 65);
            this.groupControl1.TabIndex = 49;
            this.groupControl1.Text = "Width (mm)";
            // 
            // teWidthTo
            // 
            this.teWidthTo.Location = new System.Drawing.Point(183, 27);
            this.teWidthTo.Name = "teWidthTo";
            this.teWidthTo.Properties.AutoHeight = false;
            this.teWidthTo.Size = new System.Drawing.Size(100, 30);
            this.teWidthTo.TabIndex = 39;
            this.teWidthTo.Enter += new System.EventHandler(this.teFrom_Enter);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(10, 35);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(31, 14);
            this.labelControl1.TabIndex = 36;
            this.labelControl1.Text = "From:";
            // 
            // teWidthFrom
            // 
            this.teWidthFrom.Location = new System.Drawing.Point(48, 27);
            this.teWidthFrom.Name = "teWidthFrom";
            this.teWidthFrom.Properties.AutoHeight = false;
            this.teWidthFrom.Size = new System.Drawing.Size(100, 30);
            this.teWidthFrom.TabIndex = 37;
            this.teWidthFrom.Enter += new System.EventHandler(this.teFrom_Enter);
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(157, 35);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(19, 14);
            this.labelControl2.TabIndex = 38;
            this.labelControl2.Text = "To:";
            // 
            // sbReturn
            // 
            this.sbReturn.AllowFocus = false;
            this.sbReturn.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbReturn.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbReturn.Appearance.Options.UseBackColor = true;
            this.sbReturn.Appearance.Options.UseFont = true;
            this.sbReturn.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbReturn.Location = new System.Drawing.Point(206, 334);
            this.sbReturn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.sbReturn.Name = "sbReturn";
            this.sbReturn.Size = new System.Drawing.Size(100, 60);
            this.sbReturn.TabIndex = 48;
            this.sbReturn.Text = "Return";
            this.sbReturn.Click += new System.EventHandler(this.sbReturn_Click);
            // 
            // sbPoint
            // 
            this.sbPoint.AllowFocus = false;
            this.sbPoint.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbPoint.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbPoint.Appearance.Options.UseBackColor = true;
            this.sbPoint.Appearance.Options.UseFont = true;
            this.sbPoint.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbPoint.Location = new System.Drawing.Point(107, 334);
            this.sbPoint.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.sbPoint.Name = "sbPoint";
            this.sbPoint.Size = new System.Drawing.Size(100, 60);
            this.sbPoint.TabIndex = 47;
            this.sbPoint.Tag = ".";
            this.sbPoint.Text = ".";
            this.sbPoint.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // btnClose
            // 
            this.btnClose.AllowFocus = false;
            this.btnClose.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.btnClose.Appearance.Options.UseBackColor = true;
            this.btnClose.Appearance.Options.UseTextOptions = true;
            this.btnClose.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.btnClose.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.btnClose.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.HotFlat;
            this.btnClose.Location = new System.Drawing.Point(288, 0);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(17, 17);
            this.btnClose.TabIndex = 40;
            this.btnClose.Text = "X";
            this.btnClose.Visible = false;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // sbNumEnter
            // 
            this.sbNumEnter.AllowFocus = false;
            this.sbNumEnter.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNumEnter.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNumEnter.Appearance.Options.UseBackColor = true;
            this.sbNumEnter.Appearance.Options.UseFont = true;
            this.sbNumEnter.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNumEnter.Location = new System.Drawing.Point(156, 393);
            this.sbNumEnter.Name = "sbNumEnter";
            this.sbNumEnter.Size = new System.Drawing.Size(150, 60);
            this.sbNumEnter.TabIndex = 35;
            this.sbNumEnter.Text = "Enter";
            this.sbNumEnter.Click += new System.EventHandler(this.sbNumEnter_Click);
            // 
            // sbNumClear
            // 
            this.sbNumClear.AllowFocus = false;
            this.sbNumClear.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNumClear.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNumClear.Appearance.Options.UseBackColor = true;
            this.sbNumClear.Appearance.Options.UseFont = true;
            this.sbNumClear.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNumClear.Location = new System.Drawing.Point(8, 393);
            this.sbNumClear.Name = "sbNumClear";
            this.sbNumClear.Size = new System.Drawing.Size(150, 60);
            this.sbNumClear.TabIndex = 34;
            this.sbNumClear.Text = "Clear";
            this.sbNumClear.Click += new System.EventHandler(this.sbNumClear_Click);
            // 
            // sbNum0
            // 
            this.sbNum0.AllowFocus = false;
            this.sbNum0.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNum0.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNum0.Appearance.Options.UseBackColor = true;
            this.sbNum0.Appearance.Options.UseFont = true;
            this.sbNum0.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNum0.Location = new System.Drawing.Point(8, 334);
            this.sbNum0.Name = "sbNum0";
            this.sbNum0.Size = new System.Drawing.Size(100, 60);
            this.sbNum0.TabIndex = 33;
            this.sbNum0.Tag = "0";
            this.sbNum0.Text = "0";
            this.sbNum0.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // sbNum3
            // 
            this.sbNum3.AllowFocus = false;
            this.sbNum3.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNum3.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNum3.Appearance.Options.UseBackColor = true;
            this.sbNum3.Appearance.Options.UseFont = true;
            this.sbNum3.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNum3.Location = new System.Drawing.Point(206, 275);
            this.sbNum3.Name = "sbNum3";
            this.sbNum3.Size = new System.Drawing.Size(100, 60);
            this.sbNum3.TabIndex = 32;
            this.sbNum3.Tag = "3";
            this.sbNum3.Text = "3";
            this.sbNum3.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // sbNum2
            // 
            this.sbNum2.AllowFocus = false;
            this.sbNum2.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNum2.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNum2.Appearance.Options.UseBackColor = true;
            this.sbNum2.Appearance.Options.UseFont = true;
            this.sbNum2.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNum2.Location = new System.Drawing.Point(107, 275);
            this.sbNum2.Name = "sbNum2";
            this.sbNum2.Size = new System.Drawing.Size(100, 60);
            this.sbNum2.TabIndex = 31;
            this.sbNum2.Tag = "2";
            this.sbNum2.Text = "2";
            this.sbNum2.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // sbNum1
            // 
            this.sbNum1.AllowFocus = false;
            this.sbNum1.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNum1.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNum1.Appearance.Options.UseBackColor = true;
            this.sbNum1.Appearance.Options.UseFont = true;
            this.sbNum1.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNum1.Location = new System.Drawing.Point(8, 275);
            this.sbNum1.Name = "sbNum1";
            this.sbNum1.Size = new System.Drawing.Size(100, 60);
            this.sbNum1.TabIndex = 30;
            this.sbNum1.Tag = "1";
            this.sbNum1.Text = "1";
            this.sbNum1.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // sbNum6
            // 
            this.sbNum6.AllowFocus = false;
            this.sbNum6.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNum6.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNum6.Appearance.Options.UseBackColor = true;
            this.sbNum6.Appearance.Options.UseFont = true;
            this.sbNum6.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNum6.Location = new System.Drawing.Point(206, 216);
            this.sbNum6.Name = "sbNum6";
            this.sbNum6.Size = new System.Drawing.Size(100, 60);
            this.sbNum6.TabIndex = 29;
            this.sbNum6.Tag = "6";
            this.sbNum6.Text = "6";
            this.sbNum6.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // sbNum5
            // 
            this.sbNum5.AllowFocus = false;
            this.sbNum5.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNum5.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNum5.Appearance.Options.UseBackColor = true;
            this.sbNum5.Appearance.Options.UseFont = true;
            this.sbNum5.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNum5.Location = new System.Drawing.Point(107, 216);
            this.sbNum5.Name = "sbNum5";
            this.sbNum5.Size = new System.Drawing.Size(100, 60);
            this.sbNum5.TabIndex = 28;
            this.sbNum5.Tag = "5";
            this.sbNum5.Text = "5";
            this.sbNum5.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // sbNum4
            // 
            this.sbNum4.AllowFocus = false;
            this.sbNum4.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNum4.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNum4.Appearance.Options.UseBackColor = true;
            this.sbNum4.Appearance.Options.UseFont = true;
            this.sbNum4.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNum4.Location = new System.Drawing.Point(8, 216);
            this.sbNum4.Name = "sbNum4";
            this.sbNum4.Size = new System.Drawing.Size(100, 60);
            this.sbNum4.TabIndex = 27;
            this.sbNum4.Tag = "4";
            this.sbNum4.Text = "4";
            this.sbNum4.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // sbNum9
            // 
            this.sbNum9.AllowFocus = false;
            this.sbNum9.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNum9.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNum9.Appearance.Options.UseBackColor = true;
            this.sbNum9.Appearance.Options.UseFont = true;
            this.sbNum9.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNum9.Location = new System.Drawing.Point(206, 157);
            this.sbNum9.Name = "sbNum9";
            this.sbNum9.Size = new System.Drawing.Size(100, 60);
            this.sbNum9.TabIndex = 26;
            this.sbNum9.Tag = "9";
            this.sbNum9.Text = "9";
            this.sbNum9.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // sbNum8
            // 
            this.sbNum8.AllowFocus = false;
            this.sbNum8.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNum8.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNum8.Appearance.Options.UseBackColor = true;
            this.sbNum8.Appearance.Options.UseFont = true;
            this.sbNum8.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNum8.Location = new System.Drawing.Point(107, 157);
            this.sbNum8.Name = "sbNum8";
            this.sbNum8.Size = new System.Drawing.Size(100, 60);
            this.sbNum8.TabIndex = 25;
            this.sbNum8.Tag = "8";
            this.sbNum8.Text = "8";
            this.sbNum8.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // sbNum7
            // 
            this.sbNum7.AllowFocus = false;
            this.sbNum7.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNum7.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNum7.Appearance.Options.UseBackColor = true;
            this.sbNum7.Appearance.Options.UseFont = true;
            this.sbNum7.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNum7.Location = new System.Drawing.Point(8, 157);
            this.sbNum7.Name = "sbNum7";
            this.sbNum7.Size = new System.Drawing.Size(100, 60);
            this.sbNum7.TabIndex = 24;
            this.sbNum7.Tag = "7";
            this.sbNum7.Text = "7";
            this.sbNum7.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // FrmSpreadDefectSetting
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(312, 458);
            this.Controls.Add(this.pcFromTo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.KeyPreview = true;
            this.Margin = new System.Windows.Forms.Padding(2, 3, 2, 3);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmSpreadDefectSetting";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Region Setting";
            this.TopMost = true;
            this.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.FrmSpreadDefectSetting_KeyPress);
            ((System.ComponentModel.ISupportInitialize)(this.pcFromTo)).EndInit();
            this.pcFromTo.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            this.groupControl2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teLengthTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teLengthFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teWidthTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teWidthFrom.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl pcFromTo;
        private DevExpress.XtraEditors.TextEdit teWidthTo;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit teWidthFrom;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SimpleButton sbNumEnter;
        private DevExpress.XtraEditors.SimpleButton sbNumClear;
        private DevExpress.XtraEditors.SimpleButton sbNum0;
        private DevExpress.XtraEditors.SimpleButton sbNum3;
        private DevExpress.XtraEditors.SimpleButton sbNum2;
        private DevExpress.XtraEditors.SimpleButton sbNum1;
        private DevExpress.XtraEditors.SimpleButton sbNum6;
        private DevExpress.XtraEditors.SimpleButton sbNum5;
        private DevExpress.XtraEditors.SimpleButton sbNum4;
        private DevExpress.XtraEditors.SimpleButton sbNum9;
        private DevExpress.XtraEditors.SimpleButton sbNum8;
        private DevExpress.XtraEditors.SimpleButton sbNum7;
        private DevExpress.XtraEditors.SimpleButton btnClose;
        private DevExpress.XtraEditors.SimpleButton sbReturn;
        private DevExpress.XtraEditors.SimpleButton sbPoint;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.TextEdit teLengthTo;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit teLengthFrom;
        private DevExpress.XtraEditors.LabelControl labelControl4;


    }
}