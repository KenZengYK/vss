namespace PH.RWO.BackEnd.ReportJob.Packing
{
    partial class JobCustomerLocationReport
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
            this.editcustomercode = new DevExpress.XtraEditors.TextEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.editBrand = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.editCustomer = new DevExpress.XtraEditors.TextEdit();
            this.editSkind = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editcustomercode.Properties)).BeginInit();
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
            this.groupControl1.Controls.Add(this.editcustomercode);
            this.groupControl1.Controls.Add(this.labelControl4);
            this.groupControl1.Controls.Add(this.labelControl3);
            this.groupControl1.Controls.Add(this.editBrand);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Controls.Add(this.editCustomer);
            this.groupControl1.Controls.Add(this.labelControl2);
            this.groupControl1.Location = new System.Drawing.Point(62, 32);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.ShowCaption = false;
            this.groupControl1.Size = new System.Drawing.Size(530, 269);
            this.groupControl1.TabIndex = 16;
            this.groupControl1.Text = "groupControl1";
            // 
            // editcustomercode
            // 
            this.editcustomercode.Location = new System.Drawing.Point(125, 91);
            this.editcustomercode.Name = "editcustomercode";
            this.editcustomercode.Properties.MaxLength = 7;
            this.editcustomercode.Size = new System.Drawing.Size(100, 21);
            this.editcustomercode.TabIndex = 50;
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(16, 94);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(92, 14);
            this.labelControl4.TabIndex = 49;
            this.labelControl4.Text = "CustomerCode：";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(16, 175);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(41, 14);
            this.labelControl3.TabIndex = 18;
            this.labelControl3.Text = "Skind：";
            // 
            // editBrand
            // 
            this.editBrand.Location = new System.Drawing.Point(125, 134);
            this.editBrand.Name = "editBrand";
            this.editBrand.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editBrand.Properties.MaxLength = 7;
            this.editBrand.Size = new System.Drawing.Size(100, 21);
            this.editBrand.TabIndex = 17;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(16, 137);
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
            this.editSkind.Location = new System.Drawing.Point(125, 172);
            this.editSkind.Name = "editSkind";
            this.editSkind.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editSkind.Properties.MaxLength = 7;
            this.editSkind.Size = new System.Drawing.Size(100, 21);
            this.editSkind.TabIndex = 51;
            // 
            // JobCustomerLocationReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl1);
            this.Name = "JobCustomerLocationReport";
            this.Size = new System.Drawing.Size(718, 470);
            this.Load += new System.EventHandler(this.JobCustomerLocationReport_Load);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editcustomercode.Properties)).EndInit();
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
        private DevExpress.XtraEditors.TextEdit editcustomercode;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.TextEdit editSkind;
    }
}
