namespace PH.RWO.UI.Report
{
    partial class OrderDetailReport
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
            this.orderDetail1 = new PH.RWO.BackEnd.ReportJob.OrderDetail();
            ((System.ComponentModel.ISupportInitialize)(this.barManagerPrint)).BeginInit();
            this.SuspendLayout();
            // 
            // barBtnPrintBase
            // 
            this.barBtnPrintBase.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrintBase_ItemClick);
            // 
            // orderDetail1
            // 
            this.orderDetail1.Location = new System.Drawing.Point(12, 31);
            this.orderDetail1.Name = "orderDetail1";
            this.orderDetail1.Size = new System.Drawing.Size(470, 278);
            this.PlatetoolTipController.SetSuperTip(this.orderDetail1, null);
            this.orderDetail1.TabIndex = 4;
            // 
            // OrderDetailReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.orderDetail1);
            this.Name = "OrderDetailReport";
            this.Size = new System.Drawing.Size(485, 353);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.orderDetail1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.barManagerPrint)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private PH.RWO.BackEnd.ReportJob.OrderDetail orderDetail1;
    }
}
