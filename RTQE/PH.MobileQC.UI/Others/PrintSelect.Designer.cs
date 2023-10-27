namespace PH.MobileQC.UI
{
    partial class PrintSelect
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
            this.lue_Line = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.lue_Project = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.lue_WO = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.lue_Style = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.date_FromTime = new DevExpress.XtraEditors.DateEdit();
            this.date_ToTime = new DevExpress.XtraEditors.DateEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.sbut_OK = new DevExpress.XtraEditors.SimpleButton();
            this.sBut_Cancel = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Line.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Project.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_WO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Style.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromTime.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromTime.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToTime.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToTime.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lue_Line
            // 
            this.lue_Line.Location = new System.Drawing.Point(91, 19);
            this.lue_Line.Name = "lue_Line";
            this.lue_Line.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Line.Properties.NullText = "";
            this.lue_Line.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.lue_Line.Size = new System.Drawing.Size(211, 21);
            this.lue_Line.TabIndex = 0;
            this.lue_Line.Tag = "";
            this.lue_Line.TextChanged += new System.EventHandler(this.lue_Line_TextChanged);
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(40, 22);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(44, 14);
            this.labelControl3.TabIndex = 37;
            this.labelControl3.Text = "組裝線 :";
            // 
            // lue_Project
            // 
            this.lue_Project.Location = new System.Drawing.Point(91, 46);
            this.lue_Project.Name = "lue_Project";
            this.lue_Project.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Project.Properties.NullText = "";
            this.lue_Project.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.lue_Project.Size = new System.Drawing.Size(211, 21);
            this.lue_Project.TabIndex = 1;
            this.lue_Project.Tag = "";
            this.lue_Project.TextChanged += new System.EventHandler(this.lue_Project_TextChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(40, 49);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(44, 14);
            this.labelControl1.TabIndex = 37;
            this.labelControl1.Text = "工程號 :";
            // 
            // lue_WO
            // 
            this.lue_WO.Location = new System.Drawing.Point(91, 100);
            this.lue_WO.Name = "lue_WO";
            this.lue_WO.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_WO.Properties.NullText = "";
            this.lue_WO.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.lue_WO.Size = new System.Drawing.Size(211, 21);
            this.lue_WO.TabIndex = 3;
            this.lue_WO.Tag = "";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(40, 103);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(44, 14);
            this.labelControl2.TabIndex = 37;
            this.labelControl2.Text = "制單號 :";
            // 
            // lue_Style
            // 
            this.lue_Style.Location = new System.Drawing.Point(91, 73);
            this.lue_Style.Name = "lue_Style";
            this.lue_Style.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Style.Properties.NullText = "";
            this.lue_Style.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.lue_Style.Size = new System.Drawing.Size(211, 21);
            this.lue_Style.TabIndex = 2;
            this.lue_Style.Tag = "";
            this.lue_Style.EditValueChanged += new System.EventHandler(this.lue_Style_EditValueChanged);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(40, 76);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(44, 14);
            this.labelControl4.TabIndex = 37;
            this.labelControl4.Text = "客款號 :";
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(36, 135);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(48, 14);
            this.labelControl5.TabIndex = 37;
            this.labelControl5.Text = "時間段 : ";
            // 
            // date_FromTime
            // 
            this.date_FromTime.EditValue = null;
            this.date_FromTime.Location = new System.Drawing.Point(91, 132);
            this.date_FromTime.Name = "date_FromTime";
            this.date_FromTime.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_FromTime.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.date_FromTime.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_FromTime.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.date_FromTime.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_FromTime.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.date_FromTime.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_FromTime.Size = new System.Drawing.Size(90, 21);
            this.date_FromTime.TabIndex = 4;
            this.date_FromTime.Tag = "";
            // 
            // date_ToTime
            // 
            this.date_ToTime.EditValue = null;
            this.date_ToTime.Location = new System.Drawing.Point(214, 132);
            this.date_ToTime.Name = "date_ToTime";
            this.date_ToTime.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_ToTime.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.date_ToTime.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_ToTime.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.date_ToTime.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.date_ToTime.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.date_ToTime.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_ToTime.Size = new System.Drawing.Size(90, 21);
            this.date_ToTime.TabIndex = 5;
            this.date_ToTime.Tag = "";
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(189, 135);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(9, 14);
            this.labelControl6.TabIndex = 37;
            this.labelControl6.Text = "~";
            // 
            // sbut_OK
            // 
            this.sbut_OK.Location = new System.Drawing.Point(91, 173);
            this.sbut_OK.Name = "sbut_OK";
            this.sbut_OK.Size = new System.Drawing.Size(75, 23);
            this.sbut_OK.TabIndex = 6;
            this.sbut_OK.Text = "確定";
            this.sbut_OK.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // sBut_Cancel
            // 
            this.sBut_Cancel.Location = new System.Drawing.Point(194, 173);
            this.sBut_Cancel.Name = "sBut_Cancel";
            this.sBut_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBut_Cancel.TabIndex = 7;
            this.sBut_Cancel.Text = "取消";
            this.sBut_Cancel.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // PrintSelect
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(364, 219);
            this.Controls.Add(this.sBut_Cancel);
            this.Controls.Add(this.sbut_OK);
            this.Controls.Add(this.date_ToTime);
            this.Controls.Add(this.date_FromTime);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.lue_Style);
            this.Controls.Add(this.lue_WO);
            this.Controls.Add(this.lue_Project);
            this.Controls.Add(this.lue_Line);
            this.Name = "PrintSelect";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "選擇打印條件";
            ((System.ComponentModel.ISupportInitialize)(this.lue_Line.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Project.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_WO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Style.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromTime.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_FromTime.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToTime.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_ToTime.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LookUpEdit lue_Line;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LookUpEdit lue_Project;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LookUpEdit lue_WO;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LookUpEdit lue_Style;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.DateEdit date_FromTime;
        private DevExpress.XtraEditors.DateEdit date_ToTime;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.SimpleButton sbut_OK;
        private DevExpress.XtraEditors.SimpleButton sBut_Cancel;
    }
}