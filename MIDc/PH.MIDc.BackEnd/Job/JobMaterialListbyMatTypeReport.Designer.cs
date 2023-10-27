namespace PH.MIDc.BackEnd
{
    partial class JobMaterialListbyMatTypeReport
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
            this.editMaterialType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.editSortbyOther = new DevExpress.XtraEditors.RadioGroup();
            this.editStatus = new DevExpress.XtraEditors.RadioGroup();
            this.editSave2DB = new DevExpress.XtraEditors.CheckEdit();
            this.editMatTypeSortby = new DevExpress.XtraEditors.RadioGroup();
            ((System.ComponentModel.ISupportInitialize)(this.editMIDStatus.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMaterialType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editSortbyOther.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editStatus.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSave2DB.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMatTypeSortby.Properties)).BeginInit();
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
            // editMaterialType
            // 
            this.editMaterialType.Location = new System.Drawing.Point(118, 17);
            this.editMaterialType.Name = "editMaterialType";
            this.editMaterialType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editMaterialType.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editMaterialType.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.editMaterialType.Size = new System.Drawing.Size(100, 21);
            this.editMaterialType.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(28, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(89, 12);
            this.label1.TabIndex = 2;
            this.label1.Text = "Material Type:";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.editSortbyOther);
            this.groupControl1.Controls.Add(this.editMIDStatus);
            this.groupControl1.Location = new System.Drawing.Point(30, 100);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(265, 167);
            this.groupControl1.TabIndex = 3;
            this.groupControl1.Text = "Sort by";
            // 
            // editSortbyOther
            // 
            this.editSortbyOther.EditValue = 2;
            this.editSortbyOther.Location = new System.Drawing.Point(35, 60);
            this.editSortbyOther.Name = "editSortbyOther";
            this.editSortbyOther.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(0, "Supplier width"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "Buyer item #"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "Supplier code"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(3, "Supp Item Ref.")});
            this.editSortbyOther.Size = new System.Drawing.Size(144, 98);
            this.editSortbyOther.TabIndex = 1;
            // 
            // editStatus
            // 
            this.editStatus.EditValue = true;
            this.editStatus.Location = new System.Drawing.Point(30, 47);
            this.editStatus.Name = "editStatus";
            this.editStatus.Properties.Columns = 1;
            this.editStatus.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Study, Check && Run-Gen"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Hold")});
            this.editStatus.Size = new System.Drawing.Size(188, 47);
            this.editStatus.TabIndex = 4;
            // 
            // editSave2DB
            // 
            this.editSave2DB.EditValue = true;
            this.editSave2DB.Location = new System.Drawing.Point(28, 271);
            this.editSave2DB.Name = "editSave2DB";
            this.editSave2DB.Properties.Caption = " Save to DB";
            this.editSave2DB.Size = new System.Drawing.Size(110, 19);
            this.editSave2DB.TabIndex = 5;
            this.editSave2DB.Visible = false;
            // 
            // editMatTypeSortby
            // 
            this.editMatTypeSortby.EditValue = true;
            this.editMatTypeSortby.Location = new System.Drawing.Point(227, 3);
            this.editMatTypeSortby.Name = "editMatTypeSortby";
            this.editMatTypeSortby.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Ascending"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Descending")});
            this.editMatTypeSortby.Size = new System.Drawing.Size(100, 46);
            this.editMatTypeSortby.TabIndex = 8;
            this.editMatTypeSortby.Visible = false;
            // 
            // JobMaterialListbyMatTypeReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.editMatTypeSortby);
            this.Controls.Add(this.editSave2DB);
            this.Controls.Add(this.editStatus);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.editMaterialType);
            this.Name = "JobMaterialListbyMatTypeReport";
            this.Size = new System.Drawing.Size(332, 300);
            ((System.ComponentModel.ISupportInitialize)(this.editMIDStatus.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMaterialType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.editSortbyOther.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editStatus.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editSave2DB.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMatTypeSortby.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.CheckEdit editMIDStatus;
        private DevExpress.XtraEditors.ComboBoxEdit editMaterialType;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.RadioGroup editSortbyOther;
        private DevExpress.XtraEditors.RadioGroup editStatus;
        private DevExpress.XtraEditors.CheckEdit editSave2DB;
        private DevExpress.XtraEditors.RadioGroup editMatTypeSortby;
    }
}
