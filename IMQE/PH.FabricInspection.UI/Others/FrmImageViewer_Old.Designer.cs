namespace PH.FabricInspection.UI
{
    partial class FrmImageViewer_Old
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
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.simpleButton4 = new DevExpress.XtraEditors.SimpleButton();
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.simpleButton3 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.sbClose = new DevExpress.XtraEditors.SimpleButton();
            this.xtraScrollableControl1 = new DevExpress.XtraEditors.XtraScrollableControl();
            this.pictureEdit1 = new DevExpress.XtraEditors.PictureEdit();
            this.lcBottom = new DevExpress.XtraEditors.LabelControl();
            this.lcTop = new DevExpress.XtraEditors.LabelControl();
            this.rangeTrackBarControl1 = new DevExpress.XtraEditors.RangeTrackBarControl();
            this.pnlRange = new DevExpress.XtraEditors.PanelControl();
            this.pnlRangeData = new DevExpress.XtraEditors.PanelControl();
            this.lc9 = new DevExpress.XtraEditors.LabelControl();
            this.lc8 = new DevExpress.XtraEditors.LabelControl();
            this.lc7 = new DevExpress.XtraEditors.LabelControl();
            this.lc6 = new DevExpress.XtraEditors.LabelControl();
            this.lc5 = new DevExpress.XtraEditors.LabelControl();
            this.lc4 = new DevExpress.XtraEditors.LabelControl();
            this.lc3 = new DevExpress.XtraEditors.LabelControl();
            this.lc2 = new DevExpress.XtraEditors.LabelControl();
            this.lc1 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
            this.xtraScrollableControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rangeTrackBarControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rangeTrackBarControl1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlRange)).BeginInit();
            this.pnlRange.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pnlRangeData)).BeginInit();
            this.pnlRangeData.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.simpleButton4);
            this.panelControl1.Controls.Add(this.comboBoxEdit1);
            this.panelControl1.Controls.Add(this.simpleButton3);
            this.panelControl1.Controls.Add(this.simpleButton2);
            this.panelControl1.Controls.Add(this.sbClose);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(551, 68);
            this.panelControl1.TabIndex = 0;
            // 
            // simpleButton4
            // 
            this.simpleButton4.Location = new System.Drawing.Point(292, 11);
            this.simpleButton4.Name = "simpleButton4";
            this.simpleButton4.Size = new System.Drawing.Size(96, 47);
            this.simpleButton4.TabIndex = 4;
            this.simpleButton4.Text = "默認";
            this.simpleButton4.Click += new System.EventHandler(this.simpleButton4_Click);
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.EditValue = "100%";
            this.comboBoxEdit1.Location = new System.Drawing.Point(312, 12);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Properties.Items.AddRange(new object[] {
            "200%",
            "180%",
            "150%",
            "130%",
            "100%",
            "80%",
            "50%",
            "30%",
            "10%"});
            this.comboBoxEdit1.Size = new System.Drawing.Size(100, 21);
            this.comboBoxEdit1.TabIndex = 3;
            this.comboBoxEdit1.Visible = false;
            // 
            // simpleButton3
            // 
            this.simpleButton3.Location = new System.Drawing.Point(32, 11);
            this.simpleButton3.Name = "simpleButton3";
            this.simpleButton3.Size = new System.Drawing.Size(96, 47);
            this.simpleButton3.TabIndex = 2;
            this.simpleButton3.Text = "放大";
            this.simpleButton3.Click += new System.EventHandler(this.simpleButton3_Click);
            // 
            // simpleButton2
            // 
            this.simpleButton2.Location = new System.Drawing.Point(162, 11);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(96, 47);
            this.simpleButton2.TabIndex = 1;
            this.simpleButton2.Text = "縮小";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // sbClose
            // 
            this.sbClose.Location = new System.Drawing.Point(422, 11);
            this.sbClose.Name = "sbClose";
            this.sbClose.Size = new System.Drawing.Size(96, 47);
            this.sbClose.TabIndex = 0;
            this.sbClose.Text = "Close";
            this.sbClose.Click += new System.EventHandler(this.sbClose_Click);
            // 
            // xtraScrollableControl1
            // 
            this.xtraScrollableControl1.Controls.Add(this.pictureEdit1);
            this.xtraScrollableControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraScrollableControl1.Location = new System.Drawing.Point(65, 68);
            this.xtraScrollableControl1.Name = "xtraScrollableControl1";
            this.xtraScrollableControl1.Size = new System.Drawing.Size(486, 325);
            this.xtraScrollableControl1.TabIndex = 1;
            this.xtraScrollableControl1.Scroll += new DevExpress.XtraEditors.XtraScrollEventHandler(this.xtraScrollableControl1_Scroll);
            this.xtraScrollableControl1.SizeChanged += new System.EventHandler(this.xtraScrollableControl1_SizeChanged);
            // 
            // pictureEdit1
            // 
            this.pictureEdit1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit1.Location = new System.Drawing.Point(0, 0);
            this.pictureEdit1.Name = "pictureEdit1";
            this.pictureEdit1.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.pictureEdit1.Size = new System.Drawing.Size(486, 325);
            this.pictureEdit1.TabIndex = 0;
            this.pictureEdit1.SizeChanged += new System.EventHandler(this.pictureEdit1_SizeChanged);
            // 
            // lcBottom
            // 
            this.lcBottom.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lcBottom.Appearance.Options.UseBackColor = true;
            this.lcBottom.Location = new System.Drawing.Point(3, 303);
            this.lcBottom.Name = "lcBottom";
            this.lcBottom.Size = new System.Drawing.Size(7, 14);
            this.lcBottom.TabIndex = 3;
            this.lcBottom.Text = "1";
            // 
            // lcTop
            // 
            this.lcTop.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lcTop.Appearance.Options.UseBackColor = true;
            this.lcTop.Location = new System.Drawing.Point(3, 3);
            this.lcTop.Name = "lcTop";
            this.lcTop.Size = new System.Drawing.Size(7, 14);
            this.lcTop.TabIndex = 2;
            this.lcTop.Text = "0";
            // 
            // rangeTrackBarControl1
            // 
            this.rangeTrackBarControl1.Dock = System.Windows.Forms.DockStyle.Right;
            this.rangeTrackBarControl1.EditValue = new DevExpress.XtraEditors.Repository.TrackBarRange(0, 10);
            this.rangeTrackBarControl1.Location = new System.Drawing.Point(20, 0);
            this.rangeTrackBarControl1.Name = "rangeTrackBarControl1";
            this.rangeTrackBarControl1.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.rangeTrackBarControl1.Properties.Orientation = System.Windows.Forms.Orientation.Vertical;
            this.rangeTrackBarControl1.Properties.ReadOnly = true;
            this.rangeTrackBarControl1.Properties.TickStyle = System.Windows.Forms.TickStyle.TopLeft;
            this.rangeTrackBarControl1.Size = new System.Drawing.Size(45, 325);
            this.rangeTrackBarControl1.TabIndex = 1;
            this.rangeTrackBarControl1.Value = new DevExpress.XtraEditors.Repository.TrackBarRange(0, 10);
            // 
            // pnlRange
            // 
            this.pnlRange.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlRange.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pnlRange.Controls.Add(this.pnlRangeData);
            this.pnlRange.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnlRange.Location = new System.Drawing.Point(0, 68);
            this.pnlRange.Name = "pnlRange";
            this.pnlRange.Size = new System.Drawing.Size(65, 325);
            this.pnlRange.TabIndex = 1;
            // 
            // pnlRangeData
            // 
            this.pnlRangeData.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlRangeData.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pnlRangeData.Controls.Add(this.lc9);
            this.pnlRangeData.Controls.Add(this.lc8);
            this.pnlRangeData.Controls.Add(this.lc7);
            this.pnlRangeData.Controls.Add(this.lc6);
            this.pnlRangeData.Controls.Add(this.lc5);
            this.pnlRangeData.Controls.Add(this.lc4);
            this.pnlRangeData.Controls.Add(this.lc3);
            this.pnlRangeData.Controls.Add(this.lc2);
            this.pnlRangeData.Controls.Add(this.lc1);
            this.pnlRangeData.Controls.Add(this.lcBottom);
            this.pnlRangeData.Controls.Add(this.lcTop);
            this.pnlRangeData.Controls.Add(this.rangeTrackBarControl1);
            this.pnlRangeData.Location = new System.Drawing.Point(0, 0);
            this.pnlRangeData.Name = "pnlRangeData";
            this.pnlRangeData.Size = new System.Drawing.Size(65, 325);
            this.pnlRangeData.TabIndex = 1;
            this.pnlRangeData.Resize += new System.EventHandler(this.pnlRangeData_Resize);
            // 
            // lc9
            // 
            this.lc9.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lc9.Appearance.Options.UseBackColor = true;
            this.lc9.Location = new System.Drawing.Point(3, 273);
            this.lc9.Name = "lc9";
            this.lc9.Size = new System.Drawing.Size(7, 14);
            this.lc9.TabIndex = 12;
            this.lc9.Text = "0";
            // 
            // lc8
            // 
            this.lc8.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lc8.Appearance.Options.UseBackColor = true;
            this.lc8.Location = new System.Drawing.Point(3, 243);
            this.lc8.Name = "lc8";
            this.lc8.Size = new System.Drawing.Size(7, 14);
            this.lc8.TabIndex = 11;
            this.lc8.Text = "0";
            // 
            // lc7
            // 
            this.lc7.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lc7.Appearance.Options.UseBackColor = true;
            this.lc7.Location = new System.Drawing.Point(3, 213);
            this.lc7.Name = "lc7";
            this.lc7.Size = new System.Drawing.Size(7, 14);
            this.lc7.TabIndex = 10;
            this.lc7.Text = "0";
            // 
            // lc6
            // 
            this.lc6.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lc6.Appearance.Options.UseBackColor = true;
            this.lc6.Location = new System.Drawing.Point(3, 183);
            this.lc6.Name = "lc6";
            this.lc6.Size = new System.Drawing.Size(7, 14);
            this.lc6.TabIndex = 9;
            this.lc6.Text = "0";
            // 
            // lc5
            // 
            this.lc5.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lc5.Appearance.Options.UseBackColor = true;
            this.lc5.Location = new System.Drawing.Point(3, 153);
            this.lc5.Name = "lc5";
            this.lc5.Size = new System.Drawing.Size(7, 14);
            this.lc5.TabIndex = 8;
            this.lc5.Text = "0";
            // 
            // lc4
            // 
            this.lc4.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lc4.Appearance.Options.UseBackColor = true;
            this.lc4.Location = new System.Drawing.Point(3, 123);
            this.lc4.Name = "lc4";
            this.lc4.Size = new System.Drawing.Size(7, 14);
            this.lc4.TabIndex = 7;
            this.lc4.Text = "0";
            // 
            // lc3
            // 
            this.lc3.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lc3.Appearance.Options.UseBackColor = true;
            this.lc3.Location = new System.Drawing.Point(3, 93);
            this.lc3.Name = "lc3";
            this.lc3.Size = new System.Drawing.Size(7, 14);
            this.lc3.TabIndex = 6;
            this.lc3.Text = "0";
            // 
            // lc2
            // 
            this.lc2.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lc2.Appearance.Options.UseBackColor = true;
            this.lc2.Location = new System.Drawing.Point(3, 63);
            this.lc2.Name = "lc2";
            this.lc2.Size = new System.Drawing.Size(7, 14);
            this.lc2.TabIndex = 5;
            this.lc2.Text = "0";
            // 
            // lc1
            // 
            this.lc1.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.lc1.Appearance.Options.UseBackColor = true;
            this.lc1.Location = new System.Drawing.Point(3, 33);
            this.lc1.Name = "lc1";
            this.lc1.Size = new System.Drawing.Size(7, 14);
            this.lc1.TabIndex = 4;
            this.lc1.Text = "0";
            // 
            // FrmImageViewer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(551, 393);
            this.Controls.Add(this.xtraScrollableControl1);
            this.Controls.Add(this.pnlRange);
            this.Controls.Add(this.panelControl1);
            this.MinimumSize = new System.Drawing.Size(300, 380);
            this.Name = "FrmImageViewer";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ImageViewer";
            this.SizeChanged += new System.EventHandler(this.FrmImageViewer_SizeChanged);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.FrmImageViewer_FormClosed);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmImageViewer_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            this.xtraScrollableControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rangeTrackBarControl1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rangeTrackBarControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlRange)).EndInit();
            this.pnlRange.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pnlRangeData)).EndInit();
            this.pnlRangeData.ResumeLayout(false);
            this.pnlRangeData.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.XtraScrollableControl xtraScrollableControl1;
        private DevExpress.XtraEditors.PictureEdit pictureEdit1;
        private DevExpress.XtraEditors.SimpleButton simpleButton4;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
        private DevExpress.XtraEditors.SimpleButton simpleButton3;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private DevExpress.XtraEditors.SimpleButton sbClose;
        private DevExpress.XtraEditors.RangeTrackBarControl rangeTrackBarControl1;
        private DevExpress.XtraEditors.LabelControl lcBottom;
        private DevExpress.XtraEditors.LabelControl lcTop;
        private DevExpress.XtraEditors.PanelControl pnlRange;
        private DevExpress.XtraEditors.PanelControl pnlRangeData;
        private DevExpress.XtraEditors.LabelControl lc9;
        private DevExpress.XtraEditors.LabelControl lc8;
        private DevExpress.XtraEditors.LabelControl lc7;
        private DevExpress.XtraEditors.LabelControl lc6;
        private DevExpress.XtraEditors.LabelControl lc5;
        private DevExpress.XtraEditors.LabelControl lc4;
        private DevExpress.XtraEditors.LabelControl lc3;
        private DevExpress.XtraEditors.LabelControl lc2;
        private DevExpress.XtraEditors.LabelControl lc1;
    }
}

