namespace PH.BasicInfo.UI.TimeElement
{
    partial class CreditEvaluationPopForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.lblSupplier = new System.Windows.Forms.Label();
            this.lblSupplierCode = new System.Windows.Forms.Label();
            this.lblCategory = new System.Windows.Forms.Label();
            this.categoryLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            this.lookUpEditItemCode = new DevExpress.XtraEditors.LookUpEdit();
            this.lblItemCode = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lblDesc = new System.Windows.Forms.Label();
            this.lblSpecific = new System.Windows.Forms.Label();
            this.medtDesc = new DevExpress.XtraEditors.MemoEdit();
            this.medtSpec = new DevExpress.XtraEditors.MemoEdit();
            this.txtScore = new DevExpress.XtraEditors.TextEdit();
            this.btnSaveDetail = new DevExpress.XtraEditors.SimpleButton();
            this.btnClose = new DevExpress.XtraEditors.SimpleButton();
            this.label2 = new System.Windows.Forms.Label();
            this.lblScore = new System.Windows.Forms.Label();
            this.DxvCreditEval = new DevExpress.XtraEditors.DXErrorProvider.DXValidationProvider(this.components);
            this.dxErrCreditEval = new DevExpress.XtraEditors.DXErrorProvider.DXErrorProvider(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.categoryLookUpEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditItemCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.medtDesc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.medtSpec.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtScore.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DxvCreditEval)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxErrCreditEval)).BeginInit();
            this.SuspendLayout();
            // 
            // lblSupplier
            // 
            this.lblSupplier.AutoSize = true;
            this.lblSupplier.Location = new System.Drawing.Point(31, 27);
            this.lblSupplier.Name = "lblSupplier";
            this.lblSupplier.Size = new System.Drawing.Size(86, 12);
            this.lblSupplier.TabIndex = 0;
            this.lblSupplier.Text = "Current Supplier:";
            // 
            // lblSupplierCode
            // 
            this.lblSupplierCode.AutoSize = true;
            this.lblSupplierCode.Location = new System.Drawing.Point(123, 27);
            this.lblSupplierCode.Name = "lblSupplierCode";
            this.lblSupplierCode.Size = new System.Drawing.Size(30, 12);
            this.lblSupplierCode.TabIndex = 1;
            this.lblSupplierCode.Text = "None";
            // 
            // lblCategory
            // 
            this.lblCategory.AutoSize = true;
            this.lblCategory.Location = new System.Drawing.Point(36, 80);
            this.lblCategory.Name = "lblCategory";
            this.lblCategory.Size = new System.Drawing.Size(51, 12);
            this.lblCategory.TabIndex = 2;
            this.lblCategory.Text = "Category:";
            // 
            // categoryLookUpEdit
            // 
            this.categoryLookUpEdit.Location = new System.Drawing.Point(93, 75);
            this.categoryLookUpEdit.Name = "categoryLookUpEdit";
            this.categoryLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.categoryLookUpEdit.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Category", "Category", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.categoryLookUpEdit.Properties.NullText = "";
            this.categoryLookUpEdit.Size = new System.Drawing.Size(150, 21);
            this.categoryLookUpEdit.TabIndex = 15;
            this.categoryLookUpEdit.EditValueChanged += new System.EventHandler(this.categoryLookUpEdit_EditValueChanged);
            // 
            // lookUpEditItemCode
            // 
            this.lookUpEditItemCode.Location = new System.Drawing.Point(93, 132);
            this.lookUpEditItemCode.Name = "lookUpEditItemCode";
            this.lookUpEditItemCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEditItemCode.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ItemCode", "Item Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.lookUpEditItemCode.Properties.NullText = "";
            this.lookUpEditItemCode.Size = new System.Drawing.Size(150, 21);
            this.lookUpEditItemCode.TabIndex = 17;
            this.lookUpEditItemCode.EditValueChanged += new System.EventHandler(this.lookUpEditItemCode_EditValueChanged);
            // 
            // lblItemCode
            // 
            this.lblItemCode.AutoSize = true;
            this.lblItemCode.Location = new System.Drawing.Point(30, 137);
            this.lblItemCode.Name = "lblItemCode";
            this.lblItemCode.Size = new System.Drawing.Size(57, 12);
            this.lblItemCode.TabIndex = 16;
            this.lblItemCode.Text = "Item Code:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(53, 198);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(34, 12);
            this.label1.TabIndex = 18;
            this.label1.Text = "Score:";
            // 
            // lblDesc
            // 
            this.lblDesc.AutoSize = true;
            this.lblDesc.Location = new System.Drawing.Point(273, 62);
            this.lblDesc.Name = "lblDesc";
            this.lblDesc.Size = new System.Drawing.Size(61, 12);
            this.lblDesc.TabIndex = 19;
            this.lblDesc.Text = "Description:";
            // 
            // lblSpecific
            // 
            this.lblSpecific.AutoSize = true;
            this.lblSpecific.Location = new System.Drawing.Point(273, 141);
            this.lblSpecific.Name = "lblSpecific";
            this.lblSpecific.Size = new System.Drawing.Size(45, 12);
            this.lblSpecific.TabIndex = 20;
            this.lblSpecific.Text = "Specific:";
            // 
            // medtDesc
            // 
            this.medtDesc.Location = new System.Drawing.Point(275, 77);
            this.medtDesc.Name = "medtDesc";
            this.medtDesc.Properties.ReadOnly = true;
            this.medtDesc.Size = new System.Drawing.Size(191, 40);
            this.medtDesc.TabIndex = 21;
            // 
            // medtSpec
            // 
            this.medtSpec.Location = new System.Drawing.Point(275, 161);
            this.medtSpec.Name = "medtSpec";
            this.medtSpec.Properties.ReadOnly = true;
            this.medtSpec.Size = new System.Drawing.Size(191, 111);
            this.medtSpec.TabIndex = 22;
            // 
            // txtScore
            // 
            this.txtScore.Location = new System.Drawing.Point(93, 193);
            this.txtScore.Name = "txtScore";
            this.txtScore.Size = new System.Drawing.Size(150, 21);
            this.txtScore.TabIndex = 23;
            this.txtScore.Validating += new System.ComponentModel.CancelEventHandler(this.txtScore_Validating);
            // 
            // btnSaveDetail
            // 
            this.btnSaveDetail.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnSaveDetail.Location = new System.Drawing.Point(125, 305);
            this.btnSaveDetail.Name = "btnSaveDetail";
            this.btnSaveDetail.Size = new System.Drawing.Size(75, 23);
            this.btnSaveDetail.TabIndex = 24;
            this.btnSaveDetail.Text = "Save";
            this.btnSaveDetail.Click += new System.EventHandler(this.btnSaveDetail_Click);
            // 
            // btnClose
            // 
            this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnClose.Location = new System.Drawing.Point(206, 305);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(75, 23);
            this.btnClose.TabIndex = 25;
            this.btnClose.Text = "Close";
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.ForeColor = System.Drawing.Color.Red;
            this.label2.Location = new System.Drawing.Point(48, 226);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(190, 12);
            this.label2.TabIndex = 26;
            this.label2.Text = "( Score must a float number between 0~";
            // 
            // lblScore
            // 
            this.lblScore.AutoSize = true;
            this.lblScore.ForeColor = System.Drawing.Color.Red;
            this.lblScore.Location = new System.Drawing.Point(239, 226);
            this.lblScore.Name = "lblScore";
            this.lblScore.Size = new System.Drawing.Size(21, 12);
            this.lblScore.TabIndex = 27;
            this.lblScore.Text = "20)";
            // 
            // DxvCreditEval
            // 
            this.DxvCreditEval.ValidationMode = DevExpress.XtraEditors.DXErrorProvider.ValidationMode.Auto;
            // 
            // dxErrCreditEval
            // 
            this.dxErrCreditEval.ContainerControl = this;
            // 
            // CreditEvaluationPopForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(501, 362);
            this.Controls.Add(this.lblScore);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.btnSaveDetail);
            this.Controls.Add(this.txtScore);
            this.Controls.Add(this.medtSpec);
            this.Controls.Add(this.medtDesc);
            this.Controls.Add(this.lblSpecific);
            this.Controls.Add(this.lblDesc);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lookUpEditItemCode);
            this.Controls.Add(this.lblItemCode);
            this.Controls.Add(this.categoryLookUpEdit);
            this.Controls.Add(this.lblCategory);
            this.Controls.Add(this.lblSupplierCode);
            this.Controls.Add(this.lblSupplier);
            this.Name = "CreditEvaluationPopForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Supplier Credit Evaluation";
            this.Load += new System.EventHandler(this.CreditEvaluationPopForm_Load);
            
            ((System.ComponentModel.ISupportInitialize)(this.categoryLookUpEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditItemCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.medtDesc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.medtSpec.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtScore.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DxvCreditEval)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxErrCreditEval)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblSupplierCode;
        private DevExpress.XtraEditors.LookUpEdit categoryLookUpEdit;
        private DevExpress.XtraEditors.LookUpEdit lookUpEditItemCode;
        private DevExpress.XtraEditors.MemoEdit medtDesc;
        private DevExpress.XtraEditors.MemoEdit medtSpec;
        public System.Windows.Forms.Label lblSupplier;
        public System.Windows.Forms.Label lblCategory;
        public System.Windows.Forms.Label lblItemCode;
        public System.Windows.Forms.Label label1;
        public System.Windows.Forms.Label lblDesc;
        public System.Windows.Forms.Label lblSpecific;
        private DevExpress.XtraEditors.TextEdit txtScore;
        private DevExpress.XtraEditors.SimpleButton btnSaveDetail;
        private DevExpress.XtraEditors.SimpleButton btnClose;
        public System.Windows.Forms.Label label2;
        public System.Windows.Forms.Label lblScore;
        private DevExpress.XtraEditors.DXErrorProvider.DXValidationProvider DxvCreditEval;
        private DevExpress.XtraEditors.DXErrorProvider.DXErrorProvider dxErrCreditEval;
    }
}