namespace PH.LWPM.UI.PC
{
    partial class PCDetailDetailForm
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
            System.Windows.Forms.Label pONOLabel;
            System.Windows.Forms.Label amendNoLabel;
            System.Windows.Forms.Label sortIDLabel;
            this.pONOTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.amendNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.sortIDSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            pONOLabel = new System.Windows.Forms.Label();
            amendNoLabel = new System.Windows.Forms.Label();
            sortIDLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pONOTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.amendNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDSpinEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PCDetail);
            // 
            // pONOLabel
            // 
            pONOLabel.AutoSize = true;
            pONOLabel.Location = new System.Drawing.Point(105, 66);
            pONOLabel.Name = "pONOLabel";
            pONOLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(pONOLabel, null);
            pONOLabel.TabIndex = 4;
            pONOLabel.Text = "PO NO:";
            // 
            // pONOTextEdit
            // 
            this.pONOTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PONO", true));
            this.pONOTextEdit.Location = new System.Drawing.Point(152, 63);
            this.pONOTextEdit.Name = "pONOTextEdit";
            this.pONOTextEdit.Size = new System.Drawing.Size(212, 21);
            this.pONOTextEdit.TabIndex = 5;
            // 
            // amendNoLabel
            // 
            amendNoLabel.AutoSize = true;
            amendNoLabel.Location = new System.Drawing.Point(87, 100);
            amendNoLabel.Name = "amendNoLabel";
            amendNoLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(amendNoLabel, null);
            amendNoLabel.TabIndex = 6;
            amendNoLabel.Text = "Amend No:";
            // 
            // amendNoTextEdit
            // 
            this.amendNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AmendNo", true));
            this.amendNoTextEdit.Location = new System.Drawing.Point(152, 97);
            this.amendNoTextEdit.Name = "amendNoTextEdit";
            this.amendNoTextEdit.Size = new System.Drawing.Size(212, 21);
            this.amendNoTextEdit.TabIndex = 7;
            // 
            // sortIDLabel
            // 
            sortIDLabel.AutoSize = true;
            sortIDLabel.Location = new System.Drawing.Point(87, 135);
            sortIDLabel.Name = "sortIDLabel";
            sortIDLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(sortIDLabel, null);
            sortIDLabel.TabIndex = 8;
            sortIDLabel.Text = "Sort ID:";
            // 
            // sortIDSpinEdit
            // 
            this.sortIDSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.sortIDSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.sortIDSpinEdit.Location = new System.Drawing.Point(152, 132);
            this.sortIDSpinEdit.Name = "sortIDSpinEdit";
            this.sortIDSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.sortIDSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.sortIDSpinEdit.TabIndex = 9;
            // 
            // PCDetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(sortIDLabel);
            this.Controls.Add(this.sortIDSpinEdit);
            this.Controls.Add(amendNoLabel);
            this.Controls.Add(this.amendNoTextEdit);
            this.Controls.Add(pONOLabel);
            this.Controls.Add(this.pONOTextEdit);
            this.Name = "PCDetailDetailForm";
            this.Size = new System.Drawing.Size(625, 283);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.pONOTextEdit, 0);
            this.Controls.SetChildIndex(pONOLabel, 0);
            this.Controls.SetChildIndex(this.amendNoTextEdit, 0);
            this.Controls.SetChildIndex(amendNoLabel, 0);
            this.Controls.SetChildIndex(this.sortIDSpinEdit, 0);
            this.Controls.SetChildIndex(sortIDLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pONOTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.amendNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit pONOTextEdit;
        private DevExpress.XtraEditors.TextEdit amendNoTextEdit;
        private DevExpress.XtraEditors.SpinEdit sortIDSpinEdit;
    }
}
