namespace PH.MobileQC.UI.CustQC
{
    partial class CustQC_DetailDetailForm
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
            System.Windows.Forms.Label defectQtyLabel;
            System.Windows.Forms.Label remarkLabel;
            this.defectQtySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.remarkTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.pictureEdit1 = new DevExpress.XtraEditors.PictureEdit();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.pictureEdit2 = new DevExpress.XtraEditors.PictureEdit();
            this.lpDefectCode = new DevExpress.XtraEditors.LookUpEdit();
            this.lbDefectName = new DevExpress.XtraEditors.LabelControl();
            defectCodeLabel = new System.Windows.Forms.Label();
            defectQtyLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.defectQtySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lpDefectCode.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.CustQC_Detail);
            // 
            // defectCodeLabel
            // 
            defectCodeLabel.AutoSize = true;
            defectCodeLabel.Location = new System.Drawing.Point(12, 63);
            defectCodeLabel.Name = "defectCodeLabel";
            defectCodeLabel.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(defectCodeLabel, null);
            defectCodeLabel.TabIndex = 4;
            defectCodeLabel.Text = "Defect Code 次點編號";
            // 
            // defectQtyLabel
            // 
            defectQtyLabel.AutoSize = true;
            defectQtyLabel.Location = new System.Drawing.Point(22, 89);
            defectQtyLabel.Name = "defectQtyLabel";
            defectQtyLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(defectQtyLabel, null);
            defectQtyLabel.TabIndex = 10;
            defectQtyLabel.Text = "Defect Qty 次點個數";
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(64, 113);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 12;
            remarkLabel.Text = "Remark 備注";
            // 
            // defectQtySpinEdit
            // 
            this.defectQtySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DefectQty", true));
            this.defectQtySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.defectQtySpinEdit.Location = new System.Drawing.Point(150, 84);
            this.defectQtySpinEdit.Name = "defectQtySpinEdit";
            this.defectQtySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.defectQtySpinEdit.Size = new System.Drawing.Size(85, 21);
            this.defectQtySpinEdit.TabIndex = 11;
            // 
            // remarkTextEdit
            // 
            this.remarkTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkTextEdit.Location = new System.Drawing.Point(150, 110);
            this.remarkTextEdit.Name = "remarkTextEdit";
            this.remarkTextEdit.Size = new System.Drawing.Size(428, 21);
            this.remarkTextEdit.TabIndex = 13;
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.pictureEdit1);
            this.groupControl1.Location = new System.Drawing.Point(150, 142);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(200, 195);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 16;
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
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.pictureEdit2);
            this.groupControl2.Location = new System.Drawing.Point(378, 142);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(200, 195);
            this.PlatetoolTipController.SetSuperTip(this.groupControl2, null);
            this.groupControl2.TabIndex = 17;
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
            // lpDefectCode
            // 
            this.lpDefectCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DefectCode", true));
            this.lpDefectCode.Location = new System.Drawing.Point(150, 57);
            this.lpDefectCode.Name = "lpDefectCode";
            this.lpDefectCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lpDefectCode.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Defect Code", 80),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Defect Name", 260)});
            this.lpDefectCode.Properties.NullText = "";
            this.lpDefectCode.Properties.PopupWidth = 360;
            this.lpDefectCode.Size = new System.Drawing.Size(168, 21);
            this.lpDefectCode.TabIndex = 18;
            this.lpDefectCode.EditValueChanged += new System.EventHandler(this.lpDefectCode_EditValueChanged);
            // 
            // lbDefectName
            // 
            this.lbDefectName.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "DefectNameCN", true));
            this.lbDefectName.Location = new System.Drawing.Point(333, 61);
            this.lbDefectName.Name = "lbDefectName";
            this.lbDefectName.Size = new System.Drawing.Size(0, 14);
            this.lbDefectName.TabIndex = 19;
            // 
            // CustQC_DetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lbDefectName);
            this.Controls.Add(this.lpDefectCode);
            this.Controls.Add(this.groupControl2);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(remarkLabel);
            this.Controls.Add(this.remarkTextEdit);
            this.Controls.Add(defectQtyLabel);
            this.Controls.Add(this.defectQtySpinEdit);
            this.Controls.Add(defectCodeLabel);
            this.Name = "CustQC_DetailDetailForm";
            this.Size = new System.Drawing.Size(648, 370);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(defectCodeLabel, 0);
            this.Controls.SetChildIndex(this.defectQtySpinEdit, 0);
            this.Controls.SetChildIndex(defectQtyLabel, 0);
            this.Controls.SetChildIndex(this.remarkTextEdit, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            this.Controls.SetChildIndex(this.groupControl1, 0);
            this.Controls.SetChildIndex(this.groupControl2, 0);
            this.Controls.SetChildIndex(this.lpDefectCode, 0);
            this.Controls.SetChildIndex(this.lbDefectName, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.defectQtySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lpDefectCode.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit defectQtySpinEdit;
        private DevExpress.XtraEditors.TextEdit remarkTextEdit;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.PictureEdit pictureEdit1;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.PictureEdit pictureEdit2;
        private DevExpress.XtraEditors.LookUpEdit lpDefectCode;
        private DevExpress.XtraEditors.LabelControl lbDefectName;
    }
}
