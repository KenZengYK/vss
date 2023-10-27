namespace PH.RWO.BackEnd.ReportJob
{
    partial class JobConfirmListReport
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
            this.label1 = new System.Windows.Forms.Label();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.editExfty2 = new DevExpress.XtraEditors.DateEdit();
            this.editExfty1 = new DevExpress.XtraEditors.DateEdit();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.editUser = new DevExpress.XtraEditors.TextEdit();
            this.lblReportType = new System.Windows.Forms.Label();
            this.editCust = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editExfty2.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editExfty2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editExfty1.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editExfty1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editUser.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCust.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(61, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(89, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "Customer Code:";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.editExfty2);
            this.groupControl1.Controls.Add(this.editExfty1);
            this.groupControl1.Controls.Add(this.label3);
            this.groupControl1.Controls.Add(this.label2);
            this.groupControl1.Location = new System.Drawing.Point(63, 60);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(215, 100);
            this.groupControl1.TabIndex = 2;
            this.groupControl1.Text = "Ex-fty date";
            // 
            // editExfty2
            // 
            this.editExfty2.EditValue = null;
            this.editExfty2.Location = new System.Drawing.Point(62, 67);
            this.editExfty2.Name = "editExfty2";
            this.editExfty2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editExfty2.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editExfty2.Size = new System.Drawing.Size(119, 21);
            this.editExfty2.TabIndex = 4;
            // 
            // editExfty1
            // 
            this.editExfty1.EditValue = null;
            this.editExfty1.Location = new System.Drawing.Point(62, 31);
            this.editExfty1.Name = "editExfty1";
            this.editExfty1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editExfty1.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editExfty1.Size = new System.Drawing.Size(119, 21);
            this.editExfty1.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(21, 72);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(23, 12);
            this.label3.TabIndex = 2;
            this.label3.Text = "To:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(21, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 12);
            this.label2.TabIndex = 1;
            this.label2.Text = "From:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(30, 187);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(83, 12);
            this.label4.TabIndex = 3;
            this.label4.Text = "Current User:";
            this.label4.Visible = false;
            // 
            // editUser
            // 
            this.editUser.Location = new System.Drawing.Point(125, 182);
            this.editUser.Name = "editUser";
            this.editUser.Properties.ReadOnly = true;
            this.editUser.Size = new System.Drawing.Size(153, 21);
            this.editUser.TabIndex = 4;
            this.editUser.Visible = false;
            // 
            // lblReportType
            // 
            this.lblReportType.AutoSize = true;
            this.lblReportType.Location = new System.Drawing.Point(195, 218);
            this.lblReportType.Name = "lblReportType";
            this.lblReportType.Size = new System.Drawing.Size(77, 12);
            this.lblReportType.TabIndex = 5;
            this.lblReportType.Text = "WO/RWO/RWOII";
            this.lblReportType.Visible = false;
            // 
            // editCust
            // 
            this.editCust.Location = new System.Drawing.Point(156, 18);
            this.editCust.Name = "editCust";
            this.editCust.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo),
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "Select Customer...")});
            this.editCust.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.editCust.Properties.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.editCust_Properties_ButtonClick);
            this.editCust.Size = new System.Drawing.Size(122, 21);
            this.editCust.TabIndex = 6;
            // 
            // JobConfirmListReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.editCust);
            this.Controls.Add(this.lblReportType);
            this.Controls.Add(this.editUser);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.label1);
            this.Name = "JobConfirmListReport";
            this.Size = new System.Drawing.Size(319, 243);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editExfty2.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editExfty2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editExfty1.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editExfty1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editUser.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCust.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.DateEdit editExfty2;
        private DevExpress.XtraEditors.DateEdit editExfty1;
        private System.Windows.Forms.Label label4;
        public System.Windows.Forms.Label lblReportType;
        public DevExpress.XtraEditors.TextEdit editUser;
        private DevExpress.XtraEditors.ComboBoxEdit editCust;
    }
}
