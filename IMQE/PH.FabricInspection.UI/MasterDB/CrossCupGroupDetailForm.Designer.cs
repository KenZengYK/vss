namespace PH.FabricInspection.UI.MasterDB
{
    partial class CrossCupGroupDetailForm
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
            System.Windows.Forms.Label suppRefLabel;
            System.Windows.Forms.Label cupGroupLabel;
            this.suppRefButtonEdit = new DevExpress.XtraEditors.ButtonEdit();
            this.cupGroupTextEdit = new DevExpress.XtraEditors.TextEdit();
            suppRefLabel = new System.Windows.Forms.Label();
            cupGroupLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppRefButtonEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cupGroupTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.CrossCupGroup);
            // 
            // suppRefLabel
            // 
            suppRefLabel.AutoSize = true;
            suppRefLabel.Location = new System.Drawing.Point(47, 50);
            suppRefLabel.Name = "suppRefLabel";
            suppRefLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(suppRefLabel, null);
            suppRefLabel.TabIndex = 4;
            suppRefLabel.Text = "Supp Ref:";
            // 
            // suppRefButtonEdit
            // 
            this.suppRefButtonEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.suppRefButtonEdit.Location = new System.Drawing.Point(173, 47);
            this.suppRefButtonEdit.Name = "suppRefButtonEdit";
            this.suppRefButtonEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.suppRefButtonEdit.Size = new System.Drawing.Size(216, 21);
            this.suppRefButtonEdit.TabIndex = 5;
            this.suppRefButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.suppRefButtonEdit_ButtonClick);
            // 
            // cupGroupLabel
            // 
            cupGroupLabel.AutoSize = true;
            cupGroupLabel.Location = new System.Drawing.Point(47, 87);
            cupGroupLabel.Name = "cupGroupLabel";
            cupGroupLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(cupGroupLabel, null);
            cupGroupLabel.TabIndex = 6;
            cupGroupLabel.Text = "Cross Cup Group:";
            // 
            // cupGroupTextEdit
            // 
            this.cupGroupTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CupGroup", true));
            this.cupGroupTextEdit.Location = new System.Drawing.Point(173, 84);
            this.cupGroupTextEdit.Name = "cupGroupTextEdit";
            this.cupGroupTextEdit.Size = new System.Drawing.Size(216, 21);
            this.cupGroupTextEdit.TabIndex = 7;
            // 
            // CrossCupGroupDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(cupGroupLabel);
            this.Controls.Add(this.cupGroupTextEdit);
            this.Controls.Add(suppRefLabel);
            this.Controls.Add(this.suppRefButtonEdit);
            this.Name = "CrossCupGroupDetailForm";
            this.Size = new System.Drawing.Size(714, 274);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.suppRefButtonEdit, 0);
            this.Controls.SetChildIndex(suppRefLabel, 0);
            this.Controls.SetChildIndex(this.cupGroupTextEdit, 0);
            this.Controls.SetChildIndex(cupGroupLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppRefButtonEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cupGroupTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ButtonEdit suppRefButtonEdit;
        private DevExpress.XtraEditors.TextEdit cupGroupTextEdit;
    }
}
