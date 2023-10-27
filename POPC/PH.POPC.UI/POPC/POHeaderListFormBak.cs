/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.POHeaderListFormBakBak.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/19 上午 11:43:39 $   
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
namespace PH.POPC.UI
{
    public partial class POHeaderListFormBak : PH.Platform.UI.CS.UI2.ListForm
    {

        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Version;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Company;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PONO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Dept;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_OrderDate;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Supplier;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PurchaseOfficerCode;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PurchaseOfficer;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PaymentTermsType;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PaymentMethod;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ReceivingAddress;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_AddtionalTermsAndConditions;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ShipMode;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_DeliveryAddress;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_OrderClass;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_NewVersion;

        private DevExpress.XtraBars.BarButtonItem barBtnRefresh;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        //private DevExpress.XtraBars.BarButtonItem barButtonItem1;//;=new DevExpress.XtraBars.BarButtonItem();
        public DevExpress.XtraBars.BarButtonItem barBtnPoList;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_POTYPE;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Projects;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_WorkOrders;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_IsOutStanding;
        #endregion
        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.Columns_Version = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Dept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_OrderDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.Columns_Supplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PurchaseOfficerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PurchaseOfficer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PaymentTermsType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PaymentMethod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ReceivingAddress = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_AddtionalTermsAndConditions = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ShipMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_DeliveryAddress = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_OrderClass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_NewVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnRefresh = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPoList = new DevExpress.XtraBars.BarButtonItem();
            this.Columns_IsOutStanding = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_POTYPE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Projects = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_WorkOrders = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnRefresh,
            this.barSubItem1,
            this.barBtnPoList});
            this.objbarManager.MaxItemId = 16;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPoList, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnRefresh, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 26);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(807, 474);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Version,
            this.Columns_Company,
            this.Columns_PONO,
            this.Columns_Dept,
            this.Columns_OrderDate,
            this.Columns_Supplier,
            this.Columns_PurchaseOfficerCode,
            this.Columns_PurchaseOfficer,
            this.Columns_PaymentTermsType,
            this.Columns_PaymentMethod,
            this.Columns_ReceivingAddress,
            this.Columns_AddtionalTermsAndConditions,
            this.Columns_ShipMode,
            this.Columns_DeliveryAddress,
            this.Columns_OrderClass,
            this.Columns_NewVersion,
            this.Columns_IsOutStanding,
            this.Columns_POTYPE,
            this.Columns_Projects,
            this.Columns_WorkOrders});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(714, 281, 208, 191);
            this.objListGridView.GroupCount = 2;
            this.objListGridView.GroupFormat = "[#image]{1} {2}";
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.Columns_Projects, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.Columns_PONO, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // Columns_Version
            // 
            this.Columns_Version.Caption = "Version";
            this.Columns_Version.FieldName = "POVersion";
            this.Columns_Version.Name = "Columns_Version";
            this.Columns_Version.Visible = true;
            this.Columns_Version.VisibleIndex = 2;
            this.Columns_Version.Width = 88;
            // 
            // Columns_Company
            // 
            this.Columns_Company.Caption = "Company";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            this.Columns_Company.Visible = true;
            this.Columns_Company.VisibleIndex = 3;
            this.Columns_Company.Width = 88;
            // 
            // Columns_PONO
            // 
            this.Columns_PONO.Caption = "PO NO";
            this.Columns_PONO.FieldName = "PONO";
            this.Columns_PONO.Name = "Columns_PONO";
            this.Columns_PONO.Visible = true;
            this.Columns_PONO.VisibleIndex = 3;
            this.Columns_PONO.Width = 78;
            // 
            // Columns_Dept
            // 
            this.Columns_Dept.Caption = "Dept";
            this.Columns_Dept.FieldName = "Dept";
            this.Columns_Dept.Name = "Columns_Dept";
            this.Columns_Dept.Visible = true;
            this.Columns_Dept.VisibleIndex = 8;
            this.Columns_Dept.Width = 107;
            // 
            // Columns_OrderDate
            // 
            this.Columns_OrderDate.Caption = "Order Date";
            this.Columns_OrderDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.Columns_OrderDate.FieldName = "OrderDate";
            this.Columns_OrderDate.Name = "Columns_OrderDate";
            this.Columns_OrderDate.Visible = true;
            this.Columns_OrderDate.VisibleIndex = 5;
            this.Columns_OrderDate.Width = 109;
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
            // Columns_Supplier
            // 
            this.Columns_Supplier.Caption = "Supplier";
            this.Columns_Supplier.FieldName = "Supplier";
            this.Columns_Supplier.Name = "Columns_Supplier";
            this.Columns_Supplier.Visible = true;
            this.Columns_Supplier.VisibleIndex = 4;
            this.Columns_Supplier.Width = 93;
            // 
            // Columns_PurchaseOfficerCode
            // 
            this.Columns_PurchaseOfficerCode.Caption = "Purchase Officer Code";
            this.Columns_PurchaseOfficerCode.FieldName = "PurchaseOfficerCode";
            this.Columns_PurchaseOfficerCode.Name = "Columns_PurchaseOfficerCode";
            // 
            // Columns_PurchaseOfficer
            // 
            this.Columns_PurchaseOfficer.Caption = "Purchase Officer";
            this.Columns_PurchaseOfficer.FieldName = "PurchaseOfficer";
            this.Columns_PurchaseOfficer.Name = "Columns_PurchaseOfficer";
            this.Columns_PurchaseOfficer.Visible = true;
            this.Columns_PurchaseOfficer.VisibleIndex = 1;
            this.Columns_PurchaseOfficer.Width = 126;
            // 
            // Columns_PaymentTermsType
            // 
            this.Columns_PaymentTermsType.Caption = "PaymentTerms Type";
            this.Columns_PaymentTermsType.FieldName = "PaymentTermsType";
            this.Columns_PaymentTermsType.Name = "Columns_PaymentTermsType";
            this.Columns_PaymentTermsType.Width = 135;
            // 
            // Columns_PaymentMethod
            // 
            this.Columns_PaymentMethod.Caption = "Payment Method";
            this.Columns_PaymentMethod.FieldName = "PaymentMethod";
            this.Columns_PaymentMethod.Name = "Columns_PaymentMethod";
            this.Columns_PaymentMethod.Visible = true;
            this.Columns_PaymentMethod.VisibleIndex = 6;
            this.Columns_PaymentMethod.Width = 136;
            // 
            // Columns_ReceivingAddress
            // 
            this.Columns_ReceivingAddress.Caption = "Receiving Address";
            this.Columns_ReceivingAddress.FieldName = "ReceivingAddress";
            this.Columns_ReceivingAddress.Name = "Columns_ReceivingAddress";
            // 
            // Columns_AddtionalTermsAndConditions
            // 
            this.Columns_AddtionalTermsAndConditions.Caption = "Addtional Terms And Conditions";
            this.Columns_AddtionalTermsAndConditions.FieldName = "AddtionalTermsAndConditions";
            this.Columns_AddtionalTermsAndConditions.Name = "Columns_AddtionalTermsAndConditions";
            // 
            // Columns_ShipMode
            // 
            this.Columns_ShipMode.Caption = "Ship Mode";
            this.Columns_ShipMode.FieldName = "ShipMode";
            this.Columns_ShipMode.Name = "Columns_ShipMode";
            this.Columns_ShipMode.Visible = true;
            this.Columns_ShipMode.VisibleIndex = 7;
            this.Columns_ShipMode.Width = 102;
            // 
            // Columns_DeliveryAddress
            // 
            this.Columns_DeliveryAddress.Caption = "Delivery Address";
            this.Columns_DeliveryAddress.FieldName = "DeliveryAddress";
            this.Columns_DeliveryAddress.Name = "Columns_DeliveryAddress";
            // 
            // Columns_OrderClass
            // 
            this.Columns_OrderClass.Caption = "OrderClass";
            this.Columns_OrderClass.FieldName = "OrderClass";
            this.Columns_OrderClass.Name = "Columns_OrderClass";
            // 
            // Columns_NewVersion
            // 
            this.Columns_NewVersion.Caption = "POVersion";
            this.Columns_NewVersion.FieldName = "Version";
            this.Columns_NewVersion.Name = "Columns_NewVersion";
            // 
            // barBtnRefresh
            // 
            this.barBtnRefresh.Caption = "Refresh";
            this.barBtnRefresh.Id = 11;
            this.barBtnRefresh.Name = "barBtnRefresh";
            this.barBtnRefresh.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            this.barBtnRefresh.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnRefresh_ItemClick);
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "barSubItem1";
            this.barSubItem1.Id = 12;
            this.barSubItem1.Name = "barSubItem1";
            // 
            // barBtnPoList
            // 
            this.barBtnPoList.Alignment = DevExpress.XtraBars.BarItemLinkAlignment.Left;
            this.barBtnPoList.Caption = "PoList";
            this.barBtnPoList.Id = 15;
            this.barBtnPoList.Name = "barBtnPoList";
            this.barBtnPoList.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            this.barBtnPoList.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPoList_ItemClick);
            // 
            // Columns_IsOutStanding
            // 
            this.Columns_IsOutStanding.Caption = "Status";
            this.Columns_IsOutStanding.FieldName = "IsOutStanding";
            this.Columns_IsOutStanding.Name = "Columns_IsOutStanding";
            this.Columns_IsOutStanding.Visible = true;
            this.Columns_IsOutStanding.VisibleIndex = 0;
            this.Columns_IsOutStanding.Width = 88;
            // 
            // Columns_POTYPE
            // 
            this.Columns_POTYPE.Caption = "POType";
            this.Columns_POTYPE.FieldName = "POTypeDesc";
            this.Columns_POTYPE.Name = "Columns_POTYPE";
            // 
            // Columns_Projects
            // 
            this.Columns_Projects.Caption = "Projects";
            this.Columns_Projects.FieldName = "ProjectNos";
            this.Columns_Projects.Name = "Columns_Projects";
            // 
            // Columns_WorkOrders
            // 
            this.Columns_WorkOrders.Caption = "WorkOrderNos";
            this.Columns_WorkOrders.FieldName = "WorkOrders";
            this.Columns_WorkOrders.Name = "Columns_WorkOrders";
            this.Columns_WorkOrders.Visible = true;
            this.Columns_WorkOrders.VisibleIndex = 9;
            // 
            // POHeaderListFormBak
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POHeaderListFormBak";
            this.Size = new System.Drawing.Size(807, 500);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            this.ResumeLayout(false);

        }
        public POInfo _poInfo = new POInfo();
        public POHeaderListFormBak()
        {
            InitializeComponent();
            this._poInfo.Poversion = POVersion.CurVersion;
        }
        public POHeaderListFormBak(string poversion, string potype)
            : this()
        {
            if (poversion.ToUpper() == "ALL")
            {
                this._poInfo.Poversion = POVersion.AllVersion;
            }
            else
            {
                this._poInfo.Poversion = POVersion.CurVersion;
            }

            if (potype.ToUpper() == "PO")
            {
                this._poInfo.PoType = POType.PO;
            }
            else if (potype.ToUpper() == "POSTICKER")
            {
                this._poInfo.PoType = POType.POSticker;
            }

        }
        public POHeaderListFormBak(object pur, DevExpress.XtraTab.XtraTabPage parentPage)
        {
            InitializeComponent();
            this._poInfo.Pur = pur;
            this._poInfo.POPCPage = parentPage;
            this._poInfo.PoType = POType.PO;
        }
        public override void DataBind()
        {
            //PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //context.CommandTimeout = 1000;
            //this.DataContext = context;
            //this.BindingSource.DataSource = typeof(PH.POPC.BO.POHeader);
            //base.DataBind();

            this.EditorTypeName = typeof(POHeaderDetailFormBak).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            if (this._poInfo.Poversion == POVersion.AllVersion)
            {
                this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }
            DataInit();
        }
        private bool IsAutoEidtStatus = false;
        private void DataInit()
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POHeader);

            if (this._poInfo.Pur != null && this._poInfo.POPCPage != null)
            {
                //var aa = from c in context.POHeaders
                //         where (c.POType == (int)this._poInfo.PoType) && c.PONO == this._poInfo.Pur.PONO && c.Company == this._poInfo.Pur.Company
                //         group c by new { c.PONO, c.Company } into newGroup
                //         select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };

                //var bb = (from xx in context.POHeaders
                //          from yy in aa
                //          where (xx.POType == (int)this._poInfo.PoType) && xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO && (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
                //          select xx);
                //this.DataContext = context;
                //this.BindingSource.DataSource = bb;
                //this.Tag = "Edit";
                //this.IsAutoEidtStatus = true;
                //this.OnClickOpen();

                string company = "";
                string pono = "";
                int version = 0;
                int amendmentNo = 0;

                #region Get infor

                if (this._poInfo.Pur is PH.POPC.BO.View_POPC_PUR)
                {
                    PH.POPC.BO.View_POPC_PUR p = (PH.POPC.BO.View_POPC_PUR)this._poInfo.Pur;
                    if (p != null)
                    {
                        company = p.Company;
                        pono = p.PONO;
                        version = p.Version;
                        amendmentNo = p.AmendmentNo;
                    }
                }
                else if (this._poInfo.Pur is PH.POPC.BO.POColorSizeDetail)
                {
                    PH.POPC.BO.POColorSizeDetail p = (PH.POPC.BO.POColorSizeDetail)this._poInfo.Pur;
                    if (p != null)
                    {
                        company = p.Company;
                        pono = p.PONO;
                        version = p.Version;
                        amendmentNo = p.AmendmentNo;
                    }
                }
                #endregion

                //Xsj110216:注釋掉上面的代碼,啟用通用查詢
                string sqlStr = "Select xx.* from POHeader xx Inner join (Select PONO,Company,Max(Version * 10000 + AmendmentNo)  as NewVersion " +
                              "  from POHeader Where POType=" + (int)this._poInfo.PoType + " and PONO='" + pono.Replace("'", "''") + "' and Company='" + company + "'" +
                              "  group by PONO,Company) yy on  xx.POType =" + (int)this._poInfo.PoType +
                              "  and xx.Company =yy.Company " +
                              "  and xx.PONO = yy.PONO  " +
                              "  and (xx.Version * 10000 + xx.AmendmentNo) = yy.NewVersion ";
                PH.Platform.UI.CS.DataQuery.DataQueryParameter result = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
                result.IsCustQuery = true;
                result.QueryType = PH.Platform.UI.CS.DataQuery.QueryType.CommandText;
                result.CustQuerySQL = sqlStr;
                result.BoType = typeof(PH.POPC.BO.POHeader);
                result.View = this.objListGridView;
                result.WarnRecord = 2000;
                this.StartEnquiry(result);
                this.Tag = "Edit";
                this.IsAutoEidtStatus = true;
                this.OnClickOpen();

            }
            else
            {

                if (this._poInfo.Poversion == POVersion.AllVersion)
                {
                    //this.BindingSource.DataSource = from c in context.POHeaders
                    //                                where c.POType == (int)this._poInfo.PoType && (c.Flag == null || c.Flag == string.Empty)
                    //                                select c;
                    //Xsj110216:注釋掉上面的代碼,啟用通用查詢
                    string sqlStr = "Select * from POHeader Where POType=" + (int)this._poInfo.PoType + " and RTrim(IsNull(Flag,''))='' ";
                    PH.Platform.UI.CS.DataQuery.DataQueryParameter result = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
                    result.QueryType = PH.Platform.UI.CS.DataQuery.QueryType.CommandText;
                    result.IsCustQuery = true;
                    result.CustQuerySQL = sqlStr;
                    result.BoType = typeof(PH.POPC.BO.POHeader);
                    result.View = this.objListGridView;
                    result.WarnRecord = 2000;
                    this.StartEnquiry(result);
                }
                else if (this._poInfo.Poversion == POVersion.CurVersion)
                {
                    //var aa = from c in context.POHeaders
                    //         where c.POType == (int)this._poInfo.PoType && (c.Flag == null || c.Flag == string.Empty)
                    //         group c by new { c.PONO, c.Company } into newGroup
                    //         select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };

                    //var bb = from xx in context.POHeaders
                    //         from yy in aa
                    //         where xx.POType == (int)this._poInfo.PoType && (xx.Flag == null || xx.Flag == string.Empty)
                    //         && xx.Company == yy.Key.Company
                    //         && xx.PONO == yy.Key.PONO
                    //         && (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
                    //         select xx;
                    //this.DataContext = context;
                    //this.BindingSource.DataSource = bb;

                    //Xsj110216:注釋掉上面的代碼,啟用通用查詢
                    string sqlStr = "Select xx.* from POHeader xx Inner join (Select PONO,Company,Max(Version * 10000 + AmendmentNo)  as NewVersion " +
                                  "  from POHeader Where POType=" + (int)this._poInfo.PoType + " and RTrim(IsNull(Flag,''))=''" +
                                  "  group by PONO,Company) yy on  xx.POType =" + (int)this._poInfo.PoType +
                                  "  and xx.Company =yy.Company " +
                                  "  and xx.PONO = yy.PONO  " +
                                  "  and (xx.Version * 10000 + xx.AmendmentNo) = yy.NewVersion " +
                                  "  and RTrim(IsNull(Flag,''))=''";
                    PH.Platform.UI.CS.DataQuery.DataQueryParameter result = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
                    result.QueryType = PH.Platform.UI.CS.DataQuery.QueryType.CommandText;
                    result.IsCustQuery = true;
                    result.CustQuerySQL = sqlStr;
                    result.BoType = typeof(PH.POPC.BO.POHeader);
                    result.View = this.objListGridView;
                    result.WarnRecord = 2000;
                    this.StartEnquiry(result);
                }
            }


            if (dlg != null) dlg.Close();
        }

        private void barBtnPoList_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PoListForm frm = new PoListForm();
            frm.ShowDialog();
        }
        private void barBtnRefresh_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DataInit();
        }

        #region WaitDialog
        private DevExpress.Utils.WaitDialogForm dlg = null;
        //public void CreateWaitDialog()
        //{
        //    dlg = new DevExpress.Utils.WaitDialogForm(string.Format("Loading {0}...", TutorialName));
        //}
        public void CreateWaitDialog(string caption, string title)
        {
            // dlg = new DevExpress.Utils.WaitDialogForm(caption, title);
        }
        public void CreateWaitDialog(string caption, string title, Size size)
        {
            // dlg = new DevExpress.Utils.WaitDialogForm(caption, title, size);
        }
        public void SetWaitDialogCaption(string fCaption)
        {
            if (dlg != null)
                dlg.Caption = fCaption;
        }
        public void ReleaseWaitDialog()
        {
            if (dlg != null) dlg.Close();
        }
        #endregion


    }
}
