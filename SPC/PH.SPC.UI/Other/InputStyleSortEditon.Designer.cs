namespace PH.SPC.UI
{
    partial class InputStyleSortEditon
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.editNew = new DevExpress.XtraEditors.SpinEdit();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.editDefault = new DevExpress.XtraEditors.TextEdit();
            this.btnDefault = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.editNew.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editDefault.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(19, 27);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(64, 13);
            this.labelControl1.TabIndex = 40;
            this.labelControl1.Text = "默認版本號:";
            // 
            // editNew
            // 
            this.editNew.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.editNew.Location = new System.Drawing.Point(117, 63);
            this.editNew.Name = "editNew";
            this.editNew.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.editNew.Properties.Appearance.Options.UseFont = true;
            this.editNew.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editNew.Properties.IsFloatValue = false;
            this.editNew.Properties.Mask.EditMask = "N00";
            this.editNew.Size = new System.Drawing.Size(70, 26);
            this.editNew.TabIndex = 1;
            this.editNew.Tag = "DifferenceDays";
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(200, 136);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 27);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.btnDefault);
            this.panelControl1.Controls.Add(this.editDefault);
            this.panelControl1.Controls.Add(this.labelControl2);
            this.panelControl1.Controls.Add(this.labelControl1);
            this.panelControl1.Controls.Add(this.editNew);
            this.panelControl1.Location = new System.Drawing.Point(12, 12);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(268, 118);
            this.panelControl1.TabIndex = 41;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(19, 71);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(64, 13);
            this.labelControl2.TabIndex = 41;
            this.labelControl2.Text = "新的版本號:";
            // 
            // editDefault
            // 
            this.editDefault.Location = new System.Drawing.Point(117, 24);
            this.editDefault.Name = "editDefault";
            this.editDefault.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10F);
            this.editDefault.Properties.Appearance.Options.UseFont = true;
            this.editDefault.Properties.Appearance.Options.UseTextOptions = true;
            this.editDefault.Properties.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.editDefault.Properties.ReadOnly = true;
            this.editDefault.Size = new System.Drawing.Size(70, 23);
            this.editDefault.TabIndex = 5;
            this.editDefault.TabStop = false;
            // 
            // btnDefault
            // 
            this.btnDefault.Location = new System.Drawing.Point(205, 62);
            this.btnDefault.Name = "btnDefault";
            this.btnDefault.Size = new System.Drawing.Size(58, 27);
            this.btnDefault.TabIndex = 4;
            this.btnDefault.Text = "默認";
            this.btnDefault.Click += new System.EventHandler(this.btnDefault_Click);
            // 
            // InputStyleSortEditon
            // 
            this.AcceptButton = this.btnOK;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(292, 175);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.btnOK);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InputStyleSortEditon";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "輸入製作順序(版本)號";
            ((System.ComponentModel.ISupportInitialize)(this.editNew.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editDefault.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SpinEdit editNew;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit editDefault;
        private DevExpress.XtraEditors.SimpleButton btnDefault;
    }
}