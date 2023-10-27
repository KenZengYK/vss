namespace PH.POPC.UI.MasterDB
{
    partial class MaterialTypeDropDeadDateDetailForm
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
            System.Windows.Forms.Label materilaGroupLabel;
            System.Windows.Forms.Label materilaTypeLabel;
            System.Windows.Forms.Label bulkDDDDayLabel;
            System.Windows.Forms.Label overseaAddDayLabel;
            System.Windows.Forms.Label factoryLabel;
            this.materilaGroupTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.materilaTypeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.bulkDDDDaySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.overseaAddDaySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.factoryTextEdit = new DevExpress.XtraEditors.TextEdit();
            materilaGroupLabel = new System.Windows.Forms.Label();
            materilaTypeLabel = new System.Windows.Forms.Label();
            bulkDDDDayLabel = new System.Windows.Forms.Label();
            overseaAddDayLabel = new System.Windows.Forms.Label();
            factoryLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.materilaGroupTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.materilaTypeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bulkDDDDaySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.overseaAddDaySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.factoryTextEdit.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.MaterialTypeDropDeadDate);
            // 
            // materilaGroupLabel
            // 
            materilaGroupLabel.AutoSize = true;
            materilaGroupLabel.Location = new System.Drawing.Point(86, 57);
            materilaGroupLabel.Name = "materilaGroupLabel";
            materilaGroupLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(materilaGroupLabel, null);
            materilaGroupLabel.TabIndex = 4;
            materilaGroupLabel.Text = "Mat\'l Grp:";
            // 
            // materilaTypeLabel
            // 
            materilaTypeLabel.AutoSize = true;
            materilaTypeLabel.Location = new System.Drawing.Point(86, 88);
            materilaTypeLabel.Name = "materilaTypeLabel";
            materilaTypeLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(materilaTypeLabel, null);
            materilaTypeLabel.TabIndex = 6;
            materilaTypeLabel.Text = "Mat\'l Type:";
            // 
            // bulkDDDDayLabel
            // 
            bulkDDDDayLabel.AutoSize = true;
            bulkDDDDayLabel.Location = new System.Drawing.Point(86, 123);
            bulkDDDDayLabel.Name = "bulkDDDDayLabel";
            bulkDDDDayLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(bulkDDDDayLabel, null);
            bulkDDDDayLabel.TabIndex = 8;
            bulkDDDDayLabel.Text = "Bulk DDD (days):";
            // 
            // overseaAddDayLabel
            // 
            overseaAddDayLabel.AutoSize = true;
            overseaAddDayLabel.Location = new System.Drawing.Point(86, 157);
            overseaAddDayLabel.Name = "overseaAddDayLabel";
            overseaAddDayLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(overseaAddDayLabel, null);
            overseaAddDayLabel.TabIndex = 10;
            overseaAddDayLabel.Text = "Oversea (days):";
            // 
            // factoryLabel
            // 
            factoryLabel.AutoSize = true;
            factoryLabel.Location = new System.Drawing.Point(86, 192);
            factoryLabel.Name = "factoryLabel";
            factoryLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(factoryLabel, null);
            factoryLabel.TabIndex = 12;
            factoryLabel.Text = "Fty:";
            // 
            // materilaGroupTextEdit
            // 
            this.materilaGroupTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MaterilaGroup", true));
            this.materilaGroupTextEdit.Location = new System.Drawing.Point(193, 52);
            this.materilaGroupTextEdit.Name = "materilaGroupTextEdit";
            this.materilaGroupTextEdit.Size = new System.Drawing.Size(126, 21);
            this.materilaGroupTextEdit.TabIndex = 5;
            // 
            // materilaTypeTextEdit
            // 
            this.materilaTypeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MaterilaType", true));
            this.materilaTypeTextEdit.Location = new System.Drawing.Point(193, 85);
            this.materilaTypeTextEdit.Name = "materilaTypeTextEdit";
            this.materilaTypeTextEdit.Size = new System.Drawing.Size(126, 21);
            this.materilaTypeTextEdit.TabIndex = 7;
            // 
            // bulkDDDDaySpinEdit
            // 
            this.bulkDDDDaySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "BulkDDDDay", true));
            this.bulkDDDDaySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.bulkDDDDaySpinEdit.Location = new System.Drawing.Point(193, 120);
            this.bulkDDDDaySpinEdit.Name = "bulkDDDDaySpinEdit";
            this.bulkDDDDaySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.bulkDDDDaySpinEdit.Size = new System.Drawing.Size(126, 21);
            this.bulkDDDDaySpinEdit.TabIndex = 9;
            // 
            // overseaAddDaySpinEdit
            // 
            this.overseaAddDaySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OverseaAddDay", true));
            this.overseaAddDaySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.overseaAddDaySpinEdit.Location = new System.Drawing.Point(193, 154);
            this.overseaAddDaySpinEdit.Name = "overseaAddDaySpinEdit";
            this.overseaAddDaySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.overseaAddDaySpinEdit.Size = new System.Drawing.Size(126, 21);
            this.overseaAddDaySpinEdit.TabIndex = 11;
            // 
            // factoryTextEdit
            // 
            this.factoryTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Factory", true));
            this.factoryTextEdit.Location = new System.Drawing.Point(193, 187);
            this.factoryTextEdit.Name = "factoryTextEdit";
            this.factoryTextEdit.Size = new System.Drawing.Size(126, 21);
            this.factoryTextEdit.TabIndex = 13;
            // 
            // MaterialTypeDropDeadDateDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(factoryLabel);
            this.Controls.Add(this.factoryTextEdit);
            this.Controls.Add(overseaAddDayLabel);
            this.Controls.Add(this.overseaAddDaySpinEdit);
            this.Controls.Add(bulkDDDDayLabel);
            this.Controls.Add(this.bulkDDDDaySpinEdit);
            this.Controls.Add(materilaTypeLabel);
            this.Controls.Add(this.materilaTypeTextEdit);
            this.Controls.Add(materilaGroupLabel);
            this.Controls.Add(this.materilaGroupTextEdit);
            this.Name = "MaterialTypeDropDeadDateDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.materilaGroupTextEdit, 0);
            this.Controls.SetChildIndex(materilaGroupLabel, 0);
            this.Controls.SetChildIndex(this.materilaTypeTextEdit, 0);
            this.Controls.SetChildIndex(materilaTypeLabel, 0);
            this.Controls.SetChildIndex(this.bulkDDDDaySpinEdit, 0);
            this.Controls.SetChildIndex(bulkDDDDayLabel, 0);
            this.Controls.SetChildIndex(this.overseaAddDaySpinEdit, 0);
            this.Controls.SetChildIndex(overseaAddDayLabel, 0);
            this.Controls.SetChildIndex(this.factoryTextEdit, 0);
            this.Controls.SetChildIndex(factoryLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.materilaGroupTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.materilaTypeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bulkDDDDaySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.overseaAddDaySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.factoryTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit materilaGroupTextEdit;
        private DevExpress.XtraEditors.TextEdit materilaTypeTextEdit;
        private DevExpress.XtraEditors.SpinEdit bulkDDDDaySpinEdit;
        private DevExpress.XtraEditors.SpinEdit overseaAddDaySpinEdit;
        private DevExpress.XtraEditors.TextEdit factoryTextEdit;
    }
}
