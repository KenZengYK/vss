namespace PH.HDO.BackEnd.JOB
{
    partial class HDOSummaryForm
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
            System.Windows.Forms.Label label1;
            this.textStockRoom = new DevExpress.XtraEditors.TextEdit();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.textStockRoom.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            label1.Location = new System.Drawing.Point(17, 57);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(100, 20);
            label1.TabIndex = 20;
            label1.Text = "WareHouse:";
            label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // textStockRoom
            // 
            this.textStockRoom.EditValue = "RT";
            this.textStockRoom.Location = new System.Drawing.Point(123, 56);
            this.textStockRoom.Name = "textStockRoom";
            this.textStockRoom.Size = new System.Drawing.Size(94, 21);
            this.textStockRoom.TabIndex = 21;
            // 
            // HDOSummaryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.textStockRoom);
            this.Controls.Add(label1);
            this.Name = "HDOSummaryForm";
            this.Size = new System.Drawing.Size(289, 165);
            ((System.ComponentModel.ISupportInitialize)(this.textStockRoom.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textStockRoom;
    }
}
