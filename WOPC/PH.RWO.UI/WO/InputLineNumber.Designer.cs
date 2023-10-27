namespace PH.RWO.UI
{
    partial class InputLineNumber
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
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.dxValidationProvider1 = new DevExpress.XtraEditors.DXErrorProvider.DXValidationProvider(this.components);
            this.editNumberOfLine = new DevExpress.XtraEditors.TextEdit();
            this.groupControl3 = new DevExpress.XtraEditors.GroupControl();
            this.editCU = new DevExpress.XtraEditors.TextEdit();
            this.editCUDef = new DevExpress.XtraEditors.TextEdit();
            this.label23 = new System.Windows.Forms.Label();
            this.label24 = new System.Windows.Forms.Label();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.editEFF = new DevExpress.XtraEditors.TextEdit();
            this.editEFFDef = new DevExpress.XtraEditors.TextEdit();
            this.label22 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.label20 = new System.Windows.Forms.Label();
            this.editLineDef = new DevExpress.XtraEditors.TextEdit();
            this.label15 = new System.Windows.Forms.Label();
            this.editSAH = new DevExpress.XtraEditors.TextEdit();
            this.label28 = new System.Windows.Forms.Label();
            this.editWF = new DevExpress.XtraEditors.TextEdit();
            this.label26 = new System.Windows.Forms.Label();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btnReGet = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editNumberOfLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).BeginInit();
            this.groupControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editCU.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCUDef.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editEFF.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editEFFDef.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editLineDef.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSAH.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editWF.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(338, 14);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 30);
            this.btnOK.TabIndex = 23;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // editNumberOfLine
            // 
            this.editNumberOfLine.Location = new System.Drawing.Point(159, 73);
            this.editNumberOfLine.Name = "editNumberOfLine";
            this.editNumberOfLine.Properties.ReadOnly = true;
            this.editNumberOfLine.Size = new System.Drawing.Size(37, 21);
            this.editNumberOfLine.TabIndex = 67;
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.Greater;
            conditionValidatonRule1.ErrorText = "Line must greater than 0.";
            conditionValidatonRule1.Value1 = 0;
            this.dxValidationProvider1.SetValidationRule(this.editNumberOfLine, conditionValidatonRule1);
            // 
            // groupControl3
            // 
            this.groupControl3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl3.Controls.Add(this.editCU);
            this.groupControl3.Controls.Add(this.editCUDef);
            this.groupControl3.Controls.Add(this.label23);
            this.groupControl3.Controls.Add(this.label24);
            this.groupControl3.Location = new System.Drawing.Point(395, 26);
            this.groupControl3.Name = "groupControl3";
            this.groupControl3.Size = new System.Drawing.Size(146, 85);
            this.groupControl3.TabIndex = 70;
            this.groupControl3.Text = "CU (%):";
            // 
            // editCU
            // 
            this.editCU.Location = new System.Drawing.Point(74, 55);
            this.editCU.Name = "editCU";
            this.editCU.Properties.DisplayFormat.FormatString = "N2";
            this.editCU.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.editCU.Properties.EditFormat.FormatString = "N2";
            this.editCU.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.editCU.Properties.ReadOnly = true;
            this.editCU.Size = new System.Drawing.Size(59, 21);
            this.editCU.TabIndex = 70;
            // 
            // editCUDef
            // 
            this.editCUDef.Location = new System.Drawing.Point(74, 29);
            this.editCUDef.Name = "editCUDef";
            this.editCUDef.Properties.DisplayFormat.FormatString = "N2";
            this.editCUDef.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.editCUDef.Properties.ReadOnly = true;
            this.editCUDef.Size = new System.Drawing.Size(59, 21);
            this.editCUDef.TabIndex = 69;
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.Location = new System.Drawing.Point(5, 58);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(54, 14);
            this.label23.TabIndex = 68;
            this.label23.Text = "Planned:";
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Location = new System.Drawing.Point(5, 32);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(50, 14);
            this.label24.TabIndex = 67;
            this.label24.Text = "Default:";
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.editEFF);
            this.groupControl2.Controls.Add(this.editEFFDef);
            this.groupControl2.Controls.Add(this.label22);
            this.groupControl2.Controls.Add(this.label21);
            this.groupControl2.Location = new System.Drawing.Point(235, 26);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(154, 85);
            this.groupControl2.TabIndex = 69;
            this.groupControl2.Text = "line EFF (%):";
            // 
            // editEFF
            // 
            this.editEFF.Location = new System.Drawing.Point(74, 55);
            this.editEFF.Name = "editEFF";
            this.editEFF.Properties.DisplayFormat.FormatString = "N2";
            this.editEFF.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.editEFF.Properties.EditFormat.FormatString = "N2";
            this.editEFF.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.editEFF.Properties.ReadOnly = true;
            this.editEFF.Size = new System.Drawing.Size(61, 21);
            this.editEFF.TabIndex = 70;
            // 
            // editEFFDef
            // 
            this.editEFFDef.Location = new System.Drawing.Point(74, 29);
            this.editEFFDef.Name = "editEFFDef";
            this.editEFFDef.Properties.DisplayFormat.FormatString = "N2";
            this.editEFFDef.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.editEFFDef.Properties.ReadOnly = true;
            this.editEFFDef.Size = new System.Drawing.Size(61, 21);
            this.editEFFDef.TabIndex = 69;
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(5, 58);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(54, 14);
            this.label22.TabIndex = 68;
            this.label22.Text = "Planned:";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(5, 32);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(50, 14);
            this.label21.TabIndex = 67;
            this.label21.Text = "Default:";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.editNumberOfLine);
            this.groupControl1.Controls.Add(this.label20);
            this.groupControl1.Controls.Add(this.editLineDef);
            this.groupControl1.Controls.Add(this.label15);
            this.groupControl1.Location = new System.Drawing.Point(21, 26);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(208, 113);
            this.groupControl1.TabIndex = 68;
            this.groupControl1.Text = "No. of line need";
            // 
            // label20
            // 
            this.label20.Location = new System.Drawing.Point(12, 30);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(137, 34);
            this.label20.TabIndex = 66;
            this.label20.Text = "Projected on Opt 2\'s SW window (for ref):";
            // 
            // editLineDef
            // 
            this.editLineDef.Location = new System.Drawing.Point(159, 32);
            this.editLineDef.Name = "editLineDef";
            this.editLineDef.Properties.DisplayFormat.FormatString = "N1";
            this.editLineDef.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.editLineDef.Properties.ReadOnly = true;
            this.editLineDef.Size = new System.Drawing.Size(37, 21);
            this.editLineDef.TabIndex = 65;
            // 
            // label15
            // 
            this.label15.Location = new System.Drawing.Point(12, 71);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(134, 33);
            this.label15.TabIndex = 63;
            this.label15.Text = "Suggested by PPC (for calculation on Opt 3):";
            // 
            // editSAH
            // 
            this.editSAH.Location = new System.Drawing.Point(469, 118);
            this.editSAH.Name = "editSAH";
            this.editSAH.Properties.Appearance.Options.UseTextOptions = true;
            this.editSAH.Properties.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.editSAH.Properties.DisplayFormat.FormatString = "N4";
            this.editSAH.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.editSAH.Properties.ReadOnly = true;
            this.editSAH.Size = new System.Drawing.Size(61, 21);
            this.editSAH.TabIndex = 86;
            // 
            // label28
            // 
            this.label28.AutoSize = true;
            this.label28.Location = new System.Drawing.Point(403, 121);
            this.label28.Name = "label28";
            this.label28.Size = new System.Drawing.Size(60, 14);
            this.label28.TabIndex = 85;
            this.label28.Text = "Line SAH:";
            // 
            // editWF
            // 
            this.editWF.Location = new System.Drawing.Point(311, 118);
            this.editWF.Name = "editWF";
            this.editWF.Properties.Appearance.Options.UseTextOptions = true;
            this.editWF.Properties.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.editWF.Properties.ReadOnly = true;
            this.editWF.Size = new System.Drawing.Size(61, 21);
            this.editWF.TabIndex = 84;
            // 
            // label26
            // 
            this.label26.AutoSize = true;
            this.label26.Location = new System.Drawing.Point(246, 121);
            this.label26.Name = "label26";
            this.label26.Size = new System.Drawing.Size(59, 14);
            this.label26.TabIndex = 83;
            this.label26.Text = "WF(LB3):";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(453, 14);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 30);
            this.btnCancel.TabIndex = 88;
            this.btnCancel.Text = "Cancel";
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.btnCancel);
            this.panelControl1.Controls.Add(this.btnOK);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(0, 214);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(562, 56);
            this.panelControl1.TabIndex = 89;
            // 
            // btnReGet
            // 
            this.btnReGet.Image = global::PH.RWO.UI.Properties.Resources.arrow_up;
            this.btnReGet.ImageLocation = DevExpress.XtraEditors.ImageLocation.MiddleRight;
            this.btnReGet.Location = new System.Drawing.Point(235, 155);
            this.btnReGet.Name = "btnReGet";
            this.btnReGet.Size = new System.Drawing.Size(154, 33);
            this.btnReGet.TabIndex = 87;
            this.btnReGet.Text = "Refresh from LWPM";
            this.btnReGet.Click += new System.EventHandler(this.btnReGet_Click);
            // 
            // InputLineNumber
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(562, 270);
            this.Controls.Add(this.btnReGet);
            this.Controls.Add(this.editSAH);
            this.Controls.Add(this.label28);
            this.Controls.Add(this.editWF);
            this.Controls.Add(this.label26);
            this.Controls.Add(this.groupControl3);
            this.Controls.Add(this.groupControl2);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.panelControl1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InputLineNumber";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Pls Input Line Number";
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editNumberOfLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).EndInit();
            this.groupControl3.ResumeLayout(false);
            this.groupControl3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editCU.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCUDef.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            this.groupControl2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editEFF.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editEFFDef.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.editLineDef.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSAH.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editWF.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.DXErrorProvider.DXValidationProvider dxValidationProvider1;
        private DevExpress.XtraEditors.GroupControl groupControl3;
        private DevExpress.XtraEditors.TextEdit editCU;
        private DevExpress.XtraEditors.TextEdit editCUDef;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Label label24;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.TextEdit editEFF;
        private DevExpress.XtraEditors.TextEdit editEFFDef;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Label label21;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.TextEdit editNumberOfLine;
        private System.Windows.Forms.Label label20;
        private DevExpress.XtraEditors.TextEdit editLineDef;
        private System.Windows.Forms.Label label15;
        private DevExpress.XtraEditors.TextEdit editSAH;
        private System.Windows.Forms.Label label28;
        private DevExpress.XtraEditors.TextEdit editWF;
        private System.Windows.Forms.Label label26;
        private DevExpress.XtraEditors.SimpleButton btnReGet;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.PanelControl panelControl1;
    }
}