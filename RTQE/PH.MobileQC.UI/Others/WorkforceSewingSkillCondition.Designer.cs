namespace PH.MobileQC.UI
{
    partial class WorkforceSewingSkillCondition
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
            this.edtQC_TimeTo = new DevExpress.XtraEditors.DateEdit();
            this.edtQC_TimeFrom = new DevExpress.XtraEditors.DateEdit();
            this.labelControl8 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.sBut_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.sbut_OK = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.edtWorker = new DevExpress.XtraEditors.LookUpEdit();
            this.edtLine = new DevExpress.XtraEditors.LookUpEdit();
            this.edtCustomer = new DevExpress.XtraEditors.LookUpEdit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWorker.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCustomer.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // edtQC_TimeTo
            // 
            this.edtQC_TimeTo.EditValue = null;
            this.edtQC_TimeTo.Location = new System.Drawing.Point(218, 9);
            this.edtQC_TimeTo.Name = "edtQC_TimeTo";
            this.edtQC_TimeTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtQC_TimeTo.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.edtQC_TimeTo.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.edtQC_TimeTo.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.edtQC_TimeTo.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.edtQC_TimeTo.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.edtQC_TimeTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtQC_TimeTo.Size = new System.Drawing.Size(94, 21);
            this.edtQC_TimeTo.TabIndex = 81;
            this.edtQC_TimeTo.Validated += new System.EventHandler(this.edtQC_TimeTo_Validated);
            // 
            // edtQC_TimeFrom
            // 
            this.edtQC_TimeFrom.EditValue = null;
            this.edtQC_TimeFrom.Location = new System.Drawing.Point(95, 9);
            this.edtQC_TimeFrom.Name = "edtQC_TimeFrom";
            this.edtQC_TimeFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtQC_TimeFrom.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.edtQC_TimeFrom.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.edtQC_TimeFrom.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.edtQC_TimeFrom.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.edtQC_TimeFrom.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.edtQC_TimeFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtQC_TimeFrom.Size = new System.Drawing.Size(94, 21);
            this.edtQC_TimeFrom.TabIndex = 82;
            this.edtQC_TimeFrom.Validated += new System.EventHandler(this.edtQC_TimeFrom_Validated);
            // 
            // labelControl8
            // 
            this.labelControl8.Location = new System.Drawing.Point(199, 13);
            this.labelControl8.Name = "labelControl8";
            this.labelControl8.Size = new System.Drawing.Size(9, 14);
            this.labelControl8.TabIndex = 78;
            this.labelControl8.Text = "~";
            // 
            // labelControl7
            // 
            this.labelControl7.Location = new System.Drawing.Point(41, 12);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(40, 14);
            this.labelControl7.TabIndex = 79;
            this.labelControl7.Text = "時間段:";
            // 
            // sBut_Cancel
            // 
            this.sBut_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.sBut_Cancel.Location = new System.Drawing.Point(233, 152);
            this.sBut_Cancel.Name = "sBut_Cancel";
            this.sBut_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBut_Cancel.TabIndex = 74;
            this.sBut_Cancel.Text = "Cancel";
            // 
            // sbut_OK
            // 
            this.sbut_OK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.sbut_OK.Location = new System.Drawing.Point(123, 152);
            this.sbut_OK.Name = "sbut_OK";
            this.sbut_OK.Size = new System.Drawing.Size(75, 23);
            this.sbut_OK.TabIndex = 73;
            this.sbut_OK.Text = "OK";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(42, 78);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(40, 14);
            this.labelControl4.TabIndex = 77;
            this.labelControl4.Text = "員工ID:";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(53, 110);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(28, 14);
            this.labelControl1.TabIndex = 75;
            this.labelControl1.Text = "客戶:";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(41, 47);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(40, 14);
            this.labelControl3.TabIndex = 76;
            this.labelControl3.Text = "組裝線:";
            // 
            // edtWorker
            // 
            this.edtWorker.Location = new System.Drawing.Point(94, 75);
            this.edtWorker.Name = "edtWorker";
            this.edtWorker.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtWorker.Properties.DropDownRows = 10;
            this.edtWorker.Properties.NullText = "";
            this.edtWorker.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtWorker.Size = new System.Drawing.Size(218, 21);
            this.edtWorker.TabIndex = 71;
            this.edtWorker.Tag = "";
            this.edtWorker.EditValueChanged += new System.EventHandler(this.edtWorker_EditValueChanged);
            // 
            // edtLine
            // 
            this.edtLine.Location = new System.Drawing.Point(94, 44);
            this.edtLine.Name = "edtLine";
            this.edtLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtLine.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Line", "Line", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtLine.Properties.DropDownRows = 10;
            this.edtLine.Properties.NullText = "";
            this.edtLine.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtLine.Size = new System.Drawing.Size(218, 21);
            this.edtLine.TabIndex = 72;
            this.edtLine.Tag = "";
            this.edtLine.EditValueChanged += new System.EventHandler(this.edtLine_EditValueChanged);
            this.edtLine.Enter += new System.EventHandler(this.edtLine_Enter);
            // 
            // edtCustomer
            // 
            this.edtCustomer.Location = new System.Drawing.Point(94, 107);
            this.edtCustomer.Name = "edtCustomer";
            this.edtCustomer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtCustomer.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Customer", "Customer", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtCustomer.Properties.DropDownRows = 10;
            this.edtCustomer.Properties.NullText = "";
            this.edtCustomer.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtCustomer.Size = new System.Drawing.Size(218, 21);
            this.edtCustomer.TabIndex = 83;
            this.edtCustomer.Tag = "";
            // 
            // WorkforceSewingSkillCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(355, 193);
            this.Controls.Add(this.edtCustomer);
            this.Controls.Add(this.edtQC_TimeTo);
            this.Controls.Add(this.edtQC_TimeFrom);
            this.Controls.Add(this.labelControl8);
            this.Controls.Add(this.labelControl7);
            this.Controls.Add(this.sBut_Cancel);
            this.Controls.Add(this.sbut_OK);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.edtWorker);
            this.Controls.Add(this.edtLine);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "WorkforceSewingSkillCondition";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Workforce Sewing Skill Condition filter";
            this.Load += new System.EventHandler(this.WorkforceSewingSkillCondition_Load);
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWorker.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCustomer.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit edtQC_TimeTo;
        private DevExpress.XtraEditors.DateEdit edtQC_TimeFrom;
        private DevExpress.XtraEditors.LabelControl labelControl8;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.SimpleButton sBut_Cancel;
        private DevExpress.XtraEditors.SimpleButton sbut_OK;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LookUpEdit edtWorker;
        private DevExpress.XtraEditors.LookUpEdit edtLine;
        private DevExpress.XtraEditors.LookUpEdit edtCustomer;
    }
}