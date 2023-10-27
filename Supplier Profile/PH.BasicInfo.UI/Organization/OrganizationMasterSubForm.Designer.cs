namespace PH.BasicInfo.UI.Organization
{
    partial class OrganizationMasterSubForm
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
            System.Windows.Forms.Label orgIDLabel;
            System.Windows.Forms.Label orgCodeLabel;
            System.Windows.Forms.Label orgNameLabel;
            System.Windows.Forms.Label orgTypeLabel;
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout2 = new PH.Platform.BO.UI_GridViewLayout();
            this.orgIDSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.pIDSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.orgCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.orgNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.orgTypeLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            this.orgEmployeeSubListForm1 = new PH.BasicInfo.UI.Organization.OrgEmployeeSubListForm();
            orgIDLabel = new System.Windows.Forms.Label();
            orgCodeLabel = new System.Windows.Forms.Label();
            orgNameLabel = new System.Windows.Forms.Label();
            orgTypeLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.orgIDSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pIDSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgTypeLookUpEdit.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 169);
            this.splitterControl1.Size = new System.Drawing.Size(782, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.orgIDSpinEdit);
            this.headerTitleBar.Controls.Add(this.orgTypeLookUpEdit);
            this.headerTitleBar.Controls.Add(this.orgNameTextEdit);
            this.headerTitleBar.Controls.Add(this.pIDSpinEdit);
            this.headerTitleBar.Controls.Add(this.orgCodeTextEdit);
            this.headerTitleBar.Controls.Add(orgIDLabel);
            this.headerTitleBar.Size = new System.Drawing.Size(782, 143);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(orgIDLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.orgCodeTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.pIDSpinEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.orgNameTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.orgTypeLookUpEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.orgIDSpinEdit, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 175);
            this.panelControl1.Size = new System.Drawing.Size(782, 223);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.orgEmployeeSubListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(769, 187);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(778, 219);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.Organization);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(351, -2);
            // 
            // orgIDLabel
            // 
            orgIDLabel.AutoSize = true;
            orgIDLabel.Location = new System.Drawing.Point(82, 25);
            orgIDLabel.Name = "orgIDLabel";
            orgIDLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(orgIDLabel, null);
            orgIDLabel.TabIndex = 6;
            orgIDLabel.Text = "Organization ID:";
            // 
            // orgCodeLabel
            // 
            orgCodeLabel.AutoSize = true;
            orgCodeLabel.Location = new System.Drawing.Point(69, 114);
            orgCodeLabel.Name = "orgCodeLabel";
            orgCodeLabel.Size = new System.Drawing.Size(96, 12);
            this.PlatetoolTipController.SetSuperTip(orgCodeLabel, null);
            orgCodeLabel.TabIndex = 8;
            orgCodeLabel.Text = "Organization Code:";
            // 
            // orgNameLabel
            // 
            orgNameLabel.AutoSize = true;
            orgNameLabel.Location = new System.Drawing.Point(67, 148);
            orgNameLabel.Name = "orgNameLabel";
            orgNameLabel.Size = new System.Drawing.Size(98, 12);
            this.PlatetoolTipController.SetSuperTip(orgNameLabel, null);
            orgNameLabel.TabIndex = 9;
            orgNameLabel.Text = "Organization Name:";
            // 
            // orgTypeLabel
            // 
            orgTypeLabel.AutoSize = true;
            orgTypeLabel.Location = new System.Drawing.Point(70, 82);
            orgTypeLabel.Name = "orgTypeLabel";
            orgTypeLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(orgTypeLabel, null);
            orgTypeLabel.TabIndex = 7;
            orgTypeLabel.Text = "Organization Type:";
            // 
            // orgIDSpinEdit
            // 
            this.orgIDSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrgID", true));
            this.orgIDSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.orgIDSpinEdit.EnterMoveNextControl = true;
            this.orgIDSpinEdit.Location = new System.Drawing.Point(204, 18);
            this.orgIDSpinEdit.Name = "orgIDSpinEdit";
            this.orgIDSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.orgIDSpinEdit.Size = new System.Drawing.Size(169, 21);
            this.orgIDSpinEdit.TabIndex = 1;
            // 
            // pIDSpinEdit
            // 
            this.pIDSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PID", true));
            this.pIDSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.pIDSpinEdit.Enabled = false;
            this.pIDSpinEdit.Location = new System.Drawing.Point(204, 18);
            this.pIDSpinEdit.Name = "pIDSpinEdit";
            this.pIDSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.pIDSpinEdit.Size = new System.Drawing.Size(169, 21);
            this.pIDSpinEdit.TabIndex = 0;
            this.pIDSpinEdit.TabStop = false;
            // 
            // orgCodeTextEdit
            // 
            this.orgCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrgCode", true));
            this.orgCodeTextEdit.EnterMoveNextControl = true;
            this.orgCodeTextEdit.Location = new System.Drawing.Point(204, 81);
            this.orgCodeTextEdit.Name = "orgCodeTextEdit";
            this.orgCodeTextEdit.Size = new System.Drawing.Size(169, 21);
            this.orgCodeTextEdit.TabIndex = 3;
            // 
            // orgNameTextEdit
            // 
            this.orgNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrgName", true));
            this.orgNameTextEdit.EnterMoveNextControl = true;
            this.orgNameTextEdit.Location = new System.Drawing.Point(204, 117);
            this.orgNameTextEdit.Name = "orgNameTextEdit";
            this.orgNameTextEdit.Size = new System.Drawing.Size(319, 21);
            this.orgNameTextEdit.TabIndex = 4;
            // 
            // orgTypeLookUpEdit
            // 
            this.orgTypeLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrgType", true));
            this.orgTypeLookUpEdit.EnterMoveNextControl = true;
            this.orgTypeLookUpEdit.Location = new System.Drawing.Point(204, 51);
            this.orgTypeLookUpEdit.Name = "orgTypeLookUpEdit";
            this.orgTypeLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.orgTypeLookUpEdit.Properties.NullText = "";
            this.orgTypeLookUpEdit.Size = new System.Drawing.Size(319, 21);
            this.orgTypeLookUpEdit.TabIndex = 2;
            // 
            // orgEmployeeSubListForm1
            // 
            this.orgEmployeeSubListForm1.AllowAddRow = true;
            this.orgEmployeeSubListForm1.AllowGridEdit = true;
            this.orgEmployeeSubListForm1.AttachTypeName = null;
            this.orgEmployeeSubListForm1.AutoOpenDetailForm = false;
            this.orgEmployeeSubListForm1.CurParentEntity = null;
            this.orgEmployeeSubListForm1.DataContext = null;
            this.orgEmployeeSubListForm1.DataSource = null;
            this.orgEmployeeSubListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.orgEmployeeSubListForm1.EditorTypeName = null;
            this.orgEmployeeSubListForm1.FileID = null;
            this.orgEmployeeSubListForm1.FirstForm = null;
            this.orgEmployeeSubListForm1.FormName = "OrgEmployeeSubListForm";
            this.orgEmployeeSubListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.orgEmployeeSubListForm1.FormTitle = "PH.BasicInfo.UI.Organization.OrgEmployeeSubListForm";
            this.orgEmployeeSubListForm1.IsCancelList = false;
            this.orgEmployeeSubListForm1.IsShowPivotTable = false;
            uI_GridViewLayout2.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            uI_GridViewLayout2.CheckFlag = false;
            uI_GridViewLayout2.CurrentBindingSource = null;
            uI_GridViewLayout2.CurrentDataContext = null;
            uI_GridViewLayout2.FileID = null;
            uI_GridViewLayout2.FormName = null;
            uI_GridViewLayout2.IsSys = null;
            uI_GridViewLayout2.IsSysDefault = null;
            uI_GridViewLayout2.IsUser = null;
            uI_GridViewLayout2.IsUserDefault = null;
            uI_GridViewLayout2.LayoutName = null;
            uI_GridViewLayout2.LayoutRaw = null;
            uI_GridViewLayout2.SideProgramID = null;
            uI_GridViewLayout2.UserID = null;
            this.orgEmployeeSubListForm1.LayoutData = uI_GridViewLayout2;
            this.orgEmployeeSubListForm1.LayoutName = null;
            this.orgEmployeeSubListForm1.ListForm = null;
            this.orgEmployeeSubListForm1.Location = new System.Drawing.Point(0, 0);
            this.orgEmployeeSubListForm1.MenuID = ((long)(0));
            this.orgEmployeeSubListForm1.Name = "orgEmployeeSubListForm1";
            this.orgEmployeeSubListForm1.NextForm = null;
            this.orgEmployeeSubListForm1.ParentForm = null;
            this.orgEmployeeSubListForm1.PrevForm = null;
            this.orgEmployeeSubListForm1.RowChangeAutoSave = true;
            this.orgEmployeeSubListForm1.ShowMultiCheck = true;
            this.orgEmployeeSubListForm1.SideProgramID = null;
            this.orgEmployeeSubListForm1.Size = new System.Drawing.Size(769, 187);
            this.PlatetoolTipController.SetSuperTip(this.orgEmployeeSubListForm1, null);
            this.orgEmployeeSubListForm1.TabControls = null;
            this.orgEmployeeSubListForm1.TabIndex = 0;
            this.orgEmployeeSubListForm1.TabPage = null;
            // 
            // OrganizationMasterSubForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(orgTypeLabel);
            this.Controls.Add(orgNameLabel);
            this.Controls.Add(orgCodeLabel);
            this.Name = "OrganizationMasterSubForm";
            this.Size = new System.Drawing.Size(782, 398);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Enter += new System.EventHandler(this.OrganizationDetailForm_Enter);
            this.Controls.SetChildIndex(this.headerTitleBar, 0);
            this.Controls.SetChildIndex(this.splitterControl1, 0);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(orgCodeLabel, 0);
            this.Controls.SetChildIndex(orgNameLabel, 0);
            this.Controls.SetChildIndex(orgTypeLabel, 0);
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
            ((System.ComponentModel.ISupportInitialize)(this.orgIDSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pIDSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgTypeLookUpEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit orgIDSpinEdit;
        private DevExpress.XtraEditors.SpinEdit pIDSpinEdit;
        private DevExpress.XtraEditors.TextEdit orgCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit orgNameTextEdit;
        private DevExpress.XtraEditors.LookUpEdit orgTypeLookUpEdit;
        private OrgEmployeeSubListForm orgEmployeeSubListForm1;
    }
}
