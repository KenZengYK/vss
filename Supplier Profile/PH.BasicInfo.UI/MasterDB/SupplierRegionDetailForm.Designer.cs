namespace PH.BasicInfo.UI.MasterDB
{
    partial class SupplierRegionDetailForm
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.Label seqNoLabel;
            System.Windows.Forms.Label countryCodeLabel;
            System.Windows.Forms.Label regionCodeLabel;
            System.Windows.Forms.Label regionNameLabel;
            System.Windows.Forms.Label transitModeLabel;
            System.Windows.Forms.Label timeFrameLabel;
            System.Windows.Forms.Label regionNameCNLabel;
            System.Windows.Forms.Label label1;
            System.Windows.Forms.Label label2;
            System.Windows.Forms.Label lbIncotermsCode;
            this.seqNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.countryCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.regionCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.regionNameENTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.transitModeComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtTimeFrame_PHDG_D = new DevExpress.XtraEditors.SpinEdit();
            this.regionNameCNTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.txtTimeFrame_PYBD_D = new DevExpress.XtraEditors.SpinEdit();
            this.txtTimeFrame_PHHK_C = new DevExpress.XtraEditors.SpinEdit();
            this.gcTimeFrame = new DevExpress.XtraEditors.GroupControl();
            this.txtIncotermsCode = new DevExpress.XtraEditors.TextEdit();
            seqNoLabel = new System.Windows.Forms.Label();
            countryCodeLabel = new System.Windows.Forms.Label();
            regionCodeLabel = new System.Windows.Forms.Label();
            regionNameLabel = new System.Windows.Forms.Label();
            transitModeLabel = new System.Windows.Forms.Label();
            timeFrameLabel = new System.Windows.Forms.Label();
            regionNameCNLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            lbIncotermsCode = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.countryCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.regionCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.regionNameENTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitModeComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTimeFrame_PHDG_D.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.regionNameCNTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTimeFrame_PYBD_D.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTimeFrame_PHHK_C.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcTimeFrame)).BeginInit();
            this.gcTimeFrame.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtIncotermsCode.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.SupplierRegion);
            // 
            // seqNoLabel
            // 
            seqNoLabel.AutoSize = true;
            seqNoLabel.Location = new System.Drawing.Point(187, 49);
            seqNoLabel.Name = "seqNoLabel";
            seqNoLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(seqNoLabel, null);
            seqNoLabel.TabIndex = 4;
            seqNoLabel.Text = "Seq No:";
            // 
            // countryCodeLabel
            // 
            countryCodeLabel.AutoSize = true;
            countryCodeLabel.Location = new System.Drawing.Point(151, 78);
            countryCodeLabel.Name = "countryCodeLabel";
            countryCodeLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(countryCodeLabel, null);
            countryCodeLabel.TabIndex = 6;
            countryCodeLabel.Text = "Country Code:";
            // 
            // regionCodeLabel
            // 
            regionCodeLabel.AutoSize = true;
            regionCodeLabel.Location = new System.Drawing.Point(157, 108);
            regionCodeLabel.Name = "regionCodeLabel";
            regionCodeLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(regionCodeLabel, null);
            regionCodeLabel.TabIndex = 8;
            regionCodeLabel.Text = "Region Code:";
            // 
            // regionNameLabel
            // 
            regionNameLabel.AutoSize = true;
            regionNameLabel.Location = new System.Drawing.Point(127, 138);
            regionNameLabel.Name = "regionNameLabel";
            regionNameLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(regionNameLabel, null);
            regionNameLabel.TabIndex = 10;
            regionNameLabel.Text = "Region Name (EN):";
            // 
            // transitModeLabel
            // 
            transitModeLabel.AutoSize = true;
            transitModeLabel.Location = new System.Drawing.Point(151, 221);
            transitModeLabel.Name = "transitModeLabel";
            transitModeLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(transitModeLabel, null);
            transitModeLabel.TabIndex = 14;
            transitModeLabel.Text = "Transit Mode:";
            // 
            // timeFrameLabel
            // 
            timeFrameLabel.AutoSize = true;
            timeFrameLabel.Location = new System.Drawing.Point(19, 39);
            timeFrameLabel.Name = "timeFrameLabel";
            timeFrameLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(timeFrameLabel, null);
            timeFrameLabel.TabIndex = 16;
            timeFrameLabel.Text = "PHDG (CRS):";
            // 
            // regionNameCNLabel
            // 
            regionNameCNLabel.AutoSize = true;
            regionNameCNLabel.Location = new System.Drawing.Point(127, 166);
            regionNameCNLabel.Name = "regionNameCNLabel";
            regionNameCNLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(regionNameCNLabel, null);
            regionNameCNLabel.TabIndex = 18;
            regionNameCNLabel.Text = "Region Name (CN):";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(19, 66);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 20;
            label1.Text = "PYBD (CRS):";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(19, 93);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(label2, null);
            label2.TabIndex = 22;
            label2.Text = "PHHK (CCS):";
            // 
            // seqNoTextEdit
            // 
            this.seqNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SeqNo", true));
            this.seqNoTextEdit.Location = new System.Drawing.Point(244, 46);
            this.seqNoTextEdit.Name = "seqNoTextEdit";
            this.seqNoTextEdit.Size = new System.Drawing.Size(205, 21);
            this.seqNoTextEdit.TabIndex = 5;
            // 
            // countryCodeTextEdit
            // 
            this.countryCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CountryCode", true));
            this.countryCodeTextEdit.Location = new System.Drawing.Point(244, 75);
            this.countryCodeTextEdit.Name = "countryCodeTextEdit";
            this.countryCodeTextEdit.Size = new System.Drawing.Size(205, 21);
            this.countryCodeTextEdit.TabIndex = 7;
            // 
            // regionCodeTextEdit
            // 
            this.regionCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RegionCode", true));
            this.regionCodeTextEdit.Location = new System.Drawing.Point(244, 105);
            this.regionCodeTextEdit.Name = "regionCodeTextEdit";
            this.regionCodeTextEdit.Size = new System.Drawing.Size(205, 21);
            this.regionCodeTextEdit.TabIndex = 9;
            // 
            // regionNameENTextEdit
            // 
            this.regionNameENTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RegionNameEN", true));
            this.regionNameENTextEdit.Location = new System.Drawing.Point(244, 134);
            this.regionNameENTextEdit.Name = "regionNameENTextEdit";
            this.regionNameENTextEdit.Size = new System.Drawing.Size(205, 21);
            this.regionNameENTextEdit.TabIndex = 11;
            // 
            // transitModeComboBoxEdit
            // 
            this.transitModeComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TransitMode", true));
            this.transitModeComboBoxEdit.Location = new System.Drawing.Point(244, 217);
            this.transitModeComboBoxEdit.Name = "transitModeComboBoxEdit";
            this.transitModeComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.transitModeComboBoxEdit.Size = new System.Drawing.Size(205, 21);
            this.transitModeComboBoxEdit.TabIndex = 15;
            // 
            // txtTimeFrame_PHDG_D
            // 
            this.txtTimeFrame_PHDG_D.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TimeFrame_PHDG_D", true));
            this.txtTimeFrame_PHDG_D.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.txtTimeFrame_PHDG_D.Location = new System.Drawing.Point(104, 35);
            this.txtTimeFrame_PHDG_D.Name = "txtTimeFrame_PHDG_D";
            this.txtTimeFrame_PHDG_D.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtTimeFrame_PHDG_D.Size = new System.Drawing.Size(205, 21);
            this.txtTimeFrame_PHDG_D.TabIndex = 17;
            // 
            // regionNameCNTextEdit
            // 
            this.regionNameCNTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RegionNameCN", true));
            this.regionNameCNTextEdit.Location = new System.Drawing.Point(244, 162);
            this.regionNameCNTextEdit.Name = "regionNameCNTextEdit";
            this.regionNameCNTextEdit.Size = new System.Drawing.Size(205, 21);
            this.regionNameCNTextEdit.TabIndex = 19;
            // 
            // txtTimeFrame_PYBD_D
            // 
            this.txtTimeFrame_PYBD_D.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TimeFrame_PYBD_D", true));
            this.txtTimeFrame_PYBD_D.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.txtTimeFrame_PYBD_D.Location = new System.Drawing.Point(104, 62);
            this.txtTimeFrame_PYBD_D.Name = "txtTimeFrame_PYBD_D";
            this.txtTimeFrame_PYBD_D.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtTimeFrame_PYBD_D.Size = new System.Drawing.Size(205, 21);
            this.txtTimeFrame_PYBD_D.TabIndex = 21;
            // 
            // txtTimeFrame_PHHK_C
            // 
            this.txtTimeFrame_PHHK_C.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TimeFrame_PHHK_C", true));
            this.txtTimeFrame_PHHK_C.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.txtTimeFrame_PHHK_C.Location = new System.Drawing.Point(104, 89);
            this.txtTimeFrame_PHHK_C.Name = "txtTimeFrame_PHHK_C";
            this.txtTimeFrame_PHHK_C.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtTimeFrame_PHHK_C.Size = new System.Drawing.Size(205, 21);
            this.txtTimeFrame_PHHK_C.TabIndex = 23;
            // 
            // gcTimeFrame
            // 
            this.gcTimeFrame.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.gcTimeFrame.Controls.Add(this.txtTimeFrame_PHDG_D);
            this.gcTimeFrame.Controls.Add(label2);
            this.gcTimeFrame.Controls.Add(timeFrameLabel);
            this.gcTimeFrame.Controls.Add(this.txtTimeFrame_PHHK_C);
            this.gcTimeFrame.Controls.Add(this.txtTimeFrame_PYBD_D);
            this.gcTimeFrame.Controls.Add(label1);
            this.gcTimeFrame.Location = new System.Drawing.Point(139, 246);
            this.gcTimeFrame.Name = "gcTimeFrame";
            this.gcTimeFrame.Size = new System.Drawing.Size(327, 128);
            this.PlatetoolTipController.SetSuperTip(this.gcTimeFrame, null);
            this.gcTimeFrame.TabIndex = 24;
            this.gcTimeFrame.Text = "Time Frame";
            // 
            // lbIncotermsCode
            // 
            lbIncotermsCode.AutoSize = true;
            lbIncotermsCode.Location = new System.Drawing.Point(145, 193);
            lbIncotermsCode.Name = "lbIncotermsCode";
            lbIncotermsCode.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(lbIncotermsCode, null);
            lbIncotermsCode.TabIndex = 25;
            lbIncotermsCode.Text = "Incoterms Cde:";
            // 
            // txtIncotermsCode
            // 
            this.txtIncotermsCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IncotermsCode", true));
            this.txtIncotermsCode.Location = new System.Drawing.Point(244, 189);
            this.txtIncotermsCode.Name = "txtIncotermsCode";
            this.txtIncotermsCode.Size = new System.Drawing.Size(205, 21);
            this.txtIncotermsCode.TabIndex = 26;
            // 
            // SupplierRegionDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(lbIncotermsCode);
            this.Controls.Add(this.txtIncotermsCode);
            this.Controls.Add(this.gcTimeFrame);
            this.Controls.Add(regionNameCNLabel);
            this.Controls.Add(this.regionNameCNTextEdit);
            this.Controls.Add(transitModeLabel);
            this.Controls.Add(this.transitModeComboBoxEdit);
            this.Controls.Add(regionNameLabel);
            this.Controls.Add(this.regionNameENTextEdit);
            this.Controls.Add(regionCodeLabel);
            this.Controls.Add(this.regionCodeTextEdit);
            this.Controls.Add(countryCodeLabel);
            this.Controls.Add(this.countryCodeTextEdit);
            this.Controls.Add(seqNoLabel);
            this.Controls.Add(this.seqNoTextEdit);
            this.Name = "SupplierRegionDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.seqNoTextEdit, 0);
            this.Controls.SetChildIndex(seqNoLabel, 0);
            this.Controls.SetChildIndex(this.countryCodeTextEdit, 0);
            this.Controls.SetChildIndex(countryCodeLabel, 0);
            this.Controls.SetChildIndex(this.regionCodeTextEdit, 0);
            this.Controls.SetChildIndex(regionCodeLabel, 0);
            this.Controls.SetChildIndex(this.regionNameENTextEdit, 0);
            this.Controls.SetChildIndex(regionNameLabel, 0);
            this.Controls.SetChildIndex(this.transitModeComboBoxEdit, 0);
            this.Controls.SetChildIndex(transitModeLabel, 0);
            this.Controls.SetChildIndex(this.regionNameCNTextEdit, 0);
            this.Controls.SetChildIndex(regionNameCNLabel, 0);
            this.Controls.SetChildIndex(this.gcTimeFrame, 0);
            this.Controls.SetChildIndex(this.txtIncotermsCode, 0);
            this.Controls.SetChildIndex(lbIncotermsCode, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.countryCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.regionCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.regionNameENTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitModeComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTimeFrame_PHDG_D.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.regionNameCNTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTimeFrame_PYBD_D.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTimeFrame_PHHK_C.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcTimeFrame)).EndInit();
            this.gcTimeFrame.ResumeLayout(false);
            this.gcTimeFrame.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtIncotermsCode.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit seqNoTextEdit;
        private DevExpress.XtraEditors.TextEdit countryCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit regionCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit regionNameENTextEdit;
        private DevExpress.XtraEditors.ComboBoxEdit transitModeComboBoxEdit;
        private DevExpress.XtraEditors.SpinEdit txtTimeFrame_PHDG_D;
        private DevExpress.XtraEditors.TextEdit regionNameCNTextEdit;
        private DevExpress.XtraEditors.SpinEdit txtTimeFrame_PYBD_D;
        private DevExpress.XtraEditors.SpinEdit txtTimeFrame_PHHK_C;
        private DevExpress.XtraEditors.GroupControl gcTimeFrame;
        private DevExpress.XtraEditors.TextEdit txtIncotermsCode;
    }
}
