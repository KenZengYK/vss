namespace PH.POPC.UI.Report
{
    partial class POFormatForm
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
            this.poNewReport1 = new PH.POPC.UI.PONewReport();
            this.SuspendLayout();
            // 
            // poNewReport1
            // 
            this.poNewReport1.DataContext = null;
            this.poNewReport1.FileID = null;
            this.poNewReport1.FirstForm = null;
            this.poNewReport1.FormName = "PONewReport";
            this.poNewReport1.FormTitle = "PH.POPC.UI.PONewReport";
            this.poNewReport1.Headers = null;
            this.poNewReport1.IsCancelList = false;
            this.poNewReport1.ListForm = null;
            this.poNewReport1.Location = new System.Drawing.Point(12, 12);
            this.poNewReport1.MenuID = ((long)(0));
            this.poNewReport1.Name = "poNewReport1";
            this.poNewReport1.NeedCheckPermission = true;
            this.poNewReport1.NextForm = null;
            this.poNewReport1.ParentForm = null;
            this.poNewReport1.PrevForm = null;
            this.poNewReport1.SideProgramID = null;
            this.poNewReport1.Size = new System.Drawing.Size(307, 436);
            this.poNewReport1.TabControls = null;
            this.poNewReport1.TabIndex = 0;
            this.poNewReport1.TabPage = null;
            // 
            // POFormatForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(366, 458);
            this.Controls.Add(this.poNewReport1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "POFormatForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PO Form";
            this.ResumeLayout(false);

        }

        #endregion

        private PONewReport poNewReport1;
    }
}