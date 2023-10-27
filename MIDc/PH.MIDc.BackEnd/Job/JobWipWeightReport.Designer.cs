namespace PH.MIDc.BackEnd
{
    partial class JobWipWeightReport
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.editEnd = new DevExpress.XtraEditors.DateEdit();
            this.editBegin = new DevExpress.XtraEditors.DateEdit();
            this.label4 = new System.Windows.Forms.Label();
            this.edProject = new DevExpress.XtraEditors.TextEdit();
            this.rgOption = new DevExpress.XtraEditors.RadioGroup();
            this.editCustomer = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editEnd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBegin.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBegin.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgOption.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCustomer.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(25, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(89, 12);
            this.label1.TabIndex = 2;
            this.label1.Text = "Customer Code:";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.label3);
            this.groupControl1.Controls.Add(this.label2);
            this.groupControl1.Controls.Add(this.editEnd);
            this.groupControl1.Controls.Add(this.editBegin);
            this.groupControl1.Location = new System.Drawing.Point(27, 113);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(236, 132);
            this.groupControl1.TabIndex = 3;
            this.groupControl1.Text = "Delivery date:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(37, 92);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(23, 12);
            this.label3.TabIndex = 4;
            this.label3.Text = "To:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(35, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 12);
            this.label2.TabIndex = 3;
            this.label2.Text = "From:";
            // 
            // editEnd
            // 
            this.editEnd.EditValue = null;
            this.editEnd.Location = new System.Drawing.Point(85, 87);
            this.editEnd.Name = "editEnd";
            this.editEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editEnd.Size = new System.Drawing.Size(100, 21);
            this.editEnd.TabIndex = 1;
            // 
            // editBegin
            // 
            this.editBegin.EditValue = null;
            this.editBegin.Location = new System.Drawing.Point(85, 46);
            this.editBegin.Name = "editBegin";
            this.editBegin.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editBegin.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editBegin.Size = new System.Drawing.Size(100, 21);
            this.editBegin.TabIndex = 0;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(25, 69);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(71, 12);
            this.label4.TabIndex = 6;
            this.label4.Text = "Project No:";
            // 
            // edProject
            // 
            this.edProject.Location = new System.Drawing.Point(118, 64);
            this.edProject.Name = "edProject";
            this.edProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.edProject.Size = new System.Drawing.Size(123, 21);
            this.edProject.TabIndex = 7;
            // 
            // rgOption
            // 
            this.rgOption.EditValue = false;
            this.rgOption.Location = new System.Drawing.Point(27, 251);
            this.rgOption.Name = "rgOption";
            this.rgOption.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Material"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Style")});
            this.rgOption.Size = new System.Drawing.Size(205, 29);
            this.rgOption.TabIndex = 8;
            this.rgOption.Visible = false;
            // 
            // editCustomer
            // 
            this.editCustomer.Location = new System.Drawing.Point(118, 18);
            this.editCustomer.Name = "editCustomer";
            this.editCustomer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editCustomer.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editCustomer.Size = new System.Drawing.Size(123, 21);
            this.editCustomer.TabIndex = 9;
            // 
            // JobWipWeightReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.editCustomer);
            this.Controls.Add(this.rgOption);
            this.Controls.Add(this.edProject);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.label1);
            this.Name = "JobWipWeightReport";
            this.Size = new System.Drawing.Size(293, 271);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editEnd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBegin.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBegin.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgOption.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCustomer.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.DateEdit editEnd;
        private DevExpress.XtraEditors.DateEdit editBegin;
        private System.Windows.Forms.Label label4;
        private DevExpress.XtraEditors.TextEdit edProject;
        private DevExpress.XtraEditors.RadioGroup rgOption;
        private DevExpress.XtraEditors.ComboBoxEdit editCustomer;
    }
}
