namespace PH.HDO.UI.ByPiece
{
    partial class HandMovement_Ret
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
            this.txtIDNUM = new DevExpress.XtraEditors.TextEdit();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.label4 = new System.Windows.Forms.Label();
            this.txtReturnNo = new DevExpress.XtraEditors.TextEdit();
            this.label3 = new System.Windows.Forms.Label();
            this.txtMaterialType = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.txtDT_Return = new DevExpress.XtraEditors.DateEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.txtIDNUM.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtReturnNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaterialType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Return.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Return.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // txtIDNUM
            // 
            this.txtIDNUM.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "IDNUM", true));
            this.txtIDNUM.Location = new System.Drawing.Point(139, 155);
            this.txtIDNUM.Name = "txtIDNUM";
            this.txtIDNUM.Size = new System.Drawing.Size(148, 21);
            this.txtIDNUM.TabIndex = 110;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.PHGDB2.BO.ByPiece_ReturnItem);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(100, 160);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(29, 12);
            this.label4.TabIndex = 109;
            this.label4.Text = "數量";
            // 
            // txtReturnNo
            // 
            this.txtReturnNo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "ReturnNo", true));
            this.txtReturnNo.Location = new System.Drawing.Point(139, 117);
            this.txtReturnNo.Name = "txtReturnNo";
            this.txtReturnNo.Size = new System.Drawing.Size(148, 21);
            this.txtReturnNo.TabIndex = 108;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(80, 122);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 12);
            this.label3.TabIndex = 107;
            this.label3.Text = "退料單號";
            // 
            // txtMaterialType
            // 
            this.txtMaterialType.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "MaterialType", true));
            this.txtMaterialType.Location = new System.Drawing.Point(139, 79);
            this.txtMaterialType.Name = "txtMaterialType";
            this.txtMaterialType.Size = new System.Drawing.Size(148, 21);
            this.txtMaterialType.TabIndex = 106;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(76, 84);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.label2.TabIndex = 105;
            this.label2.Text = "物料類型";
            // 
            // txtDT_Return
            // 
            this.txtDT_Return.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "DT_Return", true));
            this.txtDT_Return.EditValue = null;
            this.txtDT_Return.Location = new System.Drawing.Point(139, 42);
            this.txtDT_Return.Name = "txtDT_Return";
            this.txtDT_Return.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDT_Return.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtDT_Return.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDT_Return.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtDT_Return.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDT_Return.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtDT_Return.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDT_Return.Size = new System.Drawing.Size(148, 21);
            this.txtDT_Return.TabIndex = 104;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(76, 45);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 103;
            this.label1.Text = "退料日期";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(128, 199);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 111;
            this.button1.Text = "確認";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(212, 199);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 112;
            this.button2.Text = "重置";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // HandMovement_Ret
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(411, 341);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.txtIDNUM);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtReturnNo);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtMaterialType);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtDT_Return);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "HandMovement_Ret";
            this.Text = "手動輸入退料記錄";
            ((System.ComponentModel.ISupportInitialize)(this.txtIDNUM.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtReturnNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaterialType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Return.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Return.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraEditors.TextEdit txtIDNUM;
        private System.Windows.Forms.Label label4;
        private DevExpress.XtraEditors.TextEdit txtReturnNo;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.TextEdit txtMaterialType;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.DateEdit txtDT_Return;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;

    }
}