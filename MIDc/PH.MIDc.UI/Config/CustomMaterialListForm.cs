/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: /PH/PH.MIDc.root/PH.MIDc/PH.MIDc.UI/Config/CustomMaterialListForm.cs $   
* $Author: Water Zhang $  
* $Date: 08-08-27 10:37 $   
* $Revision: 1 $   
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
using PH.MIDc.BO;
using PH.Platform.BO;
using PH.MIDc.BackEnd.Report;

namespace PH.MIDc.UI
{
    public partial class CustomMaterialListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Indexno;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_MidcHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_materialName;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Memo;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarAndDockingController barAndDockingController1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraBars.BarButtonItem barButEachHSCode2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem5;
        private DevExpress.XtraBars.BarButtonItem barButtonItem6;
        private DevExpress.XtraBars.BarButtonItem btnESSEDetailNotRMB;
        private DevExpress.XtraBars.BarButtonItem btnESSESumNotRMB;
        private DevExpress.XtraBars.BarButtonItem btnESSEStyelRMB;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.BarSubItem barSubItem3;
        private DevExpress.XtraBars.BarSubItem barSubItem4;
        private DevExpress.XtraBars.BarButtonItem btnESSEStyelNotRMB;
        private DevExpress.XtraBars.BarButtonItem btnESSEDetailRMB;
        private DevExpress.XtraBars.BarButtonItem btnESSESumRMB;
        private DevExpress.XtraBars.BarButtonItem btnImportTariff;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_HSCodeSeq;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Status;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox_HSUnit;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_HSUnit;
        private PanelControl panelControl1;
        private RadioGroup radioGroup_Status;
        private SimpleButton sBtn_GetData;
        private LabelControl labelControl1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraBars.BarButtonItem barButtonItem_WeightHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_materialNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_materialNameEN;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_CustomNo;
        #endregion
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;

        public string HSCodeFlag = "China";

