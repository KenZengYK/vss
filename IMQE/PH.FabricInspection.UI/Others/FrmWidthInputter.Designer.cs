namespace PH.FabricInspection.UI
{
    partial class FrmWidthInputter
    {
        private System.ComponentModel.IContainer components = null;

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        private void InitializeComponent()
        {
            this.pcFromTo = new DevExpress.XtraEditors.PanelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.teSideToSideWidth = new DevExpress.XtraEditors.TextEdit();
            this.sbReturn = new DevExpress.XtraEditors.SimpleButton();
            this.sbPoint = new DevExpress.XtraEditors.SimpleButton();
            this.btnClose = new DevExpress.XtraEditors.SimpleButton();
            this.teUsableWidth = new DevExpress.XtraEditors.TextEdit();
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
            this.btCalcWith = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.pcFromTo)).BeginInit();
            this.pcFromTo.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teSideToSideWidth.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teUsableWidth.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // pcFromTo
            // 
            this.pcFromTo.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pcFromTo.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pcFromTo.Controls.Add(this.btCalcWith);
            this.pcFromTo.Controls.Add(this.labelControl1);
            this.pcFromTo.Controls.Add(this.teSideToSideWidth);
            this.pcFromTo.Controls.Add(this.sbReturn);
            this.pcFromTo.Controls.Add(this.sbPoint);
            this.pcFromTo.Controls.Add(this.btnClose);
            this.pcFromTo.Controls.Add(this.teUsableWidth);
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
            this.pcFromTo.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pcFromTo.Name = "pcFromTo";
            this.pcFromTo.Size = new System.Drawing.Size(314, 357);
            this.pcFromTo.TabIndex = 3;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(155, 21);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(5, 14);
            this.labelControl1.TabIndex = 48;
            this.labelControl1.Text = "/";
            // 
            // teSideToSideWidth
            // 
            this.teSideToSideWidth.Location = new System.Drawing.Point(169, 9);
            this.teSideToSideWidth.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.teSideToSideWidth.Name = "teSideToSideWidth";
            this.teSideToSideWidth.Properties.AutoHeight = false;
            this.teSideToSideWidth.Size = new System.Drawing.Size(137, 40);
            this.teSideToSideWidth.TabIndex = 47;
            this.teSideToSideWidth.Enter += new System.EventHandler(this.teFrom_Enter);
            // 
            // sbReturn
            // 
            this.sbReturn.AllowFocus = false;
            this.sbReturn.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbReturn.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbReturn.Appearance.Options.UseBackColor = true;
            this.sbReturn.Appearance.Options.UseFont = true;
            this.sbReturn.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbReturn.Location = new System.Drawing.Point(206, 230);
            this.sbReturn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.sbReturn.Name = "sbReturn";
            this.sbReturn.Size = new System.Drawing.Size(100, 60);
            this.sbReturn.TabIndex = 46;
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
            this.sbPoint.Location = new System.Drawing.Point(107, 230);
            this.sbPoint.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.sbPoint.Name = "sbPoint";
            this.sbPoint.Size = new System.Drawing.Size(100, 60);
            this.sbPoint.TabIndex = 45;
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
            this.btnClose.Location = new System.Drawing.Point(287, 0);
            this.btnClose.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(17, 17);
            this.btnClose.TabIndex = 40;
            this.btnClose.Text = "X";
            this.btnClose.Visible = false;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // teUsableWidth
            // 
            this.teUsableWidth.Location = new System.Drawing.Point(8, 9);
            this.teUsableWidth.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.teUsableWidth.Name = "teUsableWidth";
            this.teUsableWidth.Properties.AutoHeight = false;
            this.teUsableWidth.Size = new System.Drawing.Size(137, 40);
            this.teUsableWidth.TabIndex = 37;
            this.teUsableWidth.Enter += new System.EventHandler(this.teFrom_Enter);
            // 
            // sbNumEnter
            // 
            this.sbNumEnter.AllowFocus = false;
            this.sbNumEnter.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.sbNumEnter.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.sbNumEnter.Appearance.Options.UseBackColor = true;
            this.sbNumEnter.Appearance.Options.UseFont = true;
            this.sbNumEnter.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.sbNumEnter.Location = new System.Drawing.Point(206, 289);
            this.sbNumEnter.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.sbNumEnter.Name = "sbNumEnter";
            this.sbNumEnter.Size = new System.Drawing.Size(100, 60);
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
            this.sbNumClear.Location = new System.Drawing.Point(8, 289);
            this.sbNumClear.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.sbNumClear.Name = "sbNumClear";
            this.sbNumClear.Size = new System.Drawing.Size(100, 60);
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
            this.sbNum0.Location = new System.Drawing.Point(8, 230);
            this.sbNum0.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
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
            this.sbNum3.Location = new System.Drawing.Point(206, 171);
            this.sbNum3.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
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
            this.sbNum2.Location = new System.Drawing.Point(107, 171);
            this.sbNum2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
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
            this.sbNum1.Location = new System.Drawing.Point(8, 171);
            this.sbNum1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
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
            this.sbNum6.Location = new System.Drawing.Point(206, 112);
            this.sbNum6.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
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
            this.sbNum5.Location = new System.Drawing.Point(107, 112);
            this.sbNum5.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
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
            this.sbNum4.Location = new System.Drawing.Point(8, 112);
            this.sbNum4.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
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
            this.sbNum9.Location = new System.Drawing.Point(206, 53);
            this.sbNum9.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
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
            this.sbNum8.Location = new System.Drawing.Point(107, 53);
            this.sbNum8.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
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
            this.sbNum7.Location = new System.Drawing.Point(8, 53);
            this.sbNum7.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.sbNum7.Name = "sbNum7";
            this.sbNum7.Size = new System.Drawing.Size(100, 60);
            this.sbNum7.TabIndex = 24;
            this.sbNum7.Tag = "7";
            this.sbNum7.Text = "7";
            this.sbNum7.Click += new System.EventHandler(this.sbNum7_Click);
            // 
            // btCalcWith
            // 
            this.btCalcWith.AllowFocus = false;
            this.btCalcWith.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.btCalcWith.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.btCalcWith.Appearance.Options.UseBackColor = true;
            this.btCalcWith.Appearance.Options.UseFont = true;
            this.btCalcWith.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.btCalcWith.Location = new System.Drawing.Point(107, 289);
            this.btCalcWith.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btCalcWith.Name = "btCalcWith";
            this.btCalcWith.Size = new System.Drawing.Size(100, 60);
            this.btCalcWith.TabIndex = 49;
            this.btCalcWith.Tag = "";
            this.btCalcWith.Text = "一鍵生成\r\nWidth Data";
            this.btCalcWith.Click += new System.EventHandler(this.btCalcWith_Click);
            // 
            // FrmWidthInputter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(314, 357);
            this.Controls.Add(this.pcFromTo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.KeyPreview = true;
            this.Margin = new System.Windows.Forms.Padding(2);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmWidthInputter";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Width Setting";
            this.TopMost = true;
            this.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.FrmNumInputter_KeyPress);
            ((System.ComponentModel.ISupportInitialize)(this.pcFromTo)).EndInit();
            this.pcFromTo.ResumeLayout(false);
            this.pcFromTo.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teSideToSideWidth.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teUsableWidth.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl pcFromTo;
        private DevExpress.XtraEditors.TextEdit teUsableWidth;
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
        private DevExpress.XtraEditors.SimpleButton sbPoint;
        private DevExpress.XtraEditors.SimpleButton sbReturn;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit teSideToSideWidth;
        private DevExpress.XtraEditors.SimpleButton btCalcWith;


    }
}