namespace PH.LWPM.UI.MC
{
    partial class LCShipmentDateDetailForm
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
            System.Windows.Forms.Label vendorCodeLabel;
            System.Windows.Forms.Label projectionDateLabel;
            System.Windows.Forms.Label shipmentDateLabel;
            System.Windows.Forms.Label label1;
            System.Windows.Forms.Label label2;
            System.Windows.Forms.Label label3;
            this.edtProjectionDate = new DevExpress.XtraEditors.TextEdit();
            this.lpVendor = new DevExpress.XtraEditors.LookUpEdit();
            this.editShipmentDate = new DevExpress.XtraEditors.DateEdit();
            this.edtETDDate = new DevExpress.XtraEditors.DateEdit();
            this.edtETADate = new DevExpress.XtraEditors.DateEdit();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            vendorCodeLabel = new System.Windows.Forms.Label();
            projectionDateLabel = new System.Windows.Forms.Label();
            shipmentDateLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            label3 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProjectionDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lpVendor.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editShipmentDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editShipmentDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtETDDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtETDDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtETADate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtETADate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.LCShipmentDate);
            // 
            // vendorCodeLabel
            // 
            vendorCodeLabel.AutoSize = true;
            vendorCodeLabel.Location = new System.Drawing.Point(174, 65);
            vendorCodeLabel.Name = "vendorCodeLabel";
            vendorCodeLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(vendorCodeLabel, null);
            vendorCodeLabel.TabIndex = 4;
            vendorCodeLabel.Text = "Vendor:";
            // 
            // projectionDateLabel
            // 
            projectionDateLabel.AutoSize = true;
            projectionDateLabel.Location = new System.Drawing.Point(120, 97);
            projectionDateLabel.Name = "projectionDateLabel";
            projectionDateLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(projectionDateLabel, null);
            projectionDateLabel.TabIndex = 6;
            projectionDateLabel.Text = "Projection Date:";
            // 
            // shipmentDateLabel
            // 
            shipmentDateLabel.AutoSize = true;
            shipmentDateLabel.Location = new System.Drawing.Point(84, 225);
            shipmentDateLabel.Name = "shipmentDateLabel";
            shipmentDateLabel.Size = new System.Drawing.Size(137, 12);
            this.PlatetoolTipController.SetSuperTip(shipmentDateLabel, null);
            shipmentDateLabel.TabIndex = 8;
            shipmentDateLabel.Text = "Flow3 (Stock-in Date):";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(144, 161);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 12;
            label1.Text = "Flow1 (ETD):";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(144, 193);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(label2, null);
            label2.TabIndex = 14;
            label2.Text = "Flow2 (ETA):";
            // 
            // edtProjectionDate
            // 
            this.edtProjectionDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ProjectionDate", true));
            this.edtProjectionDate.Location = new System.Drawing.Point(229, 94);
            this.edtProjectionDate.Name = "edtProjectionDate";
            this.edtProjectionDate.Size = new System.Drawing.Size(206, 21);
            this.edtProjectionDate.TabIndex = 7;
            // 
            // lpVendor
            // 
            this.lpVendor.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "VendorCode", true));
            this.lpVendor.Location = new System.Drawing.Point(229, 62);
            this.lpVendor.Name = "lpVendor";
            this.lpVendor.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lpVendor.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Code", "Code", 50),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name_EN", "Name", 150)});
            this.lpVendor.Properties.DataSource = this.BindingSource;
            this.lpVendor.Properties.NullText = "";
            this.lpVendor.Properties.PopupWidth = 300;
            this.lpVendor.Size = new System.Drawing.Size(206, 21);
            this.lpVendor.TabIndex = 10;
            // 
            // editShipmentDate
            // 
            this.editShipmentDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ShipmentDate", true));
            this.editShipmentDate.EditValue = null;
            this.editShipmentDate.Location = new System.Drawing.Point(229, 222);
            this.editShipmentDate.Name = "editShipmentDate";
            this.editShipmentDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editShipmentDate.Properties.DisplayFormat.FormatString = "yy-MM-dd";
            this.editShipmentDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.editShipmentDate.Properties.EditFormat.FormatString = "yy-MM-dd";
            this.editShipmentDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.editShipmentDate.Properties.Mask.EditMask = "yy-MM-dd";
            this.editShipmentDate.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.None;
            this.editShipmentDate.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.editShipmentDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editShipmentDate.Size = new System.Drawing.Size(206, 21);
            this.editShipmentDate.TabIndex = 11;
            // 
            // edtETDDate
            // 
            this.edtETDDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ETDDate", true));
            this.edtETDDate.EditValue = null;
            this.edtETDDate.Location = new System.Drawing.Point(229, 158);
            this.edtETDDate.Name = "edtETDDate";
            this.edtETDDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtETDDate.Properties.DisplayFormat.FormatString = "yy-MM-dd";
            this.edtETDDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.edtETDDate.Properties.EditFormat.FormatString = "yy-MM-dd";
            this.edtETDDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.edtETDDate.Properties.Mask.EditMask = "yy-MM-dd";
            this.edtETDDate.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.None;
            this.edtETDDate.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.edtETDDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtETDDate.Size = new System.Drawing.Size(206, 21);
            this.edtETDDate.TabIndex = 13;
            // 
            // edtETADate
            // 
            this.edtETADate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ETADate", true));
            this.edtETADate.EditValue = null;
            this.edtETADate.Location = new System.Drawing.Point(229, 190);
            this.edtETADate.Name = "edtETADate";
            this.edtETADate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtETADate.Properties.DisplayFormat.FormatString = "yy-MM-dd";
            this.edtETADate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.edtETADate.Properties.EditFormat.FormatString = "yy-MM-dd";
            this.edtETADate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.edtETADate.Properties.Mask.EditMask = "yy-MM-dd";
            this.edtETADate.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.None;
            this.edtETADate.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.edtETADate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtETADate.Size = new System.Drawing.Size(206, 21);
            this.edtETADate.TabIndex = 15;
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Price", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Location = new System.Drawing.Point(229, 126);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Size = new System.Drawing.Size(206, 21);
            this.spinEdit1.TabIndex = 16;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new System.Drawing.Point(180, 129);
            label3.Name = "label3";
            label3.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(label3, null);
            label3.TabIndex = 17;
            label3.Text = "Price:";
            // 
            // LCShipmentDateDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(label3);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(this.edtETADate);
            this.Controls.Add(label2);
            this.Controls.Add(this.edtETDDate);
            this.Controls.Add(label1);
            this.Controls.Add(this.editShipmentDate);
            this.Controls.Add(this.lpVendor);
            this.Controls.Add(shipmentDateLabel);
            this.Controls.Add(projectionDateLabel);
            this.Controls.Add(this.edtProjectionDate);
            this.Controls.Add(vendorCodeLabel);
            this.Name = "LCShipmentDateDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(vendorCodeLabel, 0);
            this.Controls.SetChildIndex(this.edtProjectionDate, 0);
            this.Controls.SetChildIndex(projectionDateLabel, 0);
            this.Controls.SetChildIndex(shipmentDateLabel, 0);
            this.Controls.SetChildIndex(this.lpVendor, 0);
            this.Controls.SetChildIndex(this.editShipmentDate, 0);
            this.Controls.SetChildIndex(label1, 0);
            this.Controls.SetChildIndex(this.edtETDDate, 0);
            this.Controls.SetChildIndex(label2, 0);
            this.Controls.SetChildIndex(this.edtETADate, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(label3, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProjectionDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lpVendor.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editShipmentDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editShipmentDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtETDDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtETDDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtETADate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtETADate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit edtProjectionDate;
        private DevExpress.XtraEditors.LookUpEdit lpVendor;
        private DevExpress.XtraEditors.DateEdit editShipmentDate;
        private DevExpress.XtraEditors.DateEdit edtETDDate;
        private DevExpress.XtraEditors.DateEdit edtETADate;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
    }
}
