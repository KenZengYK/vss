namespace PH.RWO.BackEnd
{
    partial class JobExportToRFIDByRange
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
            this.components = new System.ComponentModel.Container();
            this.lblOutPutPath = new System.Windows.Forms.Label();
            this.editRFID = new DevExpress.XtraEditors.TextEdit();
            this.lblCondition = new System.Windows.Forms.Label();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.viewRWO = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExFtyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeliveryDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colManufactureCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBulkQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridControl2 = new DevExpress.XtraGrid.GridControl();
            this.viewCustomer = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn9 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridControl3 = new DevExpress.XtraGrid.GridControl();
            this.viewCustStyle = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn23 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.editCustomer = new DevExpress.XtraEditors.TextEdit();
            this.editCustStyle = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.editEndDate = new DevExpress.XtraEditors.DateEdit();
            this.editBeginDate = new DevExpress.XtraEditors.DateEdit();
            ((System.ComponentModel.ISupportInitialize)(this.editRFID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.viewRWO)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.viewCustomer)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.viewCustStyle)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCustomer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCustStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editEndDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editEndDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBeginDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBeginDate.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lblOutPutPath
            // 
            this.lblOutPutPath.AutoSize = true;
            this.lblOutPutPath.Location = new System.Drawing.Point(28, 35);
            this.lblOutPutPath.Name = "lblOutPutPath";
            this.lblOutPutPath.Size = new System.Drawing.Size(41, 12);
            this.lblOutPutPath.TabIndex = 325;
            this.lblOutPutPath.Text = "RFID :";
            // 
            // editRFID
            // 
            this.editRFID.EditValue = "\\\\10.2.1.73\\RFIDData\\";
            this.editRFID.Location = new System.Drawing.Point(117, 30);
            this.editRFID.Name = "editRFID";
            this.editRFID.Size = new System.Drawing.Size(338, 21);
            this.editRFID.TabIndex = 326;
            this.editRFID.Tag = "Customers";
            // 
            // lblCondition
            // 
            this.lblCondition.AutoSize = true;
            this.lblCondition.Location = new System.Drawing.Point(64, 37);
            this.lblCondition.Name = "lblCondition";
            this.lblCondition.Size = new System.Drawing.Size(35, 12);
            this.lblCondition.TabIndex = 320;
            this.lblCondition.Text = "from:";
            // 
            // gridControl1
            // 
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(38, 192);
            this.gridControl1.MainView = this.viewRWO;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(377, 171);
            this.gridControl1.TabIndex = 327;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.viewRWO});
            this.gridControl1.Visible = false;
            // 
            // viewRWO
            // 
            this.viewRWO.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colProjectNo,
            this.colWorkOrderNo,
            this.colWOc,
            this.colExFtyDate,
            this.colDeliveryDate,
            this.colManufactureCode,
            this.colColorCode,
            this.colCup,
            this.colSize,
            this.colCustomerStyleNo,
            this.colBulkQty,
            this.colCustomer,
            this.colUnit});
            this.viewRWO.CustomizationFormBounds = new System.Drawing.Rectangle(1062, 541, 208, 177);
            this.viewRWO.GridControl = this.gridControl1;
            this.viewRWO.Name = "viewRWO";
            this.viewRWO.OptionsBehavior.Editable = false;
            this.viewRWO.OptionsCustomization.AllowFilter = false;
            this.viewRWO.OptionsDetail.EnableMasterViewMode = false;
            this.viewRWO.OptionsPrint.AutoWidth = false;
            this.viewRWO.OptionsView.ColumnAutoWidth = false;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "ProjectNo";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 0;
            this.colProjectNo.Width = 115;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "PoNo";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 1;
            this.colWorkOrderNo.Width = 102;
            // 
            // colWOc
            // 
            this.colWOc.Caption = "WOc";
            this.colWOc.FieldName = "WOc";
            this.colWOc.Name = "colWOc";
            this.colWOc.Visible = true;
            this.colWOc.VisibleIndex = 2;
            this.colWOc.Width = 100;
            // 
            // colExFtyDate
            // 
            this.colExFtyDate.Caption = "ExftyDate";
            this.colExFtyDate.FieldName = "ExFtyDate";
            this.colExFtyDate.Name = "colExFtyDate";
            this.colExFtyDate.Visible = true;
            this.colExFtyDate.VisibleIndex = 3;
            this.colExFtyDate.Width = 116;
            // 
            // colDeliveryDate
            // 
            this.colDeliveryDate.Caption = "ShipDate";
            this.colDeliveryDate.FieldName = "ExFtyDate";
            this.colDeliveryDate.Name = "colDeliveryDate";
            this.colDeliveryDate.Visible = true;
            this.colDeliveryDate.VisibleIndex = 4;
            this.colDeliveryDate.Width = 111;
            // 
            // colManufactureCode
            // 
            this.colManufactureCode.Caption = "ManufactureCode";
            this.colManufactureCode.FieldName = "ManufactureCode";
            this.colManufactureCode.Name = "colManufactureCode";
            this.colManufactureCode.Visible = true;
            this.colManufactureCode.VisibleIndex = 5;
            this.colManufactureCode.Width = 127;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "ColorCode";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 6;
            this.colColorCode.Width = 95;
            // 
            // colCup
            // 
            this.colCup.Caption = "Cup";
            this.colCup.FieldName = "Cup";
            this.colCup.Name = "colCup";
            this.colCup.Visible = true;
            this.colCup.VisibleIndex = 7;
            this.colCup.Width = 81;
            // 
            // colSize
            // 
            this.colSize.Caption = "Size";
            this.colSize.FieldName = "Size";
            this.colSize.Name = "colSize";
            this.colSize.Visible = true;
            this.colSize.VisibleIndex = 8;
            this.colSize.Width = 84;
            // 
            // colCustomerStyleNo
            // 
            this.colCustomerStyleNo.Caption = "CustStyle";
            this.colCustomerStyleNo.FieldName = "CustomerStyleNo";
            this.colCustomerStyleNo.Name = "colCustomerStyleNo";
            this.colCustomerStyleNo.Visible = true;
            this.colCustomerStyleNo.VisibleIndex = 9;
            this.colCustomerStyleNo.Width = 151;
            // 
            // colBulkQty
            // 
            this.colBulkQty.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colBulkQty.Caption = "BulkQty";
            this.colBulkQty.FieldName = "BulkQty";
            this.colBulkQty.Name = "colBulkQty";
            this.colBulkQty.Visible = true;
            this.colBulkQty.VisibleIndex = 10;
            this.colBulkQty.Width = 109;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "CustomerCode";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.Visible = true;
            this.colCustomer.VisibleIndex = 11;
            this.colCustomer.Width = 118;
            // 
            // colUnit
            // 
            this.colUnit.Caption = "Unit";
            this.colUnit.FieldName = "Unit";
            this.colUnit.Name = "colUnit";
            this.colUnit.Visible = true;
            this.colUnit.VisibleIndex = 12;
            this.colUnit.Width = 86;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.RWO.BO.View_Export);
            // 
            // gridControl2
            // 
            this.gridControl2.EmbeddedNavigator.Name = "";
            this.gridControl2.Location = new System.Drawing.Point(38, 384);
            this.gridControl2.MainView = this.viewCustomer;
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(377, 171);
            this.gridControl2.TabIndex = 328;
            this.gridControl2.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.viewCustomer});
            this.gridControl2.Visible = false;
            // 
            // viewCustomer
            // 
            this.viewCustomer.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn7,
            this.gridColumn8,
            this.gridColumn9,
            this.gridColumn11});
            this.viewCustomer.GridControl = this.gridControl2;
            this.viewCustomer.Name = "viewCustomer";
            this.viewCustomer.OptionsBehavior.Editable = false;
            this.viewCustomer.OptionsCustomization.AllowFilter = false;
            this.viewCustomer.OptionsDetail.EnableMasterViewMode = false;
            this.viewCustomer.OptionsPrint.AutoWidth = false;
            this.viewCustomer.OptionsView.ColumnAutoWidth = false;
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "Customer";
            this.gridColumn7.FieldName = "Customer";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Visible = true;
            this.gridColumn7.VisibleIndex = 0;
            this.gridColumn7.Width = 108;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "Customer";
            this.gridColumn8.FieldName = "Customer";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Visible = true;
            this.gridColumn8.VisibleIndex = 1;
            this.gridColumn8.Width = 160;
            // 
            // gridColumn9
            // 
            this.gridColumn9.Caption = "Customer";
            this.gridColumn9.FieldName = "Customer";
            this.gridColumn9.Name = "gridColumn9";
            this.gridColumn9.Visible = true;
            this.gridColumn9.VisibleIndex = 2;
            this.gridColumn9.Width = 146;
            // 
            // gridColumn11
            // 
            this.gridColumn11.Caption = "Customer";
            this.gridColumn11.FieldName = "Customer";
            this.gridColumn11.Name = "gridColumn11";
            this.gridColumn11.Visible = true;
            this.gridColumn11.VisibleIndex = 3;
            this.gridColumn11.Width = 122;
            // 
            // gridControl3
            // 
            this.gridControl3.EmbeddedNavigator.Name = "";
            this.gridControl3.Location = new System.Drawing.Point(435, 281);
            this.gridControl3.MainView = this.viewCustStyle;
            this.gridControl3.Name = "gridControl3";
            this.gridControl3.Size = new System.Drawing.Size(279, 228);
            this.gridControl3.TabIndex = 329;
            this.gridControl3.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.viewCustStyle});
            this.gridControl3.Visible = false;
            // 
            // viewCustStyle
            // 
            this.viewCustStyle.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn23});
            this.viewCustStyle.GridControl = this.gridControl3;
            this.viewCustStyle.Name = "viewCustStyle";
            this.viewCustStyle.OptionsBehavior.Editable = false;
            this.viewCustStyle.OptionsCustomization.AllowFilter = false;
            this.viewCustStyle.OptionsDetail.EnableMasterViewMode = false;
            this.viewCustStyle.OptionsPrint.AutoWidth = false;
            this.viewCustStyle.OptionsView.ColumnAutoWidth = false;
            // 
            // gridColumn23
            // 
            this.gridColumn23.Caption = "CustStyle";
            this.gridColumn23.FieldName = "CustomerStyleNo";
            this.gridColumn23.Name = "gridColumn23";
            this.gridColumn23.Visible = true;
            this.gridColumn23.VisibleIndex = 0;
            this.gridColumn23.Width = 263;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(268, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(23, 12);
            this.label1.TabIndex = 331;
            this.label1.Text = "to:";
            // 
            // editCustomer
            // 
            this.editCustomer.EditValue = "\\\\10.2.1.73\\RFIDData\\Customer";
            this.editCustomer.Location = new System.Drawing.Point(117, 57);
            this.editCustomer.Name = "editCustomer";
            this.editCustomer.Size = new System.Drawing.Size(338, 21);
            this.editCustomer.TabIndex = 332;
            this.editCustomer.Tag = "Customers";
            // 
            // editCustStyle
            // 
            this.editCustStyle.EditValue = "\\\\10.2.1.73\\RFIDData\\CustStyle";
            this.editCustStyle.Location = new System.Drawing.Point(117, 84);
            this.editCustStyle.Name = "editCustStyle";
            this.editCustStyle.Size = new System.Drawing.Size(338, 21);
            this.editCustStyle.TabIndex = 333;
            this.editCustStyle.Tag = "Customers";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(28, 62);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 12);
            this.label2.TabIndex = 334;
            this.label2.Text = "Customer :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(28, 89);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(71, 12);
            this.label3.TabIndex = 335;
            this.label3.Text = "CustStyle :";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.lblOutPutPath);
            this.groupControl1.Controls.Add(this.label3);
            this.groupControl1.Controls.Add(this.editRFID);
            this.groupControl1.Controls.Add(this.label2);
            this.groupControl1.Controls.Add(this.editCustomer);
            this.groupControl1.Controls.Add(this.editCustStyle);
            this.groupControl1.Location = new System.Drawing.Point(29, 18);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(504, 122);
            this.groupControl1.TabIndex = 336;
            this.groupControl1.Text = "Output Path";
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.editEndDate);
            this.groupControl2.Controls.Add(this.editBeginDate);
            this.groupControl2.Controls.Add(this.label1);
            this.groupControl2.Controls.Add(this.lblCondition);
            this.groupControl2.Location = new System.Drawing.Point(29, 157);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(504, 72);
            this.groupControl2.TabIndex = 337;
            this.groupControl2.Text = "Date Range";
            // 
            // editEndDate
            // 
            this.editEndDate.EditValue = null;
            this.editEndDate.Location = new System.Drawing.Point(303, 32);
            this.editEndDate.Name = "editEndDate";
            this.editEndDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editEndDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editEndDate.Size = new System.Drawing.Size(100, 21);
            this.editEndDate.TabIndex = 1;
            // 
            // editBeginDate
            // 
            this.editBeginDate.EditValue = null;
            this.editBeginDate.Location = new System.Drawing.Point(117, 32);
            this.editBeginDate.Name = "editBeginDate";
            this.editBeginDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.editBeginDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editBeginDate.Size = new System.Drawing.Size(100, 21);
            this.editBeginDate.TabIndex = 0;
            // 
            // JobExportToRFIDByRange
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl2);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.gridControl3);
            this.Controls.Add(this.gridControl2);
            this.Controls.Add(this.gridControl1);
            this.Name = "JobExportToRFIDByRange";
            this.Size = new System.Drawing.Size(714, 562);
            ((System.ComponentModel.ISupportInitialize)(this.editRFID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.viewRWO)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.viewCustomer)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.viewCustStyle)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCustomer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCustStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            this.groupControl2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editEndDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editEndDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBeginDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editBeginDate.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit editRFID;
        private System.Windows.Forms.Label lblCondition;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView viewRWO;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colWOc;
        private DevExpress.XtraGrid.Columns.GridColumn colExFtyDate;
        private DevExpress.XtraGrid.Columns.GridColumn colDeliveryDate;
        private DevExpress.XtraGrid.Columns.GridColumn colManufactureCode;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colCup;
        private DevExpress.XtraGrid.Columns.GridColumn colSize;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colBulkQty;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colUnit;
        private System.Windows.Forms.Label lblOutPutPath;
        private DevExpress.XtraGrid.GridControl gridControl2;
        private DevExpress.XtraGrid.Views.Grid.GridView viewCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn9;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn11;
        private DevExpress.XtraGrid.GridControl gridControl3;
        private DevExpress.XtraGrid.Views.Grid.GridView viewCustStyle;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn23;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.TextEdit editCustomer;
        private DevExpress.XtraEditors.TextEdit editCustStyle;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.DateEdit editEndDate;
        private DevExpress.XtraEditors.DateEdit editBeginDate;

    }
}
