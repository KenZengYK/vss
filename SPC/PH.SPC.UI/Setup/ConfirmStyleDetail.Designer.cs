namespace PH.SPC.UI.Setup
{
    partial class ConfirmStyleDetail
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
            System.Windows.Forms.Label customerIdLabel;
            System.Windows.Forms.Label yYMMLabel;
            System.Windows.Forms.Label qtyLabel;
            System.Windows.Forms.Label styleTypeLabel1;
            this.cmbCustomer = new DevExpress.XtraEditors.ComboBoxEdit();
            this.yYMMComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.qtyTextBox = new System.Windows.Forms.TextBox();
            this.cmbStyleType = new DevExpress.XtraEditors.ComboBoxEdit();
            customerIdLabel = new System.Windows.Forms.Label();
            yYMMLabel = new System.Windows.Forms.Label();
            qtyLabel = new System.Windows.Forms.Label();
            styleTypeLabel1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbCustomer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.yYMMComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbStyleType.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.SPC.BO.ConfirmStyle);
            // 
            // customerIdLabel
            // 
            customerIdLabel.AutoSize = true;
            customerIdLabel.Location = new System.Drawing.Point(355, 66);
            customerIdLabel.Name = "customerIdLabel";
            customerIdLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(customerIdLabel, null);
            customerIdLabel.TabIndex = 6;
            customerIdLabel.Text = "Customer :";
            // 
            // yYMMLabel
            // 
            yYMMLabel.AutoSize = true;
            yYMMLabel.Location = new System.Drawing.Point(126, 64);
            yYMMLabel.Name = "yYMMLabel";
            yYMMLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(yYMMLabel, null);
            yYMMLabel.TabIndex = 7;
            yYMMLabel.Text = "YYMM:";
            // 
            // qtyLabel
            // 
            qtyLabel.AutoSize = true;
            qtyLabel.Location = new System.Drawing.Point(355, 119);
            qtyLabel.Name = "qtyLabel";
            qtyLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(qtyLabel, null);
            qtyLabel.TabIndex = 10;
            qtyLabel.Text = "Confirm Qty:";
            // 
            // cmbCustomer
            // 
            this.cmbCustomer.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerId", true));
            this.cmbCustomer.Location = new System.Drawing.Point(438, 63);
            this.cmbCustomer.Name = "cmbCustomer";
            this.cmbCustomer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbCustomer.Size = new System.Drawing.Size(100, 21);
            this.cmbCustomer.TabIndex = 7;
            // 
            // yYMMComboBoxEdit
            // 
            this.yYMMComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "YYMM", true));
            this.yYMMComboBoxEdit.Location = new System.Drawing.Point(176, 61);
            this.yYMMComboBoxEdit.Name = "yYMMComboBoxEdit";
            this.yYMMComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.yYMMComboBoxEdit.Size = new System.Drawing.Size(126, 21);
            this.yYMMComboBoxEdit.TabIndex = 8;
            // 
            // qtyTextBox
            // 
            this.qtyTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Qty", true));
            this.qtyTextBox.Location = new System.Drawing.Point(438, 116);
            this.qtyTextBox.Name = "qtyTextBox";
            this.qtyTextBox.Size = new System.Drawing.Size(100, 21);
            this.PlatetoolTipController.SetSuperTip(this.qtyTextBox, null);
            this.qtyTextBox.TabIndex = 11;
            // 
            // styleTypeLabel1
            // 
            styleTypeLabel1.AutoSize = true;
            styleTypeLabel1.Location = new System.Drawing.Point(99, 125);
            styleTypeLabel1.Name = "styleTypeLabel1";
            styleTypeLabel1.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(styleTypeLabel1, null);
            styleTypeLabel1.TabIndex = 12;
            styleTypeLabel1.Text = "Style Type:";
            // 
            // cmbStyleType
            // 
            this.cmbStyleType.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TypeDesc", true));
            this.cmbStyleType.Location = new System.Drawing.Point(176, 122);
            this.cmbStyleType.Name = "cmbStyleType";
            this.cmbStyleType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbStyleType.Properties.Items.AddRange(new object[] {
            "Bra",
            "Brief",
            "Other"});
            this.cmbStyleType.Size = new System.Drawing.Size(126, 21);
            this.cmbStyleType.TabIndex = 13;
            // 
            // ConfirmStyleDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(styleTypeLabel1);
            this.Controls.Add(this.cmbStyleType);
            this.Controls.Add(qtyLabel);
            this.Controls.Add(this.qtyTextBox);
            this.Controls.Add(yYMMLabel);
            this.Controls.Add(this.yYMMComboBoxEdit);
            this.Controls.Add(customerIdLabel);
            this.Controls.Add(this.cmbCustomer);
            this.Name = "ConfirmStyleDetail";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ConfirmStyleDetail_Load);
            this.Controls.SetChildIndex(this.cmbCustomer, 0);
            this.Controls.SetChildIndex(customerIdLabel, 0);
            this.Controls.SetChildIndex(this.yYMMComboBoxEdit, 0);
            this.Controls.SetChildIndex(yYMMLabel, 0);
            this.Controls.SetChildIndex(this.qtyTextBox, 0);
            this.Controls.SetChildIndex(qtyLabel, 0);
            this.Controls.SetChildIndex(this.cmbStyleType, 0);
            this.Controls.SetChildIndex(styleTypeLabel1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbCustomer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.yYMMComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmbStyleType.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit cmbCustomer;
        private DevExpress.XtraEditors.ComboBoxEdit yYMMComboBoxEdit;
        private System.Windows.Forms.TextBox qtyTextBox;
        private DevExpress.XtraEditors.ComboBoxEdit cmbStyleType;
    }
}