        public CustomMaterialListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;
            InitCtrl();
        }

        //HSCOdeFlag:  China時為China Export, BD時為BD Import 由David增加 2018-11-06
        public CustomMaterialListForm(string AHSCodeFlag)
        {
            InitializeComponent();
            this.HSCodeFlag = AHSCodeFlag;
            this.RowChangeAutoSave = false;
            InitCtrl();
        }

        //Xsj20151022:Add
        public void InitCtrl()
        {
            List<string> hsUnitList = new List<string>();
            hsUnitList.Add("PC");
            hsUnitList.Add("KG");
            foreach (string item in hsUnitList)
            {
                this.repositoryItemImageComboBox_HSUnit.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
            }
        }

        public override void DataBind()
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            string status = this.radioGroup_Status.EditValue.ToString();

            if (status == "ALL")
            {
                this.BindingSource.DataSource = context.CustomMaterials.Where(p => p.HSCodeFlag == HSCodeFlag);
            }
            else
            {
                this.BindingSource.DataSource = context.CustomMaterials.Where(p => p.HSCodeFlag == HSCodeFlag && p.STATUS == status);
            }

            this.EditorTypeName = typeof(CustomMaterialDetailForm).FullName;
            base.DataBind();
        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            this.Columns_Status = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Indexno = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_MidcHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_materialName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Memo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_CustomNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButEachHSCode2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem5 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem6 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.btnImportTariff = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem_WeightHSCode = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem3 = new DevExpress.XtraBars.BarSubItem();
            this.btnESSEDetailNotRMB = new DevExpress.XtraBars.BarButtonItem();
            this.btnESSEDetailRMB = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem4 = new DevExpress.XtraBars.BarSubItem();
            this.btnESSESumNotRMB = new DevExpress.XtraBars.BarButtonItem();
            this.btnESSESumRMB = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.btnESSEStyelNotRMB = new DevExpress.XtraBars.BarButtonItem();
            this.btnESSEStyelRMB = new DevExpress.XtraBars.BarButtonItem();
            this.barAndDockingController1 = new DevExpress.XtraBars.BarAndDockingController(this.components);
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_HSCodeSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_HSUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox_HSUnit = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.radioGroup_Status = new DevExpress.XtraEditors.RadioGroup();
            this.sBtn_GetData = new DevExpress.XtraEditors.SimpleButton();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_materialNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_materialNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.barAndDockingController1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox_HSUnit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup_Status.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Controller = this.barAndDockingController1;
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barSubItem1,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barButtonItem4,
            this.barButtonItem1,
            this.barButEachHSCode2,
            this.barButtonItem5,
            this.barButtonItem6,
            this.btnESSEDetailNotRMB,
            this.btnESSESumNotRMB,
            this.btnESSEStyelRMB,
            this.barSubItem2,
            this.btnESSEStyelNotRMB,
            this.barSubItem3,
            this.barSubItem4,
            this.btnESSESumRMB,
            this.btnESSEDetailRMB,
            this.btnImportTariff,
            this.barButtonItem_WeightHSCode});
            this.objbarManager.MaxItemId = 39;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItem1, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 64);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemImageComboBox_HSUnit});
            this.objListGridControl.Size = new System.Drawing.Size(967, 235);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Indexno,
            this.gridColumn_HSCodeSeq,
            this.Columns_CustomNo,
            this.Columns_MidcHSCode,
            this.Columns_HSUnit,
            this.Columns_materialName,
            this.Columns_materialNameCN,
            this.Columns_materialNameEN,
            this.Columns_Memo,
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn4,
            this.gridColumn3,
            this.Columns_Status,
            this.gridColumn5});
            styleFormatCondition1.Appearance.BackColor = System.Drawing.Color.Red;
            styleFormatCondition1.Appearance.ForeColor = System.Drawing.Color.Yellow;
            styleFormatCondition1.Appearance.Options.UseBackColor = true;
            styleFormatCondition1.Appearance.Options.UseForeColor = true;
            styleFormatCondition1.ApplyToRow = true;
            styleFormatCondition1.Column = this.Columns_Status;
            styleFormatCondition1.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition1.Value1 = "Drop";
            this.objListGridView.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition1});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // Columns_Status
            // 
            this.Columns_Status.Caption = "狀態";
            this.Columns_Status.FieldName = "Status";
            this.Columns_Status.Name = "Columns_Status";
            this.Columns_Status.Visible = true;
            this.Columns_Status.VisibleIndex = 13;
            // 
            // Columns_Indexno
            // 
            this.Columns_Indexno.Caption = "Indexno";
            this.Columns_Indexno.FieldName = "Indexno";
            this.Columns_Indexno.Name = "Columns_Indexno";
            // 
            // Columns_MidcHSCode
            // 
            this.Columns_MidcHSCode.Caption = "MIDc HSCode";
            this.Columns_MidcHSCode.FieldName = "MidcHSCode";
            this.Columns_MidcHSCode.Name = "Columns_MidcHSCode";
            this.Columns_MidcHSCode.Visible = true;
            this.Columns_MidcHSCode.VisibleIndex = 3;
            this.Columns_MidcHSCode.Width = 128;
            // 
            // Columns_materialName
            // 
            this.Columns_materialName.Caption = "物料名稱(繁體)";
            this.Columns_materialName.FieldName = "materialName";
            this.Columns_materialName.Name = "Columns_materialName";
            this.Columns_materialName.Visible = true;
            this.Columns_materialName.VisibleIndex = 5;
            this.Columns_materialName.Width = 169;
            // 
            // Columns_Memo
            // 
            this.Columns_Memo.Caption = "規格(補充)";
            this.Columns_Memo.FieldName = "Memo";
            this.Columns_Memo.Name = "Columns_Memo";
            this.Columns_Memo.Visible = true;
            this.Columns_Memo.VisibleIndex = 8;
            this.Columns_Memo.Width = 269;
            // 
            // Columns_CustomNo
            // 
            this.Columns_CustomNo.Caption = "HS Code (CN)";
            this.Columns_CustomNo.FieldName = "CustomNo";
            this.Columns_CustomNo.Name = "Columns_CustomNo";
            this.Columns_CustomNo.Visible = true;
            this.Columns_CustomNo.VisibleIndex = 1;
            this.Columns_CustomNo.Width = 137;
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "Stock Report";
            this.barSubItem1.Id = 20;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem2),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButEachHSCode2),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem3),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem4, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem5),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem6),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnImportTariff, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem_WeightHSCode)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "Each HSCode (by Material)...";
            this.barButtonItem2.Id = 21;
            this.barButtonItem2.Name = "barButtonItem2";
            this.barButtonItem2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButEachHSCode_ItemClick);
            // 
            // barButEachHSCode2
            // 
            this.barButEachHSCode2.Caption = "Each HSCode (by Project/Material)...";
            this.barButEachHSCode2.Id = 25;
            this.barButEachHSCode2.Name = "barButEachHSCode2";
            this.barButEachHSCode2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButEachHSCode2_ItemClick);
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Caption = "All HSCode (by Material)...";
            this.barButtonItem3.Id = 22;
            this.barButtonItem3.Name = "barButtonItem3";
            this.barButtonItem3.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButAllHSCode_ItemClick);
            // 
            // barButtonItem4
            // 
            this.barButtonItem4.Caption = "Summary (All HSCode)...";
            this.barButtonItem4.Id = 23;
            this.barButtonItem4.Name = "barButtonItem4";
            this.barButtonItem4.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButSummary_ItemClick);
            // 
            // barButtonItem5
            // 
            this.barButtonItem5.Caption = "Summary with Meter (All HSCode)...";
            this.barButtonItem5.Id = 26;
            this.barButtonItem5.Name = "barButtonItem5";
            this.barButtonItem5.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem5_ItemClick);
            // 
            // barButtonItem6
            // 
            this.barButtonItem6.Caption = "Summary with Status (All HSCode)";
            this.barButtonItem6.Id = 27;
            this.barButtonItem6.Name = "barButtonItem6";
            this.barButtonItem6.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem6_ItemClick);
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Each HSCode With Compostion";
            this.barButtonItem1.Id = 24;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButEachHSCodeWithCompostion_ItemClick);
            // 
            // btnImportTariff
            // 
            this.btnImportTariff.Caption = "Import Tariff ...";
            this.btnImportTariff.Id = 37;
            this.btnImportTariff.Name = "btnImportTariff";
            this.btnImportTariff.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnImportTariff_ItemClick);
            // 
            // barButtonItem_WeightHSCode
            // 
            this.barButtonItem_WeightHSCode.Caption = "Weight HSCode Reprot";
            this.barButtonItem_WeightHSCode.Id = 38;
            this.barButtonItem_WeightHSCode.Name = "barButtonItem_WeightHSCode";
            this.barButtonItem_WeightHSCode.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem_WeightHSCode_ItemClick);
            // 
            // barSubItem3
            // 
            this.barSubItem3.Caption = "ESSE Import Tariff - Detail";
            this.barSubItem3.Id = 33;
            this.barSubItem3.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnESSEDetailNotRMB),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnESSEDetailRMB)});
            this.barSubItem3.Name = "barSubItem3";
            // 
            // btnESSEDetailNotRMB
            // 
            this.btnESSEDetailNotRMB.Caption = "exclude RMB...";
            this.btnESSEDetailNotRMB.Id = 28;
            this.btnESSEDetailNotRMB.Name = "btnESSEDetailNotRMB";
            this.btnESSEDetailNotRMB.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnESSEDetailNotRMB_ItemClick);
            // 
            // btnESSEDetailRMB
            // 
            this.btnESSEDetailRMB.Caption = "RMB...";
            this.btnESSEDetailRMB.Id = 36;
            this.btnESSEDetailRMB.Name = "btnESSEDetailRMB";
            this.btnESSEDetailRMB.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnESSEDetailRMB_ItemClick);
            // 
            // barSubItem4
            // 
            this.barSubItem4.Caption = "ESSE Import Tariff - Summary";
            this.barSubItem4.Id = 34;
            this.barSubItem4.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnESSESumNotRMB),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnESSESumRMB)});
            this.barSubItem4.Name = "barSubItem4";
            // 
            // btnESSESumNotRMB
            // 
            this.btnESSESumNotRMB.Caption = "exclude RMB...";
            this.btnESSESumNotRMB.Id = 29;
            this.btnESSESumNotRMB.Name = "btnESSESumNotRMB";
            this.btnESSESumNotRMB.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnESSESumNotRMB_ItemClick);
            // 
            // btnESSESumRMB
            // 
            this.btnESSESumRMB.Caption = "RMB...";
            this.btnESSESumRMB.Id = 35;
            this.btnESSESumRMB.Name = "btnESSESumRMB";
            this.btnESSESumRMB.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnESSESumRMB_ItemClick);
            // 
            // barSubItem2
            // 
            this.barSubItem2.Caption = "ESSE Import Tariff - by Style";
            this.barSubItem2.Id = 31;
            this.barSubItem2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnESSEStyelNotRMB),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnESSEStyelRMB)});
            this.barSubItem2.Name = "barSubItem2";
            // 
            // btnESSEStyelNotRMB
            // 
            this.btnESSEStyelNotRMB.Caption = "exclude RMB";
            this.btnESSEStyelNotRMB.Id = 32;
            this.btnESSEStyelNotRMB.Name = "btnESSEStyelNotRMB";
            this.btnESSEStyelNotRMB.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnESSEStyelNotRMB_ItemClick);
            // 
            // btnESSEStyelRMB
            // 
            this.btnESSEStyelRMB.Caption = "RMB";
            this.btnESSEStyelRMB.Id = 30;
            this.btnESSEStyelRMB.Name = "btnESSEStyelRMB";
            this.btnESSEStyelRMB.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnESSEStyelRMB_ItemClick);
            // 
            // barAndDockingController1
            // 
            this.barAndDockingController1.PropertiesBar.AllowLinkLighting = false;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "排序號";
            this.gridColumn1.FieldName = "IndexValue";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 9;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "單價";
            this.gridColumn2.DisplayFormat.FormatString = "#,##0.0#";
            this.gridColumn2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn2.FieldName = "UnitPrice";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 10;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "類別";
            this.gridColumn3.FieldName = "FGType";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 12;
            // 
            // gridColumn_HSCodeSeq
            // 
            this.gridColumn_HSCodeSeq.Caption = "海關備案序號";
            this.gridColumn_HSCodeSeq.FieldName = "HSCodeSeq";
            this.gridColumn_HSCodeSeq.Name = "gridColumn_HSCodeSeq";
            this.gridColumn_HSCodeSeq.Visible = true;
            this.gridColumn_HSCodeSeq.VisibleIndex = 0;
            this.gridColumn_HSCodeSeq.Width = 102;
            // 
            // Columns_HSUnit
            // 
            this.Columns_HSUnit.Caption = "海關Unit";
            this.Columns_HSUnit.ColumnEdit = this.repositoryItemImageComboBox_HSUnit;
            this.Columns_HSUnit.FieldName = "HSUnit";
            this.Columns_HSUnit.Name = "Columns_HSUnit";
            this.Columns_HSUnit.Visible = true;
            this.Columns_HSUnit.VisibleIndex = 4;
            this.Columns_HSUnit.Width = 93;
            // 
            // repositoryItemImageComboBox_HSUnit
            // 
            this.repositoryItemImageComboBox_HSUnit.AutoHeight = false;
            this.repositoryItemImageComboBox_HSUnit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox_HSUnit.Name = "repositoryItemImageComboBox_HSUnit";
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.labelControl1);
            this.panelControl1.Controls.Add(this.radioGroup_Status);
            this.panelControl1.Controls.Add(this.sBtn_GetData);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 27);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(967, 37);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 6;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(47, 9);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(39, 14);
            this.labelControl1.TabIndex = 2;
            this.labelControl1.Text = "Status:";
            // 
            // radioGroup_Status
            // 
            this.radioGroup_Status.EditValue = "Active";
            this.radioGroup_Status.Location = new System.Drawing.Point(109, 7);
            this.radioGroup_Status.Name = "radioGroup_Status";
            this.radioGroup_Status.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Active", "Active"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Drop", "Drop"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ALL", "ALL")});
            this.radioGroup_Status.Size = new System.Drawing.Size(327, 25);
            this.radioGroup_Status.TabIndex = 1;
            // 
            // sBtn_GetData
            // 
            this.sBtn_GetData.Location = new System.Drawing.Point(442, 9);
            this.sBtn_GetData.Name = "sBtn_GetData";
            this.sBtn_GetData.Size = new System.Drawing.Size(75, 23);
            this.sBtn_GetData.TabIndex = 0;
            this.sBtn_GetData.Text = "Get Data";
            this.sBtn_GetData.Click += new System.EventHandler(this.sBtn_GetData_Click);
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "單價折扣率";
            this.gridColumn4.DisplayFormat.FormatString = "#,##0.0#";
            this.gridColumn4.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn4.FieldName = "PriceRatio";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 11;
            // 
            // Columns_materialNameCN
            // 
            this.Columns_materialNameCN.Caption = "物料名稱(簡體)";
            this.Columns_materialNameCN.FieldName = "materialNameCN";
            this.Columns_materialNameCN.Name = "Columns_materialNameCN";
            this.Columns_materialNameCN.Visible = true;
            this.Columns_materialNameCN.VisibleIndex = 6;
            this.Columns_materialNameCN.Width = 169;
            // 
            // Columns_materialNameEN
            // 
            this.Columns_materialNameEN.Caption = "物料名稱(英文)";
            this.Columns_materialNameEN.FieldName = "materialNameEN";
            this.Columns_materialNameEN.Name = "Columns_materialNameEN";
            this.Columns_materialNameEN.Visible = true;
            this.Columns_materialNameEN.VisibleIndex = 7;
            this.Columns_materialNameEN.Width = 169;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "HS Code (BD)";
            this.gridColumn5.FieldName = "CustomNoBD";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 2;
            this.gridColumn5.Width = 122;
            // 
            // CustomMaterialListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelControl1);
            this.Name = "CustomMaterialListForm";
            this.Size = new System.Drawing.Size(967, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.barAndDockingController1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox_HSUnit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup_Status.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #region Report

        private void barButEachHSCode_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.MIDc.BO.CustomMaterial cm = this.BindingSource.Current as PH.MIDc.BO.CustomMaterial;
            if (cm == null) return;
            PrintStockReport(cm.MidcHSCode);
        }
        private void barButAllHSCode_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PrintStockReport("");

        }
        private void PrintStockReport(string hsCode)
        {
            StockAsAtDate form = new StockAsAtDate();
            if (form.ShowDialog() != DialogResult.OK) return;

            int dt = form.AsAtDate;
            StockReport rpt = new StockReport(SqlDataHelper.GetStockReport(hsCode, dt), dt);
            rpt.ShowPreviewDialog();
        }


        private void barButSummary_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            StockAsAtDate form = new StockAsAtDate();
            if (form.ShowDialog() != DialogResult.OK) return;

            int dt = form.AsAtDate;

            //StockReportSummary rpt = new StockReportSummary(SqlDataHelper.GetStockReportSummary("", dt), dt);
            //rpt.ShowPreviewDialog();



            //Xsj:啟用後臺作業任務
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.MIDc.BackEnd.dll";
            data.ClassFullName = typeof(PH.MIDc.BackEnd.Job.StockReportSummary_Job).FullName;
            data.JobName = "Stock Summary Report";
            data.ProgramCode = this.SideProgramID;
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            data.Parameter = dt.ToString();
            PH.Platform.BackEnd.BO.SReport.InsertData(data);
        }

        private void barButEachHSCodeWithCompostion_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.MIDc.BO.CustomMaterial cm = this.BindingSource.Current as PH.MIDc.BO.CustomMaterial;
            if (cm == null)
                return;

            StockReportWithCompostion rpt = new StockReportWithCompostion(cm.MidcHSCode);
            rpt.ShowPreviewDialog();

        }

        private void barButEachHSCode2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.MIDc.BO.CustomMaterial cm = this.BindingSource.Current as PH.MIDc.BO.CustomMaterial;
            if (cm == null)
                return;

            StockAsAtDate form = new StockAsAtDate();
            if (form.ShowDialog() != DialogResult.OK) return;

            int dt = form.AsAtDate;

            StockReport3 rpt = new StockReport3(SqlDataHelper.GetStockReport3(cm.MidcHSCode, dt), dt);
            rpt.ShowPreviewDialog();
        }

        private void barButtonItem5_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            StockAsAtDate form = new StockAsAtDate();
            if (form.ShowDialog() != DialogResult.OK) return;

            int dt = form.AsAtDate;

            StockReportSummaryMeter rpt = new StockReportSummaryMeter(SqlDataHelper.GetStockReportSummaryMeter("", dt), dt);
            rpt.ShowPreviewDialog();
        }

        private void barButtonItem6_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //StockAsAtDate form = new StockAsAtDate();
            //if (form.ShowDialog() != DialogResult.OK) return;

            //int dt = form.AsAtDate;

            StockReportSummaryStatus rpt = new StockReportSummaryStatus(SqlDataHelper.GetStockReportSummaryStatus(""));
            rpt.ShowPreviewDialog();
        }

        private void ESSEImportTariffData(bool isSum, bool isRMB)
        {
            PH.MIDc.UI.Other.frmESSESelector frm = new PH.MIDc.UI.Other.frmESSESelector();

            if (frm.ShowDialog() == DialogResult.OK)
            {
                string sB = frm.ProjectBegin;
                string sE = frm.ProjectEnd;

                sB = sB == "ESSE-" ? "" : sB;
                sE = sE == "ESSE-" ? "" : sE;

                DataTable tb = SqlDataHelper.GetESSEImportTariff(sB, sE, isSum, isRMB);

                if (isSum)
                {
                    PH.MIDc.UI.ESSEImportTariffReportSummary rpt = new ESSEImportTariffReportSummary("ESSE", sB, sE, tb);
                    rpt.ShowPreviewDialog();
                }
                else
                {
                    PH.MIDc.UI.ESSEImportTariffReportDetail rpt = new ESSEImportTariffReportDetail("ESSE", sB, sE, tb);
                    rpt.ShowPreviewDialog();
                }
            }
        }
        private void ESSEImportTariffStyleData(bool isRMB)
        {
            //Cursor c = this.Cursor;
            DataTable tb;
            PH.MIDc.UI.ESSEStyleReportDetail rpt;
            this.Cursor = Cursors.WaitCursor;
            try
            {
                tb = SqlDataHelper.GetESSEImportTariffByStyle(isRMB);

                rpt = new ESSEStyleReportDetail("ESSE", "", "", tb, "");
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

            if (rpt != null)
                rpt.ShowPreviewDialog();

        }

        private void btnESSEDetailNotRMB_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ESSEImportTariffData(false, false);
        }
        private void btnESSEDetailRMB_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ESSEImportTariffData(false, true);
        }
        private void btnESSESumNotRMB_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ESSEImportTariffData(true, false);
        }
        private void btnESSESumRMB_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ESSEImportTariffData(true, true);
        }

        private void btnESSEStyelNotRMB_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ESSEImportTariffStyleData(false);
        }
        private void btnESSEStyelRMB_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ESSEImportTariffStyleData(true);
        }

        #endregion

        #region ImportTariff

        private void btnImportTariff_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Other.ImportTariffForm frm = new PH.MIDc.UI.Other.ImportTariffForm();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                string customer = frm.Customer;
                bool isRMB = frm.IsRMB;
                string sB = frm.ProjectFrom;
                string sE = frm.ProjectTo;

                if (frm.ImportTariffOption == ImportTariffOption.ByStyle)
                {
                    DataTable tb;
                    PH.MIDc.UI.ESSEStyleReportDetail rpt;
                    this.Cursor = Cursors.WaitCursor;
                    try
                    {
                        tb = SqlDataHelper.GetCustImportTariffByStyle(customer, sB, sE, isRMB);

                        rpt = new ESSEStyleReportDetail(customer, sB, sE, tb, "");
                    }
                    finally
                    {
                        this.Cursor = Cursors.Default;
                    }

                    if (rpt != null)
                        rpt.ShowPreviewDialog();
                }
                else
                {
                    #region Sum/Detail

                    bool isSum = frm.ImportTariffOption == ImportTariffOption.Summary;

                    DataTable tb = SqlDataHelper.GetCustImportTariff(customer, sB, sE, isSum, isRMB);

                    if (isSum)
                    {
                        PH.MIDc.UI.ESSEImportTariffReportSummary rpt = new ESSEImportTariffReportSummary(customer, sB, sE, tb);
                        rpt.ShowPreviewDialog();
                    }
                    else
                    {
                        PH.MIDc.UI.ESSEImportTariffReportDetail rpt = new ESSEImportTariffReportDetail(customer, sB, sE, tb);
                        rpt.ShowPreviewDialog();
                    }

                    #endregion
                }
            }
        }

        #endregion

        private void sBtn_GetData_Click(object sender, EventArgs e)
        {
            DataBind();
        }

        private void barButtonItem_WeightHSCode_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.MIDc.BO.CustomMaterial bo = this.BindingSource.Current as PH.MIDc.BO.CustomMaterial;
            if (bo == null) return;

            PH.MIDc.BO.MIDcDataContext dcn = ContextBuilder.CreateContext<MIDcDataContext>();
            List<MaterialWeightHSCodeBO> weightHSCodeList = dcn.Details.Where(p => p.HsCode == bo.MidcHSCode)
                .Select(p => new MaterialWeightHSCodeBO { HSCode = bo.CustomNo, SuppRef = p.SuppRef, PHUnit = p.PHUnit, WeightHSCode = p.WeightHsCode }).ToList();

            WeightHSCodeReport rpt = new WeightHSCodeReport();
            rpt.DataSource = weightHSCodeList;
            rpt.ShowPreview();
        }

    }
}
