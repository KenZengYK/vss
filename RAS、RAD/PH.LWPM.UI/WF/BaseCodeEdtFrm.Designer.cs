namespace PH.LWPM.UI.WF
{
    partial class BaseCodeEdtFrm
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
            System.Windows.Forms.Label langLabel;
            this.lblCode = new System.Windows.Forms.Label();
            this.tbxCode = new System.Windows.Forms.TextBox();
            this.lblNameEn = new System.Windows.Forms.Label();
            this.tbxNameEn = new System.Windows.Forms.TextBox();
            this.lblNameCn = new System.Windows.Forms.Label();
            this.tbxNameCn = new System.Windows.Forms.TextBox();
            this.lblNameBd = new System.Windows.Forms.Label();
            this.tbxNameBd = new System.Windows.Forms.TextBox();
            this.lblBaseType = new System.Windows.Forms.Label();
            this.lueBaseType = new DevExpress.XtraEditors.LookUpEdit();
            this.lblParentCode = new System.Windows.Forms.Label();
            this.tbxParent = new System.Windows.Forms.TextBox();
            this.lblSortID = new System.Windows.Forms.Label();
            this.tbxSeqno = new System.Windows.Forms.TextBox();
            this.lueCountryProvince = new DevExpress.XtraEditors.LookUpEdit();
            this.lblCountryProvince = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.langTextBox = new System.Windows.Forms.TextBox();
            this.lbHSCode = new System.Windows.Forms.Label();
            this.edtHSCode = new DevExpress.XtraEditors.LookUpEdit();
            this.lbDepartment = new System.Windows.Forms.Label();
            this.edtDepartment = new DevExpress.XtraEditors.ButtonEdit();
            this.edtDepartmentRowID = new DevExpress.XtraEditors.LabelControl();
            this.lbDiffDept = new System.Windows.Forms.Label();
            this.edtDiffDept = new DevExpress.XtraEditors.ComboBoxEdit();
            langLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueBaseType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueCountryProvince.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtHSCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDepartment.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDiffDept.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.BaseCode);
            // 
            // langLabel
            // 
            langLabel.AutoSize = true;
            langLabel.Location = new System.Drawing.Point(146, 172);
            langLabel.Name = "langLabel";
            langLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(langLabel, null);
            langLabel.TabIndex = 22;
            langLabel.Text = "Code:";
            // 
            // lblCode
            // 
            this.lblCode.AutoSize = true;
            this.lblCode.Location = new System.Drawing.Point(539, 109);
            this.lblCode.Name = "lblCode";
            this.lblCode.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblCode, null);
            this.lblCode.TabIndex = 4;
            this.lblCode.Text = "Type Code:";
            this.lblCode.Visible = false;
            // 
            // tbxCode
            // 
            this.tbxCode.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Code", true));
            this.tbxCode.Location = new System.Drawing.Point(635, 106);
            this.tbxCode.Name = "tbxCode";
            this.tbxCode.Size = new System.Drawing.Size(144, 21);
            this.PlatetoolTipController.SetSuperTip(this.tbxCode, null);
            this.tbxCode.TabIndex = 5;
            this.tbxCode.Visible = false;
            // 
            // lblNameEn
            // 
            this.lblNameEn.AutoSize = true;
            this.lblNameEn.Location = new System.Drawing.Point(112, 205);
            this.lblNameEn.Name = "lblNameEn";
            this.lblNameEn.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblNameEn, null);
            this.lblNameEn.TabIndex = 6;
            this.lblNameEn.Text = "Description:";
            // 
            // tbxNameEn
            // 
            this.tbxNameEn.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Name", true));
            this.tbxNameEn.Location = new System.Drawing.Point(209, 205);
            this.tbxNameEn.Name = "tbxNameEn";
            this.tbxNameEn.Size = new System.Drawing.Size(340, 21);
            this.PlatetoolTipController.SetSuperTip(this.tbxNameEn, null);
            this.tbxNameEn.TabIndex = 7;
            // 
            // lblNameCn
            // 
            this.lblNameCn.AutoSize = true;
            this.lblNameCn.Location = new System.Drawing.Point(88, 246);
            this.lblNameCn.Name = "lblNameCn";
            this.lblNameCn.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblNameCn, null);
            this.lblNameCn.TabIndex = 8;
            this.lblNameCn.Text = "Description(CN):";
            // 
            // tbxNameCn
            // 
            this.tbxNameCn.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Description", true));
            this.tbxNameCn.Location = new System.Drawing.Point(209, 243);
            this.tbxNameCn.Name = "tbxNameCn";
            this.tbxNameCn.Size = new System.Drawing.Size(340, 21);
            this.PlatetoolTipController.SetSuperTip(this.tbxNameCn, null);
            this.tbxNameCn.TabIndex = 9;
            // 
            // lblNameBd
            // 
            this.lblNameBd.AutoSize = true;
            this.lblNameBd.Location = new System.Drawing.Point(538, 372);
            this.lblNameBd.Name = "lblNameBd";
            this.lblNameBd.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblNameBd, null);
            this.lblNameBd.TabIndex = 10;
            this.lblNameBd.Text = "Description(Bd):";
            this.lblNameBd.Visible = false;
            // 
            // tbxNameBd
            // 
            this.tbxNameBd.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "NameBd", true));
            this.tbxNameBd.Location = new System.Drawing.Point(657, 369);
            this.tbxNameBd.Name = "tbxNameBd";
            this.tbxNameBd.Size = new System.Drawing.Size(340, 21);
            this.PlatetoolTipController.SetSuperTip(this.tbxNameBd, null);
            this.tbxNameBd.TabIndex = 11;
            this.tbxNameBd.Visible = false;
            // 
            // lblBaseType
            // 
            this.lblBaseType.AutoSize = true;
            this.lblBaseType.Location = new System.Drawing.Point(117, 110);
            this.lblBaseType.Name = "lblBaseType";
            this.lblBaseType.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblBaseType, null);
            this.lblBaseType.TabIndex = 12;
            this.lblBaseType.Text = "Data Type:";
            // 
            // lueBaseType
            // 
            this.lueBaseType.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Type", true));
            this.lueBaseType.Location = new System.Drawing.Point(209, 109);
            this.lueBaseType.Name = "lueBaseType";
            this.lueBaseType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueBaseType.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("TypeDesc", "Type Desc", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.lueBaseType.Properties.NullText = "";
            this.lueBaseType.Size = new System.Drawing.Size(144, 21);
            this.lueBaseType.TabIndex = 14;
            // 
            // lblParentCode
            // 
            this.lblParentCode.AutoSize = true;
            this.lblParentCode.Location = new System.Drawing.Point(539, 163);
            this.lblParentCode.Name = "lblParentCode";
            this.lblParentCode.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblParentCode, null);
            this.lblParentCode.TabIndex = 17;
            this.lblParentCode.Text = "Parent Code:";
            this.lblParentCode.Visible = false;
            // 
            // tbxParent
            // 
            this.tbxParent.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ParentCode", true));
            this.tbxParent.Location = new System.Drawing.Point(635, 154);
            this.tbxParent.Name = "tbxParent";
            this.tbxParent.Size = new System.Drawing.Size(88, 21);
            this.PlatetoolTipController.SetSuperTip(this.tbxParent, null);
            this.tbxParent.TabIndex = 18;
            this.tbxParent.Visible = false;
            // 
            // lblSortID
            // 
            this.lblSortID.AutoSize = true;
            this.lblSortID.Location = new System.Drawing.Point(112, 77);
            this.lblSortID.Name = "lblSortID";
            this.lblSortID.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblSortID, null);
            this.lblSortID.TabIndex = 19;
            this.lblSortID.Text = "Sequence No:";
            // 
            // tbxSeqno
            // 
            this.tbxSeqno.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "SortID", true));
            this.tbxSeqno.Location = new System.Drawing.Point(209, 74);
            this.tbxSeqno.Name = "tbxSeqno";
            this.tbxSeqno.Size = new System.Drawing.Size(115, 21);
            this.PlatetoolTipController.SetSuperTip(this.tbxSeqno, null);
            this.tbxSeqno.TabIndex = 20;
            // 
            // lueCountryProvince
            // 
            this.lueCountryProvince.Location = new System.Drawing.Point(657, 342);
            this.lueCountryProvince.Name = "lueCountryProvince";
            this.lueCountryProvince.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueCountryProvince.Properties.NullText = "";
            this.lueCountryProvince.Size = new System.Drawing.Size(168, 21);
            this.lueCountryProvince.TabIndex = 16;
            this.lueCountryProvince.Visible = false;
            // 
            // lblCountryProvince
            // 
            this.lblCountryProvince.AutoSize = true;
            this.lblCountryProvince.Location = new System.Drawing.Point(544, 345);
            this.lblCountryProvince.Name = "lblCountryProvince";
            this.lblCountryProvince.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblCountryProvince, null);
            this.lblCountryProvince.TabIndex = 15;
            this.lblCountryProvince.Text = "Country/Province:";
            this.lblCountryProvince.Visible = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.ForeColor = System.Drawing.Color.Red;
            this.label2.Location = new System.Drawing.Point(785, 109);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(11, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 22;
            this.label2.Text = "*";
            this.label2.Visible = false;
            // 
            // langTextBox
            // 
            this.langTextBox.Location = new System.Drawing.Point(209, 169);
            this.langTextBox.Name = "langTextBox";
            this.langTextBox.Size = new System.Drawing.Size(144, 21);
            this.PlatetoolTipController.SetSuperTip(this.langTextBox, null);
            this.langTextBox.TabIndex = 23;
            // 
            // lbHSCode
            // 
            this.lbHSCode.AutoSize = true;
            this.lbHSCode.Location = new System.Drawing.Point(58, 282);
            this.lbHSCode.Name = "lbHSCode";
            this.lbHSCode.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbHSCode, null);
            this.lbHSCode.TabIndex = 24;
            this.lbHSCode.Text = "HW Cost for Mgt Acct:";
            // 
            // edtHSCode
            // 
            this.edtHSCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSCode", true));
            this.edtHSCode.Location = new System.Drawing.Point(209, 279);
            this.edtHSCode.Name = "edtHSCode";
            this.edtHSCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtHSCode.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Description (Local)", 120),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Description (En)", 160)});
            this.edtHSCode.Properties.NullText = "";
            this.edtHSCode.Properties.PopupWidth = 260;
            this.edtHSCode.Size = new System.Drawing.Size(340, 21);
            this.edtHSCode.TabIndex = 25;
            // 
            // lbDepartment
            // 
            this.lbDepartment.AutoSize = true;
            this.lbDepartment.Location = new System.Drawing.Point(40, 351);
            this.lbDepartment.Name = "lbDepartment";
            this.lbDepartment.Size = new System.Drawing.Size(149, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbDepartment, null);
            this.lbDepartment.TabIndex = 26;
            this.lbDepartment.Text = " Appointed Departmental:";
            // 
            // edtDepartment
            // 
            this.edtDepartment.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RECDepartment", true));
            this.edtDepartment.Location = new System.Drawing.Point(209, 348);
            this.edtDepartment.Name = "edtDepartment";
            this.edtDepartment.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtDepartment.Size = new System.Drawing.Size(340, 21);
            this.edtDepartment.TabIndex = 28;
            this.edtDepartment.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.edtDepartment_ButtonClick);
            // 
            // edtDepartmentRowID
            // 
            this.edtDepartmentRowID.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ExtraField1", true));
            this.edtDepartmentRowID.Location = new System.Drawing.Point(555, 321);
            this.edtDepartmentRowID.Name = "edtDepartmentRowID";
            this.edtDepartmentRowID.Size = new System.Drawing.Size(70, 14);
            this.edtDepartmentRowID.TabIndex = 29;
            this.edtDepartmentRowID.Text = "labelControl1";
            // 
            // lbDiffDept
            // 
            this.lbDiffDept.AutoSize = true;
            this.lbDiffDept.Location = new System.Drawing.Point(124, 321);
            this.lbDiffDept.Name = "lbDiffDept";
            this.lbDiffDept.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbDiffDept, null);
            this.lbDiffDept.TabIndex = 30;
            this.lbDiffDept.Text = "Diff Dept:";
            // 
            // edtDiffDept
            // 
            this.edtDiffDept.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSCode", true));
            this.edtDiffDept.Location = new System.Drawing.Point(209, 312);
            this.edtDiffDept.Name = "edtDiffDept";
            this.edtDiffDept.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtDiffDept.Properties.Items.AddRange(new object[] {
            "Y",
            "N"});
            this.edtDiffDept.Size = new System.Drawing.Size(115, 21);
            this.edtDiffDept.TabIndex = 31;
            // 
            // BaseCodeEdtFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.edtDiffDept);
            this.Controls.Add(this.lbDiffDept);
            this.Controls.Add(this.edtDepartmentRowID);
            this.Controls.Add(this.edtDepartment);
            this.Controls.Add(this.lbDepartment);
            this.Controls.Add(this.edtHSCode);
            this.Controls.Add(this.lbHSCode);
            this.Controls.Add(langLabel);
            this.Controls.Add(this.langTextBox);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.tbxSeqno);
            this.Controls.Add(this.lblSortID);
            this.Controls.Add(this.lblParentCode);
            this.Controls.Add(this.tbxParent);
            this.Controls.Add(this.lueCountryProvince);
            this.Controls.Add(this.lblCountryProvince);
            this.Controls.Add(this.lueBaseType);
            this.Controls.Add(this.lblBaseType);
            this.Controls.Add(this.lblNameBd);
            this.Controls.Add(this.tbxNameBd);
            this.Controls.Add(this.lblNameCn);
            this.Controls.Add(this.tbxNameCn);
            this.Controls.Add(this.lblNameEn);
            this.Controls.Add(this.tbxNameEn);
            this.Controls.Add(this.lblCode);
            this.Controls.Add(this.tbxCode);
            this.Name = "BaseCodeEdtFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.tbxCode, 0);
            this.Controls.SetChildIndex(this.lblCode, 0);
            this.Controls.SetChildIndex(this.tbxNameEn, 0);
            this.Controls.SetChildIndex(this.lblNameEn, 0);
            this.Controls.SetChildIndex(this.tbxNameCn, 0);
            this.Controls.SetChildIndex(this.lblNameCn, 0);
            this.Controls.SetChildIndex(this.tbxNameBd, 0);
            this.Controls.SetChildIndex(this.lblNameBd, 0);
            this.Controls.SetChildIndex(this.lblBaseType, 0);
            this.Controls.SetChildIndex(this.lueBaseType, 0);
            this.Controls.SetChildIndex(this.lblCountryProvince, 0);
            this.Controls.SetChildIndex(this.lueCountryProvince, 0);
            this.Controls.SetChildIndex(this.tbxParent, 0);
            this.Controls.SetChildIndex(this.lblParentCode, 0);
            this.Controls.SetChildIndex(this.lblSortID, 0);
            this.Controls.SetChildIndex(this.tbxSeqno, 0);
            this.Controls.SetChildIndex(this.label2, 0);
            this.Controls.SetChildIndex(this.langTextBox, 0);
            this.Controls.SetChildIndex(langLabel, 0);
            this.Controls.SetChildIndex(this.lbHSCode, 0);
            this.Controls.SetChildIndex(this.edtHSCode, 0);
            this.Controls.SetChildIndex(this.lbDepartment, 0);
            this.Controls.SetChildIndex(this.edtDepartment, 0);
            this.Controls.SetChildIndex(this.edtDepartmentRowID, 0);
            this.Controls.SetChildIndex(this.lbDiffDept, 0);
            this.Controls.SetChildIndex(this.edtDiffDept, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueBaseType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueCountryProvince.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtHSCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDepartment.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDiffDept.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tbxCode;
        private System.Windows.Forms.TextBox tbxNameEn;
        private System.Windows.Forms.TextBox tbxNameCn;
        private System.Windows.Forms.TextBox tbxNameBd;
        private DevExpress.XtraEditors.LookUpEdit lueBaseType;
        private System.Windows.Forms.Label lblCode;
        private System.Windows.Forms.Label lblNameEn;
        private System.Windows.Forms.Label lblNameCn;
        private System.Windows.Forms.Label lblNameBd;
        private System.Windows.Forms.Label lblBaseType;
        private System.Windows.Forms.Label lblParentCode;
        private System.Windows.Forms.TextBox tbxParent;
        public System.Windows.Forms.Label lblSortID;
        private System.Windows.Forms.TextBox tbxSeqno;
        private DevExpress.XtraEditors.LookUpEdit lueCountryProvince;
        public System.Windows.Forms.Label lblCountryProvince;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox langTextBox;
        private System.Windows.Forms.Label lbHSCode;
        private DevExpress.XtraEditors.LookUpEdit edtHSCode;
        private System.Windows.Forms.Label lbDepartment;
        private DevExpress.XtraEditors.ButtonEdit edtDepartment;
        private DevExpress.XtraEditors.LabelControl edtDepartmentRowID;
        private System.Windows.Forms.Label lbDiffDept;
        private DevExpress.XtraEditors.ComboBoxEdit edtDiffDept;
    }
}
