namespace PH.HDO.UI.ByPiece
{
    partial class HandMovement_Isu
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
            this.txtMaterialType = new DevExpress.XtraEditors.TextEdit();
            this.txtProjCode = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtIDNUM_M = new DevExpress.XtraEditors.TextEdit();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.txtDT_Issue = new DevExpress.XtraEditors.DateEdit();
            this.sAH_TypeComboBox = new System.Windows.Forms.ComboBox();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.txtMaterialType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtProjCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIDNUM_M.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Issue.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Issue.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(69, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "類型編號";
            // 
            // txtMaterialType
            // 
            this.txtMaterialType.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "MaterialType", true));
            this.txtMaterialType.Location = new System.Drawing.Point(125, 26);
            this.txtMaterialType.Name = "txtMaterialType";
            this.txtMaterialType.Size = new System.Drawing.Size(148, 21);
            this.txtMaterialType.TabIndex = 84;
            // 
            // txtProjCode
            // 
            this.txtProjCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "ProjCode", true));
            this.txtProjCode.Location = new System.Drawing.Point(125, 65);
            this.txtProjCode.Name = "txtProjCode";
            this.txtProjCode.Size = new System.Drawing.Size(148, 21);
            this.txtProjCode.TabIndex = 86;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(69, 70);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.label2.TabIndex = 85;
            this.label2.Text = "客戶編號";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(69, 110);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 12);
            this.label3.TabIndex = 87;
            this.label3.Text = "發料日期";
            // 
            // txtIDNUM_M
            // 
            this.txtIDNUM_M.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "ISSUE_QTY", true));
            this.txtIDNUM_M.Location = new System.Drawing.Point(125, 146);
            this.txtIDNUM_M.Name = "txtIDNUM_M";
            this.txtIDNUM_M.Size = new System.Drawing.Size(148, 21);
            this.txtIDNUM_M.TabIndex = 90;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(69, 151);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(29, 12);
            this.label4.TabIndex = 89;
            this.label4.Text = "數量";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(69, 193);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(51, 12);
            this.label5.TabIndex = 91;
            this.label5.Text = "SAH類別";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(117, 254);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 93;
            this.button1.Text = "確認";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(198, 254);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 94;
            this.button2.Text = "重置";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // txtDT_Issue
            // 
            this.txtDT_Issue.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bindingSource1, "DT_Issue", true));
            this.txtDT_Issue.EditValue = null;
            this.txtDT_Issue.Location = new System.Drawing.Point(125, 107);
            this.txtDT_Issue.Name = "txtDT_Issue";
            this.txtDT_Issue.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDT_Issue.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtDT_Issue.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDT_Issue.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtDT_Issue.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDT_Issue.Properties.ExportMode = DevExpress.XtraEditors.Repository.ExportMode.DisplayText;
            this.txtDT_Issue.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtDT_Issue.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDT_Issue.Size = new System.Drawing.Size(148, 21);
            this.txtDT_Issue.TabIndex = 95;
            // 
            // sAH_TypeComboBox
            // 
            this.sAH_TypeComboBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "SAH_Type", true));
            this.sAH_TypeComboBox.FormattingEnabled = true;
            this.sAH_TypeComboBox.Items.AddRange(new object[] {
            "母",
            "子"});
            this.sAH_TypeComboBox.Location = new System.Drawing.Point(126, 190);
            this.sAH_TypeComboBox.Name = "sAH_TypeComboBox";
            this.sAH_TypeComboBox.Size = new System.Drawing.Size(147, 20);
            this.sAH_TypeComboBox.TabIndex = 96;
            this.sAH_TypeComboBox.Text = "母";
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.PHGDB2.BO.ByPiece_IssueItem_Text);
            // 
            // HandMovement_Isu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(411, 341);
            this.Controls.Add(this.sAH_TypeComboBox);
            this.Controls.Add(this.txtDT_Issue);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtIDNUM_M);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtProjCode);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtMaterialType);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "HandMovement_Isu";
            this.Text = "手動輸入發料記錄";
            ((System.ComponentModel.ISupportInitialize)(this.txtMaterialType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtProjCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIDNUM_M.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Issue.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDT_Issue.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.TextEdit txtMaterialType;
        private DevExpress.XtraEditors.TextEdit txtProjCode;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.TextEdit txtIDNUM_M;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        public System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraEditors.DateEdit txtDT_Issue;
        private System.Windows.Forms.ComboBox sAH_TypeComboBox;
    }
}