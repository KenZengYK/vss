namespace PH.MIDc.BackEnd
{
    partial class JobLiabilityReport
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
            this.editSupplier = new DevExpress.XtraEditors.LookUpEdit();
            this.editStatus = new DevExpress.XtraEditors.RadioGroup();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editEnd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBegin.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBegin.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSupplier.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editStatus.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(25, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 12);
            this.label1.TabIndex = 2;
            this.label1.Text = "Supplier:";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.label3);
            this.groupControl1.Controls.Add(this.label2);
            this.groupControl1.Controls.Add(this.editEnd);
            this.groupControl1.Controls.Add(this.editBegin);
            this.groupControl1.Location = new System.Drawing.Point(27, 102);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(265, 132);
            this.groupControl1.TabIndex = 3;
            this.groupControl1.Text = "Create date:";
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
            // editSupplier
            // 
            this.editSupplier.Location = new System.Drawing.Point(90, 20);
            this.editSupplier.Name = "editSupplier";
            this.editSupplier.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editSupplier.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ERPSupplier", "Supplier Code", 30),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("MIDcSupplier", "MIDc Supp Ref#", 40)});
            this.editSupplier.Properties.DisplayMember = "ERPSupplier";
            this.editSupplier.Properties.DropDownRows = 12;
            this.editSupplier.Properties.NullText = "";
            this.editSupplier.Properties.ValueMember = "MIDcSupplier";
            this.editSupplier.Size = new System.Drawing.Size(186, 21);
            this.editSupplier.TabIndex = 4;
            // 
            // editStatus
            // 
            this.editStatus.EditValue = true;
            this.editStatus.Location = new System.Drawing.Point(27, 69);
            this.editStatus.Name = "editStatus";
            this.editStatus.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Study, Test && Run"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Hold, Stop && Drop")});
            this.editStatus.Size = new System.Drawing.Size(265, 27);
            this.editStatus.TabIndex = 5;
            // 
            // JobLiabilityReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.editStatus);
            this.Controls.Add(this.editSupplier);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.label1);
            this.Name = "JobLiabilityReport";
            this.Size = new System.Drawing.Size(313, 274);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editEnd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBegin.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBegin.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSupplier.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editStatus.Properties)).EndInit();
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
        private DevExpress.XtraEditors.LookUpEdit editSupplier;
        private DevExpress.XtraEditors.RadioGroup editStatus;
    }
}
