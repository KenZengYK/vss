namespace PH.HDO.BackEnd.JOB
{
    partial class JobGRNReport
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
            this.ceReceivingSL = new DevExpress.XtraEditors.CheckEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.ceReceivingHK = new DevExpress.XtraEditors.CheckEdit();
            this.ceReceivedSL = new DevExpress.XtraEditors.CheckEdit();
            this.ceReceivedHK = new DevExpress.XtraEditors.CheckEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.ceReceivedPackingDetail = new DevExpress.XtraEditors.CheckEdit();
            this.ceReceivedPackingSummary = new DevExpress.XtraEditors.CheckEdit();
            this.ceReceivedALL = new DevExpress.XtraEditors.CheckEdit();
            this.ceReceivingALL = new DevExpress.XtraEditors.CheckEdit();
            this.label3 = new System.Windows.Forms.Label();
            this.chkHSHDOSummary = new DevExpress.XtraEditors.CheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivingSL.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivingHK.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivedSL.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivedHK.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivedPackingDetail.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivedPackingSummary.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivedALL.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivingALL.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkHSHDOSummary.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ceReceivingSL
            // 
            this.ceReceivingSL.Location = new System.Drawing.Point(117, 78);
            this.ceReceivingSL.Name = "ceReceivingSL";
            this.ceReceivingSL.Properties.Caption = "SL CRS";
            this.ceReceivingSL.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.ceReceivingSL.Properties.RadioGroupIndex = 1;
            this.ceReceivingSL.Size = new System.Drawing.Size(116, 19);
            this.ceReceivingSL.TabIndex = 0;
            this.ceReceivingSL.TabStop = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(32, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(215, 12);
            this.label1.TabIndex = 1;
            this.label1.Text = "1. GRN Cargo Incoming preparation:-";
            // 
            // ceReceivingHK
            // 
            this.ceReceivingHK.Location = new System.Drawing.Point(117, 103);
            this.ceReceivingHK.Name = "ceReceivingHK";
            this.ceReceivingHK.Properties.Caption = "HK CCS";
            this.ceReceivingHK.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.ceReceivingHK.Properties.RadioGroupIndex = 1;
            this.ceReceivingHK.Size = new System.Drawing.Size(116, 19);
            this.ceReceivingHK.TabIndex = 2;
            this.ceReceivingHK.TabStop = false;
            // 
            // ceReceivedSL
            // 
            this.ceReceivedSL.Location = new System.Drawing.Point(117, 194);
            this.ceReceivedSL.Name = "ceReceivedSL";
            this.ceReceivedSL.Properties.Caption = "SL CRS";
            this.ceReceivedSL.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.ceReceivedSL.Properties.RadioGroupIndex = 1;
            this.ceReceivedSL.Size = new System.Drawing.Size(116, 19);
            this.ceReceivedSL.TabIndex = 3;
            this.ceReceivedSL.TabStop = false;
            // 
            // ceReceivedHK
            // 
            this.ceReceivedHK.Location = new System.Drawing.Point(117, 219);
            this.ceReceivedHK.Name = "ceReceivedHK";
            this.ceReceivedHK.Properties.Caption = "HK CCS";
            this.ceReceivedHK.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.ceReceivedHK.Properties.RadioGroupIndex = 1;
            this.ceReceivedHK.Size = new System.Drawing.Size(116, 19);
            this.ceReceivedHK.TabIndex = 4;
            this.ceReceivedHK.TabStop = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(32, 146);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(245, 12);
            this.label2.TabIndex = 5;
            this.label2.Text = "2. GRN Cargo Received for HDO handling:-";
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.chkHSHDOSummary);
            this.panelControl1.Controls.Add(this.ceReceivedPackingDetail);
            this.panelControl1.Controls.Add(this.ceReceivedPackingSummary);
            this.panelControl1.Controls.Add(this.ceReceivedALL);
            this.panelControl1.Controls.Add(this.ceReceivingALL);
            this.panelControl1.Controls.Add(this.label1);
            this.panelControl1.Controls.Add(this.label3);
            this.panelControl1.Controls.Add(this.label2);
            this.panelControl1.Controls.Add(this.ceReceivingSL);
            this.panelControl1.Controls.Add(this.ceReceivedHK);
            this.panelControl1.Controls.Add(this.ceReceivingHK);
            this.panelControl1.Controls.Add(this.ceReceivedSL);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(331, 369);
            this.panelControl1.TabIndex = 6;
            // 
            // ceReceivedPackingDetail
            // 
            this.ceReceivedPackingDetail.Location = new System.Drawing.Point(117, 304);
            this.ceReceivedPackingDetail.Name = "ceReceivedPackingDetail";
            this.ceReceivedPackingDetail.Properties.Caption = "Packing Detail";
            this.ceReceivedPackingDetail.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.ceReceivedPackingDetail.Properties.RadioGroupIndex = 1;
            this.ceReceivedPackingDetail.Size = new System.Drawing.Size(160, 19);
            this.ceReceivedPackingDetail.TabIndex = 8;
            this.ceReceivedPackingDetail.TabStop = false;
            // 
            // ceReceivedPackingSummary
            // 
            this.ceReceivedPackingSummary.Location = new System.Drawing.Point(117, 279);
            this.ceReceivedPackingSummary.Name = "ceReceivedPackingSummary";
            this.ceReceivedPackingSummary.Properties.Caption = "Packing Summary";
            this.ceReceivedPackingSummary.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.ceReceivedPackingSummary.Properties.RadioGroupIndex = 1;
            this.ceReceivedPackingSummary.Size = new System.Drawing.Size(160, 19);
            this.ceReceivedPackingSummary.TabIndex = 8;
            this.ceReceivedPackingSummary.TabStop = false;
            // 
            // ceReceivedALL
            // 
            this.ceReceivedALL.Location = new System.Drawing.Point(117, 169);
            this.ceReceivedALL.Name = "ceReceivedALL";
            this.ceReceivedALL.Properties.Caption = "HK CCS / SL CRS";
            this.ceReceivedALL.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.ceReceivedALL.Properties.RadioGroupIndex = 1;
            this.ceReceivedALL.Size = new System.Drawing.Size(116, 19);
            this.ceReceivedALL.TabIndex = 7;
            this.ceReceivedALL.TabStop = false;
            // 
            // ceReceivingALL
            // 
            this.ceReceivingALL.EditValue = true;
            this.ceReceivingALL.Location = new System.Drawing.Point(117, 53);
            this.ceReceivingALL.Name = "ceReceivingALL";
            this.ceReceivingALL.Properties.Caption = "HK CCS / SL CRS";
            this.ceReceivingALL.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.ceReceivingALL.Properties.RadioGroupIndex = 1;
            this.ceReceivingALL.Size = new System.Drawing.Size(116, 19);
            this.ceReceivingALL.TabIndex = 6;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(32, 251);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(215, 12);
            this.label3.TabIndex = 5;
            this.label3.Text = "3. GRN Cargo Received for Packing:-";
            // 
            // chkHSHDOSummary
            // 
            this.chkHSHDOSummary.Location = new System.Drawing.Point(117, 329);
            this.chkHSHDOSummary.Name = "chkHSHDOSummary";
            this.chkHSHDOSummary.Properties.Caption = "HS HDO Summary";
            this.chkHSHDOSummary.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.chkHSHDOSummary.Properties.RadioGroupIndex = 1;
            this.chkHSHDOSummary.Size = new System.Drawing.Size(160, 19);
            this.chkHSHDOSummary.TabIndex = 9;
            this.chkHSHDOSummary.TabStop = false;
            // 
            // JobGRNReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelControl1);
            this.Name = "JobGRNReport";
            this.Size = new System.Drawing.Size(331, 369);
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivingSL.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivingHK.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivedSL.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivedHK.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivedPackingDetail.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivedPackingSummary.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivedALL.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ceReceivingALL.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkHSHDOSummary.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.CheckEdit ceReceivingSL;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.CheckEdit ceReceivingHK;
        private DevExpress.XtraEditors.CheckEdit ceReceivedSL;
        private DevExpress.XtraEditors.CheckEdit ceReceivedHK;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.CheckEdit ceReceivedALL;
        private DevExpress.XtraEditors.CheckEdit ceReceivingALL;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.CheckEdit ceReceivedPackingSummary;
        private DevExpress.XtraEditors.CheckEdit ceReceivedPackingDetail;
        private DevExpress.XtraEditors.CheckEdit chkHSHDOSummary;

    }
}
