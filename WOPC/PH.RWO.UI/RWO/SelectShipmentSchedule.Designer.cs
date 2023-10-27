namespace PH.RWO.UI.RWO
{
    partial class SelectShipmentSchedule
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
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.DEStartDate = new DevExpress.XtraEditors.DateEdit();
            this.DEEndDate = new DevExpress.XtraEditors.DateEdit();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.cbProject = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.DEStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DEStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DEEndDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DEEndDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbProject.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(95, 60);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(58, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Project No";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(95, 111);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(54, 14);
            this.labelControl2.TabIndex = 3;
            this.labelControl2.Text = "ETD From";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(95, 161);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(42, 14);
            this.labelControl3.TabIndex = 4;
            this.labelControl3.Text = "ETD To";
            // 
            // DEStartDate
            // 
            this.DEStartDate.EditValue = null;
            this.DEStartDate.Location = new System.Drawing.Point(165, 108);
            this.DEStartDate.Name = "DEStartDate";
            this.DEStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.DEStartDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.DEStartDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.DEStartDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.DEStartDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.DEStartDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.DEStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.DEStartDate.Size = new System.Drawing.Size(149, 21);
            this.DEStartDate.TabIndex = 5;
            // 
            // DEEndDate
            // 
            this.DEEndDate.EditValue = null;
            this.DEEndDate.Location = new System.Drawing.Point(165, 158);
            this.DEEndDate.Name = "DEEndDate";
            this.DEEndDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.DEEndDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.DEEndDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.DEEndDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.DEEndDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.DEEndDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.DEEndDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.DEEndDate.Size = new System.Drawing.Size(149, 21);
            this.DEEndDate.TabIndex = 6;
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(165, 215);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(48, 23);
            this.simpleButton1.TabIndex = 7;
            this.simpleButton1.Text = "確定";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // simpleButton2
            // 
            this.simpleButton2.Location = new System.Drawing.Point(246, 215);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(48, 23);
            this.simpleButton2.TabIndex = 8;
            this.simpleButton2.Text = "重置";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // cbProject
            // 
            this.cbProject.Location = new System.Drawing.Point(165, 57);
            this.cbProject.Name = "cbProject";
            this.cbProject.Size = new System.Drawing.Size(149, 21);
            this.cbProject.TabIndex = 9;
            // 
            // SelectShipmentSchedule
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(451, 325);
            this.Controls.Add(this.cbProject);
            this.Controls.Add(this.simpleButton2);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.DEEndDate);
            this.Controls.Add(this.DEStartDate);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Name = "SelectShipmentSchedule";
            this.Text = "查詢";
            ((System.ComponentModel.ISupportInitialize)(this.DEStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DEStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DEEndDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DEEndDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbProject.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.DateEdit DEStartDate;
        private DevExpress.XtraEditors.DateEdit DEEndDate;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private DevExpress.XtraEditors.TextEdit cbProject;
    }
}