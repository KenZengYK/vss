namespace PH.LWPM.UI.WF
{
    partial class SecondmentDetailForm
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.txtStartDate = new DevExpress.XtraEditors.DateEdit();
            this.txtExpiredDate = new DevExpress.XtraEditors.DateEdit();
            this.txtWorkingPlace = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtSecondmentTo = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.txtWorkForceID = new DevExpress.XtraEditors.TextEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtExpiredDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtExpiredDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkingPlace.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSecondmentTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkForceID.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.Secondment);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(41, 86);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(61, 14);
            this.labelControl1.TabIndex = 4;
            this.labelControl1.Text = "Start Date:";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(38, 125);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(74, 14);
            this.labelControl2.TabIndex = 5;
            this.labelControl2.Text = "Expired Date:";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(38, 164);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(81, 14);
            this.labelControl3.TabIndex = 6;
            this.labelControl3.Text = "Working Place:";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(34, 206);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(93, 14);
            this.labelControl4.TabIndex = 7;
            this.labelControl4.Text = "Secondment To:";
            // 
            // txtStartDate
            // 
            this.txtStartDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "StartDate", true));
            this.txtStartDate.EditValue = null;
            this.txtStartDate.Location = new System.Drawing.Point(144, 84);
            this.txtStartDate.Name = "txtStartDate";
            this.txtStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtStartDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtStartDate.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.DateTimeAdvancingCaret;
            this.txtStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtStartDate.Size = new System.Drawing.Size(136, 21);
            this.txtStartDate.TabIndex = 10;
            // 
            // txtExpiredDate
            // 
            this.txtExpiredDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ExpiredDate", true));
            this.txtExpiredDate.EditValue = null;
            this.txtExpiredDate.Location = new System.Drawing.Point(144, 121);
            this.txtExpiredDate.Name = "txtExpiredDate";
            this.txtExpiredDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtExpiredDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtExpiredDate.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.DateTimeAdvancingCaret;
            this.txtExpiredDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtExpiredDate.Size = new System.Drawing.Size(136, 21);
            this.txtExpiredDate.TabIndex = 11;
            // 
            // txtWorkingPlace
            // 
            this.txtWorkingPlace.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkingPlace", true));
            this.txtWorkingPlace.Location = new System.Drawing.Point(144, 161);
            this.txtWorkingPlace.Name = "txtWorkingPlace";
            this.txtWorkingPlace.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtWorkingPlace.Size = new System.Drawing.Size(136, 21);
            this.txtWorkingPlace.TabIndex = 12;
            // 
            // txtSecondmentTo
            // 
            this.txtSecondmentTo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SecondmentTo", true));
            this.txtSecondmentTo.Location = new System.Drawing.Point(143, 202);
            this.txtSecondmentTo.Name = "txtSecondmentTo";
            this.txtSecondmentTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtSecondmentTo.Size = new System.Drawing.Size(137, 21);
            this.txtSecondmentTo.TabIndex = 13;
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(39, 49);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(75, 14);
            this.labelControl5.TabIndex = 14;
            this.labelControl5.Text = "WorkForceID:";
            // 
            // txtWorkForceID
            // 
            this.txtWorkForceID.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkForceID", true));
            this.txtWorkForceID.Enabled = false;
            this.txtWorkForceID.Location = new System.Drawing.Point(144, 46);
            this.txtWorkForceID.Name = "txtWorkForceID";
            this.txtWorkForceID.Size = new System.Drawing.Size(136, 21);
            this.txtWorkForceID.TabIndex = 15;
            // 
            // labelControl6
            // 
            this.labelControl6.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "WorkForceName", true));
            this.labelControl6.Location = new System.Drawing.Point(286, 49);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(48, 14);
            this.labelControl6.TabIndex = 16;
            this.labelControl6.Text = "員工姓名";
            // 
            // SecondmentDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.txtWorkForceID);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.txtSecondmentTo);
            this.Controls.Add(this.txtWorkingPlace);
            this.Controls.Add(this.txtExpiredDate);
            this.Controls.Add(this.txtStartDate);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Name = "SecondmentDetailForm";
            this.Size = new System.Drawing.Size(631, 415);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.labelControl1, 0);
            this.Controls.SetChildIndex(this.labelControl2, 0);
            this.Controls.SetChildIndex(this.labelControl3, 0);
            this.Controls.SetChildIndex(this.labelControl4, 0);
            this.Controls.SetChildIndex(this.txtStartDate, 0);
            this.Controls.SetChildIndex(this.txtExpiredDate, 0);
            this.Controls.SetChildIndex(this.txtWorkingPlace, 0);
            this.Controls.SetChildIndex(this.txtSecondmentTo, 0);
            this.Controls.SetChildIndex(this.labelControl5, 0);
            this.Controls.SetChildIndex(this.txtWorkForceID, 0);
            this.Controls.SetChildIndex(this.labelControl6, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtExpiredDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtExpiredDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkingPlace.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSecondmentTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkForceID.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.DateEdit txtStartDate;
        private DevExpress.XtraEditors.DateEdit txtExpiredDate;
        private DevExpress.XtraEditors.ComboBoxEdit txtWorkingPlace;
        private DevExpress.XtraEditors.ComboBoxEdit txtSecondmentTo;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.TextEdit txtWorkForceID;
        private DevExpress.XtraEditors.LabelControl labelControl6;
    }
}