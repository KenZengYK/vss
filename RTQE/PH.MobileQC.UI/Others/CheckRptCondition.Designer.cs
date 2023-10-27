namespace PH.MobileQC.UI
{
    partial class CheckRptCondition
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
            this.edtLine = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.sbut_OK = new DevExpress.XtraEditors.SimpleButton();
            this.sBut_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.edtWOc = new DevExpress.XtraEditors.TextEdit();
            this.edtWO = new DevExpress.XtraEditors.TextEdit();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl8 = new DevExpress.XtraEditors.LabelControl();
            this.date_FromDate = new DevExpress.XtraEditors.DateEdit();
            this.date_ToDate = new DevExpress.XtraEditors.DateEdit();
            this.edtStyle = new DevExpress.XtraEditors.LookUpEdit();
            this.edtProject = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.edtQNNo = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.labelControl9 = new DevExpress.XtraEditors.LabelControl();
            this.date_FactQCTimeFrom = new DevExpress.XtraEditors.DateEdit();
            this.date_FactQCTimeTo = new DevExpress.XtraEditors.DateEdit();
            this.labelControl10 = new DevExpress.XtraEditors.LabelControl();
            this.lue_WorkShop = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lue_Factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl11 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl12 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWOc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQNNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FactQCTimeFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FactQCTimeFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FactQCTimeTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FactQCTimeTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_WorkShop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // edtLine
            // 
            this.edtLine.Location = new System.Drawing.Point(100, 69);
            this.edtLine.Name = "edtLine";
            this.edtLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtLine.Properties.DropDownRows = 10;
            this.edtLine.Properties.NullText = "";
            this.edtLine.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtLine.Size = new System.Drawing.Size(207, 21);
            this.edtLine.TabIndex = 0;
            this.edtLine.Tag = "";
            this.edtLine.EditValueChanged += new System.EventHandler(this.edtLine_EditValueChanged);
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(44, 72);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(40, 14);
            this.labelControl3.TabIndex = 37;
            this.labelControl3.Text = "組裝線:";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(44, 126);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(40, 14);
            this.labelControl1.TabIndex = 37;
            this.labelControl1.Text = "工程號:";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(67, 281);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(25, 14);
            this.labelControl2.TabIndex = 37;
            this.labelControl2.Text = "WO:";
            this.labelControl2.Visible = false;
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(44, 99);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(40, 14);
            this.labelControl4.TabIndex = 37;
            this.labelControl4.Text = "客款號:";
            // 
            // sbut_OK
            // 
            this.sbut_OK.Location = new System.Drawing.Point(83, 226);
            this.sbut_OK.Name = "sbut_OK";
            this.sbut_OK.Size = new System.Drawing.Size(75, 23);
            this.sbut_OK.TabIndex = 6;
            this.sbut_OK.Text = "確定";
            this.sbut_OK.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // sBut_Cancel
            // 
            this.sBut_Cancel.Location = new System.Drawing.Point(192, 226);
            this.sBut_Cancel.Name = "sBut_Cancel";
            this.sBut_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBut_Cancel.TabIndex = 7;
            this.sBut_Cancel.Text = "取消";
            this.sBut_Cancel.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(60, 302);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(32, 14);
            this.labelControl5.TabIndex = 39;
            this.labelControl5.Text = "WOC:";
            this.labelControl5.Visible = false;
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(32, 153);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(52, 14);
            this.labelControl6.TabIndex = 41;
            this.labelControl6.Text = "拉制單號:";
            // 
            // edtWOc
            // 
            this.edtWOc.AllowDrop = true;
            this.edtWOc.Enabled = false;
            this.edtWOc.Location = new System.Drawing.Point(100, 299);
            this.edtWOc.Name = "edtWOc";
            this.edtWOc.Size = new System.Drawing.Size(207, 21);
            this.edtWOc.TabIndex = 67;
            this.edtWOc.Tag = "BoxNo";
            this.edtWOc.Visible = false;
            // 
            // edtWO
            // 
            this.edtWO.AllowDrop = true;
            this.edtWO.Enabled = false;
            this.edtWO.Location = new System.Drawing.Point(100, 281);
            this.edtWO.Name = "edtWO";
            this.edtWO.Size = new System.Drawing.Size(207, 21);
            this.edtWO.TabIndex = 64;
            this.edtWO.Tag = "BoxNo";
            this.edtWO.Visible = false;
            // 
            // labelControl7
            // 
            this.labelControl7.Location = new System.Drawing.Point(44, 180);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(40, 14);
            this.labelControl7.TabIndex = 39;
            this.labelControl7.Text = "時間段:";
            // 
            // labelControl8
            // 
            this.labelControl8.Location = new System.Drawing.Point(192, 183);
            this.labelControl8.Name = "labelControl8";
            this.labelControl8.Size = new System.Drawing.Size(15, 14);
            this.labelControl8.TabIndex = 39;
            this.labelControl8.Text = "To";
            // 
            // date_FromDate
            // 
            this.date_FromDate.EditValue = null;
            this.date_FromDate.Location = new System.Drawing.Point(100, 177);
            this.date_FromDate.Name = "date_FromDate";
            this.date_FromDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_FromDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.date_FromDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_FromDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.date_FromDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_FromDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.date_FromDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_FromDate.Size = new System.Drawing.Size(90, 21);
            this.date_FromDate.TabIndex = 69;
            // 
            // date_ToDate
            // 
            this.date_ToDate.EditValue = null;
            this.date_ToDate.Location = new System.Drawing.Point(213, 177);
            this.date_ToDate.Name = "date_ToDate";
            this.date_ToDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_ToDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.date_ToDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_ToDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.date_ToDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_ToDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.date_ToDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_ToDate.Size = new System.Drawing.Size(94, 21);
            this.date_ToDate.TabIndex = 69;
            // 
            // edtStyle
            // 
            this.edtStyle.Location = new System.Drawing.Point(100, 96);
            this.edtStyle.Name = "edtStyle";
            this.edtStyle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtStyle.Properties.DropDownRows = 10;
            this.edtStyle.Properties.NullText = "";
            this.edtStyle.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtStyle.Size = new System.Drawing.Size(207, 21);
            this.edtStyle.TabIndex = 0;
            this.edtStyle.Tag = "";
            // 
            // edtProject
            // 
            this.edtProject.Location = new System.Drawing.Point(100, 123);
            this.edtProject.Name = "edtProject";
            this.edtProject.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtProject.Properties.PopupFormMinSize = new System.Drawing.Size(0, 200);
            this.edtProject.Size = new System.Drawing.Size(207, 21);
            this.edtProject.TabIndex = 70;
            // 
            // edtQNNo
            // 
            this.edtQNNo.Location = new System.Drawing.Point(100, 150);
            this.edtQNNo.Name = "edtQNNo";
            this.edtQNNo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtQNNo.Properties.PopupFormMinSize = new System.Drawing.Size(0, 200);
            this.edtQNNo.Size = new System.Drawing.Size(207, 21);
            this.edtQNNo.TabIndex = 70;
            this.edtQNNo.EditValueChanged += new System.EventHandler(this.edtQNNo_EditValueChanged);
            // 
            // labelControl9
            // 
            this.labelControl9.Location = new System.Drawing.Point(10, 327);
            this.labelControl9.Name = "labelControl9";
            this.labelControl9.Size = new System.Drawing.Size(82, 14);
            this.labelControl9.TabIndex = 39;
            this.labelControl9.Text = "QC Time From:";
            this.labelControl9.Visible = false;
            // 
            // date_FactQCTimeFrom
            // 
            this.date_FactQCTimeFrom.EditValue = null;
            this.date_FactQCTimeFrom.Enabled = false;
            this.date_FactQCTimeFrom.Location = new System.Drawing.Point(100, 326);
            this.date_FactQCTimeFrom.Name = "date_FactQCTimeFrom";
            this.date_FactQCTimeFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_FactQCTimeFrom.Properties.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.date_FactQCTimeFrom.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.date_FactQCTimeFrom.Properties.EditFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.date_FactQCTimeFrom.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_FactQCTimeFrom.Properties.Mask.EditMask = "yyyy-MM-dd HH:mm";
            this.date_FactQCTimeFrom.Properties.ReadOnly = true;
            this.date_FactQCTimeFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_FactQCTimeFrom.Size = new System.Drawing.Size(207, 21);
            this.date_FactQCTimeFrom.TabIndex = 69;
            this.date_FactQCTimeFrom.Visible = false;
            // 
            // date_FactQCTimeTo
            // 
            this.date_FactQCTimeTo.EditValue = null;
            this.date_FactQCTimeTo.Enabled = false;
            this.date_FactQCTimeTo.Location = new System.Drawing.Point(100, 354);
            this.date_FactQCTimeTo.Name = "date_FactQCTimeTo";
            this.date_FactQCTimeTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_FactQCTimeTo.Properties.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.date_FactQCTimeTo.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.date_FactQCTimeTo.Properties.EditFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.date_FactQCTimeTo.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_FactQCTimeTo.Properties.EditValueChangedFiringMode = DevExpress.XtraEditors.Controls.EditValueChangedFiringMode.Buffered;
            this.date_FactQCTimeTo.Properties.Mask.EditMask = "yyyy-MM-dd HH:mm";
            this.date_FactQCTimeTo.Properties.ReadOnly = true;
            this.date_FactQCTimeTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_FactQCTimeTo.Size = new System.Drawing.Size(207, 21);
            this.date_FactQCTimeTo.TabIndex = 69;
            this.date_FactQCTimeTo.Visible = false;
            // 
            // labelControl10
            // 
            this.labelControl10.Location = new System.Drawing.Point(22, 357);
            this.labelControl10.Name = "labelControl10";
            this.labelControl10.Size = new System.Drawing.Size(70, 14);
            this.labelControl10.TabIndex = 39;
            this.labelControl10.Text = "QC Time To:";
            this.labelControl10.Visible = false;
            // 
            // lue_WorkShop
            // 
            this.lue_WorkShop.Location = new System.Drawing.Point(100, 40);
            this.lue_WorkShop.Name = "lue_WorkShop";
            this.lue_WorkShop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_WorkShop.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_WorkShop.Size = new System.Drawing.Size(207, 21);
            this.lue_WorkShop.TabIndex = 77;
            // 
            // lue_Factory
            // 
            this.lue_Factory.Location = new System.Drawing.Point(100, 12);
            this.lue_Factory.Name = "lue_Factory";
            this.lue_Factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Factory.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.lue_Factory.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_Factory.Size = new System.Drawing.Size(207, 21);
            this.lue_Factory.TabIndex = 76;
            // 
            // labelControl11
            // 
            this.labelControl11.Location = new System.Drawing.Point(56, 16);
            this.labelControl11.Name = "labelControl11";
            this.labelControl11.Size = new System.Drawing.Size(28, 14);
            this.labelControl11.TabIndex = 74;
            this.labelControl11.Text = "工廠:";
            // 
            // labelControl12
            // 
            this.labelControl12.Location = new System.Drawing.Point(56, 43);
            this.labelControl12.Name = "labelControl12";
            this.labelControl12.Size = new System.Drawing.Size(28, 14);
            this.labelControl12.TabIndex = 75;
            this.labelControl12.Text = "車間:";
            // 
            // CheckRptCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(364, 270);
            this.Controls.Add(this.lue_WorkShop);
            this.Controls.Add(this.lue_Factory);
            this.Controls.Add(this.labelControl11);
            this.Controls.Add(this.labelControl12);
            this.Controls.Add(this.edtQNNo);
            this.Controls.Add(this.edtProject);
            this.Controls.Add(this.date_ToDate);
            this.Controls.Add(this.date_FactQCTimeTo);
            this.Controls.Add(this.date_FactQCTimeFrom);
            this.Controls.Add(this.date_FromDate);
            this.Controls.Add(this.edtWOc);
            this.Controls.Add(this.edtWO);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.labelControl10);
            this.Controls.Add(this.labelControl8);
            this.Controls.Add(this.labelControl9);
            this.Controls.Add(this.labelControl7);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.sBut_Cancel);
            this.Controls.Add(this.sbut_OK);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.edtStyle);
            this.Controls.Add(this.edtLine);
            this.Name = "CheckRptCondition";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Mobile QA Report";
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWOc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQNNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FactQCTimeFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FactQCTimeFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FactQCTimeTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FactQCTimeTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_WorkShop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LookUpEdit edtLine;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.SimpleButton sbut_OK;
        private DevExpress.XtraEditors.SimpleButton sBut_Cancel;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.TextEdit edtWOc;
        private DevExpress.XtraEditors.TextEdit edtWO;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.LabelControl labelControl8;
        private DevExpress.XtraEditors.DateEdit date_FromDate;
        private DevExpress.XtraEditors.DateEdit date_ToDate;
        private DevExpress.XtraEditors.LookUpEdit edtStyle;
        private DevExpress.XtraEditors.CheckedComboBoxEdit edtProject;
        private DevExpress.XtraEditors.CheckedComboBoxEdit edtQNNo;
        private DevExpress.XtraEditors.LabelControl labelControl9;
        private DevExpress.XtraEditors.DateEdit date_FactQCTimeFrom;
        private DevExpress.XtraEditors.DateEdit date_FactQCTimeTo;
        private DevExpress.XtraEditors.LabelControl labelControl10;
        private DevExpress.XtraEditors.ComboBoxEdit lue_WorkShop;
        private DevExpress.XtraEditors.ComboBoxEdit lue_Factory;
        private DevExpress.XtraEditors.LabelControl labelControl11;
        private DevExpress.XtraEditors.LabelControl labelControl12;
    }
}