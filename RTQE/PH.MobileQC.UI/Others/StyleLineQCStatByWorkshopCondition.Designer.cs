namespace PH.MobileQC.UI
{
    partial class StyleLineQCStatByWorkshopCondition
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.sBut_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.sbut_OK = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl11 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl12 = new DevExpress.XtraEditors.LabelControl();
            this.edtFactory = new DevExpress.XtraEditors.LookUpEdit();
            this.edtWorkshop = new DevExpress.XtraEditors.LookUpEdit();
            this.chkShowItem = new DevExpress.XtraEditors.CheckedListBoxControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.edtStyle = new DevExpress.XtraEditors.LookUpEdit();
            this.edtLine = new DevExpress.XtraEditors.LookUpEdit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWorkshop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkShowItem)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // sBut_Cancel
            // 
            this.sBut_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.sBut_Cancel.Location = new System.Drawing.Point(234, 219);
            this.sBut_Cancel.Name = "sBut_Cancel";
            this.sBut_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBut_Cancel.TabIndex = 74;
            this.sBut_Cancel.Text = "Cancel";
            // 
            // sbut_OK
            // 
            this.sbut_OK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.sbut_OK.Location = new System.Drawing.Point(123, 218);
            this.sbut_OK.Name = "sbut_OK";
            this.sbut_OK.Size = new System.Drawing.Size(75, 23);
            this.sbut_OK.TabIndex = 73;
            this.sbut_OK.Text = "OK";
            this.sbut_OK.Click += new System.EventHandler(this.sbut_OK_Click);
            // 
            // labelControl11
            // 
            this.labelControl11.Location = new System.Drawing.Point(35, 16);
            this.labelControl11.Name = "labelControl11";
            this.labelControl11.Size = new System.Drawing.Size(44, 14);
            this.labelControl11.TabIndex = 78;
            this.labelControl11.Text = "Factory:";
            // 
            // labelControl12
            // 
            this.labelControl12.Location = new System.Drawing.Point(18, 48);
            this.labelControl12.Name = "labelControl12";
            this.labelControl12.Size = new System.Drawing.Size(61, 14);
            this.labelControl12.TabIndex = 79;
            this.labelControl12.Text = "WorkShop:";
            this.labelControl12.Click += new System.EventHandler(this.labelControl12_Click);
            // 
            // edtFactory
            // 
            this.edtFactory.Location = new System.Drawing.Point(87, 13);
            this.edtFactory.Name = "edtFactory";
            this.edtFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtFactory.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtFactory.Properties.DropDownRows = 10;
            this.edtFactory.Properties.NullText = "";
            this.edtFactory.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtFactory.Size = new System.Drawing.Size(250, 21);
            this.edtFactory.TabIndex = 82;
            this.edtFactory.Tag = "";
            this.edtFactory.EditValueChanged += new System.EventHandler(this.edtFactory_EditValueChanged);
            // 
            // edtWorkshop
            // 
            this.edtWorkshop.Location = new System.Drawing.Point(87, 45);
            this.edtWorkshop.Name = "edtWorkshop";
            this.edtWorkshop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtWorkshop.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Workshop", "Workshop", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtWorkshop.Properties.DropDownRows = 10;
            this.edtWorkshop.Properties.NullText = "";
            this.edtWorkshop.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtWorkshop.Size = new System.Drawing.Size(250, 21);
            this.edtWorkshop.TabIndex = 83;
            this.edtWorkshop.Tag = "";
            // 
            // chkShowItem
            // 
            this.chkShowItem.CheckOnClick = true;
            this.chkShowItem.Items.AddRange(new DevExpress.XtraEditors.Controls.CheckedListBoxItem[] {
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("1.Yellow ----- No Audit"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("2.Green ----- Within Quality Requirement", System.Windows.Forms.CheckState.Checked),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("3.Red ------- Under Quality Requirement", System.Windows.Forms.CheckState.Checked)});
            this.chkShowItem.Location = new System.Drawing.Point(85, 144);
            this.chkShowItem.Name = "chkShowItem";
            this.chkShowItem.Size = new System.Drawing.Size(250, 62);
            this.chkShowItem.TabIndex = 84;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(36, 143);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(43, 14);
            this.labelControl1.TabIndex = 85;
            this.labelControl1.Text = "Project:";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(48, 112);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(31, 14);
            this.labelControl4.TabIndex = 89;
            this.labelControl4.Text = "Style:";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(53, 81);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(26, 14);
            this.labelControl3.TabIndex = 88;
            this.labelControl3.Text = "Line:";
            // 
            // edtStyle
            // 
            this.edtStyle.Location = new System.Drawing.Point(87, 110);
            this.edtStyle.Name = "edtStyle";
            this.edtStyle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtStyle.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Style", "Style", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtStyle.Properties.DropDownRows = 10;
            this.edtStyle.Properties.NullText = "";
            this.edtStyle.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtStyle.Size = new System.Drawing.Size(250, 21);
            this.edtStyle.TabIndex = 86;
            this.edtStyle.Tag = "";
            // 
            // edtLine
            // 
            this.edtLine.Location = new System.Drawing.Point(87, 79);
            this.edtLine.Name = "edtLine";
            this.edtLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtLine.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Line", "Line", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtLine.Properties.DropDownRows = 10;
            this.edtLine.Properties.NullText = "";
            this.edtLine.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtLine.Size = new System.Drawing.Size(250, 21);
            this.edtLine.TabIndex = 87;
            this.edtLine.Tag = "";
            this.edtLine.EditValueChanged += new System.EventHandler(this.edtLine_EditValueChanged);
            // 
            // StyleLineQCStatByWorkshopCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(387, 304);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.edtStyle);
            this.Controls.Add(this.edtLine);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.chkShowItem);
            this.Controls.Add(this.edtWorkshop);
            this.Controls.Add(this.edtFactory);
            this.Controls.Add(this.labelControl11);
            this.Controls.Add(this.labelControl12);
            this.Controls.Add(this.sBut_Cancel);
            this.Controls.Add(this.sbut_OK);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "StyleLineQCStatByWorkshopCondition";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "QA Stat Condition";
            this.Load += new System.EventHandler(this.StyleLineQCStatCondition_Load);
            ((System.ComponentModel.ISupportInitialize)(this.edtFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWorkshop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkShowItem)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton sBut_Cancel;
        private DevExpress.XtraEditors.SimpleButton sbut_OK;
        private DevExpress.XtraEditors.LabelControl labelControl11;
        private DevExpress.XtraEditors.LabelControl labelControl12;
        private DevExpress.XtraEditors.LookUpEdit edtFactory;
        private DevExpress.XtraEditors.LookUpEdit edtWorkshop;
        private DevExpress.XtraEditors.CheckedListBoxControl chkShowItem;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LookUpEdit edtStyle;
        private DevExpress.XtraEditors.LookUpEdit edtLine;
    }
}