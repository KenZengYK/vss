namespace PH.LineBalanceII.UI.Setup
{
    partial class StatuDetailForm
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
            System.Windows.Forms.Label dataNameCNLabel;
            System.Windows.Forms.Label descriptionLabel;
            System.Windows.Forms.Label dataNameLabel;
            System.Windows.Forms.Label dataCodeLabel;
            this.dataNameCNTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.dataNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.dataCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            dataNameCNLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            dataNameLabel = new System.Windows.Forms.Label();
            dataCodeLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameCNTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.Platform.Misc.BO.Misc_DataDictionary);
            // 
            // dataNameCNLabel
            // 
            dataNameCNLabel.Location = new System.Drawing.Point(90, 66);
            dataNameCNLabel.Name = "dataNameCNLabel";
            dataNameCNLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(dataNameCNLabel, null);
            dataNameCNLabel.TabIndex = 36;
            dataNameCNLabel.Text = "Seq No:";
            // 
            // descriptionLabel
            // 
            descriptionLabel.Location = new System.Drawing.Point(18, 155);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 33;
            descriptionLabel.Text = "Description (Local):";
            // 
            // dataNameLabel
            // 
            dataNameLabel.Location = new System.Drawing.Point(36, 125);
            dataNameLabel.Name = "dataNameLabel";
            dataNameLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(dataNameLabel, null);
            dataNameLabel.TabIndex = 31;
            dataNameLabel.Text = "Description (En):";
            // 
            // dataCodeLabel
            // 
            dataCodeLabel.Location = new System.Drawing.Point(108, 93);
            dataCodeLabel.Name = "dataCodeLabel";
            dataCodeLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(dataCodeLabel, null);
            dataCodeLabel.TabIndex = 29;
            dataCodeLabel.Text = "Code:";
            // 
            // dataNameCNTextEdit
            // 
            this.dataNameCNTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataNameCN", true));
            this.dataNameCNTextEdit.Location = new System.Drawing.Point(149, 63);
            this.dataNameCNTextEdit.Name = "dataNameCNTextEdit";
            this.dataNameCNTextEdit.Size = new System.Drawing.Size(305, 21);
            this.dataNameCNTextEdit.TabIndex = 38;
            // 
            // descriptionMemoEdit
            // 
            this.descriptionMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionMemoEdit.Location = new System.Drawing.Point(149, 152);
            this.descriptionMemoEdit.Name = "descriptionMemoEdit";
            this.descriptionMemoEdit.Size = new System.Drawing.Size(305, 108);
            this.descriptionMemoEdit.TabIndex = 34;
            // 
            // dataNameTextEdit
            // 
            this.dataNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataName", true));
            this.dataNameTextEdit.Location = new System.Drawing.Point(149, 122);
            this.dataNameTextEdit.Name = "dataNameTextEdit";
            this.dataNameTextEdit.Size = new System.Drawing.Size(305, 21);
            this.dataNameTextEdit.TabIndex = 32;
            // 
            // dataCodeTextEdit
            // 
            this.dataCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataCode", true));
            this.dataCodeTextEdit.Location = new System.Drawing.Point(149, 90);
            this.dataCodeTextEdit.Name = "dataCodeTextEdit";
            this.dataCodeTextEdit.Size = new System.Drawing.Size(305, 21);
            this.dataCodeTextEdit.TabIndex = 30;
            // 
            // StatuDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(dataNameCNLabel);
            this.Controls.Add(this.dataNameCNTextEdit);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionMemoEdit);
            this.Controls.Add(dataNameLabel);
            this.Controls.Add(this.dataNameTextEdit);
            this.Controls.Add(dataCodeLabel);
            this.Controls.Add(this.dataCodeTextEdit);
            this.Name = "StatuDetailForm";
            this.Size = new System.Drawing.Size(607, 403);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.dataCodeTextEdit, 0);
            this.Controls.SetChildIndex(dataCodeLabel, 0);
            this.Controls.SetChildIndex(this.dataNameTextEdit, 0);
            this.Controls.SetChildIndex(dataNameLabel, 0);
            this.Controls.SetChildIndex(this.descriptionMemoEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            this.Controls.SetChildIndex(this.dataNameCNTextEdit, 0);
            this.Controls.SetChildIndex(dataNameCNLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameCNTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataCodeTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit dataNameCNTextEdit;
        private DevExpress.XtraEditors.MemoEdit descriptionMemoEdit;
        private DevExpress.XtraEditors.TextEdit dataNameTextEdit;
        private DevExpress.XtraEditors.TextEdit dataCodeTextEdit;


    }
}
