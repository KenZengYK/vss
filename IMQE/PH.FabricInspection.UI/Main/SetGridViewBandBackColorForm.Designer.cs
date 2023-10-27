namespace PH.FabricInspection.UI.Main
{
    partial class SetGridViewBandBackColorForm
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
            this.btnColor1 = new DevExpress.XtraEditors.SimpleButton();
            this.btnColor2 = new DevExpress.XtraEditors.SimpleButton();
            this.colorEdit1 = new DevExpress.XtraEditors.ColorEdit();
            this.colorEdit2 = new DevExpress.XtraEditors.ColorEdit();
            this.txtFlag = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtBandName = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.colorEdit3 = new DevExpress.XtraEditors.ColorEdit();
            this.btnColor3 = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFlag.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBandName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit3.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnColor1
            // 
            this.btnColor1.Location = new System.Drawing.Point(212, 38);
            this.btnColor1.Name = "btnColor1";
            this.btnColor1.Size = new System.Drawing.Size(75, 23);
            this.btnColor1.TabIndex = 0;
            this.btnColor1.Text = "Set Color1";
            this.btnColor1.Click += new System.EventHandler(this.btnColor1_Click);
            // 
            // btnColor2
            // 
            this.btnColor2.Location = new System.Drawing.Point(212, 72);
            this.btnColor2.Name = "btnColor2";
            this.btnColor2.Size = new System.Drawing.Size(75, 23);
            this.btnColor2.TabIndex = 1;
            this.btnColor2.Text = "Set Color2";
            this.btnColor2.Click += new System.EventHandler(this.btnColor2_Click);
            // 
            // colorEdit1
            // 
            this.colorEdit1.EditValue = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colorEdit1.Location = new System.Drawing.Point(48, 40);
            this.colorEdit1.Name = "colorEdit1";
            this.colorEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.colorEdit1.Size = new System.Drawing.Size(145, 21);
            this.colorEdit1.TabIndex = 2;
            // 
            // colorEdit2
            // 
            this.colorEdit2.EditValue = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colorEdit2.Location = new System.Drawing.Point(48, 74);
            this.colorEdit2.Name = "colorEdit2";
            this.colorEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.colorEdit2.Size = new System.Drawing.Size(145, 21);
            this.colorEdit2.TabIndex = 3;
            // 
            // txtFlag
            // 
            this.txtFlag.EditValue = "Fabric";
            this.txtFlag.Location = new System.Drawing.Point(48, 10);
            this.txtFlag.Name = "txtFlag";
            this.txtFlag.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtFlag.Properties.Items.AddRange(new object[] {
            "Fabric",
            "BandLace",
            "Elastic",
            "BraCup",
            "Accessories"});
            this.txtFlag.Size = new System.Drawing.Size(145, 21);
            this.txtFlag.TabIndex = 4;
            // 
            // txtBandName
            // 
            this.txtBandName.Location = new System.Drawing.Point(48, 159);
            this.txtBandName.Name = "txtBandName";
            this.txtBandName.Size = new System.Drawing.Size(239, 21);
            this.txtBandName.TabIndex = 5;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(48, 143);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(66, 14);
            this.labelControl1.TabIndex = 6;
            this.labelControl1.Text = "Band Name:";
            // 
            // colorEdit3
            // 
            this.colorEdit3.EditValue = System.Drawing.Color.FromArgb(((int)(((byte)(217)))), ((int)(((byte)(217)))), ((int)(((byte)(217)))));
            this.colorEdit3.Location = new System.Drawing.Point(48, 107);
            this.colorEdit3.Name = "colorEdit3";
            this.colorEdit3.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.colorEdit3.Size = new System.Drawing.Size(145, 21);
            this.colorEdit3.TabIndex = 12;
            // 
            // btnColor3
            // 
            this.btnColor3.Location = new System.Drawing.Point(212, 105);
            this.btnColor3.Name = "btnColor3";
            this.btnColor3.Size = new System.Drawing.Size(75, 23);
            this.btnColor3.TabIndex = 11;
            this.btnColor3.Text = "Set Color3";
            this.btnColor3.Click += new System.EventHandler(this.btnColor3_Click);
            // 
            // SetGridViewBandBackColorForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(334, 232);
            this.Controls.Add(this.colorEdit3);
            this.Controls.Add(this.btnColor3);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.txtBandName);
            this.Controls.Add(this.txtFlag);
            this.Controls.Add(this.colorEdit2);
            this.Controls.Add(this.colorEdit1);
            this.Controls.Add(this.btnColor2);
            this.Controls.Add(this.btnColor1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SetGridViewBandBackColorForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SetGridViewBandBackColorForm";
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFlag.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBandName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit3.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnColor1;
        private DevExpress.XtraEditors.SimpleButton btnColor2;
        private DevExpress.XtraEditors.ColorEdit colorEdit1;
        private DevExpress.XtraEditors.ColorEdit colorEdit2;
        private DevExpress.XtraEditors.ComboBoxEdit txtFlag;
        private DevExpress.XtraEditors.TextEdit txtBandName;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.ColorEdit colorEdit3;
        private DevExpress.XtraEditors.SimpleButton btnColor3;
    }
}