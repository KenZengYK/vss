namespace PH.POPC.UI.POPC
{
    partial class POPCInAdvanceAddLogForm
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
            this.panelBottom = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.panelClient = new DevExpress.XtraEditors.PanelControl();
            this.txtStage = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtLine = new DevExpress.XtraEditors.SpinEdit();
            this.txtCoordinator = new DevExpress.XtraEditors.TextEdit();
            this.lbCoordinator = new DevExpress.XtraEditors.LabelControl();
            this.lbLine = new DevExpress.XtraEditors.LabelControl();
            this.txtTargetFinishDate = new DevExpress.XtraEditors.DateEdit();
            this.lbTargetFinishDate = new DevExpress.XtraEditors.LabelControl();
            this.txtCreateDate = new DevExpress.XtraEditors.DateEdit();
            this.lbCreateDate = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.panelBottom)).BeginInit();
            this.panelBottom.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelClient)).BeginInit();
            this.panelClient.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtStage.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCoordinator.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTargetFinishDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTargetFinishDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCreateDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCreateDate.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // panelBottom
            // 
            this.panelBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelBottom.Controls.Add(this.btnCancel);
            this.panelBottom.Controls.Add(this.btnOK);
            this.panelBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelBottom.Location = new System.Drawing.Point(0, 174);
            this.panelBottom.Name = "panelBottom";
            this.panelBottom.Size = new System.Drawing.Size(340, 53);
            this.panelBottom.TabIndex = 1;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(222, 17);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(131, 16);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // panelClient
            // 
            this.panelClient.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelClient.Controls.Add(this.txtStage);
            this.panelClient.Controls.Add(this.labelControl1);
            this.panelClient.Controls.Add(this.txtLine);
            this.panelClient.Controls.Add(this.txtCoordinator);
            this.panelClient.Controls.Add(this.lbCoordinator);
            this.panelClient.Controls.Add(this.lbLine);
            this.panelClient.Controls.Add(this.txtTargetFinishDate);
            this.panelClient.Controls.Add(this.lbTargetFinishDate);
            this.panelClient.Controls.Add(this.txtCreateDate);
            this.panelClient.Controls.Add(this.lbCreateDate);
            this.panelClient.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelClient.Location = new System.Drawing.Point(0, 0);
            this.panelClient.Name = "panelClient";
            this.panelClient.Size = new System.Drawing.Size(340, 174);
            this.panelClient.TabIndex = 2;
            // 
            // txtInAdvanceStage
            // 
            this.txtStage.Location = new System.Drawing.Point(144, 137);
            this.txtStage.Name = "txtInAdvanceStage";
            this.txtStage.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtStage.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtStage.Size = new System.Drawing.Size(156, 21);
            this.txtStage.TabIndex = 12;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(29, 137);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(97, 14);
            this.labelControl1.TabIndex = 11;
            this.labelControl1.Text = "Log\'s Line Status:";
            // 
            // txtLine
            // 
            this.txtLine.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.txtLine.Location = new System.Drawing.Point(144, 108);
            this.txtLine.Name = "txtLine";
            this.txtLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtLine.Properties.IsFloatValue = false;
            this.txtLine.Properties.Mask.EditMask = "N00";
            this.txtLine.Size = new System.Drawing.Size(157, 21);
            this.txtLine.TabIndex = 10;
            // 
            // txtCoordinator
            // 
            this.txtCoordinator.Location = new System.Drawing.Point(143, 78);
            this.txtCoordinator.Name = "txtCoordinator";
            this.txtCoordinator.Size = new System.Drawing.Size(157, 21);
            this.txtCoordinator.TabIndex = 9;
            // 
            // lbCoordinator
            // 
            this.lbCoordinator.Location = new System.Drawing.Point(29, 82);
            this.lbCoordinator.Name = "lbCoordinator";
            this.lbCoordinator.Size = new System.Drawing.Size(67, 14);
            this.lbCoordinator.TabIndex = 8;
            this.lbCoordinator.Text = "Coordinator:";
            // 
            // lbLine
            // 
            this.lbLine.Location = new System.Drawing.Point(29, 110);
            this.lbLine.Name = "lbLine";
            this.lbLine.Size = new System.Drawing.Size(88, 14);
            this.lbLine.TabIndex = 6;
            this.lbLine.Text = "How many Line:";
            // 
            // txtTargetFinishDate
            // 
            this.txtTargetFinishDate.EditValue = null;
            this.txtTargetFinishDate.Location = new System.Drawing.Point(144, 47);
            this.txtTargetFinishDate.Name = "txtTargetFinishDate";
            this.txtTargetFinishDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtTargetFinishDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtTargetFinishDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtTargetFinishDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtTargetFinishDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtTargetFinishDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtTargetFinishDate.Size = new System.Drawing.Size(156, 21);
            this.txtTargetFinishDate.TabIndex = 5;
            // 
            // lbTargetFinishDate
            // 
            this.lbTargetFinishDate.Location = new System.Drawing.Point(29, 50);
            this.lbTargetFinishDate.Name = "lbTargetFinishDate";
            this.lbTargetFinishDate.Size = new System.Drawing.Size(92, 14);
            this.lbTargetFinishDate.TabIndex = 4;
            this.lbTargetFinishDate.Text = "Target Finish dd:";
            // 
            // txtCreateDate
            // 
            this.txtCreateDate.EditValue = null;
            this.txtCreateDate.Location = new System.Drawing.Point(144, 15);
            this.txtCreateDate.Name = "txtCreateDate";
            this.txtCreateDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtCreateDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtCreateDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtCreateDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtCreateDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtCreateDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtCreateDate.Size = new System.Drawing.Size(156, 21);
            this.txtCreateDate.TabIndex = 3;
            // 
            // lbCreateDate
            // 
            this.lbCreateDate.Location = new System.Drawing.Point(29, 18);
            this.lbCreateDate.Name = "lbCreateDate";
            this.lbCreateDate.Size = new System.Drawing.Size(58, 14);
            this.lbCreateDate.TabIndex = 2;
            this.lbCreateDate.Text = "Create dd:";
            // 
            // POPCInAdvanceAddLogForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(340, 227);
            this.Controls.Add(this.panelClient);
            this.Controls.Add(this.panelBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "POPCInAdvanceAddLogForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Create Log";
            ((System.ComponentModel.ISupportInitialize)(this.panelBottom)).EndInit();
            this.panelBottom.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelClient)).EndInit();
            this.panelClient.ResumeLayout(false);
            this.panelClient.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtStage.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCoordinator.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTargetFinishDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTargetFinishDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCreateDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCreateDate.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelBottom;
        private DevExpress.XtraEditors.PanelControl panelClient;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.DateEdit txtCreateDate;
        private DevExpress.XtraEditors.LabelControl lbCreateDate;
        private DevExpress.XtraEditors.DateEdit txtTargetFinishDate;
        private DevExpress.XtraEditors.LabelControl lbTargetFinishDate;
        private DevExpress.XtraEditors.LabelControl lbLine;
        private DevExpress.XtraEditors.TextEdit txtCoordinator;
        private DevExpress.XtraEditors.LabelControl lbCoordinator;
        private DevExpress.XtraEditors.SpinEdit txtLine;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit txtStage;
    }
}