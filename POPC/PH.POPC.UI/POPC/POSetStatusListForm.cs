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
    public partial class POSetStatusListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        // private System.ComponentModel.IContainer components = null;
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
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_POTYPE;
        private DevExpress.XtraBars.BarButtonItem barCancel;
        private DevExpress.XtraBars.BarButtonItem barOutStanding;
        private DevExpress.XtraBars.BarButtonItem barCompleted;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox ImageComboBox_Status;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Selected;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit CheckEdit;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_IsOutStanding;
        #endregion
        private void InitializeComponent()
        {
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
            this.Columns_IsOutStanding = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ImageComboBox_Status = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.Columns_POTYPE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barCancel = new DevExpress.XtraBars.BarButtonItem();
            this.barOutStanding = new DevExpress.XtraBars.BarButtonItem();
            this.barCompleted = new DevExpress.XtraBars.BarButtonItem();
            this.Columns_Selected = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CheckEdit = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ImageComboBox_Status)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.CheckEdit)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barCancel,
            this.barOutStanding,
            this.barCompleted});
            this.objbarManager.MaxItemId = 19;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barCompleted, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barCancel, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barOutStanding, true)});
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
            this.Columns_Selected});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(714, 281, 208, 191);
            this.objListGridView.GroupFormat = "[#image]{1} {2}";
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
            this.ImageComboBox_Status,
            this.CheckEdit});
            this.objListGridControl.Size = new System.Drawing.Size(807, 475);
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnOpen
            // 
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // Columns_Version
            // 
            this.Columns_Version.Caption = "Version";
            this.Columns_Version.FieldName = "POVersion";
            this.Columns_Version.Name = "Columns_Version";
            this.Columns_Version.OptionsColumn.AllowEdit = false;
            this.Columns_Version.OptionsColumn.ReadOnly = true;
            this.Columns_Version.Visible = true;
            this.Columns_Version.VisibleIndex = 4;
            this.Columns_Version.Width = 91;
            // 
            // Columns_Company
            // 
            this.Columns_Company.Caption = "Company";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            this.Columns_Company.OptionsColumn.AllowEdit = false;
            this.Columns_Company.OptionsColumn.ReadOnly = true;
            this.Columns_Company.Visible = true;
            this.Columns_Company.VisibleIndex = 2;
            this.Columns_Company.Width = 88;
            // 
            // Columns_PONO
            // 
            this.Columns_PONO.Caption = "PO NO";
            this.Columns_PONO.FieldName = "PONO";
            this.Columns_PONO.Name = "Columns_PONO";
            this.Columns_PONO.OptionsColumn.AllowEdit = false;
            this.Columns_PONO.OptionsColumn.ReadOnly = true;
            this.Columns_PONO.Visible = true;
            this.Columns_PONO.VisibleIndex = 3;
            this.Columns_PONO.Width = 78;
            // 
            // Columns_Dept
            // 
            this.Columns_Dept.Caption = "Dept";
            this.Columns_Dept.FieldName = "Dept";
            this.Columns_Dept.Name = "Columns_Dept";
            this.Columns_Dept.OptionsColumn.AllowEdit = false;
            this.Columns_Dept.OptionsColumn.ReadOnly = true;
            this.Columns_Dept.Visible = true;
            this.Columns_Dept.VisibleIndex = 9;
            this.Columns_Dept.Width = 87;
            // 
            // Columns_OrderDate
            // 
            this.Columns_OrderDate.Caption = "Order Date";
            this.Columns_OrderDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.Columns_OrderDate.FieldName = "OrderDate";
            this.Columns_OrderDate.Name = "Columns_OrderDate";
            this.Columns_OrderDate.OptionsColumn.AllowEdit = false;
            this.Columns_OrderDate.OptionsColumn.ReadOnly = true;
            this.Columns_OrderDate.Visible = true;
            this.Columns_OrderDate.VisibleIndex = 6;
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
            this.Columns_Supplier.OptionsColumn.AllowEdit = false;
            this.Columns_Supplier.OptionsColumn.ReadOnly = true;
            this.Columns_Supplier.Visible = true;
            this.Columns_Supplier.VisibleIndex = 5;
            this.Columns_Supplier.Width = 93;
            // 
            // Columns_PurchaseOfficerCode
            // 
            this.Columns_PurchaseOfficerCode.Caption = "Purchase Officer Code";
            this.Columns_PurchaseOfficerCode.FieldName = "PurchaseOfficerCode";
            this.Columns_PurchaseOfficerCode.Name = "Columns_PurchaseOfficerCode";
            this.Columns_PurchaseOfficerCode.OptionsColumn.AllowEdit = false;
            this.Columns_PurchaseOfficerCode.OptionsColumn.ReadOnly = true;
            // 
            // Columns_PurchaseOfficer
            // 
            this.Columns_PurchaseOfficer.Caption = "Purchase Officer";
            this.Columns_PurchaseOfficer.FieldName = "PurchaseOfficer";
            this.Columns_PurchaseOfficer.Name = "Columns_PurchaseOfficer";
            this.Columns_PurchaseOfficer.OptionsColumn.AllowEdit = false;
            this.Columns_PurchaseOfficer.OptionsColumn.ReadOnly = true;
            this.Columns_PurchaseOfficer.Visible = true;
            this.Columns_PurchaseOfficer.VisibleIndex = 10;
            this.Columns_PurchaseOfficer.Width = 126;
            // 
            // Columns_PaymentTermsType
            // 
            this.Columns_PaymentTermsType.Caption = "PaymentTerms Type";
            this.Columns_PaymentTermsType.FieldName = "PaymentTermsType";
            this.Columns_PaymentTermsType.Name = "Columns_PaymentTermsType";
            this.Columns_PaymentTermsType.OptionsColumn.AllowEdit = false;
            this.Columns_PaymentTermsType.OptionsColumn.ReadOnly = true;
            this.Columns_PaymentTermsType.Width = 135;
            // 
            // Columns_PaymentMethod
            // 
            this.Columns_PaymentMethod.Caption = "Payment Method";
            this.Columns_PaymentMethod.FieldName = "PaymentMethod";
            this.Columns_PaymentMethod.Name = "Columns_PaymentMethod";
            this.Columns_PaymentMethod.OptionsColumn.AllowEdit = false;
            this.Columns_PaymentMethod.OptionsColumn.ReadOnly = true;
            this.Columns_PaymentMethod.Visible = true;
            this.Columns_PaymentMethod.VisibleIndex = 7;
            this.Columns_PaymentMethod.Width = 136;
            // 
            // Columns_ReceivingAddress
            // 
            this.Columns_ReceivingAddress.Caption = "Receiving Address";
            this.Columns_ReceivingAddress.FieldName = "ReceivingAddress";
            this.Columns_ReceivingAddress.Name = "Columns_ReceivingAddress";
            this.Columns_ReceivingAddress.OptionsColumn.AllowEdit = false;
            this.Columns_ReceivingAddress.OptionsColumn.ReadOnly = true;
            // 
            // Columns_AddtionalTermsAndConditions
            // 
            this.Columns_AddtionalTermsAndConditions.Caption = "Addtional Terms And Conditions";
            this.Columns_AddtionalTermsAndConditions.FieldName = "AddtionalTermsAndConditions";
            this.Columns_AddtionalTermsAndConditions.Name = "Columns_AddtionalTermsAndConditions";
            this.Columns_AddtionalTermsAndConditions.OptionsColumn.AllowEdit = false;
            this.Columns_AddtionalTermsAndConditions.OptionsColumn.ReadOnly = true;
            // 
            // Columns_ShipMode
            // 
            this.Columns_ShipMode.Caption = "Ship Mode";
            this.Columns_ShipMode.FieldName = "ShipMode";
            this.Columns_ShipMode.Name = "Columns_ShipMode";
            this.Columns_ShipMode.OptionsColumn.AllowEdit = false;
            this.Columns_ShipMode.OptionsColumn.ReadOnly = true;
            this.Columns_ShipMode.Visible = true;
            this.Columns_ShipMode.VisibleIndex = 8;
            this.Columns_ShipMode.Width = 102;
            // 
            // Columns_DeliveryAddress
            // 
            this.Columns_DeliveryAddress.Caption = "Delivery Address";
            this.Columns_DeliveryAddress.FieldName = "DeliveryAddress";
            this.Columns_DeliveryAddress.Name = "Columns_DeliveryAddress";
            this.Columns_DeliveryAddress.OptionsColumn.AllowEdit = false;
            this.Columns_DeliveryAddress.OptionsColumn.ReadOnly = true;
            // 
            // Columns_OrderClass
            // 
            this.Columns_OrderClass.Caption = "OrderClass";
            this.Columns_OrderClass.FieldName = "OrderClass";
            this.Columns_OrderClass.Name = "Columns_OrderClass";
            this.Columns_OrderClass.OptionsColumn.AllowEdit = false;
            this.Columns_OrderClass.OptionsColumn.ReadOnly = true;
            // 
            // Columns_NewVersion
            // 
            this.Columns_NewVersion.Caption = "POVersion";
            this.Columns_NewVersion.FieldName = "Version";
            this.Columns_NewVersion.Name = "Columns_NewVersion";
            this.Columns_NewVersion.OptionsColumn.AllowEdit = false;
            this.Columns_NewVersion.OptionsColumn.ReadOnly = true;
            // 
            // Columns_IsOutStanding
            // 
            this.Columns_IsOutStanding.Caption = "Status";
            this.Columns_IsOutStanding.ColumnEdit = this.ImageComboBox_Status;
            this.Columns_IsOutStanding.FieldName = "Status";
            this.Columns_IsOutStanding.Name = "Columns_IsOutStanding";
            this.Columns_IsOutStanding.OptionsColumn.AllowEdit = false;
            this.Columns_IsOutStanding.OptionsColumn.ReadOnly = true;
            this.Columns_IsOutStanding.Visible = true;
            this.Columns_IsOutStanding.VisibleIndex = 1;
            // 
            // ImageComboBox_Status
            // 
            this.ImageComboBox_Status.AutoHeight = false;
            this.ImageComboBox_Status.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ImageComboBox_Status.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Cancel", "-1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OutStanding", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Completed", "0", -1)});
            this.ImageComboBox_Status.Name = "ImageComboBox_Status";
            // 
            // Columns_POTYPE
            // 
            this.Columns_POTYPE.Caption = "POType";
            this.Columns_POTYPE.FieldName = "POTypeDesc";
            this.Columns_POTYPE.Name = "Columns_POTYPE";
            this.Columns_POTYPE.OptionsColumn.AllowEdit = false;
            this.Columns_POTYPE.OptionsColumn.ReadOnly = true;
            // 
            // barCancel
            // 
            this.barCancel.Caption = "Cancel";
            this.barCancel.Id = 16;
            this.barCancel.Name = "barCancel";
            this.barCancel.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barCancel_ItemClick);
            // 
            // barOutStanding
            // 
            this.barOutStanding.Caption = "OutStanding";
            this.barOutStanding.Id = 17;
            this.barOutStanding.Name = "barOutStanding";
            this.barOutStanding.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barOutStanding_ItemClick);
            // 
            // barCompleted
            // 
            this.barCompleted.Caption = "Completed";
            this.barCompleted.Id = 18;
            this.barCompleted.Name = "barCompleted";
            this.barCompleted.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barCompleted_ItemClick);
            // 
            // Columns_Selected
            // 
            this.Columns_Selected.Caption = "Select";
            this.Columns_Selected.ColumnEdit = this.CheckEdit;
            this.Columns_Selected.FieldName = "Choice";
            this.Columns_Selected.Name = "Columns_Selected";
            this.Columns_Selected.Visible = true;
            this.Columns_Selected.VisibleIndex = 0;
            this.Columns_Selected.Width = 73;
            // 
            // CheckEdit
            // 
            this.CheckEdit.AutoHeight = false;
            this.CheckEdit.Name = "CheckEdit";
            this.CheckEdit.ValueChecked = 1;
            this.CheckEdit.ValueGrayed = -1;
            this.CheckEdit.ValueUnchecked = 0;
            // 
            // POSetStatusListForm
            // 
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POSetStatusListForm";
            this.Size = new System.Drawing.Size(807, 500);
            this.Load += new System.EventHandler(this.POSetStatusListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ImageComboBox_Status)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.CheckEdit)).EndInit();
            this.ResumeLayout(false);

        }

        PH.POPC.BO.POPCDataContext _Context;
        PH.POPC.UI.POStatus _POStatus;
        public POSetStatusListForm()
        {
            InitializeComponent();
            _Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            _Context.CommandTimeout = 1000;
            this.DataContext = _Context;
        }

        public POSetStatusListForm(string Status)
            : this()
        {
            switch (Status.ToUpper())
            {
                case "CANCEL":
                    this._POStatus = POStatus.Cancel;
                    break;
                case "OUTSTANDING":
                    this._POStatus = POStatus.OutStanding;
                    break;
                case "COMPLETED":
                    this._POStatus = POStatus.Completed;
                    break;
                default:
                    this._POStatus = POStatus.OutStanding;
                    break;
            }

        }



        private void DataInit()
        {
            var aa = from c in this._Context.POHeaders
                     where c.Status == ((int)this._POStatus).ToString() && c.POType == (int)POType.POSticker
                     group c by new { c.PONO, c.Company } into newGroup
                     select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };

            var bb = from xx in this._Context.POHeaders
                     from yy in aa
                     where xx.Status == ((int)this._POStatus).ToString() && xx.POType == (int)POType.POSticker && xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO && (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
                     select xx;

            this.BindingSource.DataSource = bb;
        }

        private void FormInit()
        {
            switch (this._POStatus)
            {
                case POStatus.Cancel:

                    this.barCancel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    break;
                case POStatus.OutStanding:
                    this.barOutStanding.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    break;
                case POStatus.Completed:
                    this.barCompleted.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    break;
                default:
                    this.barOutStanding.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    break;
            }
        }

        private void Save(string Status)
        {
            if (MessageBox.Show("確認要執行此操作？", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1) == DialogResult.Yes)
            {
                Common.PostGridValue(this.objListGridView);
                List<PH.POPC.BO.POHeader> items = (this.BindingSource.DataSource as IQueryable<PH.POPC.BO.POHeader>).ToList();
                var aa = from a in items where a.Choice == 1 select a;
                foreach (var item in aa)
                {
                    item.Status = Status;
                }
                try
                {
                    this._Context.SubmitChanges();
                    DataInit();
                    MessageBox.Show("保存成功");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }


        private void POSetStatusListForm_Load(object sender, EventArgs e)
        {
            FormInit();
            DataInit();
        }

        private void barCancel_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Save(((int)POStatus.Cancel).ToString());
        }

        private void barOutStanding_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Save(((int)POStatus.OutStanding).ToString());
        }

        private void barCompleted_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Save(((int)POStatus.Completed).ToString());
        }










    }
}
