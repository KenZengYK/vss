namespace PH.MIDc.UI
{
    partial class ColorSizeCupGroupDetailForm
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
            System.Windows.Forms.Label groupCodeLabel;
            System.Windows.Forms.Label groupNameLabel;
            System.Windows.Forms.Label createUserLabel;
            System.Windows.Forms.Label createDateLabel;
            System.Windows.Forms.Label alterUserLabel;
            System.Windows.Forms.Label alterDateLabel;
            System.Windows.Forms.Label Category;
            this.groupNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.createUserTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.createDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.alterUserTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.alterDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.categoryComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.groupCodetextEdit = new DevExpress.XtraEditors.TextEdit();
            groupCodeLabel = new System.Windows.Forms.Label();
            groupNameLabel = new System.Windows.Forms.Label();
            createUserLabel = new System.Windows.Forms.Label();
            createDateLabel = new System.Windows.Forms.Label();
            alterUserLabel = new System.Windows.Forms.Label();
            alterDateLabel = new System.Windows.Forms.Label();
            Category = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createUserTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterUserTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoryComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupCodetextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.ColorSizeCupGroup);
            // 
            // groupCodeLabel
            // 
            groupCodeLabel.AutoSize = true;
            groupCodeLabel.Location = new System.Drawing.Point(169, 85);
            groupCodeLabel.Name = "groupCodeLabel";
            groupCodeLabel.Size = new System.Drawing.Size(66, 12);
            this.PlatetoolTipController.SetSuperTip(groupCodeLabel, null);
            groupCodeLabel.TabIndex = 4;
            groupCodeLabel.Text = "Group Code:";
            // 
            // groupNameLabel
            // 
            groupNameLabel.AutoSize = true;
            groupNameLabel.Location = new System.Drawing.Point(167, 136);
            groupNameLabel.Name = "groupNameLabel";
            groupNameLabel.Size = new System.Drawing.Size(68, 12);
            this.PlatetoolTipController.SetSuperTip(groupNameLabel, null);
            groupNameLabel.TabIndex = 6;
            groupNameLabel.Text = "Group Name:";
            // 
            // createUserLabel
            // 
            createUserLabel.AutoSize = true;
            createUserLabel.Location = new System.Drawing.Point(173, 215);
            createUserLabel.Name = "createUserLabel";
            createUserLabel.Size = new System.Drawing.Size(62, 12);
            this.PlatetoolTipController.SetSuperTip(createUserLabel, null);
            createUserLabel.TabIndex = 8;
            createUserLabel.Text = "Create User:";
            // 
            // createDateLabel
            // 
            createDateLabel.AutoSize = true;
            createDateLabel.Location = new System.Drawing.Point(173, 256);
            createDateLabel.Name = "createDateLabel";
            createDateLabel.Size = new System.Drawing.Size(62, 12);
            this.PlatetoolTipController.SetSuperTip(createDateLabel, null);
            createDateLabel.TabIndex = 10;
            createDateLabel.Text = "Create Date:";
            // 
            // alterUserLabel
            // 
            alterUserLabel.AutoSize = true;
            alterUserLabel.Location = new System.Drawing.Point(180, 297);
            alterUserLabel.Name = "alterUserLabel";
            alterUserLabel.Size = new System.Drawing.Size(55, 12);
            this.PlatetoolTipController.SetSuperTip(alterUserLabel, null);
            alterUserLabel.TabIndex = 12;
            alterUserLabel.Text = "Alter User:";
            // 
            // alterDateLabel
            // 
            alterDateLabel.AutoSize = true;
            alterDateLabel.Location = new System.Drawing.Point(180, 342);
            alterDateLabel.Name = "alterDateLabel";
            alterDateLabel.Size = new System.Drawing.Size(55, 12);
            this.PlatetoolTipController.SetSuperTip(alterDateLabel, null);
            alterDateLabel.TabIndex = 14;
            alterDateLabel.Text = "Alter Date:";
            // 
            // Category
            // 
            Category.AutoSize = true;
            Category.Location = new System.Drawing.Point(173, 178);
            Category.Name = "Category";
            Category.Size = new System.Drawing.Size(51, 12);
            this.PlatetoolTipController.SetSuperTip(Category, null);
            Category.TabIndex = 8;
            Category.Text = "Category:";
            // 
            // groupNameTextEdit
            // 
            this.groupNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "GroupName", true));
            this.groupNameTextEdit.Location = new System.Drawing.Point(241, 133);
            this.groupNameTextEdit.Name = "groupNameTextEdit";
            this.groupNameTextEdit.Size = new System.Drawing.Size(264, 21);
            this.groupNameTextEdit.TabIndex = 7;
            // 
            // createUserTextEdit
            // 
            this.createUserTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateUser", true));
            this.createUserTextEdit.Location = new System.Drawing.Point(241, 214);
            this.createUserTextEdit.Name = "createUserTextEdit";
            this.createUserTextEdit.Size = new System.Drawing.Size(129, 21);
            this.createUserTextEdit.TabIndex = 9;
            // 
            // createDateDateEdit
            // 
            this.createDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateDate", true));
            this.createDateDateEdit.EditValue = null;
            this.createDateDateEdit.Location = new System.Drawing.Point(241, 253);
            this.createDateDateEdit.Name = "createDateDateEdit";
            this.createDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.createDateDateEdit.Size = new System.Drawing.Size(129, 21);
            this.createDateDateEdit.TabIndex = 11;
            // 
            // alterUserTextEdit
            // 
            this.alterUserTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AlterUser", true));
            this.alterUserTextEdit.Location = new System.Drawing.Point(241, 294);
            this.alterUserTextEdit.Name = "alterUserTextEdit";
            this.alterUserTextEdit.Size = new System.Drawing.Size(129, 21);
            this.alterUserTextEdit.TabIndex = 13;
            // 
            // alterDateDateEdit
            // 
            this.alterDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AlterDate", true));
            this.alterDateDateEdit.EditValue = null;
            this.alterDateDateEdit.Location = new System.Drawing.Point(241, 339);
            this.alterDateDateEdit.Name = "alterDateDateEdit";
            this.alterDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.alterDateDateEdit.Size = new System.Drawing.Size(129, 21);
            this.alterDateDateEdit.TabIndex = 15;
            // 
            // categoryComboBoxEdit
            // 
            this.categoryComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Category", true));
            this.categoryComboBoxEdit.Location = new System.Drawing.Point(241, 175);
            this.categoryComboBoxEdit.Name = "categoryComboBoxEdit";
            this.categoryComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.categoryComboBoxEdit.Size = new System.Drawing.Size(129, 21);
            this.categoryComboBoxEdit.TabIndex = 16;
            // 
            // groupCodetextEdit
            // 
            this.groupCodetextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "GroupCode", true));
            this.groupCodetextEdit.Location = new System.Drawing.Point(241, 82);
            this.groupCodetextEdit.Name = "groupCodetextEdit";
            this.groupCodetextEdit.Size = new System.Drawing.Size(100, 21);
            this.groupCodetextEdit.TabIndex = 17;
            // 
            // ColorSizeCupGroupDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupCodetextEdit);
            this.Controls.Add(this.categoryComboBoxEdit);
            this.Controls.Add(alterDateLabel);
            this.Controls.Add(this.alterDateDateEdit);
            this.Controls.Add(alterUserLabel);
            this.Controls.Add(this.alterUserTextEdit);
            this.Controls.Add(createDateLabel);
            this.Controls.Add(this.createDateDateEdit);
            this.Controls.Add(Category);
            this.Controls.Add(createUserLabel);
            this.Controls.Add(this.createUserTextEdit);
            this.Controls.Add(groupNameLabel);
            this.Controls.Add(this.groupNameTextEdit);
            this.Controls.Add(groupCodeLabel);
            this.Name = "ColorSizeCupGroupDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ColorSizeCupGroupDetailForm_Load);
            this.Controls.SetChildIndex(groupCodeLabel, 0);
            this.Controls.SetChildIndex(this.groupNameTextEdit, 0);
            this.Controls.SetChildIndex(groupNameLabel, 0);
            this.Controls.SetChildIndex(this.createUserTextEdit, 0);
            this.Controls.SetChildIndex(createUserLabel, 0);
            this.Controls.SetChildIndex(Category, 0);
            this.Controls.SetChildIndex(this.createDateDateEdit, 0);
            this.Controls.SetChildIndex(createDateLabel, 0);
            this.Controls.SetChildIndex(this.alterUserTextEdit, 0);
            this.Controls.SetChildIndex(alterUserLabel, 0);
            this.Controls.SetChildIndex(this.alterDateDateEdit, 0);
            this.Controls.SetChildIndex(alterDateLabel, 0);
            this.Controls.SetChildIndex(this.categoryComboBoxEdit, 0);
            this.Controls.SetChildIndex(this.groupCodetextEdit, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createUserTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterUserTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoryComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupCodetextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit groupNameTextEdit;
        private DevExpress.XtraEditors.TextEdit createUserTextEdit;
        private DevExpress.XtraEditors.DateEdit createDateDateEdit;
        private DevExpress.XtraEditors.TextEdit alterUserTextEdit;
        private DevExpress.XtraEditors.DateEdit alterDateDateEdit;
        private DevExpress.XtraEditors.ComboBoxEdit categoryComboBoxEdit;
        private DevExpress.XtraEditors.TextEdit groupCodetextEdit;
    }
}
