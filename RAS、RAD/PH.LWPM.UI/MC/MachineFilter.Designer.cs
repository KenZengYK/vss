namespace PH.LWPM.UI.MC
{
    partial class MachineFilter
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
            this.T_Desc = new DevExpress.XtraEditors.TextEdit();
            this.L_MCType = new DevExpress.XtraEditors.LookUpEdit();
            this.T_mcid = new System.Windows.Forms.TextBox();
            this.T_Location = new DevExpress.XtraEditors.ComboBoxEdit();
            this.T_wsss = new DevExpress.XtraEditors.ComboBoxEdit();
            this.T_Factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.c_opt_summary = new DevExpress.XtraEditors.PanelControl();
            this.Ot_summaryOnly = new DevExpress.XtraEditors.CheckEdit();
            this.Ot_withoutSummary = new DevExpress.XtraEditors.CheckEdit();
            this.Ot_WithSummary = new DevExpress.XtraEditors.CheckEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.c_ok = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.T_Class = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelGroup = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.c_cancel = new DevExpress.XtraEditors.SimpleButton();
            this.labeltext = new DevExpress.XtraEditors.LabelControl();
            this.textLine = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.T_Desc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.L_MCType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.T_Location.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.T_wsss.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.T_Factory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.c_opt_summary)).BeginInit();
            this.c_opt_summary.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Ot_summaryOnly.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Ot_withoutSummary.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Ot_WithSummary.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.T_Class.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textLine.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // T_Desc
            // 
            this.T_Desc.Location = new System.Drawing.Point(185, 61);
            this.T_Desc.Name = "T_Desc";
            this.T_Desc.Properties.ReadOnly = true;
            this.T_Desc.Size = new System.Drawing.Size(182, 21);
            this.T_Desc.TabIndex = 121;
            // 
            // L_MCType
            // 
            this.L_MCType.EditValue = "";
            this.L_MCType.Location = new System.Drawing.Point(74, 61);
            this.L_MCType.Name = "L_MCType";
            this.L_MCType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.L_MCType.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Code", "Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.L_MCType.Properties.DisplayMember = "Code";
            this.L_MCType.Properties.NullText = "";
            this.L_MCType.Properties.ValueMember = "Code";
            this.L_MCType.Size = new System.Drawing.Size(111, 21);
            this.L_MCType.TabIndex = 120;
            this.L_MCType.Closed += new DevExpress.XtraEditors.Controls.ClosedEventHandler(this.L_MCType_Closed);
            // 
            // T_mcid
            // 
            this.T_mcid.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.T_mcid.Location = new System.Drawing.Point(74, 139);
            this.T_mcid.Name = "T_mcid";
            this.T_mcid.Size = new System.Drawing.Size(124, 22);
            this.T_mcid.TabIndex = 119;
            // 
            // T_Location
            // 
            this.T_Location.Location = new System.Drawing.Point(74, 85);
            this.T_Location.Name = "T_Location";
            this.T_Location.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.T_Location.Size = new System.Drawing.Size(124, 21);
            this.T_Location.TabIndex = 117;
            // 
            // T_wsss
            // 
            this.T_wsss.Location = new System.Drawing.Point(74, 112);
            this.T_wsss.Name = "T_wsss";
            this.T_wsss.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.T_wsss.Size = new System.Drawing.Size(186, 21);
            this.T_wsss.TabIndex = 118;
            // 
            // T_Factory
            // 
            this.T_Factory.Location = new System.Drawing.Point(74, 31);
            this.T_Factory.Name = "T_Factory";
            this.T_Factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.T_Factory.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.T_Factory.Size = new System.Drawing.Size(100, 21);
            this.T_Factory.TabIndex = 5;
            // 
            // c_opt_summary
            // 
            this.c_opt_summary.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.c_opt_summary.Controls.Add(this.Ot_summaryOnly);
            this.c_opt_summary.Controls.Add(this.Ot_withoutSummary);
            this.c_opt_summary.Controls.Add(this.Ot_WithSummary);
            this.c_opt_summary.Location = new System.Drawing.Point(35, 228);
            this.c_opt_summary.Name = "c_opt_summary";
            this.c_opt_summary.Size = new System.Drawing.Size(339, 27);
            this.c_opt_summary.TabIndex = 116;
            this.c_opt_summary.Visible = false;
            // 
            // Ot_summaryOnly
            // 
            this.Ot_summaryOnly.Location = new System.Drawing.Point(230, 8);
            this.Ot_summaryOnly.Name = "Ot_summaryOnly";
            this.Ot_summaryOnly.Properties.Caption = "SummaryOnly";
            this.Ot_summaryOnly.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.Ot_summaryOnly.Properties.RadioGroupIndex = 1;
            this.Ot_summaryOnly.Size = new System.Drawing.Size(104, 19);
            this.Ot_summaryOnly.TabIndex = 2;
            this.Ot_summaryOnly.TabStop = false;
            // 
            // Ot_withoutSummary
            // 
            this.Ot_withoutSummary.Location = new System.Drawing.Point(105, 8);
            this.Ot_withoutSummary.Name = "Ot_withoutSummary";
            this.Ot_withoutSummary.Properties.Caption = "WithoutSummary";
            this.Ot_withoutSummary.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.Ot_withoutSummary.Properties.RadioGroupIndex = 1;
            this.Ot_withoutSummary.Size = new System.Drawing.Size(119, 19);
            this.Ot_withoutSummary.TabIndex = 1;
            this.Ot_withoutSummary.TabStop = false;
            // 
            // Ot_WithSummary
            // 
            this.Ot_WithSummary.EditValue = true;
            this.Ot_WithSummary.Location = new System.Drawing.Point(5, 8);
            this.Ot_WithSummary.Name = "Ot_WithSummary";
            this.Ot_WithSummary.Properties.Caption = "WithSummary";
            this.Ot_WithSummary.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.Ot_WithSummary.Properties.RadioGroupIndex = 1;
            this.Ot_WithSummary.Size = new System.Drawing.Size(103, 19);
            this.Ot_WithSummary.TabIndex = 0;
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(28, 115);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(40, 14);
            this.labelControl5.TabIndex = 115;
            this.labelControl5.Text = "Ws/SS:";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(33, 142);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(35, 14);
            this.labelControl4.TabIndex = 114;
            this.labelControl4.Text = "Mc ID:";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(18, 88);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(50, 14);
            this.labelControl3.TabIndex = 113;
            this.labelControl3.Text = "Location:";
            // 
            // c_ok
            // 
            this.c_ok.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.c_ok.Location = new System.Drawing.Point(252, 296);
            this.c_ok.Name = "c_ok";
            this.c_ok.Size = new System.Drawing.Size(75, 23);
            this.c_ok.TabIndex = 6;
            this.c_ok.Text = "OK";
            this.c_ok.Click += new System.EventHandler(this.c_ok_Click);
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(17, 61);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(51, 14);
            this.labelControl2.TabIndex = 112;
            this.labelControl2.Text = "Mc Type:";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.textLine);
            this.groupControl1.Controls.Add(this.labeltext);
            this.groupControl1.Controls.Add(this.T_Class);
            this.groupControl1.Controls.Add(this.labelGroup);
            this.groupControl1.Controls.Add(this.T_Desc);
            this.groupControl1.Controls.Add(this.L_MCType);
            this.groupControl1.Controls.Add(this.T_mcid);
            this.groupControl1.Controls.Add(this.T_Location);
            this.groupControl1.Controls.Add(this.T_wsss);
            this.groupControl1.Controls.Add(this.T_Factory);
            this.groupControl1.Controls.Add(this.c_opt_summary);
            this.groupControl1.Controls.Add(this.labelControl5);
            this.groupControl1.Controls.Add(this.labelControl4);
            this.groupControl1.Controls.Add(this.labelControl3);
            this.groupControl1.Controls.Add(this.labelControl2);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Location = new System.Drawing.Point(29, 12);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(409, 269);
            this.groupControl1.TabIndex = 5;
            // 
            // T_Class
            // 
            this.T_Class.Location = new System.Drawing.Point(74, 166);
            this.T_Class.Name = "T_Class";
            this.T_Class.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.T_Class.Size = new System.Drawing.Size(186, 21);
            this.T_Class.TabIndex = 123;
            this.T_Class.Visible = false;
            // 
            // labelGroup
            // 
            this.labelGroup.Location = new System.Drawing.Point(0, 169);
            this.labelGroup.Name = "labelGroup";
            this.labelGroup.Size = new System.Drawing.Size(68, 14);
            this.labelGroup.TabIndex = 122;
            this.labelGroup.Text = "Dept Group:";
            this.labelGroup.Visible = false;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(24, 34);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(44, 14);
            this.labelControl1.TabIndex = 111;
            this.labelControl1.Text = "Factory:";
            // 
            // c_cancel
            // 
            this.c_cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.c_cancel.Location = new System.Drawing.Point(345, 296);
            this.c_cancel.Name = "c_cancel";
            this.c_cancel.Size = new System.Drawing.Size(75, 23);
            this.c_cancel.TabIndex = 7;
            this.c_cancel.Text = "Cancel";
            // 
            // labeltext
            // 
            this.labeltext.Location = new System.Drawing.Point(42, 196);
            this.labeltext.Name = "labeltext";
            this.labeltext.Size = new System.Drawing.Size(26, 14);
            this.labeltext.TabIndex = 124;
            this.labeltext.Text = "Line:";
            this.labeltext.Visible = false;
            // 
            // textLine
            // 
            this.textLine.Location = new System.Drawing.Point(74, 193);
            this.textLine.Name = "textLine";
            this.textLine.Size = new System.Drawing.Size(124, 21);
            this.textLine.TabIndex = 125;
            this.textLine.Visible = false;
            // 
            // MachineFilter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(470, 331);
            this.Controls.Add(this.c_ok);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.c_cancel);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "MachineFilter";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "MachineFilter";
            this.Load += new System.EventHandler(this.WorkFilter_Load);
            ((System.ComponentModel.ISupportInitialize)(this.T_Desc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.L_MCType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.T_Location.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.T_wsss.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.T_Factory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.c_opt_summary)).EndInit();
            this.c_opt_summary.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Ot_summaryOnly.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Ot_withoutSummary.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Ot_WithSummary.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.T_Class.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textLine.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit T_Desc;
        public DevExpress.XtraEditors.LookUpEdit L_MCType;
        public System.Windows.Forms.TextBox T_mcid;
        public DevExpress.XtraEditors.ComboBoxEdit T_Location;
        public DevExpress.XtraEditors.ComboBoxEdit T_wsss;
        public DevExpress.XtraEditors.ComboBoxEdit T_Factory;
        public DevExpress.XtraEditors.PanelControl c_opt_summary;
        private DevExpress.XtraEditors.CheckEdit Ot_summaryOnly;
        private DevExpress.XtraEditors.CheckEdit Ot_withoutSummary;
        private DevExpress.XtraEditors.CheckEdit Ot_WithSummary;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.SimpleButton c_ok;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SimpleButton c_cancel;
        public DevExpress.XtraEditors.LabelControl labelGroup;
        public DevExpress.XtraEditors.ComboBoxEdit T_Class;
        public DevExpress.XtraEditors.LabelControl labeltext;
        public DevExpress.XtraEditors.TextEdit textLine;

    }
}