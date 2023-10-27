namespace PH.BasicInfo.UI
{
    partial class CustomerDetailForm
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
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            System.Windows.Forms.Label customerAddressLabel;
            System.Windows.Forms.Label customerRepresentLabel;
            System.Windows.Forms.Label customerTelePhoneLabel;
            this.edtTeamName = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.customerAddressTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.customerRepresentTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.customerTelePhoneTextEdit = new DevExpress.XtraEditors.TextEdit();
            customerAddressLabel = new System.Windows.Forms.Label();
            customerRepresentLabel = new System.Windows.Forms.Label();
            customerTelePhoneLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtTeamName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerAddressTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerRepresentTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerTelePhoneTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.Customer);
            // 
            // edtTeamName
            // 
            this.edtTeamName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerName", true));
            this.edtTeamName.EnterMoveNextControl = true;
            this.edtTeamName.Location = new System.Drawing.Point(140, 89);
            this.edtTeamName.Name = "edtTeamName";
            this.edtTeamName.Size = new System.Drawing.Size(186, 21);
            this.edtTeamName.TabIndex = 10;
            this.edtTeamName.Tag = "";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(47, 92);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(87, 14);
            this.labelControl2.TabIndex = 9;
            this.labelControl2.Text = "Customer Name";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerCode", true));
            this.textEdit1.EnterMoveNextControl = true;
            this.textEdit1.Location = new System.Drawing.Point(140, 56);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(186, 21);
            this.textEdit1.TabIndex = 12;
            this.textEdit1.Tag = "";
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "請錄入Customer Code";
            conditionValidatonRule1.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Information;
            this.dxValidationProvider.SetValidationRule(this.textEdit1, conditionValidatonRule1);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(47, 58);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(84, 14);
            this.labelControl1.TabIndex = 11;
            this.labelControl1.Text = "Customer Code";
            // 
            // customerAddressLabel
            // 
            customerAddressLabel.AutoSize = true;
            customerAddressLabel.Location = new System.Drawing.Point(27, 119);
            customerAddressLabel.Name = "customerAddressLabel";
            customerAddressLabel.Size = new System.Drawing.Size(107, 12);
            customerAddressLabel.TabIndex = 12;
            customerAddressLabel.Text = "Customer Address:";
            // 
            // customerAddressTextEdit
            // 
            this.customerAddressTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerAddress", true));
            this.customerAddressTextEdit.Location = new System.Drawing.Point(140, 116);
            this.customerAddressTextEdit.Name = "customerAddressTextEdit";
            this.customerAddressTextEdit.Size = new System.Drawing.Size(186, 21);
            this.customerAddressTextEdit.TabIndex = 13;
            // 
            // customerRepresentLabel
            // 
            customerRepresentLabel.AutoSize = true;
            customerRepresentLabel.Location = new System.Drawing.Point(15, 146);
            customerRepresentLabel.Name = "customerRepresentLabel";
            customerRepresentLabel.Size = new System.Drawing.Size(119, 12);
            customerRepresentLabel.TabIndex = 13;
            customerRepresentLabel.Text = "Customer Represent:";
            // 
            // customerRepresentTextEdit
            // 
            this.customerRepresentTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerRepresent", true));
            this.customerRepresentTextEdit.Location = new System.Drawing.Point(140, 143);
            this.customerRepresentTextEdit.Name = "customerRepresentTextEdit";
            this.customerRepresentTextEdit.Size = new System.Drawing.Size(186, 21);
            this.customerRepresentTextEdit.TabIndex = 14;
            // 
            // customerTelePhoneLabel
            // 
            customerTelePhoneLabel.AutoSize = true;
            customerTelePhoneLabel.Location = new System.Drawing.Point(9, 173);
            customerTelePhoneLabel.Name = "customerTelePhoneLabel";
            customerTelePhoneLabel.Size = new System.Drawing.Size(125, 12);
            customerTelePhoneLabel.TabIndex = 14;
            customerTelePhoneLabel.Text = "Customer Tele Phone:";
            // 
            // customerTelePhoneTextEdit
            // 
            this.customerTelePhoneTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerTelePhone", true));
            this.customerTelePhoneTextEdit.Location = new System.Drawing.Point(140, 170);
            this.customerTelePhoneTextEdit.Name = "customerTelePhoneTextEdit";
            this.customerTelePhoneTextEdit.Size = new System.Drawing.Size(186, 21);
            this.customerTelePhoneTextEdit.TabIndex = 15;
            // 
            // CustomerDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(customerTelePhoneLabel);
            this.Controls.Add(this.customerTelePhoneTextEdit);
            this.Controls.Add(customerRepresentLabel);
            this.Controls.Add(this.customerRepresentTextEdit);
            this.Controls.Add(customerAddressLabel);
            this.Controls.Add(this.customerAddressTextEdit);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.edtTeamName);
            this.Controls.Add(this.labelControl2);
            this.Name = "CustomerDetailForm";
            this.Size = new System.Drawing.Size(733, 403);
            this.Controls.SetChildIndex(this.labelControl2, 0);
            this.Controls.SetChildIndex(this.edtTeamName, 0);
            this.Controls.SetChildIndex(this.labelControl1, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.customerAddressTextEdit, 0);
            this.Controls.SetChildIndex(customerAddressLabel, 0);
            this.Controls.SetChildIndex(this.customerRepresentTextEdit, 0);
            this.Controls.SetChildIndex(customerRepresentLabel, 0);
            this.Controls.SetChildIndex(this.customerTelePhoneTextEdit, 0);
            this.Controls.SetChildIndex(customerTelePhoneLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtTeamName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerAddressTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerRepresentTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerTelePhoneTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit edtTeamName;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit customerAddressTextEdit;
        private DevExpress.XtraEditors.TextEdit customerRepresentTextEdit;
        private DevExpress.XtraEditors.TextEdit customerTelePhoneTextEdit;
    }
}
