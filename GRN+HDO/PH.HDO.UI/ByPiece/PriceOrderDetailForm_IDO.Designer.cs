namespace PH.HDO.UI.ByPiece
{
    partial class PriceOrderDetailForm_IDO
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
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.checkedComboBoxEdit1 = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.lookUpEdit1 = new DevExpress.XtraEditors.LookUpEdit();
            this.label3 = new System.Windows.Forms.Label();
            this.txtPROJECT_NOType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtRemark = new DevExpress.XtraEditors.TextEdit();
            this.comboBox1 = new DevExpress.XtraEditors.TextEdit();
            this.dateTimePicker1 = new DevExpress.XtraEditors.DateEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPROJECT_NOType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRemark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBox1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateTimePicker1.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateTimePicker1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.ByPrice_Order_IDO);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(103, 202);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label7, null);
            this.label7.TabIndex = 114;
            this.label7.Text = "倉管工號";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(104, 132);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.label5, null);
            this.label5.TabIndex = 108;
            this.label5.Text = "工程號";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(103, 166);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 105;
            this.label2.Text = "物料類別";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(104, 100);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 104;
            this.label1.Text = "IDO NO.";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(102, 236);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label6, null);
            this.label6.TabIndex = 117;
            this.label6.Text = "備註";
            // 
            // checkedComboBoxEdit1
            // 
            this.checkedComboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "pgmn", true));
            this.checkedComboBoxEdit1.Location = new System.Drawing.Point(163, 163);
            this.checkedComboBoxEdit1.Name = "checkedComboBoxEdit1";
            this.checkedComboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkedComboBoxEdit1.Size = new System.Drawing.Size(149, 21);
            this.checkedComboBoxEdit1.TabIndex = 500;
            // 
            // lookUpEdit1
            // 
            this.lookUpEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrderID", true));
            this.lookUpEdit1.Location = new System.Drawing.Point(163, 197);
            this.lookUpEdit1.Name = "lookUpEdit1";
            this.lookUpEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit1.Properties.NullText = "";
            this.lookUpEdit1.Size = new System.Drawing.Size(147, 21);
            this.lookUpEdit1.TabIndex = 121;
            this.lookUpEdit1.EditValueChanged += new System.EventHandler(this.lookUpEdit1_EditValueChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(104, 277);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label3, null);
            this.label3.TabIndex = 502;
            this.label3.Text = "日期";
            // 
            // txtPROJECT_NOType
            // 
            this.txtPROJECT_NOType.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "PROJECT_NO", true));
            this.txtPROJECT_NOType.Location = new System.Drawing.Point(163, 129);
            this.txtPROJECT_NOType.Name = "txtPROJECT_NOType";
            this.txtPROJECT_NOType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtPROJECT_NOType.Size = new System.Drawing.Size(147, 21);
            this.txtPROJECT_NOType.TabIndex = 503;
            // 
            // txtRemark
            // 
            this.txtRemark.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Remark", true));
            this.txtRemark.Location = new System.Drawing.Point(163, 233);
            this.txtRemark.Name = "txtRemark";
            this.txtRemark.Size = new System.Drawing.Size(147, 21);
            this.txtRemark.TabIndex = 504;
            // 
            // comboBox1
            // 
            this.comboBox1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "IDO", true));
            this.comboBox1.Location = new System.Drawing.Point(163, 91);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(147, 21);
            this.comboBox1.TabIndex = 505;
            this.comboBox1.Leave += new System.EventHandler(this.comboBox1_Leave_1);
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ISSUED_DATE", true));
            this.dateTimePicker1.EditValue = null;
            this.dateTimePicker1.Location = new System.Drawing.Point(163, 274);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateTimePicker1.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateTimePicker1.Size = new System.Drawing.Size(147, 21);
            this.dateTimePicker1.TabIndex = 506;
            // 
            // PriceOrderDetailForm_IDO
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.txtRemark);
            this.Controls.Add(this.txtPROJECT_NOType);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.lookUpEdit1);
            this.Controls.Add(this.checkedComboBoxEdit1);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "PriceOrderDetailForm_IDO";
            this.Size = new System.Drawing.Size(742, 408);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.label2, 0);
            this.Controls.SetChildIndex(this.label5, 0);
            this.Controls.SetChildIndex(this.label7, 0);
            this.Controls.SetChildIndex(this.label6, 0);
            this.Controls.SetChildIndex(this.checkedComboBoxEdit1, 0);
            this.Controls.SetChildIndex(this.lookUpEdit1, 0);
            this.Controls.SetChildIndex(this.label3, 0);
            this.Controls.SetChildIndex(this.txtPROJECT_NOType, 0);
            this.Controls.SetChildIndex(this.txtRemark, 0);
            this.Controls.SetChildIndex(this.comboBox1, 0);
            this.Controls.SetChildIndex(this.dateTimePicker1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPROJECT_NOType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRemark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBox1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateTimePicker1.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateTimePicker1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label6;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkedComboBoxEdit1;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit1;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.ComboBoxEdit txtPROJECT_NOType;
        private DevExpress.XtraEditors.TextEdit txtRemark;
        private DevExpress.XtraEditors.TextEdit comboBox1;
        private DevExpress.XtraEditors.DateEdit dateTimePicker1;
    }
}
