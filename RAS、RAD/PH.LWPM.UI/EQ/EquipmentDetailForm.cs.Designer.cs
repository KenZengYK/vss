namespace PH.LWPM.UI.EQ
{
    partial class EquipmentDetailForm
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
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.txtItemCode = new DevExpress.XtraEditors.TextEdit();
            this.txtUserDept = new DevExpress.XtraEditors.TextEdit();
            this.txtItem_CN = new DevExpress.XtraEditors.TextEdit();
            this.txtItem_EN = new DevExpress.XtraEditors.TextEdit();
            this.txtItemCodeVendor = new DevExpress.XtraEditors.TextEdit();
            this.txtBrand = new DevExpress.XtraEditors.TextEdit();
            this.txtSpec = new DevExpress.XtraEditors.TextEdit();
            this.txtHSCode = new DevExpress.XtraEditors.TextEdit();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.edtEQGroup = new DevExpress.XtraEditors.LookUpEdit();
            this.edtItemLevel = new DevExpress.XtraEditors.LookUpEdit();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.edtToolsContainerCode = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtItemCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUserDept.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtItem_CN.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtItem_EN.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtItemCodeVendor.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBrand.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSpec.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtHSCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtEQGroup.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtItemLevel.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtToolsContainerCode.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.ItemTool);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(105, 60);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 4;
            this.label1.Text = "Seq NO.";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(99, 88);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 6;
            this.label2.Text = "EQ Group";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(51, 120);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.label3, null);
            this.label3.TabIndex = 8;
            this.label3.Text = "Users\' Dept Code";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(69, 148);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.label4, null);
            this.label4.TabIndex = 10;
            this.label4.Text = "Item desc. CN";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(69, 177);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.label5, null);
            this.label5.TabIndex = 12;
            this.label5.Text = "Item desc. EN";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(123, 259);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label6, null);
            this.label6.TabIndex = 14;
            this.label6.Text = "Spec";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(51, 287);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.label7, null);
            this.label7.TabIndex = 16;
            this.label7.Text = "Item Code Vendor";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(117, 319);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.label8, null);
            this.label8.TabIndex = 18;
            this.label8.Text = "Brand";
            // 
            // txtItemCode
            // 
            this.txtItemCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ItemCode", true));
            this.txtItemCode.Enabled = false;
            this.txtItemCode.Location = new System.Drawing.Point(164, 56);
            this.txtItemCode.Name = "txtItemCode";
            this.txtItemCode.Size = new System.Drawing.Size(279, 21);
            this.txtItemCode.TabIndex = 20;
            // 
            // txtUserDept
            // 
            this.txtUserDept.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UserDept", true));
            this.txtUserDept.Enabled = false;
            this.txtUserDept.Location = new System.Drawing.Point(164, 117);
            this.txtUserDept.Name = "txtUserDept";
            this.txtUserDept.Size = new System.Drawing.Size(279, 21);
            this.txtUserDept.TabIndex = 22;
            // 
            // txtItem_CN
            // 
            this.txtItem_CN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Item_CN", true));
            this.txtItem_CN.Enabled = false;
            this.txtItem_CN.Location = new System.Drawing.Point(164, 146);
            this.txtItem_CN.Name = "txtItem_CN";
            this.txtItem_CN.Size = new System.Drawing.Size(279, 21);
            this.txtItem_CN.TabIndex = 23;
            // 
            // txtItem_EN
            // 
            this.txtItem_EN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Item_EN", true));
            this.txtItem_EN.Enabled = false;
            this.txtItem_EN.Location = new System.Drawing.Point(164, 174);
            this.txtItem_EN.Name = "txtItem_EN";
            this.txtItem_EN.Size = new System.Drawing.Size(279, 21);
            this.txtItem_EN.TabIndex = 24;
            // 
            // txtItemCodeVendor
            // 
            this.txtItemCodeVendor.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ItemCodeVendor", true));
            this.txtItemCodeVendor.Enabled = false;
            this.txtItemCodeVendor.Location = new System.Drawing.Point(164, 284);
            this.txtItemCodeVendor.Name = "txtItemCodeVendor";
            this.txtItemCodeVendor.Size = new System.Drawing.Size(279, 21);
            this.txtItemCodeVendor.TabIndex = 25;
            // 
            // txtBrand
            // 
            this.txtBrand.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Brand", true));
            this.txtBrand.Enabled = false;
            this.txtBrand.Location = new System.Drawing.Point(164, 316);
            this.txtBrand.Name = "txtBrand";
            this.txtBrand.Size = new System.Drawing.Size(279, 21);
            this.txtBrand.TabIndex = 26;
            // 
            // txtSpec
            // 
            this.txtSpec.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Spec", true));
            this.txtSpec.Enabled = false;
            this.txtSpec.Location = new System.Drawing.Point(164, 257);
            this.txtSpec.Name = "txtSpec";
            this.txtSpec.Size = new System.Drawing.Size(279, 21);
            this.txtSpec.TabIndex = 27;
            // 
            // txtHSCode
            // 
            this.txtHSCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSCode", true));
            this.txtHSCode.Enabled = false;
            this.txtHSCode.Location = new System.Drawing.Point(164, 348);
            this.txtHSCode.Name = "txtHSCode";
            this.txtHSCode.Size = new System.Drawing.Size(279, 21);
            this.txtHSCode.TabIndex = 29;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(105, 353);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.label9, null);
            this.label9.TabIndex = 28;
            this.label9.Text = "HS Code";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(87, 381);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.label10, null);
            this.label10.TabIndex = 30;
            this.label10.Text = "Unit Price";
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Price", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Location = new System.Drawing.Point(164, 378);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Size = new System.Drawing.Size(127, 21);
            this.spinEdit1.TabIndex = 31;
            // 
            // edtEQGroup
            // 
            this.edtEQGroup.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EQGroupCode", true));
            this.edtEQGroup.Location = new System.Drawing.Point(164, 86);
            this.edtEQGroup.Name = "edtEQGroup";
            this.edtEQGroup.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtEQGroup.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Lang", "Seq", 50),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Descripton(En)", 200),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Descripton(Local)", 200)});
            this.edtEQGroup.Properties.DropDownRows = 12;
            this.edtEQGroup.Properties.NullText = "";
            this.edtEQGroup.Properties.PopupWidth = 450;
            this.edtEQGroup.Size = new System.Drawing.Size(279, 21);
            this.edtEQGroup.TabIndex = 32;
            // 
            // edtItemLevel
            // 
            this.edtItemLevel.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ItemLevelCode", true));
            this.edtItemLevel.Location = new System.Drawing.Point(164, 202);
            this.edtItemLevel.Name = "edtItemLevel";
            this.edtItemLevel.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtItemLevel.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Code", "Seq", 50),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Name", 200)});
            this.edtItemLevel.Properties.NullText = "";
            this.edtItemLevel.Size = new System.Drawing.Size(279, 21);
            this.edtItemLevel.TabIndex = 34;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(87, 205);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.label11, null);
            this.label11.TabIndex = 33;
            this.label11.Text = "Item Level";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(57, 232);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.label12, null);
            this.label12.TabIndex = 35;
            this.label12.Text = "Tools Container";
            // 
            // edtToolsContainerCode
            // 
            this.edtToolsContainerCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ToolsContainerCode", true));
            this.edtToolsContainerCode.Location = new System.Drawing.Point(164, 231);
            this.edtToolsContainerCode.Name = "edtToolsContainerCode";
            this.edtToolsContainerCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtToolsContainerCode.Size = new System.Drawing.Size(279, 21);
            this.edtToolsContainerCode.TabIndex = 36;
            // 
            // EquipmentDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.edtToolsContainerCode);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.edtItemLevel);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.edtEQGroup);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.txtHSCode);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.txtSpec);
            this.Controls.Add(this.txtBrand);
            this.Controls.Add(this.txtItemCodeVendor);
            this.Controls.Add(this.txtItem_EN);
            this.Controls.Add(this.txtItem_CN);
            this.Controls.Add(this.txtUserDept);
            this.Controls.Add(this.txtItemCode);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "EquipmentDetailForm";
            this.Size = new System.Drawing.Size(556, 441);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.label2, 0);
            this.Controls.SetChildIndex(this.label3, 0);
            this.Controls.SetChildIndex(this.label4, 0);
            this.Controls.SetChildIndex(this.label5, 0);
            this.Controls.SetChildIndex(this.label6, 0);
            this.Controls.SetChildIndex(this.label7, 0);
            this.Controls.SetChildIndex(this.label8, 0);
            this.Controls.SetChildIndex(this.txtItemCode, 0);
            this.Controls.SetChildIndex(this.txtUserDept, 0);
            this.Controls.SetChildIndex(this.txtItem_CN, 0);
            this.Controls.SetChildIndex(this.txtItem_EN, 0);
            this.Controls.SetChildIndex(this.txtItemCodeVendor, 0);
            this.Controls.SetChildIndex(this.txtBrand, 0);
            this.Controls.SetChildIndex(this.txtSpec, 0);
            this.Controls.SetChildIndex(this.label9, 0);
            this.Controls.SetChildIndex(this.txtHSCode, 0);
            this.Controls.SetChildIndex(this.label10, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(this.edtEQGroup, 0);
            this.Controls.SetChildIndex(this.label11, 0);
            this.Controls.SetChildIndex(this.edtItemLevel, 0);
            this.Controls.SetChildIndex(this.label12, 0);
            this.Controls.SetChildIndex(this.edtToolsContainerCode, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtItemCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUserDept.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtItem_CN.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtItem_EN.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtItemCodeVendor.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBrand.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSpec.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtHSCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtEQGroup.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtItemLevel.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtToolsContainerCode.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private DevExpress.XtraEditors.TextEdit txtItemCode;
        private DevExpress.XtraEditors.TextEdit txtUserDept;
        private DevExpress.XtraEditors.TextEdit txtItem_CN;
        private DevExpress.XtraEditors.TextEdit txtItem_EN;
        private DevExpress.XtraEditors.TextEdit txtItemCodeVendor;
        private DevExpress.XtraEditors.TextEdit txtBrand;
        private DevExpress.XtraEditors.TextEdit txtSpec;
        private DevExpress.XtraEditors.TextEdit txtHSCode;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
        private DevExpress.XtraEditors.LookUpEdit edtEQGroup;
        private DevExpress.XtraEditors.LookUpEdit edtItemLevel;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private DevExpress.XtraEditors.ComboBoxEdit edtToolsContainerCode;
    }
}
