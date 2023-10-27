/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.PODetailListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/19 下午 02:47:21 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;
namespace PH.POPC.UI
{
    public partial class PODetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Version;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_AmendmentNo;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Company;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_PONO;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_OrderLine;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ProjectNo;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ItemCode;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SupplierReference;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SupplierUom;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Commodity;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Tolerance;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Flag;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_WOStartDate;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ConversionFactor;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_PHUom;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_WOStatus;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        #endregion
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Status;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PHQty;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_SuppQty;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Leadtime;

        private void InitializeComponent()
        {
            this.Columns_Version = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_AmendmentNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_OrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SupplierReference = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SupplierUom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Commodity = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Tolerance = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Flag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_WOStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.Columns_ConversionFactor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PHUom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_WOStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Leadtime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.Columns_Status = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PHQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SuppQty = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Version,
            this.Columns_AmendmentNo,
            this.Columns_Company,
            this.Columns_PONO,
            this.Columns_OrderLine,
            this.Columns_ItemCode,
            this.Columns_SupplierReference,
            this.Columns_ProjectNo,
            this.Columns_SupplierUom,
            this.Columns_Commodity,
            this.Columns_Tolerance,
            this.Columns_Flag,
            this.Columns_WOStartDate,
            this.Columns_ConversionFactor,
            this.Columns_PHUom,
            this.Columns_WOStatus,
            this.Columns_Leadtime,
            this.Columns_Status,
            this.Columns_PHQty,
            this.Columns_SuppQty});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 25);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit1,
            this.repositoryItemTextEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(690, 307);
            // 
            // Columns_Version
            // 
            this.Columns_Version.Caption = "Version";
            this.Columns_Version.FieldName = "Version";
            this.Columns_Version.Name = "Columns_Version";
            // 
            // Columns_AmendmentNo
            // 
            this.Columns_AmendmentNo.Caption = "AmendmentNo";
            this.Columns_AmendmentNo.FieldName = "AmendmentNo";
            this.Columns_AmendmentNo.Name = "Columns_AmendmentNo";
            // 
            // Columns_Company
            // 
            this.Columns_Company.Caption = "Company";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            // 
            // Columns_PONO
            // 
            this.Columns_PONO.Caption = "PO NO";
            this.Columns_PONO.FieldName = "PONO";
            this.Columns_PONO.Name = "Columns_PONO";
            // 
            // Columns_OrderLine
            // 
            this.Columns_OrderLine.Caption = "Order Line";
            this.Columns_OrderLine.FieldName = "OrderLine";
            this.Columns_OrderLine.Name = "Columns_OrderLine";
            this.Columns_OrderLine.Visible = true;
            this.Columns_OrderLine.VisibleIndex = 0;
            this.Columns_OrderLine.Width = 74;
            // 
            // Columns_ProjectNo
            // 
            this.Columns_ProjectNo.Caption = "Project No";
            this.Columns_ProjectNo.FieldName = "ProjectNo";
            this.Columns_ProjectNo.Name = "Columns_ProjectNo";
            this.Columns_ProjectNo.Visible = true;
            this.Columns_ProjectNo.VisibleIndex = 4;
            this.Columns_ProjectNo.Width = 101;
            // 
            // Columns_ItemCode
            // 
            this.Columns_ItemCode.Caption = "Item Nr.";
            this.Columns_ItemCode.FieldName = "ItemCode";
            this.Columns_ItemCode.Name = "Columns_ItemCode";
            this.Columns_ItemCode.Visible = true;
            this.Columns_ItemCode.VisibleIndex = 2;
            this.Columns_ItemCode.Width = 105;
            // 
            // Columns_SupplierReference
            // 
            this.Columns_SupplierReference.Caption = "Supplier Reference";
            this.Columns_SupplierReference.FieldName = "SupplierReference";
            this.Columns_SupplierReference.Name = "Columns_SupplierReference";
            this.Columns_SupplierReference.Visible = true;
            this.Columns_SupplierReference.VisibleIndex = 3;
            this.Columns_SupplierReference.Width = 139;
            // 
            // Columns_SupplierUom
            // 
            this.Columns_SupplierUom.Caption = "Supplier Uom";
            this.Columns_SupplierUom.FieldName = "SupplierUom";
            this.Columns_SupplierUom.Name = "Columns_SupplierUom";
            this.Columns_SupplierUom.Visible = true;
            this.Columns_SupplierUom.VisibleIndex = 8;
            this.Columns_SupplierUom.Width = 95;
            // 
            // Columns_Commodity
            // 
            this.Columns_Commodity.Caption = "Commodity";
            this.Columns_Commodity.FieldName = "Commodity";
            this.Columns_Commodity.Name = "Columns_Commodity";
            this.Columns_Commodity.Visible = true;
            this.Columns_Commodity.VisibleIndex = 9;
            this.Columns_Commodity.Width = 101;
            // 
            // Columns_Tolerance
            // 
            this.Columns_Tolerance.Caption = "Tolerance";
            this.Columns_Tolerance.FieldName = "Tolerance";
            this.Columns_Tolerance.Name = "Columns_Tolerance";
            this.Columns_Tolerance.Visible = true;
            this.Columns_Tolerance.VisibleIndex = 12;
            // 
            // Columns_Flag
            // 
            this.Columns_Flag.Caption = "Flag";
            this.Columns_Flag.FieldName = "Flag";
            this.Columns_Flag.Name = "Columns_Flag";
            // 
            // Columns_WOStartDate
            // 
            this.Columns_WOStartDate.Caption = "WO Start Date";
            this.Columns_WOStartDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.Columns_WOStartDate.FieldName = "WOStartDate";
            this.Columns_WOStartDate.Name = "Columns_WOStartDate";
            this.Columns_WOStartDate.Visible = true;
            this.Columns_WOStartDate.VisibleIndex = 10;
            this.Columns_WOStartDate.Width = 103;
            // 
            // repositoryItemDateEdit1
            // 
            this.repositoryItemDateEdit1.AutoHeight = false;
            this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // Columns_ConversionFactor
            // 
            this.Columns_ConversionFactor.Caption = "Conversion Factor";
            this.Columns_ConversionFactor.FieldName = "ConversionFactor";
            this.Columns_ConversionFactor.Name = "Columns_ConversionFactor";
            // 
            // Columns_PHUom
            // 
            this.Columns_PHUom.Caption = "PH Uom";
            this.Columns_PHUom.FieldName = "PHUom";
            this.Columns_PHUom.Name = "Columns_PHUom";
            this.Columns_PHUom.Visible = true;
            this.Columns_PHUom.VisibleIndex = 6;
            // 
            // Columns_WOStatus
            // 
            this.Columns_WOStatus.Caption = "WO Status";
            this.Columns_WOStatus.FieldName = "WOStatus";
            this.Columns_WOStatus.Name = "Columns_WOStatus";
            // 
            // Columns_Leadtime
            // 
            this.Columns_Leadtime.Caption = "Shipment Leadtime";
            this.Columns_Leadtime.ColumnEdit = this.repositoryItemTextEdit1;
            this.Columns_Leadtime.FieldName = "Leadtime";
            this.Columns_Leadtime.Name = "Columns_Leadtime";
            this.Columns_Leadtime.Visible = true;
            this.Columns_Leadtime.VisibleIndex = 11;
            this.Columns_Leadtime.Width = 127;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.Appearance.Options.UseTextOptions = true;
            this.repositoryItemTextEdit1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // Columns_Status
            // 
            this.Columns_Status.Caption = "Status";
            this.Columns_Status.FieldName = "IsOutStanding";
            this.Columns_Status.Name = "Columns_Status";
            this.Columns_Status.Visible = true;
            this.Columns_Status.VisibleIndex = 1;
            this.Columns_Status.Width = 113;
            // 
            // Columns_PHQty
            // 
            this.Columns_PHQty.Caption = "PH Qty";
            this.Columns_PHQty.DisplayFormat.FormatString = "{0:0.000}";
            this.Columns_PHQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_PHQty.FieldName = "PHQty";
            this.Columns_PHQty.Name = "Columns_PHQty";
            this.Columns_PHQty.Visible = true;
            this.Columns_PHQty.VisibleIndex = 5;
            // 
            // Columns_SuppQty
            // 
            this.Columns_SuppQty.Caption = "Supp Qty";
            this.Columns_SuppQty.DisplayFormat.FormatString = "{0:0.000}";
            this.Columns_SuppQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_SuppQty.FieldName = "SuppQty";
            this.Columns_SuppQty.Name = "Columns_SuppQty";
            this.Columns_SuppQty.Visible = true;
            this.Columns_SuppQty.VisibleIndex = 7;
            // 
            // PODetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PODetailListForm";
            this.Size = new System.Drawing.Size(690, 332);
            this.Load += new System.EventHandler(this.PODetailListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        bool _IsPOPCOpen = false;
        public DevExpress.XtraTab.XtraTabPage _parentPage;
        public PODetailListForm()
        {
            InitializeComponent();
            Init();
        }
        public PODetailListForm(object pur, DevExpress.XtraTab.XtraTabPage parentPage)
            : this()
        {
            #region Get infor

            string company = "";
            string pono = "";
            int version = 0;
            int amendmentNo = 0;
            int orderLine = 0;
            string sku = "";

            if (pur is PH.POPC.BO.View_POPC_PUR)
            {
                PH.POPC.BO.View_POPC_PUR p = (PH.POPC.BO.View_POPC_PUR)pur;
                if (p != null)
                {
                    company = p.Company;
                    pono = p.PONO;
                    version = p.Version;
                    amendmentNo = p.AmendmentNo;
                    orderLine = p.OrderLine;
                    sku = p.SKU;
                }
            }
            else if (pur is PH.POPC.BO.POColorSizeDetail)
            {
                PH.POPC.BO.POColorSizeDetail p = (PH.POPC.BO.POColorSizeDetail)pur;
                if (p != null)
                {
                    company = p.Company;
                    pono = p.PONO;
                    version = p.Version;
                    amendmentNo = p.AmendmentNo;
                    orderLine = p.OrderLine;
                    sku = p.SKU;
                }
            }
            #endregion

            //InitializeComponent();
            //Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = from c in context.PODetails
                                            where c.Company == company
                                            && c.PONO == pono
                                            && c.AmendmentNo == amendmentNo
                                            && c.Version == version
                                            && c.OrderLine == orderLine
                                            select c;
            this.EditorTypeName = typeof(PH.POPC.UI.PODetailDetailForm).FullName;
            this._IsPOPCOpen = true;
            this._parentPage = parentPage;
        }
        private void PODetailListForm_Load(object sender, EventArgs e)
        {
            if (this._IsPOPCOpen)
            {
                this.Tag = "Edit";
                this.OnClickOpen();
            }
        }
        protected virtual void Init()
        {
            this.EditorTypeName = typeof(PODetailDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        protected override void OnClickDelete()
        {
            PH.POPC.BO.PODetail cur = this.BindingSource.Current as PH.POPC.BO.PODetail;
            if (cur != null && cur.PODetailPhoto != null)
            {
                (this.DataContext as PH.POPC.BO.POPCDataContext).PODetailPhotos.DeleteOnSubmit(cur.PODetailPhoto);
            }
            base.OnClickDelete();
        }
    }
}
