using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public partial class SampleOrderPOListForm : PH.Platform.UI.CS.UI2.ListForm 
    {
        #region
        private DevExpress.XtraGrid.Columns.GridColumn sampleOrderPOColumn;
        private DevExpress.XtraGrid.Columns.GridColumn sampleOrderColumn;
        private DevExpress.XtraGrid.Columns.GridColumn pO_DateColumn;
        private DevExpress.XtraGrid.Columns.GridColumn commodityCodeColumn;
        private DevExpress.XtraGrid.Columns.GridColumn commodityColumn;
        private DevExpress.XtraGrid.Columns.GridColumn supplierCodeColumn;
        private DevExpress.XtraGrid.Columns.GridColumn supplierNameColumn;
        private DevExpress.XtraGrid.Columns.GridColumn supplierAddressColumn;
        private DevExpress.XtraGrid.Columns.GridColumn supplierAttnColumn;
        private DevExpress.XtraGrid.Columns.GridColumn supplierFaxColumn;
        private DevExpress.XtraGrid.Columns.GridColumn paymentTermColumn;
        private DevExpress.XtraGrid.Columns.GridColumn deliveryTermColumn;
        private DevExpress.XtraGrid.Columns.GridColumn shipmentModeColumn;
        private DevExpress.XtraGrid.Columns.GridColumn deliveryDateColumn;
        private DevExpress.XtraGrid.Columns.GridColumn contractPersonColumn;
        private DevExpress.XtraGrid.Columns.GridColumn customerColumn;
        private DevExpress.XtraGrid.Columns.GridColumn supplierWidthColumn;
        private DevExpress.XtraGrid.Columns.GridColumn currencyColumn;
        private DevExpress.XtraGrid.Columns.GridColumn additionalTermColumn;
        private DevExpress.XtraGrid.Columns.GridColumn printTypeColumn;
        private DevExpress.XtraGrid.Columns.GridColumn pOStateColumn;
        private DevExpress.XtraGrid.Columns.GridColumn SelectedColumn;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1_Print;
        private DevExpress.XtraBars.BarButtonItem bar_Print;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem bar_Complete;
        private DevExpress.XtraBars.BarButtonItem bar_Cancelled;
        private DevExpress.XtraBars.BarButtonItem bar_ReNew;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit2;
        private DevExpress.XtraGrid.Columns.GridColumn sampleOrderPODetailColumn;

        #endregion

        public SampleOrderPOListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        public override void DataBind()
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = from sapleorderpo in context.SampleOrderPOs select sapleorderpo;
            this.EditorTypeName = typeof(SampleOrderPODetailForm).FullName;

            this.objListGridView.OptionsBehavior.Editable = true;
            
            base.DataBind();
        }

        private void SetPOState(string state)
        {
            Controller.PostGridValue(this.objListGridView);
           
            foreach (PH.MIDc.BO.SampleOrderPO m in this.BindingSource)
            {
                if (m.Selected)
                    m.POState = state;
            }
            this.DataContext.SubmitChanges();
            
        } 
        
        private void InitializeComponent()
        {
            this.sampleOrderPOColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.sampleOrderColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.pO_DateColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.commodityCodeColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.commodityColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.supplierCodeColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.supplierNameColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.supplierAddressColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.supplierAttnColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.supplierFaxColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.paymentTermColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.deliveryTermColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.shipmentModeColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.deliveryDateColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.contractPersonColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.customerColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.supplierWidthColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.currencyColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.additionalTermColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.printTypeColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.pOStateColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.sampleOrderPODetailColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.SelectedColumn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1_Print = new DevExpress.XtraBars.BarButtonItem();
            this.bar_Print = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.bar_Complete = new DevExpress.XtraBars.BarButtonItem();
            this.bar_Cancelled = new DevExpress.XtraBars.BarButtonItem();
            this.bar_ReNew = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit2.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1_Print,
            this.bar_Print,
            this.barButtonItem1,
            this.bar_Complete,
            this.bar_Cancelled,
            this.bar_ReNew,
            this.barButtonItem2});
            this.objbarManager.MaxItemId = 18;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.bar_Print, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.bar_Complete, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.bar_Cancelled, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.bar_ReNew, true)});
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.objListGridView.Appearance.EvenRow.BackColor2 = System.Drawing.Color.FloralWhite;
            this.objListGridView.Appearance.EvenRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            this.objListGridView.Appearance.EvenRow.Options.UseBackColor = true;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.sampleOrderPOColumn,
            this.SelectedColumn,
            this.sampleOrderColumn,
            this.pO_DateColumn,
            this.commodityCodeColumn,
            this.commodityColumn,
            this.supplierCodeColumn,
            this.supplierNameColumn,
            this.supplierAddressColumn,
            this.supplierAttnColumn,
            this.supplierFaxColumn,
            this.paymentTermColumn,
            this.deliveryTermColumn,
            this.shipmentModeColumn,
            this.deliveryDateColumn,
            this.contractPersonColumn,
            this.customerColumn,
            this.supplierWidthColumn,
            this.currencyColumn,
            this.additionalTermColumn,
            this.printTypeColumn,
            this.pOStateColumn,
            this.sampleOrderPODetailColumn,
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.EnableAppearanceEvenRow = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.sampleOrderPOColumn, DevExpress.Data.ColumnSortOrder.Descending)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit2});
            this.objListGridControl.Size = new System.Drawing.Size(777, 297);
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // sampleOrderPOColumn
            // 
            this.sampleOrderPOColumn.Caption = "Sample Order PONo";
            this.sampleOrderPOColumn.FieldName = "SampleOrderPONo";
            this.sampleOrderPOColumn.Name = "sampleOrderPOColumn";
            this.sampleOrderPOColumn.OptionsColumn.AllowEdit = false;
            this.sampleOrderPOColumn.Visible = true;
            this.sampleOrderPOColumn.VisibleIndex = 1;
            this.sampleOrderPOColumn.Width = 119;
            // 
            // sampleOrderColumn
            // 
            this.sampleOrderColumn.Caption = "Sample OrderNo";
            this.sampleOrderColumn.FieldName = "SampleOrderNo";
            this.sampleOrderColumn.Name = "sampleOrderColumn";
            this.sampleOrderColumn.OptionsColumn.AllowEdit = false;
            this.sampleOrderColumn.Width = 100;
            // 
            // pO_DateColumn
            // 
            this.pO_DateColumn.Caption = "PO Date";
            this.pO_DateColumn.ColumnEdit = this.repositoryItemDateEdit2;
            this.pO_DateColumn.FieldName = "PO_Date";
            this.pO_DateColumn.Name = "pO_DateColumn";
            this.pO_DateColumn.OptionsColumn.AllowEdit = false;
            this.pO_DateColumn.Visible = true;
            this.pO_DateColumn.VisibleIndex = 2;
            this.pO_DateColumn.Width = 90;
            // 
            // repositoryItemDateEdit2
            // 
            this.repositoryItemDateEdit2.AutoHeight = false;
            this.repositoryItemDateEdit2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit2.Name = "repositoryItemDateEdit2";
            this.repositoryItemDateEdit2.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // repositoryItemDateEdit1
            // 
            this.repositoryItemDateEdit1.AutoHeight = false;
            this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo),
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(),
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // commodityCodeColumn
            // 
            this.commodityCodeColumn.Caption = "CommodityCode";
            this.commodityCodeColumn.FieldName = "CommodityCode";
            this.commodityCodeColumn.Name = "commodityCodeColumn";
            this.commodityCodeColumn.OptionsColumn.AllowEdit = false;
            this.commodityCodeColumn.Visible = true;
            this.commodityCodeColumn.VisibleIndex = 4;
            this.commodityCodeColumn.Width = 102;
            // 
            // commodityColumn
            // 
            this.commodityColumn.Caption = "Commodity";
            this.commodityColumn.FieldName = "Commodity";
            this.commodityColumn.Name = "commodityColumn";
            this.commodityColumn.OptionsColumn.AllowEdit = false;
            this.commodityColumn.Width = 100;
            // 
            // supplierCodeColumn
            // 
            this.supplierCodeColumn.Caption = "SupplierCode";
            this.supplierCodeColumn.FieldName = "SupplierCode";
            this.supplierCodeColumn.Name = "supplierCodeColumn";
            this.supplierCodeColumn.OptionsColumn.AllowEdit = false;
            this.supplierCodeColumn.Visible = true;
            this.supplierCodeColumn.VisibleIndex = 3;
            this.supplierCodeColumn.Width = 100;
            // 
            // supplierNameColumn
            // 
            this.supplierNameColumn.Caption = "SupplierName";
            this.supplierNameColumn.FieldName = "SupplierName";
            this.supplierNameColumn.Name = "supplierNameColumn";
            this.supplierNameColumn.OptionsColumn.AllowEdit = false;
            this.supplierNameColumn.Width = 100;
            // 
            // supplierAddressColumn
            // 
            this.supplierAddressColumn.Caption = "SupplierAddress";
            this.supplierAddressColumn.FieldName = "SupplierAddress";
            this.supplierAddressColumn.Name = "supplierAddressColumn";
            this.supplierAddressColumn.OptionsColumn.AllowEdit = false;
            this.supplierAddressColumn.Width = 100;
            // 
            // supplierAttnColumn
            // 
            this.supplierAttnColumn.Caption = "SupplierAttn";
            this.supplierAttnColumn.FieldName = "SupplierAttn";
            this.supplierAttnColumn.Name = "supplierAttnColumn";
            this.supplierAttnColumn.OptionsColumn.AllowEdit = false;
            this.supplierAttnColumn.Width = 100;
            // 
            // supplierFaxColumn
            // 
            this.supplierFaxColumn.Caption = "SupplierFax";
            this.supplierFaxColumn.FieldName = "SupplierFax";
            this.supplierFaxColumn.Name = "supplierFaxColumn";
            this.supplierFaxColumn.OptionsColumn.AllowEdit = false;
            this.supplierFaxColumn.Width = 100;
            // 
            // paymentTermColumn
            // 
            this.paymentTermColumn.Caption = "PaymentTerm";
            this.paymentTermColumn.FieldName = "PaymentTerm";
            this.paymentTermColumn.Name = "paymentTermColumn";
            this.paymentTermColumn.OptionsColumn.AllowEdit = false;
            this.paymentTermColumn.Width = 100;
            // 
            // deliveryTermColumn
            // 
            this.deliveryTermColumn.Caption = "DeliveryTerm";
            this.deliveryTermColumn.FieldName = "DeliveryTerm";
            this.deliveryTermColumn.Name = "deliveryTermColumn";
            this.deliveryTermColumn.OptionsColumn.AllowEdit = false;
            this.deliveryTermColumn.Width = 100;
            // 
            // shipmentModeColumn
            // 
            this.shipmentModeColumn.Caption = "ShipmentMode";
            this.shipmentModeColumn.FieldName = "ShipmentMode";
            this.shipmentModeColumn.Name = "shipmentModeColumn";
            this.shipmentModeColumn.OptionsColumn.AllowEdit = false;
            this.shipmentModeColumn.Width = 100;
            // 
            // deliveryDateColumn
            // 
            this.deliveryDateColumn.Caption = "DeliveryDate";
            this.deliveryDateColumn.ColumnEdit = this.repositoryItemDateEdit2;
            this.deliveryDateColumn.FieldName = "DeliveryDate";
            this.deliveryDateColumn.Name = "deliveryDateColumn";
            this.deliveryDateColumn.OptionsColumn.AllowEdit = false;
            this.deliveryDateColumn.Visible = true;
            this.deliveryDateColumn.VisibleIndex = 7;
            this.deliveryDateColumn.Width = 100;
            // 
            // contractPersonColumn
            // 
            this.contractPersonColumn.Caption = "ContractPerson";
            this.contractPersonColumn.FieldName = "ContractPerson";
            this.contractPersonColumn.Name = "contractPersonColumn";
            this.contractPersonColumn.OptionsColumn.AllowEdit = false;
            this.contractPersonColumn.Width = 100;
            // 
            // customerColumn
            // 
            this.customerColumn.Caption = "Customer";
            this.customerColumn.FieldName = "Customer";
            this.customerColumn.Name = "customerColumn";
            this.customerColumn.OptionsColumn.AllowEdit = false;
            this.customerColumn.Visible = true;
            this.customerColumn.VisibleIndex = 11;
            this.customerColumn.Width = 100;
            // 
            // supplierWidthColumn
            // 
            this.supplierWidthColumn.Caption = "SupplierWidth";
            this.supplierWidthColumn.FieldName = "SupplierWidth";
            this.supplierWidthColumn.Name = "supplierWidthColumn";
            this.supplierWidthColumn.OptionsColumn.AllowEdit = false;
            this.supplierWidthColumn.Width = 100;
            // 
            // currencyColumn
            // 
            this.currencyColumn.Caption = "Currency";
            this.currencyColumn.FieldName = "Currency";
            this.currencyColumn.Name = "currencyColumn";
            this.currencyColumn.OptionsColumn.AllowEdit = false;
            this.currencyColumn.Width = 100;
            // 
            // additionalTermColumn
            // 
            this.additionalTermColumn.Caption = "AdditionalTerm";
            this.additionalTermColumn.FieldName = "AdditionalTerm";
            this.additionalTermColumn.Name = "additionalTermColumn";
            this.additionalTermColumn.OptionsColumn.AllowEdit = false;
            this.additionalTermColumn.Width = 100;
            // 
            // printTypeColumn
            // 
            this.printTypeColumn.Caption = "PrintType";
            this.printTypeColumn.FieldName = "PrintType";
            this.printTypeColumn.Name = "printTypeColumn";
            this.printTypeColumn.OptionsColumn.AllowEdit = false;
            this.printTypeColumn.Width = 100;
            // 
            // pOStateColumn
            // 
            this.pOStateColumn.Caption = "PO State";
            this.pOStateColumn.FieldName = "POState";
            this.pOStateColumn.Name = "pOStateColumn";
            this.pOStateColumn.OptionsColumn.AllowEdit = false;
            this.pOStateColumn.Visible = true;
            this.pOStateColumn.VisibleIndex = 10;
            this.pOStateColumn.Width = 108;
            // 
            // sampleOrderPODetailColumn
            // 
            this.sampleOrderPODetailColumn.Caption = "sampleOrderPODetail";
            this.sampleOrderPODetailColumn.FieldName = "sampleOrderPODetail";
            this.sampleOrderPODetailColumn.Name = "sampleOrderPODetailColumn";
            this.sampleOrderPODetailColumn.OptionsColumn.AllowEdit = false;
            this.sampleOrderPODetailColumn.Width = 100;
            // 
            // SelectedColumn
            // 
            this.SelectedColumn.Caption = "Selected";
            this.SelectedColumn.FieldName = "Selected";
            this.SelectedColumn.Name = "SelectedColumn";
            this.SelectedColumn.Visible = true;
            this.SelectedColumn.VisibleIndex = 0;
            this.SelectedColumn.Width = 70;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Order Color";
            this.gridColumn1.FieldName = "OrderColor";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 5;
            this.gridColumn1.Width = 95;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Order Qty";
            this.gridColumn2.FieldName = "OrderQty";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.OptionsColumn.AllowEdit = false;
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 6;
            this.gridColumn2.Width = 105;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Ready Date";
            this.gridColumn3.ColumnEdit = this.repositoryItemDateEdit2;
            this.gridColumn3.FieldName = "ReadyDate";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.OptionsColumn.AllowEdit = false;
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 8;
            this.gridColumn3.Width = 96;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Received Date";
            this.gridColumn4.ColumnEdit = this.repositoryItemDateEdit2;
            this.gridColumn4.FieldName = "ReceivedDate";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.OptionsColumn.AllowEdit = false;
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 9;
            this.gridColumn4.Width = 101;
            // 
            // barButtonItem1_Print
            // 
            this.barButtonItem1_Print.Caption = "Print";
            this.barButtonItem1_Print.Id = 10;
            this.barButtonItem1_Print.Name = "barButtonItem1_Print";
            // 
            // bar_Print
            // 
            this.bar_Print.Caption = "Print";
            this.bar_Print.Id = 11;
            this.bar_Print.Name = "bar_Print";
            this.bar_Print.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bar_Print_ItemClick);
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Complete";
            this.barButtonItem1.Id = 12;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // bar_Complete
            // 
            this.bar_Complete.Caption = "Completed";
            this.bar_Complete.Id = 13;
            this.bar_Complete.Name = "bar_Complete";
            this.bar_Complete.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bar_Complete_ItemClick);
            // 
            // bar_Cancelled
            // 
            this.bar_Cancelled.Caption = "Cancelled";
            this.bar_Cancelled.Id = 14;
            this.bar_Cancelled.Name = "bar_Cancelled";
            this.bar_Cancelled.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bar_Cancelled_ItemClick);
            // 
            // bar_ReNew
            // 
            this.bar_ReNew.Caption = "ReNew";
            this.bar_ReNew.Id = 15;
            this.bar_ReNew.Name = "bar_ReNew";
            this.bar_ReNew.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bar_ReNew_ItemClick);
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "barButtonItem2";
            this.barButtonItem2.Id = 16;
            this.barButtonItem2.Name = "barButtonItem2";
            // 
            // SampleOrderPOListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.Name = "SampleOrderPOListForm";
            this.Size = new System.Drawing.Size(777, 323); 
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit2.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        private void bar_Print_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.MIDc.BO.SampleOrderPO m = (PH.MIDc.BO.SampleOrderPO)this.BindingSource.Current;
            if (m == null) return;

            if (m.PrintType == "SKU")
            {
                RptSampleOrderPOSKU report = new RptSampleOrderPOSKU(m);
                report.ShowPreview();
            }
            else
            {
                RptSampleOrderPOColor report = new RptSampleOrderPOColor(m);
                report.ShowPreview();
            }

        }

        private void bar_Complete_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show(string.Format("確認要{0}嗎?", "Completed"), "提問", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel) return; ;
            SetPOState("Completed");
        }

        private void bar_Cancelled_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show(string.Format("確認要{0}嗎?", "Cancelled"), "提問", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel) return; ;
            SetPOState("Cancelled");
        }

        private void bar_ReNew_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show(string.Format("確認要{0}嗎?", "ReNew"), "提問", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel) return; ;
            SetPOState("");
        }

    }
}
