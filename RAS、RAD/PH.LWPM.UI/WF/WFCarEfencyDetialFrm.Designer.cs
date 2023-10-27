namespace PH.LWPM.UI.WF
{
    partial class WFCarEfencyDetialFrm
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.type_CSLabel = new System.Windows.Forms.Label();
            this.type_CSSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.type_DNLabel = new System.Windows.Forms.Label();
            this.type_DNSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.type_ZZLabel = new System.Windows.Forms.Label();
            this.type_ZZSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.type_OVLabel = new System.Windows.Forms.Label();
            this.type_OVSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.type_SNLabel = new System.Windows.Forms.Label();
            this.type_SNSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.type_BTLabel = new System.Windows.Forms.Label();
            this.type_BTSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.type_CTLabel = new System.Windows.Forms.Label();
            this.type_CTSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.type_HDLabel = new System.Windows.Forms.Label();
            this.type_HDSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.totalEfiencyLabel = new System.Windows.Forms.Label();
            this.totalEfiencySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.idLabel = new System.Windows.Forms.Label();
            this.idTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.factoryLabel = new System.Windows.Forms.Label();
            this.factoryComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.nameCNLabel = new System.Windows.Forms.Label();
            this.nameCNTextEdit = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_CSSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_DNSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_ZZSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_OVSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_SNSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_BTSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_CTSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_HDSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.totalEfiencySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.idTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.factoryComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameCNTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.CarEfficiency);
            // 
            // type_CSLabel
            // 
            this.type_CSLabel.Location = new System.Drawing.Point(14, 108);
            this.type_CSLabel.Name = "type_CSLabel";
            this.type_CSLabel.Size = new System.Drawing.Size(122, 18);
            this.PlatetoolTipController.SetSuperTip(this.type_CSLabel, null);
            this.type_CSLabel.TabIndex = 10;
            this.type_CSLabel.Text = "Type_CS:";
            this.type_CSLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // type_CSSpinEdit
            // 
            this.type_CSSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Type_CS", true));
            this.type_CSSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.type_CSSpinEdit.Location = new System.Drawing.Point(142, 105);
            this.type_CSSpinEdit.Name = "type_CSSpinEdit";
            this.type_CSSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.type_CSSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.type_CSSpinEdit.TabIndex = 11;
            // 
            // type_DNLabel
            // 
            this.type_DNLabel.Location = new System.Drawing.Point(259, 108);
            this.type_DNLabel.Name = "type_DNLabel";
            this.type_DNLabel.Size = new System.Drawing.Size(137, 12);
            this.PlatetoolTipController.SetSuperTip(this.type_DNLabel, null);
            this.type_DNLabel.TabIndex = 12;
            this.type_DNLabel.Text = "Type_DN:";
            this.type_DNLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // type_DNSpinEdit
            // 
            this.type_DNSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Type_DN", true));
            this.type_DNSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.type_DNSpinEdit.Location = new System.Drawing.Point(402, 105);
            this.type_DNSpinEdit.Name = "type_DNSpinEdit";
            this.type_DNSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.type_DNSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.type_DNSpinEdit.TabIndex = 13;
            // 
            // type_ZZLabel
            // 
            this.type_ZZLabel.Location = new System.Drawing.Point(519, 108);
            this.type_ZZLabel.Name = "type_ZZLabel";
            this.type_ZZLabel.Size = new System.Drawing.Size(122, 18);
            this.PlatetoolTipController.SetSuperTip(this.type_ZZLabel, null);
            this.type_ZZLabel.TabIndex = 14;
            this.type_ZZLabel.Text = "Type_ZZ:";
            this.type_ZZLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // type_ZZSpinEdit
            // 
            this.type_ZZSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Type_ZZ", true));
            this.type_ZZSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.type_ZZSpinEdit.Location = new System.Drawing.Point(647, 105);
            this.type_ZZSpinEdit.Name = "type_ZZSpinEdit";
            this.type_ZZSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.type_ZZSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.type_ZZSpinEdit.TabIndex = 15;
            // 
            // type_OVLabel
            // 
            this.type_OVLabel.Location = new System.Drawing.Point(14, 153);
            this.type_OVLabel.Name = "type_OVLabel";
            this.type_OVLabel.Size = new System.Drawing.Size(122, 12);
            this.PlatetoolTipController.SetSuperTip(this.type_OVLabel, null);
            this.type_OVLabel.TabIndex = 16;
            this.type_OVLabel.Text = "Type_OV:";
            this.type_OVLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // type_OVSpinEdit
            // 
            this.type_OVSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Type_OV", true));
            this.type_OVSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.type_OVSpinEdit.Location = new System.Drawing.Point(142, 150);
            this.type_OVSpinEdit.Name = "type_OVSpinEdit";
            this.type_OVSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.type_OVSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.type_OVSpinEdit.TabIndex = 17;
            // 
            // type_SNLabel
            // 
            this.type_SNLabel.Location = new System.Drawing.Point(273, 153);
            this.type_SNLabel.Name = "type_SNLabel";
            this.type_SNLabel.Size = new System.Drawing.Size(123, 18);
            this.PlatetoolTipController.SetSuperTip(this.type_SNLabel, null);
            this.type_SNLabel.TabIndex = 18;
            this.type_SNLabel.Text = "Type_SN:";
            this.type_SNLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // type_SNSpinEdit
            // 
            this.type_SNSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Type_SN", true));
            this.type_SNSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.type_SNSpinEdit.Location = new System.Drawing.Point(402, 150);
            this.type_SNSpinEdit.Name = "type_SNSpinEdit";
            this.type_SNSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.type_SNSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.type_SNSpinEdit.TabIndex = 19;
            // 
            // type_BTLabel
            // 
            this.type_BTLabel.Location = new System.Drawing.Point(521, 153);
            this.type_BTLabel.Name = "type_BTLabel";
            this.type_BTLabel.Size = new System.Drawing.Size(120, 12);
            this.PlatetoolTipController.SetSuperTip(this.type_BTLabel, null);
            this.type_BTLabel.TabIndex = 20;
            this.type_BTLabel.Text = "Type_BT:";
            this.type_BTLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // type_BTSpinEdit
            // 
            this.type_BTSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Type_BT", true));
            this.type_BTSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.type_BTSpinEdit.Location = new System.Drawing.Point(647, 150);
            this.type_BTSpinEdit.Name = "type_BTSpinEdit";
            this.type_BTSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.type_BTSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.type_BTSpinEdit.TabIndex = 21;
            // 
            // type_CTLabel
            // 
            this.type_CTLabel.Location = new System.Drawing.Point(26, 196);
            this.type_CTLabel.Name = "type_CTLabel";
            this.type_CTLabel.Size = new System.Drawing.Size(110, 18);
            this.PlatetoolTipController.SetSuperTip(this.type_CTLabel, null);
            this.type_CTLabel.TabIndex = 22;
            this.type_CTLabel.Text = "Type_CT:";
            this.type_CTLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // type_CTSpinEdit
            // 
            this.type_CTSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Type_CT", true));
            this.type_CTSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.type_CTSpinEdit.Location = new System.Drawing.Point(142, 193);
            this.type_CTSpinEdit.Name = "type_CTSpinEdit";
            this.type_CTSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.type_CTSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.type_CTSpinEdit.TabIndex = 23;
            // 
            // type_HDLabel
            // 
            this.type_HDLabel.Location = new System.Drawing.Point(275, 196);
            this.type_HDLabel.Name = "type_HDLabel";
            this.type_HDLabel.Size = new System.Drawing.Size(121, 12);
            this.PlatetoolTipController.SetSuperTip(this.type_HDLabel, null);
            this.type_HDLabel.TabIndex = 24;
            this.type_HDLabel.Text = "Type_HD:";
            this.type_HDLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // type_HDSpinEdit
            // 
            this.type_HDSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Type_HD", true));
            this.type_HDSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.type_HDSpinEdit.Location = new System.Drawing.Point(402, 193);
            this.type_HDSpinEdit.Name = "type_HDSpinEdit";
            this.type_HDSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.type_HDSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.type_HDSpinEdit.TabIndex = 25;
            // 
            // totalEfiencyLabel
            // 
            this.totalEfiencyLabel.Location = new System.Drawing.Point(523, 196);
            this.totalEfiencyLabel.Name = "totalEfiencyLabel";
            this.totalEfiencyLabel.Size = new System.Drawing.Size(118, 18);
            this.PlatetoolTipController.SetSuperTip(this.totalEfiencyLabel, null);
            this.totalEfiencyLabel.TabIndex = 26;
            this.totalEfiencyLabel.Text = "Total Efiency:";
            this.totalEfiencyLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // totalEfiencySpinEdit
            // 
            this.totalEfiencySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TotalEfiency", true));
            this.totalEfiencySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.totalEfiencySpinEdit.Location = new System.Drawing.Point(647, 193);
            this.totalEfiencySpinEdit.Name = "totalEfiencySpinEdit";
            this.totalEfiencySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.totalEfiencySpinEdit.Size = new System.Drawing.Size(100, 21);
            this.totalEfiencySpinEdit.TabIndex = 27;
            // 
            // idLabel
            // 
            this.idLabel.Location = new System.Drawing.Point(12, 67);
            this.idLabel.Name = "idLabel";
            this.idLabel.Size = new System.Drawing.Size(124, 10);
            this.PlatetoolTipController.SetSuperTip(this.idLabel, null);
            this.idLabel.TabIndex = 27;
            this.idLabel.Text = "Id:";
            this.idLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // idTextEdit
            // 
            this.idTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Id", true));
            this.idTextEdit.Location = new System.Drawing.Point(142, 64);
            this.idTextEdit.Name = "idTextEdit";
            this.idTextEdit.Size = new System.Drawing.Size(100, 21);
            this.idTextEdit.TabIndex = 28;
            // 
            // factoryLabel
            // 
            this.factoryLabel.Location = new System.Drawing.Point(271, 65);
            this.factoryLabel.Name = "factoryLabel";
            this.factoryLabel.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(this.factoryLabel, null);
            this.factoryLabel.TabIndex = 28;
            this.factoryLabel.Text = "Factory:";
            this.factoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // factoryComboBoxEdit
            // 
            this.factoryComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Factory", true));
            this.factoryComboBoxEdit.Location = new System.Drawing.Point(402, 62);
            this.factoryComboBoxEdit.Name = "factoryComboBoxEdit";
            this.factoryComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.factoryComboBoxEdit.Size = new System.Drawing.Size(100, 21);
            this.factoryComboBoxEdit.TabIndex = 29;
            // 
            // nameCNLabel
            // 
            this.nameCNLabel.Location = new System.Drawing.Point(517, 63);
            this.nameCNLabel.Name = "nameCNLabel";
            this.nameCNLabel.Size = new System.Drawing.Size(124, 14);
            this.PlatetoolTipController.SetSuperTip(this.nameCNLabel, null);
            this.nameCNLabel.TabIndex = 29;
            this.nameCNLabel.Text = "Name CN:";
            this.nameCNLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // nameCNTextEdit
            // 
            this.nameCNTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameCN", true));
            this.nameCNTextEdit.Location = new System.Drawing.Point(647, 60);
            this.nameCNTextEdit.Name = "nameCNTextEdit";
            this.nameCNTextEdit.Size = new System.Drawing.Size(100, 21);
            this.nameCNTextEdit.TabIndex = 30;
            // 
            // WFCarEfencyDetialFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.nameCNLabel);
            this.Controls.Add(this.nameCNTextEdit);
            this.Controls.Add(this.factoryLabel);
            this.Controls.Add(this.factoryComboBoxEdit);
            this.Controls.Add(this.idLabel);
            this.Controls.Add(this.idTextEdit);
            this.Controls.Add(this.totalEfiencyLabel);
            this.Controls.Add(this.totalEfiencySpinEdit);
            this.Controls.Add(this.type_HDLabel);
            this.Controls.Add(this.type_HDSpinEdit);
            this.Controls.Add(this.type_CTLabel);
            this.Controls.Add(this.type_CTSpinEdit);
            this.Controls.Add(this.type_BTLabel);
            this.Controls.Add(this.type_BTSpinEdit);
            this.Controls.Add(this.type_SNLabel);
            this.Controls.Add(this.type_SNSpinEdit);
            this.Controls.Add(this.type_OVLabel);
            this.Controls.Add(this.type_OVSpinEdit);
            this.Controls.Add(this.type_ZZLabel);
            this.Controls.Add(this.type_ZZSpinEdit);
            this.Controls.Add(this.type_DNLabel);
            this.Controls.Add(this.type_DNSpinEdit);
            this.Controls.Add(this.type_CSLabel);
            this.Controls.Add(this.type_CSSpinEdit);
            this.Name = "WFCarEfencyDetialFrm";
            this.Size = new System.Drawing.Size(890, 403);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.WFCarEfencyDetialFrm_Load);
            this.Controls.SetChildIndex(this.type_CSSpinEdit, 0);
            this.Controls.SetChildIndex(this.type_CSLabel, 0);
            this.Controls.SetChildIndex(this.type_DNSpinEdit, 0);
            this.Controls.SetChildIndex(this.type_DNLabel, 0);
            this.Controls.SetChildIndex(this.type_ZZSpinEdit, 0);
            this.Controls.SetChildIndex(this.type_ZZLabel, 0);
            this.Controls.SetChildIndex(this.type_OVSpinEdit, 0);
            this.Controls.SetChildIndex(this.type_OVLabel, 0);
            this.Controls.SetChildIndex(this.type_SNSpinEdit, 0);
            this.Controls.SetChildIndex(this.type_SNLabel, 0);
            this.Controls.SetChildIndex(this.type_BTSpinEdit, 0);
            this.Controls.SetChildIndex(this.type_BTLabel, 0);
            this.Controls.SetChildIndex(this.type_CTSpinEdit, 0);
            this.Controls.SetChildIndex(this.type_CTLabel, 0);
            this.Controls.SetChildIndex(this.type_HDSpinEdit, 0);
            this.Controls.SetChildIndex(this.type_HDLabel, 0);
            this.Controls.SetChildIndex(this.totalEfiencySpinEdit, 0);
            this.Controls.SetChildIndex(this.totalEfiencyLabel, 0);
            this.Controls.SetChildIndex(this.idTextEdit, 0);
            this.Controls.SetChildIndex(this.idLabel, 0);
            this.Controls.SetChildIndex(this.factoryComboBoxEdit, 0);
            this.Controls.SetChildIndex(this.factoryLabel, 0);
            this.Controls.SetChildIndex(this.nameCNTextEdit, 0);
            this.Controls.SetChildIndex(this.nameCNLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_CSSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_DNSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_ZZSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_OVSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_SNSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_BTSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_CTSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.type_HDSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.totalEfiencySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.idTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.factoryComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameCNTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit type_CSSpinEdit;
        private DevExpress.XtraEditors.SpinEdit type_DNSpinEdit;
        private DevExpress.XtraEditors.SpinEdit type_ZZSpinEdit;
        private DevExpress.XtraEditors.SpinEdit type_OVSpinEdit;
        private DevExpress.XtraEditors.SpinEdit type_SNSpinEdit;
        private DevExpress.XtraEditors.SpinEdit type_BTSpinEdit;
        private DevExpress.XtraEditors.SpinEdit type_CTSpinEdit;
        private DevExpress.XtraEditors.SpinEdit type_HDSpinEdit;
        private DevExpress.XtraEditors.SpinEdit totalEfiencySpinEdit;
        private DevExpress.XtraEditors.TextEdit idTextEdit;
        private DevExpress.XtraEditors.ComboBoxEdit factoryComboBoxEdit;
        private DevExpress.XtraEditors.TextEdit nameCNTextEdit;
        private System.Windows.Forms.Label type_CSLabel;
        private System.Windows.Forms.Label type_DNLabel;
        private System.Windows.Forms.Label type_OVLabel;
        private System.Windows.Forms.Label type_CTLabel;
        private System.Windows.Forms.Label idLabel;
        private System.Windows.Forms.Label factoryLabel;
        private System.Windows.Forms.Label type_ZZLabel;
        private System.Windows.Forms.Label type_SNLabel;
        private System.Windows.Forms.Label type_BTLabel;
        private System.Windows.Forms.Label type_HDLabel;
        private System.Windows.Forms.Label totalEfiencyLabel;
        private System.Windows.Forms.Label nameCNLabel;
    }
}
