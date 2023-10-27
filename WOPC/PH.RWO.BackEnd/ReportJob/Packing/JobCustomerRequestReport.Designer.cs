namespace PH.RWO.BackEnd.ReportJob.Packing
{
    partial class JobCustomerRequestReport
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
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.editCustomerCodeX = new DevExpress.XtraEditors.TextEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.editBrand = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.editCustomer = new DevExpress.XtraEditors.TextEdit();
            this.editSkind = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editCustomerCodeX.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBrand.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCustomer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSkind.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(16, 49);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(64, 14);
            this.labelControl2.TabIndex = 14;
            this.labelControl2.Text = "Customer：";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.editSkind);
            this.groupControl1.Controls.Add(this.editCustomerCodeX);
            this.groupControl1.Controls.Add(this.labelControl4);
            this.groupControl1.Controls.Add(this.labelControl3);
            this.groupControl1.Controls.Add(this.editBrand);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Controls.Add(this.editCustomer);
            this.groupControl1.Controls.Add(this.labelControl2);
            this.groupControl1.Location = new System.Drawing.Point(20, 32);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.ShowCaption = false;
            this.groupControl1.Size = new System.Drawing.Size(584, 358);
            this.groupControl1.TabIndex = 16;
            this.groupControl1.Text = "groupControl1";
            this.groupControl1.Paint += new System.Windows.Forms.PaintEventHandler(this.groupControl1_Paint);
            // 
            // editCustomerCodeX
            // 
            this.editCustomerCodeX.Location = new System.Drawing.Point(125, 84);
            this.editCustomerCodeX.Name = "editCustomerCodeX";
            this.editCustomerCodeX.Properties.MaxLength = 7;
            this.editCustomerCodeX.Size = new System.Drawing.Size(100, 21);
            this.editCustomerCodeX.TabIndex = 49;
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(16, 87);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(64, 14);
            this.labelControl4.TabIndex = 48;
            this.labelControl4.Text = "CustCode：";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(16, 157);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(41, 14);
            this.labelControl3.TabIndex = 18;
            this.labelControl3.Text = "Skind：";
            // 
            // editBrand
            // 
            this.editBrand.Location = new System.Drawing.Point(125, 116);
            this.editBrand.Name = "editBrand";
            this.editBrand.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editBrand.Properties.MaxLength = 7;
            this.editBrand.Size = new System.Drawing.Size(100, 21);
            this.editBrand.TabIndex = 17;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(16, 119);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(43, 14);
            this.labelControl1.TabIndex = 16;
            this.labelControl1.Text = "Brand：";
            // 
            // editCustomer
            // 
            this.editCustomer.Location = new System.Drawing.Point(125, 46);
            this.editCustomer.Name = "editCustomer";
            this.editCustomer.Properties.MaxLength = 7;
            this.editCustomer.Size = new System.Drawing.Size(100, 21);
            this.editCustomer.TabIndex = 15;
            // 
            // editSkind
            // 
            this.editSkind.Location = new System.Drawing.Point(125, 154);
            this.editSkind.Name = "editSkind";
            this.editSkind.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editSkind.Properties.MaxLength = 7;
            this.editSkind.Size = new System.Drawing.Size(100, 21);
            this.editSkind.TabIndex = 50;
            // 
            // JobCustomerRequestReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl1);
            this.Name = "JobCustomerRequestReport";
            this.Size = new System.Drawing.Size(655, 444);
            this.Load += new System.EventHandler(this.JobCustomerRequestReport_Load);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editCustomerCodeX.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBrand.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCustomer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSkind.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.TextEdit editCustomer;
        private DevExpress.XtraEditors.TextEdit editBrand;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit editCustomerCodeX;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.TextEdit editSkind;
    }
}
