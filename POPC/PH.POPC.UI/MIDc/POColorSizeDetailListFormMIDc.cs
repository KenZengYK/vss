/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.PODetailDListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/19 下午 02:47:21 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Collections;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;
using System.Data.Linq;
using PH.Platform.UI.CS.PivotGrid;
using PH.Platform.BO.PivotTable;

namespace PH.POPC.UI
{
    public partial class POColorSizeDetailListFormMIDc : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Version;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_AmendmentNo;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Company;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_PONO;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_OrderLine;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SKU;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ItemCode;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ColorCode;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ColorDesc;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ColorShade;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SizeCode;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SizeDesc;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_FitCode;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_FitDesc;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Qty;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SupAmount;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_PHUOM;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Currency;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_PHAmount;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SupplierQty;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SuppUOM;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_PHOUtStanding;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_EXRate;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        #endregion
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SupplierReference;
        public DevExpress.XtraEditors.Repository.RepositoryItemComboBox ComboBoxEdit;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribe_Color;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Price;
        #region
        private void InitializeComponent()
        {
            this.Columns_Version = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_AmendmentNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_OrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SKU = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ribe_Color = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.ComboBoxEdit = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.Columns_ColorDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ColorShade = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SizeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.Columns_SizeDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Price = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.Columns_FitCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_FitDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.Columns_SupAmount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PHUOM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Currency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PHAmount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SuppUOM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SupplierQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PHOUtStanding = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_EXRate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SupplierReference = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribe_Color)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ComboBoxEdit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.MaxItemId = 55;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 26);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemSpinEdit1,
            this.repositoryItemDateEdit1,
            this.ComboBoxEdit,
            this.ribe_Color,
            this.repositoryItemTextEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(846, 336);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Version,
            this.Columns_AmendmentNo,
            this.Columns_Company,
            this.Columns_PONO,
            this.Columns_OrderLine,
            this.Columns_SKU,
            this.Columns_ItemCode,
            this.Columns_ColorCode,
            this.Columns_ColorDesc,
            this.Columns_ColorShade,
            this.Columns_SizeCode,
            this.Columns_SizeDesc,
            this.Columns_FitCode,
            this.Columns_FitDesc,
            this.Columns_Price,
            this.Columns_Qty,
            this.Columns_SupplierQty,
            this.Columns_SupAmount,
            this.Columns_PHUOM,
            this.Columns_SuppUOM,
            this.Columns_Currency,
            this.Columns_PHAmount,
            this.Columns_PHOUtStanding,
            this.Columns_EXRate,
            this.Columns_SupplierReference});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(852, 477, 208, 191);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsCustomization.AllowSort = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.KeyDown += new System.Windows.Forms.KeyEventHandler(this.objListGridView_KeyDown);
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
            this.Columns_OrderLine.Width = 90;
            // 
            // Columns_SKU
            // 
            this.Columns_SKU.Caption = "SKU";
            this.Columns_SKU.FieldName = "SKU";
            this.Columns_SKU.Name = "Columns_SKU";
            this.Columns_SKU.Width = 138;
            // 
            // Columns_ItemCode
            // 
            this.Columns_ItemCode.Caption = "Item Code";
            this.Columns_ItemCode.FieldName = "ItemCode";
            this.Columns_ItemCode.Name = "Columns_ItemCode";
            this.Columns_ItemCode.Width = 103;
            // 
            // Columns_ColorCode
            // 
            this.Columns_ColorCode.Caption = "Color";
            this.Columns_ColorCode.ColumnEdit = this.ribe_Color;
            this.Columns_ColorCode.FieldName = "ColorCode";
            this.Columns_ColorCode.Name = "Columns_ColorCode";
            this.Columns_ColorCode.Visible = true;
            this.Columns_ColorCode.VisibleIndex = 0;
            this.Columns_ColorCode.Width = 89;
            // 
            // ribe_Color
            // 
            this.ribe_Color.AutoHeight = false;
            this.ribe_Color.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.ribe_Color.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.ribe_Color.Name = "ribe_Color";
            this.ribe_Color.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribe_Color_ButtonClick);
            // 
            // ComboBoxEdit
            // 
            this.ComboBoxEdit.AutoHeight = false;
            this.ComboBoxEdit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ComboBoxEdit.Name = "ComboBoxEdit";
            // 
            // Columns_ColorDesc
            // 
            this.Columns_ColorDesc.Caption = "Color Desc";
            this.Columns_ColorDesc.FieldName = "ColorDesc";
            this.Columns_ColorDesc.Name = "Columns_ColorDesc";
            this.Columns_ColorDesc.Width = 79;
            // 
            // Columns_ColorShade
            // 
            this.Columns_ColorShade.Caption = "Color Shade";
            this.Columns_ColorShade.FieldName = "ColorShade";
            this.Columns_ColorShade.Name = "Columns_ColorShade";
            this.Columns_ColorShade.Width = 106;
            // 
            // Columns_SizeCode
            // 
            this.Columns_SizeCode.Caption = "Size ";
            this.Columns_SizeCode.ColumnEdit = this.repositoryItemTextEdit1;
            this.Columns_SizeCode.FieldName = "SizeCode";
            this.Columns_SizeCode.Name = "Columns_SizeCode";
            this.Columns_SizeCode.Visible = true;
            this.Columns_SizeCode.VisibleIndex = 1;
            this.Columns_SizeCode.Width = 67;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // Columns_SizeDesc
            // 
            this.Columns_SizeDesc.Caption = "Size Desc";
            this.Columns_SizeDesc.FieldName = "SizeDesc";
            this.Columns_SizeDesc.Name = "Columns_SizeDesc";
            // 
            // Columns_Price
            // 
            this.Columns_Price.Caption = "U/Price";
            this.Columns_Price.ColumnEdit = this.repositoryItemSpinEdit1;
            this.Columns_Price.FieldName = "Price";
            this.Columns_Price.Name = "Columns_Price";
            this.Columns_Price.Visible = true;
            this.Columns_Price.VisibleIndex = 5;
            this.Columns_Price.Width = 80;
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // Columns_FitCode
            // 
            this.Columns_FitCode.Caption = "Cup";
            this.Columns_FitCode.ColumnEdit = this.repositoryItemTextEdit1;
            this.Columns_FitCode.FieldName = "FitCode";
            this.Columns_FitCode.Name = "Columns_FitCode";
            this.Columns_FitCode.Visible = true;
            this.Columns_FitCode.VisibleIndex = 2;
            this.Columns_FitCode.Width = 64;
            // 
            // Columns_FitDesc
            // 
            this.Columns_FitDesc.Caption = "Fit Desc";
            this.Columns_FitDesc.FieldName = "FitDesc";
            this.Columns_FitDesc.Name = "Columns_FitDesc";
            // 
            // Columns_Qty
            // 
            this.Columns_Qty.Caption = "PH PO Qty";
            this.Columns_Qty.DisplayFormat.FormatString = "{0:0.00##}";
            this.Columns_Qty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Qty.FieldName = "Qty";
            this.Columns_Qty.Name = "Columns_Qty";
            this.Columns_Qty.Visible = true;
            this.Columns_Qty.VisibleIndex = 3;
            this.Columns_Qty.Width = 105;
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
            // Columns_SupAmount
            // 
            this.Columns_SupAmount.AppearanceCell.BackColor = System.Drawing.Color.WhiteSmoke;
            this.Columns_SupAmount.AppearanceCell.Options.UseBackColor = true;
            this.Columns_SupAmount.Caption = "Supp Amount";
            this.Columns_SupAmount.ColumnEdit = this.repositoryItemSpinEdit1;
            this.Columns_SupAmount.DisplayFormat.FormatString = "{0:0.00}";
            this.Columns_SupAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_SupAmount.FieldName = "SuppAmount";
            this.Columns_SupAmount.Name = "Columns_SupAmount";
            this.Columns_SupAmount.Visible = true;
            this.Columns_SupAmount.VisibleIndex = 7;
            this.Columns_SupAmount.Width = 138;
            // 
            // Columns_PHUOM
            // 
            this.Columns_PHUOM.Caption = "PH Uom";
            this.Columns_PHUOM.FieldName = "PHUom";
            this.Columns_PHUOM.Name = "Columns_PHUOM";
            // 
            // Columns_Currency
            // 
            this.Columns_Currency.Caption = "Currency";
            this.Columns_Currency.FieldName = "Currency";
            this.Columns_Currency.Name = "Columns_Currency";
            // 
            // Columns_PHAmount
            // 
            this.Columns_PHAmount.AppearanceCell.BackColor = System.Drawing.Color.WhiteSmoke;
            this.Columns_PHAmount.AppearanceCell.Options.UseBackColor = true;
            this.Columns_PHAmount.Caption = "PH AMount(HKD)";
            this.Columns_PHAmount.DisplayFormat.FormatString = "{0:0.00}";
            this.Columns_PHAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_PHAmount.FieldName = "PHAmount";
            this.Columns_PHAmount.Name = "Columns_PHAmount";
            this.Columns_PHAmount.Visible = true;
            this.Columns_PHAmount.VisibleIndex = 6;
            this.Columns_PHAmount.Width = 132;
            // 
            // Columns_SuppUOM
            // 
            this.Columns_SuppUOM.Caption = "Supplier UOM";
            this.Columns_SuppUOM.FieldName = "SupplierUOM";
            this.Columns_SuppUOM.Name = "Columns_SuppUOM";
            this.Columns_SuppUOM.Width = 90;
            // 
            // Columns_SupplierQty
            // 
            this.Columns_SupplierQty.AppearanceCell.BackColor = System.Drawing.Color.AliceBlue;
            this.Columns_SupplierQty.AppearanceCell.Options.UseBackColor = true;
            this.Columns_SupplierQty.Caption = "Supplier PO Qty";
            this.Columns_SupplierQty.DisplayFormat.FormatString = "{0:0.00}";
            this.Columns_SupplierQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_SupplierQty.FieldName = "SupplierPOQty";
            this.Columns_SupplierQty.Name = "Columns_SupplierQty";
            this.Columns_SupplierQty.OptionsColumn.AllowEdit = false;
            this.Columns_SupplierQty.Visible = true;
            this.Columns_SupplierQty.VisibleIndex = 4;
            this.Columns_SupplierQty.Width = 124;
            // 
            // Columns_PHOUtStanding
            // 
            this.Columns_PHOUtStanding.Caption = "PH Outstanding Qty";
            this.Columns_PHOUtStanding.FieldName = "PHOutstandingQty";
            this.Columns_PHOUtStanding.Name = "Columns_PHOUtStanding";
            this.Columns_PHOUtStanding.Width = 127;
            // 
            // Columns_EXRate
            // 
            this.Columns_EXRate.Caption = "ExRate";
            this.Columns_EXRate.FieldName = "ExRate";
            this.Columns_EXRate.Name = "Columns_EXRate";
            this.Columns_EXRate.Width = 86;
            // 
            // Columns_SupplierReference
            // 
            this.Columns_SupplierReference.Caption = "Supplier Reference";
            this.Columns_SupplierReference.FieldName = "SupplierReference";
            this.Columns_SupplierReference.Name = "Columns_SupplierReference";
            this.Columns_SupplierReference.OptionsColumn.AllowEdit = false;
            this.Columns_SupplierReference.Width = 132;
            // 
            // POColorSizeDetailListFormMIDc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POColorSizeDetailListFormMIDc";
            this.RowChangeAutoSave = false;
            this.Size = new System.Drawing.Size(846, 362);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.POColorSizeDetailListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribe_Color)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ComboBoxEdit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        bool _IsPOPCOpen = false;
        IList SourceList = null;
        public DevExpress.XtraTab.XtraTabPage _parentPage;
        public PH.POPC.BO.View_POPC_PUR m_View_POPC_PUR;

        public POColorSizeDetailListFormMIDc()
        {
            InitializeComponent();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.EditorTypeName = typeof(POColorSizeDetailDetailFormMIDc).FullName;
            this.IsShowPivotTable = true;
        }
        public POColorSizeDetailListFormMIDc(PH.POPC.BO.View_POPC_PUR pur, DevExpress.XtraTab.XtraTabPage parentPage)
        {
            InitializeComponent();
            this.EditorTypeName = typeof(POColorSizeDetailDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = from c in context.POColorSizeDetails
                                            where c.Company == pur.Company
                                            && c.PONO == pur.PONO
                                            && c.AmendmentNo == pur.AmendmentNo
                                            && c.Version == pur.Version
                                            && c.OrderLine == pur.OrderLine
                                            && c.SKU == pur.SKU
                                            select c;

            this.EditorTypeName = typeof(PH.POPC.UI.POColorSizeDetailDetailForm).FullName;
            this._IsPOPCOpen = true;
            this._parentPage = parentPage;
            this.m_View_POPC_PUR = pur;

        }
        public void Save(PH.POPC.BO.PODetail Detail)
        {
            if (Detail == null || string.IsNullOrEmpty(Detail.ItemCode)) return;
            foreach (var item in Detail.POColorSizeDetails)
            {

                if (string.IsNullOrEmpty(item.ItemCode))
                {
                    item.ItemCode = Detail.ItemCode;
                }
                if (string.IsNullOrEmpty(item.ColorCode))
                {
                    item.ColorCode = string.Empty;
                }
                if (string.IsNullOrEmpty(item.SizeCode))
                {
                    item.SizeCode = string.Empty;
                }
                if (string.IsNullOrEmpty(item.FitCode))
                {
                    item.FitCode = string.Empty;
                }

                if (string.IsNullOrEmpty(item.SKU))
                {
                    //item.SKU = (string.IsNullOrEmpty(item.ItemCode) ? string.Empty : item.ItemCode.Trim()) +
                    //    (string.IsNullOrEmpty(item.ColorCode) ? string.Empty : item.ColorCode.Trim()) +
                    //    (string.IsNullOrEmpty(item.SizeCode) ? string.Empty : item.SizeCode.Trim()) +
                    //    (string.IsNullOrEmpty(item.FitCode) ? string.Empty : item.FitCode.Trim());
                }

                //Xsj20110404:自动更新POColorSizeDetails的下一层POWireBoneMatrix
                if (item.POWireBoneMatrixes.Count == 0)//new
                {
                    POWireBoneMatrix currPOWireBoneMatrix = new POWireBoneMatrix();
                    currPOWireBoneMatrix.Company = item.Company;
                    currPOWireBoneMatrix.PONO = item.PONO;
                    currPOWireBoneMatrix.Version = item.Version;
                    currPOWireBoneMatrix.AmendmentNo = item.AmendmentNo;
                    currPOWireBoneMatrix.OrderLine = item.OrderLine;
                    currPOWireBoneMatrix.SKU = item.SKU;
                    currPOWireBoneMatrix.Size = item.SizeCode;
                    currPOWireBoneMatrix.Cup = item.FitCode;
                    currPOWireBoneMatrix.Qty = item.SupplierPOQty;
                    item.POWireBoneMatrixes.Add(currPOWireBoneMatrix);
                }
                else if (item.POWireBoneMatrixes.Count == 1)//update
                {
                    POWireBoneMatrix currPOWireBoneMatrix = item.POWireBoneMatrixes[0];
                    currPOWireBoneMatrix.Size = item.SizeCode;
                    currPOWireBoneMatrix.Cup = item.FitCode;
                    currPOWireBoneMatrix.Qty = item.SupplierPOQty;
                }
            }

        }


        private void objListGridView_KeyDown(object sender, KeyEventArgs e)
        {
            //base.KeyDown(sender, e);
            //if (e.KeyCode == Keys.Enter)
            //{
            //    if (this.FormState == "Edit")
            //    {
            //        if (this.AllowGridEdit == true && this.AllowKeyPress == true)
            //        {
            //            this.AddNewObject();
            //            //if (this._detail == null) return;
            //            //PH.POPC.BO.POColorSizeDetail cur = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            //            //cur.PODetail = this._detail;
            //        }
            //    }
            //}

        }
        private void POColorSizeDetailListForm_Load(object sender, EventArgs e)
        {
            if (this._IsPOPCOpen)
            {
                this.Tag = "Edit";
                this.OnClickOpen();
            }

            //顯示PivotGrid之前需要做的事情：比如控制排序等
            this.OnBeforeShowPivotGrid += new BeforeShowPivotGridHanlder(PivotTableDemo_OnBeforeShowPivotGrid);
            // PivotGrid切換到PivotTableDemo後，需要進行的動作：
            // 比如數據刷新等
            this.OnAfterShowPivotGrid += new AfterShowPivotGridHandler(PivotTableDemo_OnAfterShowPivotGrid);

        }
        private void PivotTableDemo_OnAfterShowPivotGrid(PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {
            LoadData();
        }


        private void PivotTableDemo_OnBeforeShowPivotGrid(PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {

            //在這裏控制L列的顯示
            aPovitGrid.SetColumnVisible("L1", false);
            aPovitGrid.SetColumnVisible("L2", false);
            aPovitGrid.SetColumnVisible("L3", false);
            aPovitGrid.SetColumnVisible("L4", false);
            aPovitGrid.SetColumnVisible("L5", false);
            aPovitGrid.SetColumnVisible("L6", false);
            aPovitGrid.SetColumnVisible("L7", true);
            aPovitGrid.SetColumnVisible("L8", true);
            aPovitGrid.SetColumnVisible("L9", true);

            //在這裏設置L6列的寬度


            //在這裏進行R列排序

            var sortQuery = (this.BindingSource.DataSource as EntitySet<POColorSizeDetail>).ToList().OrderBy(p => p.SizeCode);
            List<POColorSizeDetail> sortList = sortQuery.ToList();
            aPovitGrid.SortRField<POColorSizeDetail>(sortList, "SizeCode", "SizeCode", "SizeCode", true);

            //在這裏進行L列排序            
            var sortCupQuery = (this.BindingSource.DataSource as EntitySet<POColorSizeDetail>).ToList().OrderBy(p => p.FitCode);
            List<POColorSizeDetail> cupList = sortCupQuery.ToList<POColorSizeDetail>();
            //??
            aPovitGrid.Sort<POColorSizeDetail>(cupList, "FitCode", "FitCode", new string[] { "ColorCode", "FitCode" }, "FitCode", new bool[] { true, true });

            //控制新增PivotItem
            aPovitGrid.AfterNewPivotItem += new PivotTableGrid.AfterNewPivotItemHanlder(aPovitGrid_AfterNewPivotItem);
        }
        private void LoadData()
        {
            if (this.BindingSource.DataSource == null)
            {
                return;
            }
            try
            {
                this.SourceList = (this.BindingSource.DataSource as EntitySet<POColorSizeDetail>).ToList<POColorSizeDetail>();
                this.objListGridView.RefreshData();
            }
            catch
            {
            }

        }
        private void aPovitGrid_AfterNewPivotItem(PivotContentItem aNewItem)
        {
            PODetail poCS = ((this.ParentForm as PODetailDetailForm).BindingSource.Current as PODetail);
            if (poCS == null)
            {
                return;
            }
            // FK
            aNewItem.L1 = poCS.Company;
            aNewItem.L2 = poCS.PONO;
            aNewItem.L3 = poCS.Version;
            aNewItem.L4 = poCS.AmendmentNo;
            aNewItem.L5 = poCS.ItemCode;
            aNewItem.L6 = poCS.OrderLine;
            aNewItem.L9 = poCS.SupplierPrice;

        }
        public override PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass CreatePivotTableParameters()
        {

            LoadData();

            //顯示PivotGrid之前需要做的事情：比如控制排序等
            //this.OnBeforeShowPivotGrid += new BeforeShowPivotGridHanlder(PivotTableDemo_OnBeforeShowPivotGrid);

            //PivotGrid切換到PivotTableDemo後，需要進行的動作：
            //比如數據刷新等
            //this.OnAfterShowPivotGrid += new AfterShowPivotGridHandler(PivotTableDemo_OnAfterShowPivotGrid);


            PivotTableForm.PivotParamClass p = new PivotTableForm.PivotParamClass();
            p.BOType = typeof(POColorSizeDetail);
            p.CurrencyManager = (this.objListGridView.DataSource as BindingSource).CurrencyManager;
            p.Header1_Label = "SizeCode";
            p.Header2_Label = "Total";
            p.LFields = new string[]{
                "Company",
                "PONO",
                "Version",
                "AmendmentNo",
                "ItemCode",
                "OrderLine",
                "ColorCode",
                "FitCode",
                "Price"
            };
            p.LLabels = new string[]{
                "Company",
                "PONO",
                "Version",
                "AmendmentNo",
                "ItemCode",
                "OrderLine",
                "ColorCode",
                "FitCode",
                "Price"
            };
            p.RFields = new string[]{
                "SizeCode"
            };

            p.RSubTotalLabels = new string[] { "Qty" };
            p.RValueField = "Qty";

            p.SourceList = SourceList;
            return p;
        }

        //Xsj20110325: add ,get PriceInfo from MIDc
        private PH.MIDc.BO.MIDcDataContext midcDc = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
        void ribe_Color_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            PODetail currentMaster = (PODetail)(this.ParentForm as PODetailDetailFormMIDc).BindingSource.Current;
            PH.MIDc.BO.Detail currMIDcDetail = (from val1 in midcDc.Details
                                                where val1.SuppRef == currentMaster.SupplierReference
                                                select val1).FirstOrDefault<PH.MIDc.BO.Detail>();

            PH.MIDc.BO.MaterialPriceHeader currentMaterialPriceHeader = new PH.MIDc.BO.PriceHeaderInfo().GetCurrPriceHeader(currMIDcDetail, "Standard", "");
            if (currentMaterialPriceHeader == null) return;

            SelectMIDcPriceForm f = new SelectMIDcPriceForm(currentMaterialPriceHeader.MaterialPrices);
            if (f.ShowDialog() != DialogResult.OK) return;

            if (f.MaterialPrice == null) return;

            POColorSizeDetail csd;
            if (this.objListGridView.IsNewItemRow(this.objListGridView.FocusedRowHandle))
            {
                //csd = this.BindingSource.AddNew() as POColorSizeDetail;
                csd = new POColorSizeDetail();
                csd.CurrentBindingSource = this.BindingSource;
                csd.CurrentDataContext = this.DataContext;
                csd.PODetail = currentMaster;

                csd.PONO = currentMaster.PONO;
                csd.Version = currentMaster.Version;
                csd.AmendmentNo = currentMaster.AmendmentNo;
                csd.OrderLine = currentMaster.OrderLine;

                csd.SupplierReference = currentMaster.SupplierReference;

                this.BindingSource.Add(csd);
            }
            else
                csd = this.BindingSource.Current as POColorSizeDetail;

            csd.ColorCode = f.MaterialPrice.ColorRange;
            csd.Price = Convert.ToDecimal(string.Format("{0:N6}", f.MaterialPrice.Price));
            //this.objListGridView.RefreshData(); 
            //this.BindingSource.EndEdit();
            this.objListGridControl.DataSource = null;
            this.objListGridControl.DataSource = this.BindingSource;
        }
    }


}
