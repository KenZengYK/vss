namespace PH.HDO.UI.GRN
{
    partial class QueryHDOInformation
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.RadGrpDataType = new DevExpress.XtraEditors.RadioGroup();
            this.RadGrpDateType = new DevExpress.XtraEditors.RadioGroup();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.dateEditStrat = new DevExpress.XtraEditors.DateEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.dateEditEnd = new DevExpress.XtraEditors.DateEdit();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.RadGrpDataType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.RadGrpDateType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditStrat.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditStrat.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditEnd.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(32, 22);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(54, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Data type";
            // 
            // RadGrpDataType
            // 
            this.RadGrpDataType.EditValue = "HDOH";
            this.RadGrpDataType.Location = new System.Drawing.Point(102, 22);
            this.RadGrpDataType.Name = "RadGrpDataType";
            this.RadGrpDataType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("HDOH", "HDOH"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("other", "Others (without HDOH )"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("All", "All")});
            this.RadGrpDataType.Size = new System.Drawing.Size(189, 55);
            this.RadGrpDataType.TabIndex = 1;
            // 
            // RadGrpDateType
            // 
            this.RadGrpDateType.Location = new System.Drawing.Point(102, 83);
            this.RadGrpDateType.Name = "RadGrpDateType";
            this.RadGrpDateType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("PlannedDate", "Planned Date"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ReleasedDate", "Released Date"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("TransferredDate", "Transferred Date")});
            this.RadGrpDateType.Size = new System.Drawing.Size(344, 27);
            this.RadGrpDateType.TabIndex = 3;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(32, 82);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(55, 14);
            this.labelControl2.TabIndex = 2;
            this.labelControl2.Text = "Date type";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(32, 125);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(64, 14);
            this.labelControl3.TabIndex = 4;
            this.labelControl3.Text = "Date Range";
            // 
            // dateEditStrat
            // 
            this.dateEditStrat.EditValue = null;
            this.dateEditStrat.Location = new System.Drawing.Point(102, 125);
            this.dateEditStrat.Name = "dateEditStrat";
            this.dateEditStrat.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEditStrat.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.dateEditStrat.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dateEditStrat.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.dateEditStrat.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dateEditStrat.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.dateEditStrat.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEditStrat.Size = new System.Drawing.Size(100, 21);
            this.dateEditStrat.TabIndex = 5;
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(208, 128);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(12, 14);
            this.labelControl4.TabIndex = 6;
            this.labelControl4.Text = "to";
            // 
            // dateEditEnd
            // 
            this.dateEditEnd.EditValue = null;
            this.dateEditEnd.Location = new System.Drawing.Point(226, 125);
            this.dateEditEnd.Name = "dateEditEnd";
            this.dateEditEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEditEnd.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.dateEditEnd.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dateEditEnd.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.dateEditEnd.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dateEditEnd.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.dateEditEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEditEnd.Size = new System.Drawing.Size(100, 21);
            this.dateEditEnd.TabIndex = 7;
            // 
            // simpleButton1
            // 
            this.simpleButton1.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.simpleButton1.Location = new System.Drawing.Point(176, 168);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 8;
            this.simpleButton1.Text = "OK";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // QueryHDOInformation
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(483, 207);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.dateEditEnd);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.dateEditStrat);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.RadGrpDateType);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.RadGrpDataType);
            this.Controls.Add(this.labelControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "QueryHDOInformation";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            ((System.ComponentModel.ISupportInitialize)(this.RadGrpDataType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.RadGrpDateType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditStrat.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditStrat.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditEnd.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.RadioGroup RadGrpDataType;
        private DevExpress.XtraEditors.RadioGroup RadGrpDateType;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.DateEdit dateEditStrat;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.DateEdit dateEditEnd;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
    }
}