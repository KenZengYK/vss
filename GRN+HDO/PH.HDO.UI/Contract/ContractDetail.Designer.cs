namespace PH.HDO.UI.Contract
{
    partial class ContractDetail
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

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.Label craIdLabel;
            System.Windows.Forms.Label contractNoLabel;
            System.Windows.Forms.Label createByLabel;
            System.Windows.Forms.Label createdLabel;
            System.Windows.Forms.Label remarkLabel;
            System.Windows.Forms.Label updateByLabel;
            System.Windows.Forms.Label updatedLabel;
            this.craIdTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.contractNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.createByTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.createdDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.updateByTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.updatedDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.contractItemList1 = new PH.HDO.UI.Contract.ContractItemList();
            craIdLabel = new System.Windows.Forms.Label();
            contractNoLabel = new System.Windows.Forms.Label();
            createByLabel = new System.Windows.Forms.Label();
            createdLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            updateByLabel = new System.Windows.Forms.Label();
            updatedLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.craIdTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.contractNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createByTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createdDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createdDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.updateByTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.updatedDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.updatedDateEdit.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 238);
            this.splitterControl1.Size = new System.Drawing.Size(917, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(updatedLabel);
            this.headerTitleBar.Controls.Add(this.updatedDateEdit);
            this.headerTitleBar.Controls.Add(updateByLabel);
            this.headerTitleBar.Controls.Add(this.updateByTextEdit);
            this.headerTitleBar.Controls.Add(remarkLabel);
            this.headerTitleBar.Controls.Add(this.remarkMemoEdit);
            this.headerTitleBar.Controls.Add(createdLabel);
            this.headerTitleBar.Controls.Add(this.createdDateEdit);
            this.headerTitleBar.Controls.Add(createByLabel);
            this.headerTitleBar.Controls.Add(this.createByTextEdit);
            this.headerTitleBar.Controls.Add(contractNoLabel);
            this.headerTitleBar.Controls.Add(this.contractNoTextEdit);
            this.headerTitleBar.Controls.Add(craIdLabel);
            this.headerTitleBar.Controls.Add(this.craIdTextEdit);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(917, 211);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.craIdTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(craIdLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.contractNoTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(contractNoLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.createByTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(createByLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.createdDateEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(createdLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.remarkMemoEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(remarkLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.updateByTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(updateByLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.updatedDateEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(updatedLabel, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 244);
            this.panelControl1.Size = new System.Drawing.Size(917, 264);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.contractItemList1);
            this.xtraTabPage1.Size = new System.Drawing.Size(904, 228);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(913, 260);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.HDO.BO.ContractInfo);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(2183, 0);
            // 
            // craIdLabel
            // 
            craIdLabel.AutoSize = true;
            craIdLabel.Location = new System.Drawing.Point(31, 49);
            craIdLabel.Name = "craIdLabel";
            craIdLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(craIdLabel, null);
            craIdLabel.TabIndex = 1;
            craIdLabel.Text = "記錄ID :";
            // 
            // contractNoLabel
            // 
            contractNoLabel.AutoSize = true;
            contractNoLabel.Location = new System.Drawing.Point(284, 49);
            contractNoLabel.Name = "contractNoLabel";
            contractNoLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(contractNoLabel, null);
            contractNoLabel.TabIndex = 3;
            contractNoLabel.Text = "合同號 :";
            // 
            // createByLabel
            // 
            createByLabel.AutoSize = true;
            createByLabel.Location = new System.Drawing.Point(702, 49);
            createByLabel.Name = "createByLabel";
            createByLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(createByLabel, null);
            createByLabel.TabIndex = 7;
            createByLabel.Text = "建立者 :";
            // 
            // createdLabel
            // 
            createdLabel.AutoSize = true;
            createdLabel.Location = new System.Drawing.Point(695, 92);
            createdLabel.Name = "createdLabel";
            createdLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(createdLabel, null);
            createdLabel.TabIndex = 9;
            createdLabel.Text = "建立時間 :";
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(37, 90);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 11;
            remarkLabel.Text = "備注 :";
            // 
            // updateByLabel
            // 
            updateByLabel.AutoSize = true;
            updateByLabel.Location = new System.Drawing.Point(695, 132);
            updateByLabel.Name = "updateByLabel";
            updateByLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(updateByLabel, null);
            updateByLabel.TabIndex = 13;
            updateByLabel.Text = "更新者 :";
            // 
            // updatedLabel
            // 
            updatedLabel.AutoSize = true;
            updatedLabel.Location = new System.Drawing.Point(695, 176);
            updatedLabel.Name = "updatedLabel";
            updatedLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(updatedLabel, null);
            updatedLabel.TabIndex = 15;
            updatedLabel.Text = "更新時間 :";
            // 
            // craIdTextEdit
            // 
            this.craIdTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CraId", true));
            this.craIdTextEdit.Location = new System.Drawing.Point(84, 46);
            this.craIdTextEdit.Name = "craIdTextEdit";
            this.craIdTextEdit.Size = new System.Drawing.Size(75, 21);
            this.craIdTextEdit.TabIndex = 2;
            // 
            // contractNoTextEdit
            // 
            this.contractNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ContractNo", true));
            this.contractNoTextEdit.Location = new System.Drawing.Point(340, 46);
            this.contractNoTextEdit.Name = "contractNoTextEdit";
            this.contractNoTextEdit.Size = new System.Drawing.Size(146, 21);
            this.contractNoTextEdit.TabIndex = 4;
            // 
            // createByTextEdit
            // 
            this.createByTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateBy", true));
            this.createByTextEdit.Location = new System.Drawing.Point(766, 46);
            this.createByTextEdit.Name = "createByTextEdit";
            this.createByTextEdit.Size = new System.Drawing.Size(126, 21);
            this.createByTextEdit.TabIndex = 8;
            // 
            // createdDateEdit
            // 
            this.createdDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Created", true));
            this.createdDateEdit.EditValue = null;
            this.createdDateEdit.Location = new System.Drawing.Point(766, 87);
            this.createdDateEdit.Name = "createdDateEdit";
            this.createdDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.createdDateEdit.Properties.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.createdDateEdit.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.createdDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.createdDateEdit.Size = new System.Drawing.Size(126, 21);
            this.createdDateEdit.TabIndex = 10;
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(87, 85);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(585, 103);
            this.remarkMemoEdit.TabIndex = 12;
            // 
            // updateByTextEdit
            // 
            this.updateByTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UpdateBy", true));
            this.updateByTextEdit.Location = new System.Drawing.Point(766, 129);
            this.updateByTextEdit.Name = "updateByTextEdit";
            this.updateByTextEdit.Size = new System.Drawing.Size(126, 21);
            this.updateByTextEdit.TabIndex = 14;
            // 
            // updatedDateEdit
            // 
            this.updatedDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Updated", true));
            this.updatedDateEdit.EditValue = null;
            this.updatedDateEdit.Location = new System.Drawing.Point(766, 173);
            this.updatedDateEdit.Name = "updatedDateEdit";
            this.updatedDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.updatedDateEdit.Properties.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.updatedDateEdit.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.updatedDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.updatedDateEdit.Size = new System.Drawing.Size(126, 21);
            this.updatedDateEdit.TabIndex = 16;
            // 
            // contractItemList1
            // 
            this.contractItemList1.AllowAddRow = false;
            this.contractItemList1.AllowGridEdit = true;
            this.contractItemList1.AutoOpenDetailForm = false;
            this.contractItemList1.DataContext = null;
            this.contractItemList1.DataSource = null;
            this.contractItemList1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.contractItemList1.EditorTypeName = null;
            this.contractItemList1.FileID = null;
            this.contractItemList1.FirstForm = null;
            this.contractItemList1.FormName = "ContractItemList";
            this.contractItemList1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.contractItemList1.FormTitle = "PH.HDO.UI.Contract.ContractItemList";
            this.contractItemList1.IsCancelList = false;
            this.contractItemList1.IsShowPivotTable = false;
            this.contractItemList1.LayoutData = null;
            this.contractItemList1.LayoutName = null;
            this.contractItemList1.ListForm = null;
            this.contractItemList1.Location = new System.Drawing.Point(0, 0);
            this.contractItemList1.MenuID = ((long)(0));
            this.contractItemList1.Name = "contractItemList1";
            this.contractItemList1.NeedCheckPermission = true;
            this.contractItemList1.NextForm = null;
            this.contractItemList1.ParentForm = null;
            this.contractItemList1.PrevForm = null;
            this.contractItemList1.RowChangeAutoSave = true;
            this.contractItemList1.ShowMultiCheck = true;
            this.contractItemList1.SideProgramID = null;
            this.contractItemList1.Size = new System.Drawing.Size(904, 228);
            this.PlatetoolTipController.SetSuperTip(this.contractItemList1, null);
            this.contractItemList1.TabControls = null;
            this.contractItemList1.TabIndex = 0;
            this.contractItemList1.TabPage = null;
            // 
            // ContractDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ContractDetail";
            this.Size = new System.Drawing.Size(917, 508);
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
            ((System.ComponentModel.ISupportInitialize)(this.craIdTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.contractNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createByTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createdDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createdDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.updateByTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.updatedDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.updatedDateEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit contractNoTextEdit;
        private DevExpress.XtraEditors.TextEdit craIdTextEdit;
        private DevExpress.XtraEditors.TextEdit createByTextEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
        private DevExpress.XtraEditors.DateEdit createdDateEdit;
        private DevExpress.XtraEditors.DateEdit updatedDateEdit;
        private DevExpress.XtraEditors.TextEdit updateByTextEdit;
        private ContractItemList contractItemList1;
    }
}
