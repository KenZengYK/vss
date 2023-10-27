namespace PH.RWO.UI.MasterDB
{
    partial class PaymentTermDetailForm
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label codeLabel;
            System.Windows.Forms.Label descriptionLabel;
            this.codeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.paymentTermsDetailListForm1 = new PH.RWO.UI.MasterDB.PaymentTermsDetailListForm();
            codeLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).BeginInit();
            this.headerTitleBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 242);
            this.splitterControl1.Size = new System.Drawing.Size(1024, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(descriptionLabel);
            this.headerTitleBar.Controls.Add(this.descriptionMemoEdit);
            this.headerTitleBar.Controls.Add(codeLabel);
            this.headerTitleBar.Controls.Add(this.codeTextEdit);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(1024, 215);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.codeTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(codeLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.descriptionMemoEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(descriptionLabel, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 248);
            this.panelControl1.Size = new System.Drawing.Size(1024, 342);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.paymentTermsDetailListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(1011, 306);
            this.xtraTabPage1.Text = "On Cust. PO";
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(1020, 338);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.PaymentTerm);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(1424, 0);
            // 
            // codeLabel
            // 
            codeLabel.AutoSize = true;
            codeLabel.Location = new System.Drawing.Point(45, 35);
            codeLabel.Name = "codeLabel";
            codeLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(codeLabel, null);
            codeLabel.TabIndex = 1;
            codeLabel.Text = "Cde:";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(45, 69);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(107, 24);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 3;
            descriptionLabel.Text = "Description\r\n(In our invoice):";
            // 
            // codeTextEdit
            // 
            this.codeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Code", true));
            this.codeTextEdit.Location = new System.Drawing.Point(163, 30);
            this.codeTextEdit.Name = "codeTextEdit";
            this.codeTextEdit.Size = new System.Drawing.Size(186, 21);
            this.codeTextEdit.TabIndex = 2;
            // 
            // descriptionMemoEdit
            // 
            this.descriptionMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionMemoEdit.Location = new System.Drawing.Point(163, 64);
            this.descriptionMemoEdit.Name = "descriptionMemoEdit";
            this.descriptionMemoEdit.Size = new System.Drawing.Size(376, 124);
            this.descriptionMemoEdit.TabIndex = 4;
            // 
            // paymentTermsDetailListForm1
            // 
            this.paymentTermsDetailListForm1.AllowAddRow = true;
            this.paymentTermsDetailListForm1.AlwaysShowDesignLayout = false;
            this.paymentTermsDetailListForm1.AutoOpenDetailForm = false;
            this.paymentTermsDetailListForm1.DataContext = null;
            this.paymentTermsDetailListForm1.DataSource = null;
            this.paymentTermsDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.paymentTermsDetailListForm1.EditorTypeName = null;
            this.paymentTermsDetailListForm1.FileID = null;
            this.paymentTermsDetailListForm1.FirstForm = null;
            this.paymentTermsDetailListForm1.FormName = "PaymentTermsDetailListForm";
            this.paymentTermsDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.paymentTermsDetailListForm1.FormTitle = "PH.RWO.UI.MasterDB.PaymentTermsDetailListForm";
            this.paymentTermsDetailListForm1.IsCancelList = false;
            this.paymentTermsDetailListForm1.IsShowPivotTable = false;
            this.paymentTermsDetailListForm1.LayoutData = null;
            this.paymentTermsDetailListForm1.LayoutName = null;
            this.paymentTermsDetailListForm1.ListForm = null;
            this.paymentTermsDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.paymentTermsDetailListForm1.MenuID = ((long)(0));
            this.paymentTermsDetailListForm1.Name = "paymentTermsDetailListForm1";
            this.paymentTermsDetailListForm1.NeedCheckPermission = true;
            this.paymentTermsDetailListForm1.NextForm = null;
            this.paymentTermsDetailListForm1.ParentForm = null;
            this.paymentTermsDetailListForm1.PrevForm = null;
            this.paymentTermsDetailListForm1.RowChangeAutoSave = true;
            this.paymentTermsDetailListForm1.ShowMultiCheck = false;
            this.paymentTermsDetailListForm1.SideProgramID = null;
            this.paymentTermsDetailListForm1.Size = new System.Drawing.Size(1011, 306);
            this.PlatetoolTipController.SetSuperTip(this.paymentTermsDetailListForm1, null);
            this.paymentTermsDetailListForm1.TabControls = null;
            this.paymentTermsDetailListForm1.TabIndex = 0;
            this.paymentTermsDetailListForm1.TabPage = null;
            // 
            // PaymentTermDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PaymentTermDetailForm";
            this.Size = new System.Drawing.Size(1024, 590);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).EndInit();
            this.headerTitleBar.ResumeLayout(false);
            this.headerTitleBar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit codeTextEdit;
        private DevExpress.XtraEditors.MemoEdit descriptionMemoEdit;
        private PaymentTermsDetailListForm paymentTermsDetailListForm1;

    }
}
