namespace PH.MobileQC.UI
{
    partial class worker_Evaluate
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
            this.edtQC_Timeform = new DevExpress.XtraEditors.DateEdit();
            this.Lue_workshop = new DevExpress.XtraEditors.LookUpEdit();
            this.Lue_line = new DevExpress.XtraEditors.LookUpEdit();
            this.edtQC_TimeTo = new DevExpress.XtraEditors.DateEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.sbut_OK = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.lue_Factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_Timeform.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_Timeform.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Lue_workshop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Lue_line.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // edtQC_Timeform
            // 
            this.edtQC_Timeform.EditValue = null;
            this.edtQC_Timeform.Location = new System.Drawing.Point(74, 90);
            this.edtQC_Timeform.Name = "edtQC_Timeform";
            this.edtQC_Timeform.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtQC_Timeform.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.edtQC_Timeform.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.edtQC_Timeform.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.edtQC_Timeform.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.edtQC_Timeform.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.edtQC_Timeform.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtQC_Timeform.Size = new System.Drawing.Size(106, 21);
            this.edtQC_Timeform.TabIndex = 85;
            // 
            // Lue_workshop
            // 
            this.Lue_workshop.Location = new System.Drawing.Point(74, 57);
            this.Lue_workshop.Name = "Lue_workshop";
            this.Lue_workshop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.Lue_workshop.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Workshop", "Workshop", 15)});
            this.Lue_workshop.Properties.DropDownRows = 10;
            this.Lue_workshop.Properties.NullText = "";
            this.Lue_workshop.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.Lue_workshop.Size = new System.Drawing.Size(227, 21);
            this.Lue_workshop.TabIndex = 86;
            this.Lue_workshop.Tag = "";
            // 
            // Lue_line
            // 
            this.Lue_line.Location = new System.Drawing.Point(74, 123);
            this.Lue_line.Name = "Lue_line";
            this.Lue_line.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.Lue_line.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Line", "line", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.Lue_line.Properties.DropDownRows = 10;
            this.Lue_line.Properties.NullText = "";
            this.Lue_line.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.Lue_line.Size = new System.Drawing.Size(227, 21);
            this.Lue_line.TabIndex = 87;
            this.Lue_line.Tag = "";
            this.Lue_line.Enter += new System.EventHandler(this.Lue_line_Enter);
            // 
            // edtQC_TimeTo
            // 
            this.edtQC_TimeTo.EditValue = null;
            this.edtQC_TimeTo.Location = new System.Drawing.Point(186, 90);
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
            this.edtQC_TimeTo.Size = new System.Drawing.Size(115, 21);
            this.edtQC_TimeTo.TabIndex = 88;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(12, 26);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(44, 14);
            this.labelControl3.TabIndex = 89;
            this.labelControl3.Text = "Factory:";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(12, 59);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(61, 14);
            this.labelControl1.TabIndex = 90;
            this.labelControl1.Text = "WorkShop:";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(12, 91);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(51, 14);
            this.labelControl2.TabIndex = 91;
            this.labelControl2.Text = "QC Time:";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(12, 125);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(26, 14);
            this.labelControl4.TabIndex = 92;
            this.labelControl4.Text = "Line:";
            // 
            // sbut_OK
            // 
            this.sbut_OK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.sbut_OK.Location = new System.Drawing.Point(74, 180);
            this.sbut_OK.Name = "sbut_OK";
            this.sbut_OK.Size = new System.Drawing.Size(75, 23);
            this.sbut_OK.TabIndex = 93;
            this.sbut_OK.Text = "OK";
            this.sbut_OK.Click += new System.EventHandler(this.sbut_OK_Click);
            // 
            // simpleButton1
            // 
            this.simpleButton1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.simpleButton1.Location = new System.Drawing.Point(208, 179);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 94;
            this.simpleButton1.Text = "Cancel";
            // 
            // lue_Factory
            // 
            this.lue_Factory.Location = new System.Drawing.Point(75, 23);
            this.lue_Factory.Name = "lue_Factory";
            this.lue_Factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Factory.Properties.Items.AddRange(new object[] {
            "SL",
            "HK",
            "FJ"});
            this.lue_Factory.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.lue_Factory.Size = new System.Drawing.Size(226, 21);
            this.lue_Factory.TabIndex = 95;
            this.lue_Factory.EditValueChanged += new System.EventHandler(this.lue_Factory_EditValueChanged);
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(181, 93);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(4, 14);
            this.labelControl5.TabIndex = 96;
            this.labelControl5.Text = "-";
            // 
            // worker_Evaluate
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(337, 235);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.lue_Factory);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.sbut_OK);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.edtQC_TimeTo);
            this.Controls.Add(this.Lue_line);
            this.Controls.Add(this.Lue_workshop);
            this.Controls.Add(this.edtQC_Timeform);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "worker_Evaluate";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Worker Evaluate Filter";
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_Timeform.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_Timeform.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Lue_workshop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Lue_line.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQC_TimeTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Factory.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit edtQC_Timeform;
        private DevExpress.XtraEditors.LookUpEdit Lue_workshop;
        private DevExpress.XtraEditors.LookUpEdit Lue_line;
        private DevExpress.XtraEditors.DateEdit edtQC_TimeTo;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.SimpleButton sbut_OK;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.ComboBoxEdit lue_Factory;
        private DevExpress.XtraEditors.LabelControl labelControl5;
    }
}