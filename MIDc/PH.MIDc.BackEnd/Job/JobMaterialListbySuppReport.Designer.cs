namespace PH.MIDc.BackEnd
{
    partial class JobMaterialListbySuppReport
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
            this.editMIDStatus = new DevExpress.XtraEditors.CheckEdit();
            this.editSupplier = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.editSortbyOther = new DevExpress.XtraEditors.RadioGroup();
            this.editStatus = new DevExpress.XtraEditors.RadioGroup();
            this.editSave2DB = new DevExpress.XtraEditors.CheckEdit();
            this.editSuppSortby = new DevExpress.XtraEditors.RadioGroup();
            ((System.ComponentModel.ISupportInitialize)(this.editMIDStatus.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSupplier.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editSortbyOther.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editStatus.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSave2DB.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSuppSortby.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // editMIDStatus
            // 
            this.editMIDStatus.EditValue = true;
            this.editMIDStatus.Location = new System.Drawing.Point(33, 32);
            this.editMIDStatus.Name = "editMIDStatus";
            this.editMIDStatus.Properties.Caption = " TMID / PMID";
            this.editMIDStatus.Size = new System.Drawing.Size(146, 19);
            this.editMIDStatus.TabIndex = 0;
            // 
            // editSupplier
            // 
            this.editSupplier.Location = new System.Drawing.Point(90, 20);
            this.editSupplier.Name = "editSupplier";
            this.editSupplier.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editSupplier.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editSupplier.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.editSupplier.Size = new System.Drawing.Size(100, 21);
            this.editSupplier.TabIndex = 1;
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
            this.groupControl1.Controls.Add(this.editSortbyOther);
            this.groupControl1.Controls.Add(this.editMIDStatus);
            this.groupControl1.Location = new System.Drawing.Point(27, 107);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(249, 175);
            this.groupControl1.TabIndex = 3;
            this.groupControl1.Text = "Sort by";
            // 
            // editSortbyOther
            // 
            this.editSortbyOther.EditValue = 1;
            this.editSortbyOther.Location = new System.Drawing.Point(35, 60);
            this.editSortbyOther.Name = "editSortbyOther";
            this.editSortbyOther.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "Supplier width"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "Buyer item #"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "Supplier code"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(3, "Supp Item Ref.")});
            this.editSortbyOther.Size = new System.Drawing.Size(144, 101);
            this.editSortbyOther.TabIndex = 1;
            // 
            // editStatus
            // 
            this.editStatus.EditValue = true;
            this.editStatus.Location = new System.Drawing.Point(27, 52);
            this.editStatus.Name = "editStatus";
            this.editStatus.Properties.Columns = 1;
            this.editStatus.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Study, Check && Run-Gen"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Hold")});
            this.editStatus.Size = new System.Drawing.Size(169, 47);
            this.editStatus.TabIndex = 4;
            // 
            // editSave2DB
            // 
            this.editSave2DB.EditValue = true;
            this.editSave2DB.Location = new System.Drawing.Point(25, 288);
            this.editSave2DB.Name = "editSave2DB";
            this.editSave2DB.Properties.Caption = " Save to DB";
            this.editSave2DB.Size = new System.Drawing.Size(110, 19);
            this.editSave2DB.TabIndex = 6;
            this.editSave2DB.Visible = false;
            // 
            // editSuppSortby
            // 
            this.editSuppSortby.EditValue = true;
            this.editSuppSortby.Location = new System.Drawing.Point(197, 4);
            this.editSuppSortby.Name = "editSuppSortby";
            this.editSuppSortby.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Ascending"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Descending")});
            this.editSuppSortby.Size = new System.Drawing.Size(100, 46);
            this.editSuppSortby.TabIndex = 7;
            this.editSuppSortby.Visible = false;
            // 
            // JobMaterialListbySuppReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.editSuppSortby);
            this.Controls.Add(this.editSave2DB);
            this.Controls.Add(this.editStatus);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.editSupplier);
            this.Name = "JobMaterialListbySuppReport";
            this.Size = new System.Drawing.Size(312, 312);
            ((System.ComponentModel.ISupportInitialize)(this.editMIDStatus.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSupplier.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.editSortbyOther.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editStatus.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSave2DB.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSuppSortby.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.CheckEdit editMIDStatus;
        private DevExpress.XtraEditors.ComboBoxEdit editSupplier;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.RadioGroup editSortbyOther;
        private DevExpress.XtraEditors.RadioGroup editStatus;
        private DevExpress.XtraEditors.CheckEdit editSave2DB;
        private DevExpress.XtraEditors.RadioGroup editSuppSortby;
    }
}
