namespace PH.LineBalanceII.UI.BondingSpect
{
    partial class McStyleDetailForm
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
            System.Windows.Forms.Label mcStyleNoLabel;
            System.Windows.Forms.Label mcNameLabel;
            System.Windows.Forms.Label createByLabel;
            System.Windows.Forms.Label createTimeLabel;
            System.Windows.Forms.Label updateByLabel;
            System.Windows.Forms.Label updateTimeLabel;
            System.Windows.Forms.Label typeNoLabel;
            System.Windows.Forms.Label typeNoLabel1;
            System.Windows.Forms.Label funcDescLabel;
            this.mcStyleNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.mcNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.edtCreateBy = new DevExpress.XtraEditors.TextEdit();
            this.deCreateTime = new DevExpress.XtraEditors.DateEdit();
            this.edtUpdateBy = new DevExpress.XtraEditors.TextEdit();
            this.deUpdateTime = new DevExpress.XtraEditors.DateEdit();
            this.lueSeq = new DevExpress.XtraEditors.LookUpEdit();
            this.lueClass = new DevExpress.XtraEditors.LookUpEdit();
            this.funcDescTextEdit = new DevExpress.XtraEditors.TextEdit();
            mcStyleNoLabel = new System.Windows.Forms.Label();
            mcNameLabel = new System.Windows.Forms.Label();
            createByLabel = new System.Windows.Forms.Label();
            createTimeLabel = new System.Windows.Forms.Label();
            updateByLabel = new System.Windows.Forms.Label();
            updateTimeLabel = new System.Windows.Forms.Label();
            typeNoLabel = new System.Windows.Forms.Label();
            typeNoLabel1 = new System.Windows.Forms.Label();
            funcDescLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mcStyleNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mcNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCreateBy.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deCreateTime.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deCreateTime.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtUpdateBy.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deUpdateTime.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deUpdateTime.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueSeq.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueClass.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.funcDescTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LineBalanceII.BO.BondingMcStyle);
            // 
            // mcStyleNoLabel
            // 
            mcStyleNoLabel.AutoSize = true;
            mcStyleNoLabel.Location = new System.Drawing.Point(103, 129);
            mcStyleNoLabel.Name = "mcStyleNoLabel";
            mcStyleNoLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(mcStyleNoLabel, null);
            mcStyleNoLabel.TabIndex = 4;
            mcStyleNoLabel.Text = "機械型號";
            // 
            // mcNameLabel
            // 
            mcNameLabel.AutoSize = true;
            mcNameLabel.Location = new System.Drawing.Point(103, 166);
            mcNameLabel.Name = "mcNameLabel";
            mcNameLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(mcNameLabel, null);
            mcNameLabel.TabIndex = 6;
            mcNameLabel.Text = "機械名稱";
            // 
            // createByLabel
            // 
            createByLabel.AutoSize = true;
            createByLabel.Location = new System.Drawing.Point(115, 231);
            createByLabel.Name = "createByLabel";
            createByLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(createByLabel, null);
            createByLabel.TabIndex = 8;
            createByLabel.Text = "建立者";
            // 
            // createTimeLabel
            // 
            createTimeLabel.AutoSize = true;
            createTimeLabel.Location = new System.Drawing.Point(318, 237);
            createTimeLabel.Name = "createTimeLabel";
            createTimeLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(createTimeLabel, null);
            createTimeLabel.TabIndex = 10;
            createTimeLabel.Text = "建立時間";
            // 
            // updateByLabel
            // 
            updateByLabel.AutoSize = true;
            updateByLabel.Location = new System.Drawing.Point(115, 267);
            updateByLabel.Name = "updateByLabel";
            updateByLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(updateByLabel, null);
            updateByLabel.TabIndex = 12;
            updateByLabel.Text = "修改者";
            // 
            // updateTimeLabel
            // 
            updateTimeLabel.AutoSize = true;
            updateTimeLabel.Location = new System.Drawing.Point(318, 267);
            updateTimeLabel.Name = "updateTimeLabel";
            updateTimeLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(updateTimeLabel, null);
            updateTimeLabel.TabIndex = 14;
            updateTimeLabel.Text = "修改時間";
            // 
            // typeNoLabel
            // 
            typeNoLabel.AutoSize = true;
            typeNoLabel.Location = new System.Drawing.Point(103, 90);
            typeNoLabel.Name = "typeNoLabel";
            typeNoLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(typeNoLabel, null);
            typeNoLabel.TabIndex = 16;
            typeNoLabel.Text = "机械分類";
            // 
            // typeNoLabel1
            // 
            typeNoLabel1.AutoSize = true;
            typeNoLabel1.Location = new System.Drawing.Point(295, 90);
            typeNoLabel1.Name = "typeNoLabel1";
            typeNoLabel1.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(typeNoLabel1, null);
            typeNoLabel1.TabIndex = 18;
            typeNoLabel1.Text = "分類序號";
            // 
            // mcStyleNoTextEdit
            // 
            this.mcStyleNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "McStyleNo", true));
            this.mcStyleNoTextEdit.Location = new System.Drawing.Point(162, 124);
            this.mcStyleNoTextEdit.Name = "mcStyleNoTextEdit";
            this.mcStyleNoTextEdit.Size = new System.Drawing.Size(364, 21);
            this.mcStyleNoTextEdit.TabIndex = 5;
            // 
            // mcNameTextEdit
            // 
            this.mcNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "McName", true));
            this.mcNameTextEdit.Location = new System.Drawing.Point(162, 161);
            this.mcNameTextEdit.Name = "mcNameTextEdit";
            this.mcNameTextEdit.Size = new System.Drawing.Size(364, 21);
            this.mcNameTextEdit.TabIndex = 7;
            // 
            // edtCreateBy
            // 
            this.edtCreateBy.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateBy", true));
            this.edtCreateBy.Location = new System.Drawing.Point(162, 228);
            this.edtCreateBy.Name = "edtCreateBy";
            this.edtCreateBy.Size = new System.Drawing.Size(100, 21);
            this.edtCreateBy.TabIndex = 9;
            // 
            // deCreateTime
            // 
            this.deCreateTime.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateTime", true));
            this.deCreateTime.EditValue = null;
            this.deCreateTime.Location = new System.Drawing.Point(377, 228);
            this.deCreateTime.Name = "deCreateTime";
            this.deCreateTime.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deCreateTime.Properties.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm:ss";
            this.deCreateTime.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deCreateTime.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deCreateTime.Size = new System.Drawing.Size(149, 21);
            this.deCreateTime.TabIndex = 11;
            // 
            // edtUpdateBy
            // 
            this.edtUpdateBy.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UpdateBy", true));
            this.edtUpdateBy.Location = new System.Drawing.Point(162, 264);
            this.edtUpdateBy.Name = "edtUpdateBy";
            this.edtUpdateBy.Size = new System.Drawing.Size(100, 21);
            this.edtUpdateBy.TabIndex = 13;
            // 
            // deUpdateTime
            // 
            this.deUpdateTime.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UpdateTime", true));
            this.deUpdateTime.EditValue = null;
            this.deUpdateTime.Location = new System.Drawing.Point(377, 262);
            this.deUpdateTime.Name = "deUpdateTime";
            this.deUpdateTime.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deUpdateTime.Properties.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm:ss";
            this.deUpdateTime.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deUpdateTime.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deUpdateTime.Size = new System.Drawing.Size(149, 21);
            this.deUpdateTime.TabIndex = 15;
            // 
            // lueSeq
            // 
            this.lueSeq.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TypeSeq", true));
            this.lueSeq.Location = new System.Drawing.Point(351, 85);
            this.lueSeq.Name = "lueSeq";
            this.lueSeq.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueSeq.Properties.NullText = "";
            this.lueSeq.Size = new System.Drawing.Size(175, 21);
            this.lueSeq.TabIndex = 19;
            // 
            // lueClass
            // 
            this.lueClass.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TypeNo", true));
            this.lueClass.Location = new System.Drawing.Point(162, 87);
            this.lueClass.Name = "lueClass";
            this.lueClass.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueClass.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Classname", "Name", 15)});
            this.lueClass.Properties.NullText = "";
            this.lueClass.Size = new System.Drawing.Size(100, 21);
            this.lueClass.TabIndex = 20;
            this.lueClass.EditValueChanged += new System.EventHandler(this.lueClass_EditValueChanged);
            // 
            // funcDescLabel
            // 
            funcDescLabel.AutoSize = true;
            funcDescLabel.Location = new System.Drawing.Point(91, 198);
            funcDescLabel.Name = "funcDescLabel";
            funcDescLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(funcDescLabel, null);
            funcDescLabel.TabIndex = 20;
            funcDescLabel.Text = "Func Desc:";
            // 
            // funcDescTextEdit
            // 
            this.funcDescTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "FuncDesc", true));
            this.funcDescTextEdit.Location = new System.Drawing.Point(162, 195);
            this.funcDescTextEdit.Name = "funcDescTextEdit";
            this.funcDescTextEdit.Size = new System.Drawing.Size(364, 21);
            this.funcDescTextEdit.TabIndex = 21;
            // 
            // McStyleDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(funcDescLabel);
            this.Controls.Add(this.funcDescTextEdit);
            this.Controls.Add(this.lueClass);
            this.Controls.Add(this.lueSeq);
            this.Controls.Add(typeNoLabel1);
            this.Controls.Add(typeNoLabel);
            this.Controls.Add(updateTimeLabel);
            this.Controls.Add(this.deUpdateTime);
            this.Controls.Add(updateByLabel);
            this.Controls.Add(this.edtUpdateBy);
            this.Controls.Add(createTimeLabel);
            this.Controls.Add(this.deCreateTime);
            this.Controls.Add(createByLabel);
            this.Controls.Add(this.edtCreateBy);
            this.Controls.Add(mcNameLabel);
            this.Controls.Add(this.mcNameTextEdit);
            this.Controls.Add(mcStyleNoLabel);
            this.Controls.Add(this.mcStyleNoTextEdit);
            this.Name = "McStyleDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.mcStyleNoTextEdit, 0);
            this.Controls.SetChildIndex(mcStyleNoLabel, 0);
            this.Controls.SetChildIndex(this.mcNameTextEdit, 0);
            this.Controls.SetChildIndex(mcNameLabel, 0);
            this.Controls.SetChildIndex(this.edtCreateBy, 0);
            this.Controls.SetChildIndex(createByLabel, 0);
            this.Controls.SetChildIndex(this.deCreateTime, 0);
            this.Controls.SetChildIndex(createTimeLabel, 0);
            this.Controls.SetChildIndex(this.edtUpdateBy, 0);
            this.Controls.SetChildIndex(updateByLabel, 0);
            this.Controls.SetChildIndex(this.deUpdateTime, 0);
            this.Controls.SetChildIndex(updateTimeLabel, 0);
            this.Controls.SetChildIndex(typeNoLabel, 0);
            this.Controls.SetChildIndex(typeNoLabel1, 0);
            this.Controls.SetChildIndex(this.lueSeq, 0);
            this.Controls.SetChildIndex(this.lueClass, 0);
            this.Controls.SetChildIndex(this.funcDescTextEdit, 0);
            this.Controls.SetChildIndex(funcDescLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mcStyleNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mcNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCreateBy.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deCreateTime.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deCreateTime.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtUpdateBy.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deUpdateTime.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deUpdateTime.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueSeq.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueClass.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.funcDescTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit mcStyleNoTextEdit;
        private DevExpress.XtraEditors.TextEdit mcNameTextEdit;
        private DevExpress.XtraEditors.TextEdit edtCreateBy;
        private DevExpress.XtraEditors.DateEdit deCreateTime;
        private DevExpress.XtraEditors.TextEdit edtUpdateBy;
        private DevExpress.XtraEditors.DateEdit deUpdateTime;
        private DevExpress.XtraEditors.LookUpEdit lueSeq;
        private DevExpress.XtraEditors.LookUpEdit lueClass;
        private DevExpress.XtraEditors.TextEdit funcDescTextEdit;
    }
}
