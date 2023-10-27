namespace PH.FabricInspection.UI
{
    partial class GetListFromDate
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
            this.sBtn_Get = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.dateEdit_FromDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.dateEdit_EndDate = new DevExpress.XtraEditors.DateEdit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_FromDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_FromDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EndDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EndDate.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // sBtn_Get
            // 
            this.sBtn_Get.Location = new System.Drawing.Point(54, 129);
            this.sBtn_Get.Name = "sBtn_Get";
            this.sBtn_Get.Size = new System.Drawing.Size(75, 23);
            this.sBtn_Get.TabIndex = 0;
            this.sBtn_Get.Text = "Get";
            this.sBtn_Get.Click += new System.EventHandler(this.sBtn_Get_Click);
            // 
            // sBtn_Cancel
            // 
            this.sBtn_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.sBtn_Cancel.Location = new System.Drawing.Point(135, 129);
            this.sBtn_Cancel.Name = "sBtn_Cancel";
            this.sBtn_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBtn_Cancel.TabIndex = 0;
            this.sBtn_Cancel.Text = "Cancel";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(39, 36);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(31, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "From:";
            // 
            // dateEdit_FromDate
            // 
            this.dateEdit_FromDate.EditValue = null;
            this.dateEdit_FromDate.Location = new System.Drawing.Point(80, 34);
            this.dateEdit_FromDate.Name = "dateEdit_FromDate";
            this.dateEdit_FromDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_FromDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit_FromDate.Size = new System.Drawing.Size(133, 21);
            this.dateEdit_FromDate.TabIndex = 2;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(39, 83);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(25, 14);
            this.labelControl2.TabIndex = 1;
            this.labelControl2.Text = "End:";
            // 
            // dateEdit_EndDate
            // 
            this.dateEdit_EndDate.EditValue = null;
            this.dateEdit_EndDate.Location = new System.Drawing.Point(80, 80);
            this.dateEdit_EndDate.Name = "dateEdit_EndDate";
            this.dateEdit_EndDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_EndDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit_EndDate.Size = new System.Drawing.Size(133, 21);
            this.dateEdit_EndDate.TabIndex = 2;
            // 
            // GetListFromDate
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(268, 164);
            this.Controls.Add(this.dateEdit_EndDate);
            this.Controls.Add(this.dateEdit_FromDate);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.sBtn_Cancel);
            this.Controls.Add(this.sBtn_Get);
            this.Name = "GetListFromDate";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "GetListFromDate";
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_FromDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_FromDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EndDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EndDate.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton sBtn_Get;
        private DevExpress.XtraEditors.SimpleButton sBtn_Cancel;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.DateEdit dateEdit_FromDate;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.DateEdit dateEdit_EndDate;
    }
}