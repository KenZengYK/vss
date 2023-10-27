namespace PH.HDO.UI.ByPiece
{
    partial class HandMovement_Rec
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
            this.label1 = new System.Windows.Forms.Label();
            this.txtDT_Recive = new DevExpress.XtraEditors.DateEdit();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.txtMaterialType = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.txtHDONO = new DevExpress.XtraEditors.TextEdit();
            this.label3 = new System.Windows.Forms.Label();
            this.txtIDNUM = new DevExpress.XtraEditors.TextEdit();
            this.label4 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Recive.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Recive.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaterialType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtHDONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIDNUM.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(82, 54);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "收貨日期";
            // 
            // txtDT_Recive
            // 
            this.txtDT_Recive.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "DT_Recive", true));
            this.txtDT_Recive.EditValue = null;
            this.txtDT_Recive.Location = new System.Drawing.Point(145, 51);
            this.txtDT_Recive.Name = "txtDT_Recive";
            this.txtDT_Recive.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDT_Recive.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtDT_Recive.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDT_Recive.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtDT_Recive.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDT_Recive.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtDT_Recive.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDT_Recive.Size = new System.Drawing.Size(148, 21);
            this.txtDT_Recive.TabIndex = 96;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.PHGDB2.BO.ByPiece_ReciveItem);
            // 
            // txtMaterialType
            // 
            this.txtMaterialType.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "MaterialType", true));
            this.txtMaterialType.Location = new System.Drawing.Point(145, 88);
            this.txtMaterialType.Name = "txtMaterialType";
            this.txtMaterialType.Size = new System.Drawing.Size(148, 21);
            this.txtMaterialType.TabIndex = 98;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(82, 93);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.label2.TabIndex = 97;
            this.label2.Text = "物料類型";
            // 
            // txtHDONO
            // 
            this.txtHDONO.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "HDONO", true));
            this.txtHDONO.Location = new System.Drawing.Point(145, 126);
            this.txtHDONO.Name = "txtHDONO";
            this.txtHDONO.Size = new System.Drawing.Size(148, 21);
            this.txtHDONO.TabIndex = 100;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(86, 131);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(49, 12);
            this.label3.TabIndex = 99;
            this.label3.Text = "HDO No.";
            // 
            // txtIDNUM
            // 
            this.txtIDNUM.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "IDNUM", true));
            this.txtIDNUM.Location = new System.Drawing.Point(145, 164);
            this.txtIDNUM.Name = "txtIDNUM";
            this.txtIDNUM.Size = new System.Drawing.Size(148, 21);
            this.txtIDNUM.TabIndex = 102;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(106, 169);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(29, 12);
            this.label4.TabIndex = 101;
            this.label4.Text = "數量";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(137, 220);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 103;
            this.button1.Text = "確認";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(218, 220);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 104;
            this.button2.Text = "重置";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // HandMovement_Rec
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(411, 341);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.txtIDNUM);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtHDONO);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtMaterialType);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtDT_Recive);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "HandMovement_Rec";
            this.Text = "手動輸入收料記錄";
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Recive.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Recive.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaterialType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtHDONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIDNUM.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.DateEdit txtDT_Recive;
        private DevExpress.XtraEditors.TextEdit txtMaterialType;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.TextEdit txtHDONO;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.TextEdit txtIDNUM;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        public System.Windows.Forms.BindingSource bindingSource1;
    }
}