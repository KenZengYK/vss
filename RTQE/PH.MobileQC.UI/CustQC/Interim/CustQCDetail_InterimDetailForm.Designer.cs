namespace PH.MobileQC.UI.CustQC
{
    partial class CustQCDetail_InterimDetailForm
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
            System.Windows.Forms.Label defectCodeLabel;
            System.Windows.Forms.Label marjorDefectQtyLabel;
            System.Windows.Forms.Label minorDefectQtyLabel;
            System.Windows.Forms.Label criticalDefectQtyLabel;
            this.marjorDefectQtySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.minorDefectQtySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.criticalDefectQtySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.pictureEdit2 = new DevExpress.XtraEditors.PictureEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.pictureEdit1 = new DevExpress.XtraEditors.PictureEdit();
            this.bESelectDefectCode = new DevExpress.XtraEditors.ButtonEdit();
            defectCodeLabel = new System.Windows.Forms.Label();
            marjorDefectQtyLabel = new System.Windows.Forms.Label();
            minorDefectQtyLabel = new System.Windows.Forms.Label();
            criticalDefectQtyLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.marjorDefectQtySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.minorDefectQtySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.criticalDefectQtySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bESelectDefectCode.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.CustQCDetail_Interim);
            // 
            // defectCodeLabel
            // 
            defectCodeLabel.AutoSize = true;
            defectCodeLabel.Location = new System.Drawing.Point(48, 53);
            defectCodeLabel.Name = "defectCodeLabel";
            defectCodeLabel.Size = new System.Drawing.Size(66, 12);
            this.PlatetoolTipController.SetSuperTip(defectCodeLabel, null);
            defectCodeLabel.TabIndex = 4;
            defectCodeLabel.Text = "Defect Code:";
            // 
            // marjorDefectQtyLabel
            // 
            marjorDefectQtyLabel.AutoSize = true;
            marjorDefectQtyLabel.Location = new System.Drawing.Point(48, 105);
            marjorDefectQtyLabel.Name = "marjorDefectQtyLabel";
            marjorDefectQtyLabel.Size = new System.Drawing.Size(93, 12);
            this.PlatetoolTipController.SetSuperTip(marjorDefectQtyLabel, null);
            marjorDefectQtyLabel.TabIndex = 6;
            marjorDefectQtyLabel.Text = "Marjor Defect Qty:";
            // 
            // minorDefectQtyLabel
            // 
            minorDefectQtyLabel.AutoSize = true;
            minorDefectQtyLabel.Location = new System.Drawing.Point(48, 137);
            minorDefectQtyLabel.Name = "minorDefectQtyLabel";
            minorDefectQtyLabel.Size = new System.Drawing.Size(90, 12);
            this.PlatetoolTipController.SetSuperTip(minorDefectQtyLabel, null);
            minorDefectQtyLabel.TabIndex = 8;
            minorDefectQtyLabel.Text = "Minor Defect Qty:";
            // 
            // criticalDefectQtyLabel
            // 
            criticalDefectQtyLabel.AutoSize = true;
            criticalDefectQtyLabel.Location = new System.Drawing.Point(48, 78);
            criticalDefectQtyLabel.Name = "criticalDefectQtyLabel";
            criticalDefectQtyLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(criticalDefectQtyLabel, null);
            criticalDefectQtyLabel.TabIndex = 10;
            criticalDefectQtyLabel.Text = "Critical Defect Qty:";
            // 
            // marjorDefectQtySpinEdit
            // 
            this.marjorDefectQtySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MarjorDefectQty", true));
            this.marjorDefectQtySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.marjorDefectQtySpinEdit.Location = new System.Drawing.Point(185, 102);
            this.marjorDefectQtySpinEdit.Name = "marjorDefectQtySpinEdit";
            this.marjorDefectQtySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.marjorDefectQtySpinEdit.Size = new System.Drawing.Size(100, 21);
            this.marjorDefectQtySpinEdit.TabIndex = 7;
            // 
            // minorDefectQtySpinEdit
            // 
            this.minorDefectQtySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MinorDefectQty", true));
            this.minorDefectQtySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.minorDefectQtySpinEdit.Location = new System.Drawing.Point(185, 129);
            this.minorDefectQtySpinEdit.Name = "minorDefectQtySpinEdit";
            this.minorDefectQtySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.minorDefectQtySpinEdit.Size = new System.Drawing.Size(100, 21);
            this.minorDefectQtySpinEdit.TabIndex = 9;
            // 
            // criticalDefectQtySpinEdit
            // 
            this.criticalDefectQtySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CriticalDefectQty", true));
            this.criticalDefectQtySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.criticalDefectQtySpinEdit.Location = new System.Drawing.Point(185, 75);
            this.criticalDefectQtySpinEdit.Name = "criticalDefectQtySpinEdit";
            this.criticalDefectQtySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.criticalDefectQtySpinEdit.Size = new System.Drawing.Size(100, 21);
            this.criticalDefectQtySpinEdit.TabIndex = 11;
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.pictureEdit2);
            this.groupControl2.Location = new System.Drawing.Point(279, 175);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(200, 195);
            this.PlatetoolTipController.SetSuperTip(this.groupControl2, null);
            this.groupControl2.TabIndex = 19;
            this.groupControl2.Text = "Picture 2 圖片2";
            // 
            // pictureEdit2
            // 
            this.pictureEdit2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit2.Location = new System.Drawing.Point(2, 21);
            this.pictureEdit2.Name = "pictureEdit2";
            this.pictureEdit2.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.pictureEdit2.Size = new System.Drawing.Size(196, 172);
            this.pictureEdit2.TabIndex = 16;
            this.pictureEdit2.Modified += new System.EventHandler(this.pictureEdit2_Modified);
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.pictureEdit1);
            this.groupControl1.Location = new System.Drawing.Point(51, 175);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(200, 195);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 18;
            this.groupControl1.Text = "Picture 1 圖片1";
            // 
            // pictureEdit1
            // 
            this.pictureEdit1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit1.Location = new System.Drawing.Point(2, 21);
            this.pictureEdit1.Name = "pictureEdit1";
            this.pictureEdit1.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.pictureEdit1.Size = new System.Drawing.Size(196, 172);
            this.pictureEdit1.TabIndex = 15;
            this.pictureEdit1.Modified += new System.EventHandler(this.pictureEdit1_Modified);
            // 
            // bESelectDefectCode
            // 
            this.bESelectDefectCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DefectCode", true));
            this.bESelectDefectCode.Location = new System.Drawing.Point(185, 47);
            this.bESelectDefectCode.Name = "bESelectDefectCode";
            this.bESelectDefectCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.bESelectDefectCode.Size = new System.Drawing.Size(100, 21);
            this.bESelectDefectCode.TabIndex = 22;
            this.bESelectDefectCode.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.bESelectDefectCode_ButtonClick);
            this.bESelectDefectCode.EditValueChanged += new System.EventHandler(this.bESelectDefectCode_EditValueChanged);
            // 
            // CustQCDetail_InterimDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.bESelectDefectCode);
            this.Controls.Add(this.groupControl2);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(criticalDefectQtyLabel);
            this.Controls.Add(this.criticalDefectQtySpinEdit);
            this.Controls.Add(minorDefectQtyLabel);
            this.Controls.Add(this.minorDefectQtySpinEdit);
            this.Controls.Add(marjorDefectQtyLabel);
            this.Controls.Add(this.marjorDefectQtySpinEdit);
            this.Controls.Add(defectCodeLabel);
            this.Name = "CustQCDetail_InterimDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(defectCodeLabel, 0);
            this.Controls.SetChildIndex(this.marjorDefectQtySpinEdit, 0);
            this.Controls.SetChildIndex(marjorDefectQtyLabel, 0);
            this.Controls.SetChildIndex(this.minorDefectQtySpinEdit, 0);
            this.Controls.SetChildIndex(minorDefectQtyLabel, 0);
            this.Controls.SetChildIndex(this.criticalDefectQtySpinEdit, 0);
            this.Controls.SetChildIndex(criticalDefectQtyLabel, 0);
            this.Controls.SetChildIndex(this.groupControl1, 0);
            this.Controls.SetChildIndex(this.groupControl2, 0);
            this.Controls.SetChildIndex(this.bESelectDefectCode, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.marjorDefectQtySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.minorDefectQtySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.criticalDefectQtySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bESelectDefectCode.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit marjorDefectQtySpinEdit;
        private DevExpress.XtraEditors.SpinEdit minorDefectQtySpinEdit;
        private DevExpress.XtraEditors.SpinEdit criticalDefectQtySpinEdit;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.PictureEdit pictureEdit2;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.PictureEdit pictureEdit1;
        private DevExpress.XtraEditors.ButtonEdit bESelectDefectCode;
    }
}
