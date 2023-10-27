namespace PH.MobileQC.UI.AppAudit
{
    partial class AppRightInfoDetailForm
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
            System.Windows.Forms.Label alterUserLabel;
            System.Windows.Forms.Label alterDateLabel;
            System.Windows.Forms.Label createUserLabel;
            System.Windows.Forms.Label createDateLabel;
            System.Windows.Forms.Label isAddLabel;
            System.Windows.Forms.Label isDeleteLabel;
            System.Windows.Forms.Label isEditLabel;
            System.Windows.Forms.Label isAssignLabel;
            System.Windows.Forms.Label remarkLabel;
            System.Windows.Forms.Label userCodeLabel;
            System.Windows.Forms.Label roleCodeLabel;
            System.Windows.Forms.Label aPPNameLabel;
            System.Windows.Forms.Label activityNameLabel;
            this.alterUserTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.alterDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.createUserTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.createDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.isAddCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.isDeleteCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.isEditCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.isAssignCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.userCodeButtonEdit = new DevExpress.XtraEditors.ButtonEdit();
            this.roleCodeButtonEdit = new DevExpress.XtraEditors.ButtonEdit();
            this.aPPNameLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            this.activityNameLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            alterUserLabel = new System.Windows.Forms.Label();
            alterDateLabel = new System.Windows.Forms.Label();
            createUserLabel = new System.Windows.Forms.Label();
            createDateLabel = new System.Windows.Forms.Label();
            isAddLabel = new System.Windows.Forms.Label();
            isDeleteLabel = new System.Windows.Forms.Label();
            isEditLabel = new System.Windows.Forms.Label();
            isAssignLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            userCodeLabel = new System.Windows.Forms.Label();
            roleCodeLabel = new System.Windows.Forms.Label();
            aPPNameLabel = new System.Windows.Forms.Label();
            activityNameLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterUserTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createUserTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAddCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isDeleteCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isEditCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAssignCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.userCodeButtonEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.roleCodeButtonEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.aPPNameLookUpEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.activityNameLookUpEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_AppRightInfo);
            // 
            // alterUserLabel
            // 
            alterUserLabel.AutoSize = true;
            alterUserLabel.Location = new System.Drawing.Point(340, 214);
            alterUserLabel.Name = "alterUserLabel";
            alterUserLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(alterUserLabel, null);
            alterUserLabel.TabIndex = 8;
            alterUserLabel.Text = "Alter User:";
            // 
            // alterDateLabel
            // 
            alterDateLabel.AutoSize = true;
            alterDateLabel.Location = new System.Drawing.Point(340, 247);
            alterDateLabel.Name = "alterDateLabel";
            alterDateLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(alterDateLabel, null);
            alterDateLabel.TabIndex = 10;
            alterDateLabel.Text = "Alter Date:";
            // 
            // createUserLabel
            // 
            createUserLabel.AutoSize = true;
            createUserLabel.Location = new System.Drawing.Point(74, 214);
            createUserLabel.Name = "createUserLabel";
            createUserLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(createUserLabel, null);
            createUserLabel.TabIndex = 12;
            createUserLabel.Text = "Create User:";
            // 
            // createDateLabel
            // 
            createDateLabel.AutoSize = true;
            createDateLabel.Location = new System.Drawing.Point(74, 247);
            createDateLabel.Name = "createDateLabel";
            createDateLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(createDateLabel, null);
            createDateLabel.TabIndex = 14;
            createDateLabel.Text = "Create Date:";
            // 
            // isAddLabel
            // 
            isAddLabel.AutoSize = true;
            isAddLabel.Location = new System.Drawing.Point(364, 65);
            isAddLabel.Name = "isAddLabel";
            isAddLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(isAddLabel, null);
            isAddLabel.TabIndex = 16;
            isAddLabel.Text = "Is Add:";
            // 
            // isDeleteLabel
            // 
            isDeleteLabel.AutoSize = true;
            isDeleteLabel.Location = new System.Drawing.Point(346, 95);
            isDeleteLabel.Name = "isDeleteLabel";
            isDeleteLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(isDeleteLabel, null);
            isDeleteLabel.TabIndex = 18;
            isDeleteLabel.Text = "Is Delete:";
            // 
            // isEditLabel
            // 
            isEditLabel.AutoSize = true;
            isEditLabel.Location = new System.Drawing.Point(358, 129);
            isEditLabel.Name = "isEditLabel";
            isEditLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(isEditLabel, null);
            isEditLabel.TabIndex = 20;
            isEditLabel.Text = "Is Edit:";
            // 
            // isAssignLabel
            // 
            isAssignLabel.AutoSize = true;
            isAssignLabel.Location = new System.Drawing.Point(346, 159);
            isAssignLabel.Name = "isAssignLabel";
            isAssignLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(isAssignLabel, null);
            isAssignLabel.TabIndex = 22;
            isAssignLabel.Text = "Is Assign:";
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(644, 209);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 28;
            remarkLabel.Text = "Remark:";
            // 
            // userCodeLabel
            // 
            userCodeLabel.AutoSize = true;
            userCodeLabel.Location = new System.Drawing.Point(86, 129);
            userCodeLabel.Name = "userCodeLabel";
            userCodeLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(userCodeLabel, null);
            userCodeLabel.TabIndex = 29;
            userCodeLabel.Text = "User Code:";
            // 
            // roleCodeLabel
            // 
            roleCodeLabel.AutoSize = true;
            roleCodeLabel.Location = new System.Drawing.Point(86, 159);
            roleCodeLabel.Name = "roleCodeLabel";
            roleCodeLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(roleCodeLabel, null);
            roleCodeLabel.TabIndex = 30;
            roleCodeLabel.Text = "Role Code:";
            // 
            // aPPNameLabel
            // 
            aPPNameLabel.AutoSize = true;
            aPPNameLabel.Location = new System.Drawing.Point(98, 65);
            aPPNameLabel.Name = "aPPNameLabel";
            aPPNameLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(aPPNameLabel, null);
            aPPNameLabel.TabIndex = 31;
            aPPNameLabel.Text = "APPName:";
            // 
            // activityNameLabel
            // 
            activityNameLabel.AutoSize = true;
            activityNameLabel.Location = new System.Drawing.Point(62, 95);
            activityNameLabel.Name = "activityNameLabel";
            activityNameLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(activityNameLabel, null);
            activityNameLabel.TabIndex = 32;
            activityNameLabel.Text = "Activity Name:";
            // 
            // alterUserTextEdit
            // 
            this.alterUserTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AlterUser", true));
            this.alterUserTextEdit.Location = new System.Drawing.Point(417, 210);
            this.alterUserTextEdit.Name = "alterUserTextEdit";
            this.alterUserTextEdit.Size = new System.Drawing.Size(130, 21);
            this.alterUserTextEdit.TabIndex = 9;
            // 
            // alterDateDateEdit
            // 
            this.alterDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AlterDate", true));
            this.alterDateDateEdit.EditValue = null;
            this.alterDateDateEdit.Location = new System.Drawing.Point(417, 243);
            this.alterDateDateEdit.Name = "alterDateDateEdit";
            this.alterDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.alterDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.alterDateDateEdit.Size = new System.Drawing.Size(130, 21);
            this.alterDateDateEdit.TabIndex = 11;
            // 
            // createUserTextEdit
            // 
            this.createUserTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateUser", true));
            this.createUserTextEdit.Location = new System.Drawing.Point(157, 210);
            this.createUserTextEdit.Name = "createUserTextEdit";
            this.createUserTextEdit.Size = new System.Drawing.Size(136, 21);
            this.createUserTextEdit.TabIndex = 13;
            // 
            // createDateDateEdit
            // 
            this.createDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateDate", true));
            this.createDateDateEdit.EditValue = null;
            this.createDateDateEdit.Location = new System.Drawing.Point(157, 243);
            this.createDateDateEdit.Name = "createDateDateEdit";
            this.createDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.createDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.createDateDateEdit.Size = new System.Drawing.Size(136, 21);
            this.createDateDateEdit.TabIndex = 15;
            // 
            // isAddCheckEdit
            // 
            this.isAddCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsAdd", true));
            this.isAddCheckEdit.Location = new System.Drawing.Point(417, 62);
            this.isAddCheckEdit.Name = "isAddCheckEdit";
            this.isAddCheckEdit.Properties.Caption = "";
            this.isAddCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isAddCheckEdit.TabIndex = 17;
            // 
            // isDeleteCheckEdit
            // 
            this.isDeleteCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsDelete", true));
            this.isDeleteCheckEdit.Location = new System.Drawing.Point(417, 92);
            this.isDeleteCheckEdit.Name = "isDeleteCheckEdit";
            this.isDeleteCheckEdit.Properties.Caption = "";
            this.isDeleteCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isDeleteCheckEdit.TabIndex = 19;
            // 
            // isEditCheckEdit
            // 
            this.isEditCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsEdit", true));
            this.isEditCheckEdit.Location = new System.Drawing.Point(417, 126);
            this.isEditCheckEdit.Name = "isEditCheckEdit";
            this.isEditCheckEdit.Properties.Caption = "";
            this.isEditCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isEditCheckEdit.TabIndex = 21;
            // 
            // isAssignCheckEdit
            // 
            this.isAssignCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsAssign", true));
            this.isAssignCheckEdit.Location = new System.Drawing.Point(417, 156);
            this.isAssignCheckEdit.Name = "isAssignCheckEdit";
            this.isAssignCheckEdit.Properties.Caption = "";
            this.isAssignCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isAssignCheckEdit.TabIndex = 23;
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(697, 206);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(146, 53);
            this.remarkMemoEdit.TabIndex = 29;
            // 
            // userCodeButtonEdit
            // 
            this.userCodeButtonEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UserCode", true));
            this.userCodeButtonEdit.Location = new System.Drawing.Point(157, 125);
            this.userCodeButtonEdit.Name = "userCodeButtonEdit";
            this.userCodeButtonEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.userCodeButtonEdit.Size = new System.Drawing.Size(136, 21);
            this.userCodeButtonEdit.TabIndex = 30;
            // 
            // roleCodeButtonEdit
            // 
            this.roleCodeButtonEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RoleCode", true));
            this.roleCodeButtonEdit.Location = new System.Drawing.Point(157, 155);
            this.roleCodeButtonEdit.Name = "roleCodeButtonEdit";
            this.roleCodeButtonEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.roleCodeButtonEdit.Size = new System.Drawing.Size(136, 21);
            this.roleCodeButtonEdit.TabIndex = 31;
            this.roleCodeButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.roleCodeButtonEdit_ButtonClick);
            // 
            // aPPNameLookUpEdit
            // 
            this.aPPNameLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "APPName", true));
            this.aPPNameLookUpEdit.Location = new System.Drawing.Point(157, 61);
            this.aPPNameLookUpEdit.Name = "aPPNameLookUpEdit";
            this.aPPNameLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.aPPNameLookUpEdit.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("AppName", "App Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.aPPNameLookUpEdit.Properties.NullText = "";
            this.aPPNameLookUpEdit.Size = new System.Drawing.Size(136, 21);
            this.aPPNameLookUpEdit.TabIndex = 32;
            this.aPPNameLookUpEdit.EditValueChanged += new System.EventHandler(this.aPPNameLookUpEdit_EditValueChanged);
            // 
            // activityNameLookUpEdit
            // 
            this.activityNameLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ActivityName", true));
            this.activityNameLookUpEdit.Location = new System.Drawing.Point(157, 91);
            this.activityNameLookUpEdit.Name = "activityNameLookUpEdit";
            this.activityNameLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.activityNameLookUpEdit.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("AppName", "App Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ActivityName", "Activity Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.activityNameLookUpEdit.Properties.NullText = "";
            this.activityNameLookUpEdit.Size = new System.Drawing.Size(136, 21);
            this.activityNameLookUpEdit.TabIndex = 33;
            // 
            // AppRightInfoDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(activityNameLabel);
            this.Controls.Add(this.activityNameLookUpEdit);
            this.Controls.Add(aPPNameLabel);
            this.Controls.Add(this.aPPNameLookUpEdit);
            this.Controls.Add(roleCodeLabel);
            this.Controls.Add(this.roleCodeButtonEdit);
            this.Controls.Add(userCodeLabel);
            this.Controls.Add(this.userCodeButtonEdit);
            this.Controls.Add(remarkLabel);
            this.Controls.Add(this.remarkMemoEdit);
            this.Controls.Add(isAssignLabel);
            this.Controls.Add(this.isAssignCheckEdit);
            this.Controls.Add(isEditLabel);
            this.Controls.Add(this.isEditCheckEdit);
            this.Controls.Add(isDeleteLabel);
            this.Controls.Add(this.isDeleteCheckEdit);
            this.Controls.Add(isAddLabel);
            this.Controls.Add(this.isAddCheckEdit);
            this.Controls.Add(createDateLabel);
            this.Controls.Add(this.createDateDateEdit);
            this.Controls.Add(createUserLabel);
            this.Controls.Add(this.createUserTextEdit);
            this.Controls.Add(alterDateLabel);
            this.Controls.Add(this.alterDateDateEdit);
            this.Controls.Add(alterUserLabel);
            this.Controls.Add(this.alterUserTextEdit);
            this.Name = "AppRightInfoDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.AppRightInfoDetailForm_Load);
            this.Controls.SetChildIndex(this.alterUserTextEdit, 0);
            this.Controls.SetChildIndex(alterUserLabel, 0);
            this.Controls.SetChildIndex(this.alterDateDateEdit, 0);
            this.Controls.SetChildIndex(alterDateLabel, 0);
            this.Controls.SetChildIndex(this.createUserTextEdit, 0);
            this.Controls.SetChildIndex(createUserLabel, 0);
            this.Controls.SetChildIndex(this.createDateDateEdit, 0);
            this.Controls.SetChildIndex(createDateLabel, 0);
            this.Controls.SetChildIndex(this.isAddCheckEdit, 0);
            this.Controls.SetChildIndex(isAddLabel, 0);
            this.Controls.SetChildIndex(this.isDeleteCheckEdit, 0);
            this.Controls.SetChildIndex(isDeleteLabel, 0);
            this.Controls.SetChildIndex(this.isEditCheckEdit, 0);
            this.Controls.SetChildIndex(isEditLabel, 0);
            this.Controls.SetChildIndex(this.isAssignCheckEdit, 0);
            this.Controls.SetChildIndex(isAssignLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoEdit, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            this.Controls.SetChildIndex(this.userCodeButtonEdit, 0);
            this.Controls.SetChildIndex(userCodeLabel, 0);
            this.Controls.SetChildIndex(this.roleCodeButtonEdit, 0);
            this.Controls.SetChildIndex(roleCodeLabel, 0);
            this.Controls.SetChildIndex(this.aPPNameLookUpEdit, 0);
            this.Controls.SetChildIndex(aPPNameLabel, 0);
            this.Controls.SetChildIndex(this.activityNameLookUpEdit, 0);
            this.Controls.SetChildIndex(activityNameLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterUserTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createUserTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAddCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isDeleteCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isEditCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAssignCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.userCodeButtonEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.roleCodeButtonEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.aPPNameLookUpEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.activityNameLookUpEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit alterUserTextEdit;
        private DevExpress.XtraEditors.DateEdit alterDateDateEdit;
        private DevExpress.XtraEditors.TextEdit createUserTextEdit;
        private DevExpress.XtraEditors.DateEdit createDateDateEdit;
        private DevExpress.XtraEditors.CheckEdit isAddCheckEdit;
        private DevExpress.XtraEditors.CheckEdit isDeleteCheckEdit;
        private DevExpress.XtraEditors.CheckEdit isEditCheckEdit;
        private DevExpress.XtraEditors.CheckEdit isAssignCheckEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
        private DevExpress.XtraEditors.ButtonEdit userCodeButtonEdit;
        private DevExpress.XtraEditors.ButtonEdit roleCodeButtonEdit;
        private DevExpress.XtraEditors.LookUpEdit aPPNameLookUpEdit;
        private DevExpress.XtraEditors.LookUpEdit activityNameLookUpEdit;
    }
}
