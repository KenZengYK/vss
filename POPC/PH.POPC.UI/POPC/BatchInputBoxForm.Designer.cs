namespace PH.POPC.UI.POPC
{
    partial class BatchInputBoxForm
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
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.panelBottom = new DevExpress.XtraEditors.PanelControl();
            this.TabControl = new DevExpress.XtraTab.XtraTabControl();
            this.TabPage_String = new DevExpress.XtraTab.XtraTabPage();
            this.txtInputString = new DevExpress.XtraEditors.TextEdit();
            this.lbTitle_String = new DevExpress.XtraEditors.LabelControl();
            this.TabPage_Date = new DevExpress.XtraTab.XtraTabPage();
            this.txtInputDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.TabPage_ActionLogCmpl = new DevExpress.XtraTab.XtraTabPage();
            this.txtActionLogCmpl = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.panelBottom)).BeginInit();
            this.panelBottom.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.TabControl)).BeginInit();
            this.TabControl.SuspendLayout();
            this.TabPage_String.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtInputString.Properties)).BeginInit();
            this.TabPage_Date.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtInputDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtInputDate.Properties)).BeginInit();
            this.TabPage_ActionLogCmpl.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtActionLogCmpl.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(153, 14);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "OK";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(264, 14);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 3;
            this.btnCancel.Text = "Cancel";
            // 
            // panelBottom
            // 
            this.panelBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelBottom.Controls.Add(this.btnOK);
            this.panelBottom.Controls.Add(this.btnCancel);
            this.panelBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelBottom.Location = new System.Drawing.Point(0, 177);
            this.panelBottom.Name = "panelBottom";
            this.panelBottom.Size = new System.Drawing.Size(428, 49);
            this.panelBottom.TabIndex = 4;
            // 
            // TabControl
            // 
            this.TabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.TabControl.Location = new System.Drawing.Point(0, 0);
            this.TabControl.Name = "TabControl";
            this.TabControl.SelectedTabPage = this.TabPage_String;
            this.TabControl.Size = new System.Drawing.Size(428, 177);
            this.TabControl.TabIndex = 5;
            this.TabControl.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.TabPage_String,
            this.TabPage_Date,
            this.TabPage_ActionLogCmpl});
            this.TabControl.Text = "xtraTabControl1";
            // 
            // TabPage_String
            // 
            this.TabPage_String.Controls.Add(this.txtInputString);
            this.TabPage_String.Controls.Add(this.lbTitle_String);
            this.TabPage_String.Name = "TabPage_String";
            this.TabPage_String.Size = new System.Drawing.Size(419, 145);
            this.TabPage_String.Text = "String";
            // 
            // txtInputString
            // 
            this.txtInputString.Location = new System.Drawing.Point(33, 63);
            this.txtInputString.Name = "txtInputString";
            this.txtInputString.Size = new System.Drawing.Size(303, 21);
            this.txtInputString.TabIndex = 1;
            // 
            // lbTitle_String
            // 
            this.lbTitle_String.Location = new System.Drawing.Point(33, 24);
            this.lbTitle_String.Name = "lbTitle_String";
            this.lbTitle_String.Size = new System.Drawing.Size(85, 14);
            this.lbTitle_String.TabIndex = 0;
            this.lbTitle_String.Text = "Payment Done:";
            // 
            // TabPage_Date
            // 
            this.TabPage_Date.Controls.Add(this.txtInputDate);
            this.TabPage_Date.Controls.Add(this.labelControl1);
            this.TabPage_Date.Name = "TabPage_Date";
            this.TabPage_Date.Size = new System.Drawing.Size(419, 145);
            this.TabPage_Date.Text = "Date";
            // 
            // txtInputDate
            // 
            this.txtInputDate.EditValue = null;
            this.txtInputDate.Location = new System.Drawing.Point(30, 54);
            this.txtInputDate.Name = "txtInputDate";
            this.txtInputDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtInputDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtInputDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtInputDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtInputDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtInputDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtInputDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtInputDate.Size = new System.Drawing.Size(185, 21);
            this.txtInputDate.TabIndex = 2;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(30, 21);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(44, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Paid dd:";
            // 
            // TabPage_ActionLogCmpl
            // 
            this.TabPage_ActionLogCmpl.Controls.Add(this.txtActionLogCmpl);
            this.TabPage_ActionLogCmpl.Controls.Add(this.labelControl2);
            this.TabPage_ActionLogCmpl.Name = "TabPage_ActionLogCmpl";
            this.TabPage_ActionLogCmpl.Size = new System.Drawing.Size(419, 145);
            this.TabPage_ActionLogCmpl.Text = "Action Log Cmpl";
            // 
            // txtActionLogCmpl
            // 
            this.txtActionLogCmpl.Location = new System.Drawing.Point(31, 55);
            this.txtActionLogCmpl.Name = "txtActionLogCmpl";
            this.txtActionLogCmpl.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtActionLogCmpl.Properties.NullText = "";
            this.txtActionLogCmpl.Size = new System.Drawing.Size(213, 21);
            this.txtActionLogCmpl.TabIndex = 3;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(31, 23);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(80, 14);
            this.labelControl2.TabIndex = 2;
            this.labelControl2.Text = "This log Cmpl :";
            // 
            // BatchInputBoxForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(428, 226);
            this.Controls.Add(this.TabControl);
            this.Controls.Add(this.panelBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "BatchInputBoxForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Batch Edit";
            ((System.ComponentModel.ISupportInitialize)(this.panelBottom)).EndInit();
            this.panelBottom.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.TabControl)).EndInit();
            this.TabControl.ResumeLayout(false);
            this.TabPage_String.ResumeLayout(false);
            this.TabPage_String.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtInputString.Properties)).EndInit();
            this.TabPage_Date.ResumeLayout(false);
            this.TabPage_Date.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtInputDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtInputDate.Properties)).EndInit();
            this.TabPage_ActionLogCmpl.ResumeLayout(false);
            this.TabPage_ActionLogCmpl.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtActionLogCmpl.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.PanelControl panelBottom;
        private DevExpress.XtraTab.XtraTabControl TabControl;
        private DevExpress.XtraTab.XtraTabPage TabPage_String;
        private DevExpress.XtraEditors.LabelControl lbTitle_String;
        private DevExpress.XtraTab.XtraTabPage TabPage_Date;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.DateEdit txtInputDate;
        private DevExpress.XtraEditors.TextEdit txtInputString;
        private DevExpress.XtraTab.XtraTabPage TabPage_ActionLogCmpl;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LookUpEdit txtActionLogCmpl;

    }
}