namespace PH.RWO.BackEnd.ReportJob.Packing
{
    partial class JobPackingWOSupplementReport
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
            this.editWorkOrderNo = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.editSalesOrderNo = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editWorkOrderNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSalesOrderNo.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(16, 49);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(93, 14);
            this.labelControl2.TabIndex = 14;
            this.labelControl2.Text = "Sales Order No：";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.editWorkOrderNo);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Controls.Add(this.editSalesOrderNo);
            this.groupControl1.Controls.Add(this.labelControl2);
            this.groupControl1.Location = new System.Drawing.Point(20, 32);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.ShowCaption = false;
            this.groupControl1.Size = new System.Drawing.Size(256, 135);
            this.groupControl1.TabIndex = 16;
            this.groupControl1.Text = "groupControl1";
            // 
            // editWorkOrderNo
            // 
            this.editWorkOrderNo.Location = new System.Drawing.Point(125, 86);
            this.editWorkOrderNo.Name = "editWorkOrderNo";
            this.editWorkOrderNo.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editWorkOrderNo.Properties.MaxLength = 7;
            this.editWorkOrderNo.Size = new System.Drawing.Size(100, 21);
            this.editWorkOrderNo.TabIndex = 17;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(16, 89);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(95, 14);
            this.labelControl1.TabIndex = 16;
            this.labelControl1.Text = "Work Order No：";
            // 
            // editSalesOrderNo
            // 
            this.editSalesOrderNo.Location = new System.Drawing.Point(125, 46);
            this.editSalesOrderNo.Name = "editSalesOrderNo";
            this.editSalesOrderNo.Properties.MaxLength = 7;
            this.editSalesOrderNo.Size = new System.Drawing.Size(100, 21);
            this.editSalesOrderNo.TabIndex = 15;
            // 
            // JobPackingRequestReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl1);
            this.Name = "JobPackingRequestReport";
            this.Size = new System.Drawing.Size(672, 369);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editWorkOrderNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSalesOrderNo.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.TextEdit editSalesOrderNo;
        private DevExpress.XtraEditors.TextEdit editWorkOrderNo;
        private DevExpress.XtraEditors.LabelControl labelControl1;
    }
}
