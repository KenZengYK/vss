namespace PH.RWO.BackEnd
{
    partial class JobGetAS400Data
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.editCompany = new DevExpress.XtraEditors.TextEdit();
            this.editOrdn = new DevExpress.XtraEditors.TextEdit();
            this.editProject = new DevExpress.XtraEditors.TextEdit();
            this.lblProject = new DevExpress.XtraEditors.LabelControl();
            this.btnGetSO = new DevExpress.XtraEditors.SimpleButton();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            ((System.ComponentModel.ISupportInitialize)(this.editCompany.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editOrdn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(34, 33);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(50, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Company";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(34, 77);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(85, 14);
            this.labelControl2.TabIndex = 1;
            this.labelControl2.Text = "Sales Order No.";
            // 
            // editCompany
            // 
            this.editCompany.EditValue = "P1";
            this.editCompany.Location = new System.Drawing.Point(139, 30);
            this.editCompany.Name = "editCompany";
            this.editCompany.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editCompany.Properties.MaxLength = 2;
            this.editCompany.Size = new System.Drawing.Size(53, 21);
            this.editCompany.TabIndex = 4;
            // 
            // editOrdn
            // 
            this.editOrdn.EditValue = "";
            this.editOrdn.Location = new System.Drawing.Point(138, 74);
            this.editOrdn.Name = "editOrdn";
            this.editOrdn.Properties.Mask.EditMask = "\\d?\\d?\\d?\\d?\\d?\\d?\\d?";
            this.editOrdn.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.RegEx;
            this.editOrdn.Properties.Mask.ShowPlaceHolders = false;
            this.editOrdn.Properties.MaxLength = 7;
            this.editOrdn.Size = new System.Drawing.Size(118, 21);
            this.editOrdn.TabIndex = 5;
            // 
            // editProject
            // 
            this.editProject.EditValue = "";
            this.editProject.Location = new System.Drawing.Point(109, 66);
            this.editProject.Name = "editProject";
            this.editProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editProject.Properties.MaxLength = 20;
            this.editProject.Size = new System.Drawing.Size(118, 21);
            this.editProject.TabIndex = 7;
            // 
            // lblProject
            // 
            this.lblProject.Location = new System.Drawing.Point(27, 69);
            this.lblProject.Name = "lblProject";
            this.lblProject.Size = new System.Drawing.Size(62, 14);
            this.lblProject.TabIndex = 6;
            this.lblProject.Text = "Project No.";
            // 
            // btnGetSO
            // 
            this.btnGetSO.Location = new System.Drawing.Point(16, 15);
            this.btnGetSO.Name = "btnGetSO";
            this.btnGetSO.Size = new System.Drawing.Size(242, 28);
            this.btnGetSO.TabIndex = 8;
            this.btnGetSO.Text = "<-- get Sales Order No from Project No";
            this.btnGetSO.Click += new System.EventHandler(this.btnGetSO_Click);
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.btnGetSO);
            this.groupControl1.Controls.Add(this.editProject);
            this.groupControl1.Controls.Add(this.lblProject);
            this.groupControl1.Location = new System.Drawing.Point(283, 55);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.ShowCaption = false;
            this.groupControl1.Size = new System.Drawing.Size(277, 121);
            this.groupControl1.TabIndex = 9;
            this.groupControl1.Text = "groupControl1";
            // 
            // JobGetAS400Data
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.editOrdn);
            this.Controls.Add(this.editCompany);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Name = "JobGetAS400Data";
            this.Size = new System.Drawing.Size(613, 352);
            ((System.ComponentModel.ISupportInitialize)(this.editCompany.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editOrdn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit editCompany;
        private DevExpress.XtraEditors.TextEdit editOrdn;
        private DevExpress.XtraEditors.TextEdit editProject;
        private DevExpress.XtraEditors.LabelControl lblProject;
        private DevExpress.XtraEditors.SimpleButton btnGetSO;
        private DevExpress.XtraEditors.GroupControl groupControl1;
    }
}
