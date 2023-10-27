namespace PH.HDO.UI
{
    partial class PriceDetialForm
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtStartDate = new DevExpress.XtraEditors.DateEdit();
            this.txtDuedate = new DevExpress.XtraEditors.DateEdit();
            this.txtID = new DevExpress.XtraEditors.TextEdit();
            this.txtPrice = new DevExpress.XtraEditors.TextEdit();
            this.txtEWSAH = new DevExpress.XtraEditors.TextEdit();
            this.label5 = new System.Windows.Forms.Label();
            this.txtEWPrice = new DevExpress.XtraEditors.TextEdit();
            this.label6 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDuedate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDuedate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPrice.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEWSAH.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEWPrice.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.ByPiece_Price);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(161, 81);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(17, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 4;
            this.label1.Text = "ID";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(125, 122);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 6;
            this.label2.Text = "開始日期";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(125, 162);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label3, null);
            this.label3.TabIndex = 8;
            this.label3.Text = "截止日期";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(125, 200);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label4, null);
            this.label4.TabIndex = 10;
            this.label4.Text = "單價基數";
            // 
            // txtStartDate
            // 
            this.txtStartDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "StartDate", true));
            this.txtStartDate.EditValue = null;
            this.txtStartDate.Location = new System.Drawing.Point(184, 119);
            this.txtStartDate.Name = "txtStartDate";
            this.txtStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtStartDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtStartDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtStartDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtStartDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtStartDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtStartDate.Size = new System.Drawing.Size(148, 21);
            this.txtStartDate.TabIndex = 76;
            // 
            // txtDuedate
            // 
            this.txtDuedate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DueDate", true));
            this.txtDuedate.EditValue = null;
            this.txtDuedate.Location = new System.Drawing.Point(184, 159);
            this.txtDuedate.Name = "txtDuedate";
            this.txtDuedate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDuedate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtDuedate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDuedate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtDuedate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDuedate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtDuedate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDuedate.Size = new System.Drawing.Size(148, 21);
            this.txtDuedate.TabIndex = 82;
            // 
            // txtID
            // 
            this.txtID.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ID", true));
            this.txtID.Enabled = false;
            this.txtID.Location = new System.Drawing.Point(184, 76);
            this.txtID.Name = "txtID";
            this.txtID.Size = new System.Drawing.Size(148, 21);
            this.txtID.TabIndex = 83;
            // 
            // txtPrice
            // 
            this.txtPrice.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Price", true));
            this.txtPrice.Enabled = false;
            this.txtPrice.Location = new System.Drawing.Point(184, 195);
            this.txtPrice.Name = "txtPrice";
            this.txtPrice.Size = new System.Drawing.Size(148, 21);
            this.txtPrice.TabIndex = 84;
            // 
            // txtEWSAH
            // 
            this.txtEWSAH.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ELWFilteringMachineSAH", true));
            this.txtEWSAH.Enabled = false;
            this.txtEWSAH.Location = new System.Drawing.Point(184, 231);
            this.txtEWSAH.Name = "txtEWSAH";
            this.txtEWSAH.Size = new System.Drawing.Size(148, 21);
            this.txtEWSAH.TabIndex = 86;
            this.txtEWSAH.Visible = false;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(79, 236);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(99, 12);
            this.PlatetoolTipController.SetSuperTip(this.label5, null);
            this.label5.TabIndex = 85;
            this.label5.Text = "丈巾过预缩机SAH";
            this.label5.Visible = false;
            // 
            // txtEWPrice
            // 
            this.txtEWPrice.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ELWFilteringMachinePrice", true));
            this.txtEWPrice.Enabled = false;
            this.txtEWPrice.Location = new System.Drawing.Point(184, 269);
            this.txtEWPrice.Name = "txtEWPrice";
            this.txtEWPrice.Size = new System.Drawing.Size(148, 21);
            this.txtEWPrice.TabIndex = 88;
            this.txtEWPrice.Visible = false;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(53, 274);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(this.label6, null);
            this.label6.TabIndex = 87;
            this.label6.Text = "丈巾过预缩机單價基數";
            this.label6.Visible = false;
            // 
            // PriceDetialForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtEWPrice);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.txtEWSAH);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtPrice);
            this.Controls.Add(this.txtID);
            this.Controls.Add(this.txtDuedate);
            this.Controls.Add(this.txtStartDate);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "PriceDetialForm";
            this.Size = new System.Drawing.Size(536, 403);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.label2, 0);
            this.Controls.SetChildIndex(this.label3, 0);
            this.Controls.SetChildIndex(this.label4, 0);
            this.Controls.SetChildIndex(this.txtStartDate, 0);
            this.Controls.SetChildIndex(this.txtDuedate, 0);
            this.Controls.SetChildIndex(this.txtID, 0);
            this.Controls.SetChildIndex(this.txtPrice, 0);
            this.Controls.SetChildIndex(this.label5, 0);
            this.Controls.SetChildIndex(this.txtEWSAH, 0);
            this.Controls.SetChildIndex(this.label6, 0);
            this.Controls.SetChildIndex(this.txtEWPrice, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDuedate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDuedate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPrice.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEWSAH.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEWPrice.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private DevExpress.XtraEditors.DateEdit txtStartDate;
        private DevExpress.XtraEditors.DateEdit txtDuedate;
        private DevExpress.XtraEditors.TextEdit txtID;
        private DevExpress.XtraEditors.TextEdit txtPrice;
        private DevExpress.XtraEditors.TextEdit txtEWSAH;
        private System.Windows.Forms.Label label5;
        private DevExpress.XtraEditors.TextEdit txtEWPrice;
        private System.Windows.Forms.Label label6;
    }
}
