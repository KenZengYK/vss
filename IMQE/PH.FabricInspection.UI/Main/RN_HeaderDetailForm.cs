/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.ProblemMasterDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/2 下午 03:39:17 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Linq;
using PH.FabricInspection.BO;
using PH.Platform.BO;

namespace PH.FabricInspection.UI
{
    public class ProblemMasterDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        #region//auto code
        private DevExpress.XtraEditors.TextEdit txtD_RN_NO;
        private DevExpress.XtraEditors.TextEdit txtD_Company;
        private System.Windows.Forms.Label CompanyLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Item_No;
        private System.Windows.Forms.Label Item_NoLabel;
        private DevExpress.XtraEditors.TextEdit txtD_StockIn_Date;
        private System.Windows.Forms.Label lable_QC_Summary;
        private ProblemDetailListForm fiProblemDetailListForm1;
        private GroupControl groupControl2;
        private GroupControl groupControl1;
        private CheckEdit checkEdit1;
        private GroupControl groupControl3;
        private Label RN_numberLabel;
        private Label Stock_In_DateLabel;
        private CheckEdit checkEdit7;
        private CheckEdit checkEdit6;
        private CheckEdit checkEdit5;
        private CheckEdit checkEdit4;
        private CheckEdit checkEdit3;
        private MemoEdit txtD_QC_Summary;
        private SimpleButton sbItemNoSelect;
        private CheckEdit checkEdit2;


        private EditMode currentMode = EditMode.ReadOnly;
        private string currentCompanyNo = "";
        List<Fabric_Insp_Header> inspections = null;
        private DevExpress.XtraBars.BarButtonItem barBtnConfirm;
        private DevExpress.XtraBars.BarButtonItem barBtnUnconfirm;
        private LookUpEdit lueD_Item_No;
        private LabelControl Receive_QtyLabel;
        private TextEdit teHeaderSupplierLength;
        private TextEdit teHeaderInspLength;
        private LabelControl Insp_QtyLabel;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private GroupControl groupControl4;
        private CheckEdit decision5CheckEdit;
        private CheckEdit decision4CheckEdit;
        private CheckEdit decision3CheckEdit;
        private CheckEdit decision2CheckEdit;
        private CheckEdit decision1CheckEdit;
        private Label label1;
        private Label label2;
        private DevExpress.XtraBars.BarButtonItem barBtn_RefreshRNDetail;
        private CheckEdit checkEdit8;
        private MemoEdit memoEditOtherRejectRemark;
        private TextEdit txtAuditNo;
        private Label lbAuditNo;
        private IContainer components;
        private SpinEdit reject_QtySpinEdit;

        #endregion

        public ProblemMasterDetailForm()
        {
            InitializeComponent();
            //this.fiProblemDetailListForm1.EditorTypeName = typeof(ProblemDetailDetailForm).FullName;
            setEditMode(EditMode.ReadOnly);


        }

        public override void DataBind()
        {
            base.DataBind();

            this.fiProblemDetailListForm1.BindingSource.DataSource = (this.BindingSource.Current as RN_Header).RN_Details;
            this.fiProblemDetailListForm1.EditorTypeName = typeof(ProblemDetailDetailForm).FullName;


        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label reject_QtyLabel;
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout2 = new PH.Platform.BO.UI_GridViewLayout();
            this.txtD_RN_NO = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Company = new DevExpress.XtraEditors.TextEdit();
            this.CompanyLabel = new System.Windows.Forms.Label();
            this.txtD_Item_No = new DevExpress.XtraEditors.TextEdit();
            this.Item_NoLabel = new System.Windows.Forms.Label();
            this.txtD_StockIn_Date = new DevExpress.XtraEditors.TextEdit();
            this.lable_QC_Summary = new System.Windows.Forms.Label();
            this.fiProblemDetailListForm1 = new PH.FabricInspection.UI.ProblemDetailListForm();
            this.checkEdit1 = new DevExpress.XtraEditors.CheckEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.memoEditOtherRejectRemark = new DevExpress.XtraEditors.MemoEdit();
            this.checkEdit8 = new DevExpress.XtraEditors.CheckEdit();
            this.checkEdit7 = new DevExpress.XtraEditors.CheckEdit();
            this.checkEdit6 = new DevExpress.XtraEditors.CheckEdit();
            this.checkEdit5 = new DevExpress.XtraEditors.CheckEdit();
            this.checkEdit4 = new DevExpress.XtraEditors.CheckEdit();
            this.checkEdit3 = new DevExpress.XtraEditors.CheckEdit();
            this.checkEdit2 = new DevExpress.XtraEditors.CheckEdit();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.txtD_QC_Summary = new DevExpress.XtraEditors.MemoEdit();
            this.groupControl3 = new DevExpress.XtraEditors.GroupControl();
            this.txtAuditNo = new DevExpress.XtraEditors.TextEdit();
            this.lbAuditNo = new System.Windows.Forms.Label();
            this.reject_QtySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.Receive_QtyLabel = new DevExpress.XtraEditors.LabelControl();
            this.teHeaderSupplierLength = new DevExpress.XtraEditors.TextEdit();
            this.teHeaderInspLength = new DevExpress.XtraEditors.TextEdit();
            this.Insp_QtyLabel = new DevExpress.XtraEditors.LabelControl();
            this.lueD_Item_No = new DevExpress.XtraEditors.LookUpEdit();
            this.sbItemNoSelect = new DevExpress.XtraEditors.SimpleButton();
            this.RN_numberLabel = new System.Windows.Forms.Label();
            this.Stock_In_DateLabel = new System.Windows.Forms.Label();
            this.barBtnConfirm = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnUnconfirm = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.groupControl4 = new DevExpress.XtraEditors.GroupControl();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.decision5CheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.decision4CheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.decision3CheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.decision2CheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.decision1CheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.barBtn_RefreshRNDetail = new DevExpress.XtraBars.BarButtonItem();
            reject_QtyLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).BeginInit();
            this.headerTitleBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_RN_NO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Company.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Item_No.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_StockIn_Date.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.memoEditOtherRejectRemark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit8.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit7.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit6.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit5.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit4.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_QC_Summary.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).BeginInit();
            this.groupControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.reject_QtySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teHeaderSupplierLength.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teHeaderInspLength.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueD_Item_No.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl4)).BeginInit();
            this.groupControl4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.decision5CheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.decision4CheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.decision3CheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.decision2CheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.decision1CheckEdit.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEdtbarManager
            // 
            this.objEdtbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnConfirm,
            this.barBtnUnconfirm,
            this.barButtonItem1,
            this.barBtn_RefreshRNDetail});
            this.objEdtbarManager.MaxItemId = 24;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            this.objEditBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barBtnAddNew, DevExpress.XtraBars.BarItemPaintStyle.Standard),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnUnconfirm),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtn_RefreshRNDetail)});
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 391);
            this.splitterControl1.Size = new System.Drawing.Size(924, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.groupControl4);
            this.headerTitleBar.Controls.Add(this.groupControl2);
            this.headerTitleBar.Controls.Add(this.groupControl1);
            this.headerTitleBar.Controls.Add(this.lable_QC_Summary);
            this.headerTitleBar.Controls.Add(this.groupControl3);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(924, 364);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.groupControl3, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lable_QC_Summary, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.groupControl1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.groupControl2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.groupControl4, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 397);
            this.panelControl1.Size = new System.Drawing.Size(924, 256);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.fiProblemDetailListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(911, 220);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(920, 252);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(3454, 0);
            // 
            // reject_QtyLabel
            // 
            reject_QtyLabel.AutoSize = true;
            reject_QtyLabel.Location = new System.Drawing.Point(609, 66);
            reject_QtyLabel.Name = "reject_QtyLabel";
            reject_QtyLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(reject_QtyLabel, null);
            reject_QtyLabel.TabIndex = 39;
            reject_QtyLabel.Text = "Reject Qty:";
            // 
            // txtD_RN_NO
            // 
            this.txtD_RN_NO.Location = new System.Drawing.Point(48, 27);
            this.txtD_RN_NO.Name = "txtD_RN_NO";
            this.txtD_RN_NO.Size = new System.Drawing.Size(78, 21);
            this.txtD_RN_NO.TabIndex = 18;
            this.txtD_RN_NO.Tag = "RN_number";
            // 
            // txtD_Company
            // 
            this.txtD_Company.Location = new System.Drawing.Point(344, 27);
            this.txtD_Company.Name = "txtD_Company";
            this.txtD_Company.Size = new System.Drawing.Size(46, 21);
            this.txtD_Company.TabIndex = 19;
            this.txtD_Company.Tag = "Company";
            // 
            // CompanyLabel
            // 
            this.CompanyLabel.AutoSize = true;
            this.CompanyLabel.Location = new System.Drawing.Point(286, 31);
            this.CompanyLabel.Name = "CompanyLabel";
            this.CompanyLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.CompanyLabel, null);
            this.CompanyLabel.TabIndex = 1;
            this.CompanyLabel.Text = "Company:";
            // 
            // txtD_Item_No
            // 
            this.txtD_Item_No.Location = new System.Drawing.Point(470, 27);
            this.txtD_Item_No.Name = "txtD_Item_No";
            this.txtD_Item_No.Size = new System.Drawing.Size(208, 21);
            this.txtD_Item_No.TabIndex = 20;
            this.txtD_Item_No.Tag = "Item_No";
            // 
            // Item_NoLabel
            // 
            this.Item_NoLabel.AutoSize = true;
            this.Item_NoLabel.Location = new System.Drawing.Point(409, 32);
            this.Item_NoLabel.Name = "Item_NoLabel";
            this.Item_NoLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.Item_NoLabel, null);
            this.Item_NoLabel.TabIndex = 2;
            this.Item_NoLabel.Text = "Item No:";
            // 
            // txtD_StockIn_Date
            // 
            this.txtD_StockIn_Date.Location = new System.Drawing.Point(104, 63);
            this.txtD_StockIn_Date.Name = "txtD_StockIn_Date";
            this.txtD_StockIn_Date.Size = new System.Drawing.Size(98, 21);
            this.txtD_StockIn_Date.TabIndex = 21;
            this.txtD_StockIn_Date.Tag = "Stock_In_Date";
            // 
            // lable_QC_Summary
            // 
            this.lable_QC_Summary.AutoSize = true;
            this.lable_QC_Summary.Location = new System.Drawing.Point(320, 95);
            this.lable_QC_Summary.Name = "lable_QC_Summary";
            this.lable_QC_Summary.Size = new System.Drawing.Size(0, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_QC_Summary, null);
            this.lable_QC_Summary.TabIndex = 10;
            // 
            // fiProblemDetailListForm1
            // 
            this.fiProblemDetailListForm1.AllowAddRow = true;
            this.fiProblemDetailListForm1.AutoOpenDetailForm = false;
            this.fiProblemDetailListForm1.DataContext = null;
            this.fiProblemDetailListForm1.DataSource = null;
            this.fiProblemDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.fiProblemDetailListForm1.EditorTypeName = null;
            this.fiProblemDetailListForm1.FileID = null;
            this.fiProblemDetailListForm1.FirstForm = null;
            this.fiProblemDetailListForm1.FormName = "ProblemDetailListForm";
            this.fiProblemDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.fiProblemDetailListForm1.FormTitle = "PH.FabricInspection.UI.ProblemDetailListForm";
            this.fiProblemDetailListForm1.IsCancelList = false;
            this.fiProblemDetailListForm1.IsShowPivotTable = false;
            uI_GridViewLayout2.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            uI_GridViewLayout2.CheckFlag = false;
            uI_GridViewLayout2.CurrentBindingSource = null;
            uI_GridViewLayout2.CurrentDataContext = null;
            uI_GridViewLayout2.FileID = null;
            uI_GridViewLayout2.FormName = null;
            uI_GridViewLayout2.IsSys = null;
            uI_GridViewLayout2.IsSysDefault = null;
            uI_GridViewLayout2.IsUser = null;
            uI_GridViewLayout2.IsUserDefault = null;
            uI_GridViewLayout2.LayoutName = null;
            uI_GridViewLayout2.LayoutRaw = null;
            uI_GridViewLayout2.SideProgramID = null;
            uI_GridViewLayout2.UserID = null;
            this.fiProblemDetailListForm1.LayoutData = uI_GridViewLayout2;
            this.fiProblemDetailListForm1.LayoutName = null;
            this.fiProblemDetailListForm1.ListForm = null;
            this.fiProblemDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.fiProblemDetailListForm1.MenuID = ((long)(0));
            this.fiProblemDetailListForm1.Name = "fiProblemDetailListForm1";
            this.fiProblemDetailListForm1.NeedCheckPermission = true;
            this.fiProblemDetailListForm1.NextForm = null;
            this.fiProblemDetailListForm1.ParentForm = null;
            this.fiProblemDetailListForm1.PrevForm = null;
            this.fiProblemDetailListForm1.RowChangeAutoSave = true;
            this.fiProblemDetailListForm1.ShowMultiCheck = false;
            this.fiProblemDetailListForm1.SideProgramID = null;
            this.fiProblemDetailListForm1.Size = new System.Drawing.Size(911, 220);
            this.PlatetoolTipController.SetSuperTip(this.fiProblemDetailListForm1, null);
            this.fiProblemDetailListForm1.TabControls = null;
            this.fiProblemDetailListForm1.TabIndex = 0;
            this.fiProblemDetailListForm1.TabPage = null;
            // 
            // checkEdit1
            // 
            this.checkEdit1.Location = new System.Drawing.Point(10, 24);
            this.checkEdit1.Name = "checkEdit1";
            this.checkEdit1.Properties.Caption = "Defects";
            this.checkEdit1.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkEdit1.Size = new System.Drawing.Size(123, 19);
            this.checkEdit1.TabIndex = 36;
            this.checkEdit1.Tag = "Major_Problem1_Checked";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.memoEditOtherRejectRemark);
            this.groupControl1.Controls.Add(this.checkEdit8);
            this.groupControl1.Controls.Add(this.checkEdit7);
            this.groupControl1.Controls.Add(this.checkEdit6);
            this.groupControl1.Controls.Add(this.checkEdit5);
            this.groupControl1.Controls.Add(this.checkEdit4);
            this.groupControl1.Controls.Add(this.checkEdit3);
            this.groupControl1.Controls.Add(this.checkEdit2);
            this.groupControl1.Controls.Add(this.checkEdit1);
            this.groupControl1.Location = new System.Drawing.Point(2, 119);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(373, 164);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 37;
            this.groupControl1.Text = "Major Problems";
            // 
            // memoEditOtherRejectRemark
            // 
            this.memoEditOtherRejectRemark.Location = new System.Drawing.Point(213, 101);
            this.memoEditOtherRejectRemark.Name = "memoEditOtherRejectRemark";
            this.memoEditOtherRejectRemark.Size = new System.Drawing.Size(151, 47);
            this.memoEditOtherRejectRemark.TabIndex = 44;
            this.memoEditOtherRejectRemark.Tag = "OtherRejectRemark";
            // 
            // checkEdit8
            // 
            this.checkEdit8.Location = new System.Drawing.Point(150, 74);
            this.checkEdit8.Name = "checkEdit8";
            this.checkEdit8.Properties.Caption = "Mould Trial";
            this.checkEdit8.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkEdit8.Size = new System.Drawing.Size(123, 19);
            this.checkEdit8.TabIndex = 42;
            this.checkEdit8.Tag = "Major_Problem8_Checked";
            // 
            // checkEdit7
            // 
            this.checkEdit7.Location = new System.Drawing.Point(150, 99);
            this.checkEdit7.Name = "checkEdit7";
            this.checkEdit7.Properties.Caption = "Others";
            this.checkEdit7.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkEdit7.Size = new System.Drawing.Size(123, 19);
            this.checkEdit7.TabIndex = 42;
            this.checkEdit7.Tag = "Major_Problem7_Checked";
            // 
            // checkEdit6
            // 
            this.checkEdit6.Location = new System.Drawing.Point(150, 49);
            this.checkEdit6.Name = "checkEdit6";
            this.checkEdit6.Properties.Caption = "Off Color";
            this.checkEdit6.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkEdit6.Size = new System.Drawing.Size(123, 19);
            this.checkEdit6.TabIndex = 41;
            this.checkEdit6.Tag = "Major_Problem6_Checked";
            // 
            // checkEdit5
            // 
            this.checkEdit5.Location = new System.Drawing.Point(150, 24);
            this.checkEdit5.Name = "checkEdit5";
            this.checkEdit5.Properties.Caption = "Lab Test";
            this.checkEdit5.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkEdit5.Size = new System.Drawing.Size(123, 19);
            this.checkEdit5.TabIndex = 40;
            this.checkEdit5.Tag = "Major_Problem5_Checked";
            // 
            // checkEdit4
            // 
            this.checkEdit4.Location = new System.Drawing.Point(10, 74);
            this.checkEdit4.Name = "checkEdit4";
            this.checkEdit4.Properties.Caption = "Short Length";
            this.checkEdit4.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkEdit4.Size = new System.Drawing.Size(123, 19);
            this.checkEdit4.TabIndex = 39;
            this.checkEdit4.Tag = "Major_Problem3_Checked";
            // 
            // checkEdit3
            // 
            this.checkEdit3.Location = new System.Drawing.Point(10, 99);
            this.checkEdit3.Name = "checkEdit3";
            this.checkEdit3.Properties.Caption = "Narrow Width";
            this.checkEdit3.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkEdit3.Size = new System.Drawing.Size(123, 19);
            this.checkEdit3.TabIndex = 38;
            this.checkEdit3.Tag = "Major_Problem4_Checked";
            // 
            // checkEdit2
            // 
            this.checkEdit2.Location = new System.Drawing.Point(10, 49);
            this.checkEdit2.Name = "checkEdit2";
            this.checkEdit2.Properties.Caption = "Shading";
            this.checkEdit2.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkEdit2.Size = new System.Drawing.Size(123, 19);
            this.checkEdit2.TabIndex = 37;
            this.checkEdit2.Tag = "Major_Problem2_Checked";
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.txtD_QC_Summary);
            this.groupControl2.Location = new System.Drawing.Point(0, 289);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(910, 69);
            this.PlatetoolTipController.SetSuperTip(this.groupControl2, null);
            this.groupControl2.TabIndex = 38;
            this.groupControl2.Text = "QC Summary";
            // 
            // txtD_QC_Summary
            // 
            this.txtD_QC_Summary.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtD_QC_Summary.Location = new System.Drawing.Point(2, 21);
            this.txtD_QC_Summary.Name = "txtD_QC_Summary";
            this.txtD_QC_Summary.Size = new System.Drawing.Size(906, 46);
            this.txtD_QC_Summary.TabIndex = 29;
            this.txtD_QC_Summary.Tag = "QC_Summary";
            // 
            // groupControl3
            // 
            this.groupControl3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl3.Controls.Add(this.txtAuditNo);
            this.groupControl3.Controls.Add(this.lbAuditNo);
            this.groupControl3.Controls.Add(reject_QtyLabel);
            this.groupControl3.Controls.Add(this.reject_QtySpinEdit);
            this.groupControl3.Controls.Add(this.Receive_QtyLabel);
            this.groupControl3.Controls.Add(this.teHeaderSupplierLength);
            this.groupControl3.Controls.Add(this.teHeaderInspLength);
            this.groupControl3.Controls.Add(this.Insp_QtyLabel);
            this.groupControl3.Controls.Add(this.lueD_Item_No);
            this.groupControl3.Controls.Add(this.sbItemNoSelect);
            this.groupControl3.Controls.Add(this.RN_numberLabel);
            this.groupControl3.Controls.Add(this.txtD_RN_NO);
            this.groupControl3.Controls.Add(this.CompanyLabel);
            this.groupControl3.Controls.Add(this.txtD_Company);
            this.groupControl3.Controls.Add(this.Item_NoLabel);
            this.groupControl3.Controls.Add(this.txtD_Item_No);
            this.groupControl3.Controls.Add(this.Stock_In_DateLabel);
            this.groupControl3.Controls.Add(this.txtD_StockIn_Date);
            this.groupControl3.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupControl3.Location = new System.Drawing.Point(2, 21);
            this.groupControl3.Name = "groupControl3";
            this.groupControl3.Size = new System.Drawing.Size(920, 92);
            this.PlatetoolTipController.SetSuperTip(this.groupControl3, null);
            this.groupControl3.TabIndex = 39;
            // 
            // txtAuditNo
            // 
            this.txtAuditNo.Location = new System.Drawing.Point(180, 27);
            this.txtAuditNo.Name = "txtAuditNo";
            this.txtAuditNo.Size = new System.Drawing.Size(100, 21);
            this.txtAuditNo.TabIndex = 42;
            this.txtAuditNo.Tag = "AuditNo";
            // 
            // lbAuditNo
            // 
            this.lbAuditNo.AutoSize = true;
            this.lbAuditNo.Location = new System.Drawing.Point(132, 32);
            this.lbAuditNo.Name = "lbAuditNo";
            this.lbAuditNo.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbAuditNo, null);
            this.lbAuditNo.TabIndex = 41;
            this.lbAuditNo.Text = "Audit#:";
            // 
            // reject_QtySpinEdit
            // 
            this.reject_QtySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.reject_QtySpinEdit.Location = new System.Drawing.Point(681, 61);
            this.reject_QtySpinEdit.Name = "reject_QtySpinEdit";
            this.reject_QtySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.reject_QtySpinEdit.Size = new System.Drawing.Size(100, 21);
            this.reject_QtySpinEdit.TabIndex = 40;
            this.reject_QtySpinEdit.Tag = "Reject_Qty";
            // 
            // Receive_QtyLabel
            // 
            this.Receive_QtyLabel.Location = new System.Drawing.Point(220, 64);
            this.Receive_QtyLabel.Margin = new System.Windows.Forms.Padding(5, 3, 5, 3);
            this.Receive_QtyLabel.Name = "Receive_QtyLabel";
            this.Receive_QtyLabel.Size = new System.Drawing.Size(90, 14);
            this.Receive_QtyLabel.TabIndex = 37;
            this.Receive_QtyLabel.Text = "Supplier Length:";
            // 
            // teHeaderSupplierLength
            // 
            this.teHeaderSupplierLength.Location = new System.Drawing.Point(320, 61);
            this.teHeaderSupplierLength.Margin = new System.Windows.Forms.Padding(5, 3, 5, 3);
            this.teHeaderSupplierLength.Name = "teHeaderSupplierLength";
            this.teHeaderSupplierLength.Properties.ReadOnly = true;
            this.teHeaderSupplierLength.Size = new System.Drawing.Size(75, 21);
            this.teHeaderSupplierLength.TabIndex = 36;
            this.teHeaderSupplierLength.Tag = "Receive_Qty";
            // 
            // teHeaderInspLength
            // 
            this.teHeaderInspLength.Location = new System.Drawing.Point(517, 63);
            this.teHeaderInspLength.Margin = new System.Windows.Forms.Padding(5, 3, 5, 3);
            this.teHeaderInspLength.Name = "teHeaderInspLength";
            this.teHeaderInspLength.Properties.ReadOnly = true;
            this.teHeaderInspLength.Size = new System.Drawing.Size(75, 21);
            this.teHeaderInspLength.TabIndex = 38;
            this.teHeaderInspLength.Tag = "Insp_Qty";
            // 
            // Insp_QtyLabel
            // 
            this.Insp_QtyLabel.Location = new System.Drawing.Point(405, 64);
            this.Insp_QtyLabel.Margin = new System.Windows.Forms.Padding(5, 3, 5, 3);
            this.Insp_QtyLabel.Name = "Insp_QtyLabel";
            this.Insp_QtyLabel.Size = new System.Drawing.Size(102, 14);
            this.Insp_QtyLabel.TabIndex = 39;
            this.Insp_QtyLabel.Text = "Inspected Length:";
            // 
            // lueD_Item_No
            // 
            this.lueD_Item_No.EditValue = "";
            this.lueD_Item_No.Location = new System.Drawing.Point(470, -3);
            this.lueD_Item_No.Name = "lueD_Item_No";
            this.lueD_Item_No.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueD_Item_No.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("CONO15", "Company", 100),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("STYLECODE", "Style Code", 50)});
            this.lueD_Item_No.Properties.DropDownRows = 10;
            this.lueD_Item_No.Properties.NullText = "";
            this.lueD_Item_No.Properties.PopupWidth = 500;
            this.lueD_Item_No.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.lueD_Item_No.Properties.ValueMember = "STYLECODE";
            this.lueD_Item_No.Size = new System.Drawing.Size(176, 21);
            this.lueD_Item_No.TabIndex = 35;
            this.lueD_Item_No.Tag = "Item_No";
            this.lueD_Item_No.Visible = false;
            // 
            // sbItemNoSelect
            // 
            this.sbItemNoSelect.Location = new System.Drawing.Point(684, 25);
            this.sbItemNoSelect.Name = "sbItemNoSelect";
            this.sbItemNoSelect.Size = new System.Drawing.Size(98, 23);
            this.sbItemNoSelect.TabIndex = 34;
            this.sbItemNoSelect.Text = "Select Item No ";
            this.sbItemNoSelect.Click += new System.EventHandler(this.sbItemNoSelect_Click);
            // 
            // RN_numberLabel
            // 
            this.RN_numberLabel.AutoSize = true;
            this.RN_numberLabel.Location = new System.Drawing.Point(16, 32);
            this.RN_numberLabel.Name = "RN_numberLabel";
            this.RN_numberLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.RN_numberLabel, null);
            this.RN_numberLabel.TabIndex = 0;
            this.RN_numberLabel.Text = "RN#:";
            // 
            // Stock_In_DateLabel
            // 
            this.Stock_In_DateLabel.AutoSize = true;
            this.Stock_In_DateLabel.Location = new System.Drawing.Point(12, 66);
            this.Stock_In_DateLabel.Name = "Stock_In_DateLabel";
            this.Stock_In_DateLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.Stock_In_DateLabel, null);
            this.Stock_In_DateLabel.TabIndex = 3;
            this.Stock_In_DateLabel.Text = "Stock In Date:";
            // 
            // barBtnConfirm
            // 
            this.barBtnConfirm.Caption = "Confirm";
            this.barBtnConfirm.Id = 19;
            this.barBtnConfirm.Name = "barBtnConfirm";
            this.barBtnConfirm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnConfirm_ItemClick);
            // 
            // barBtnUnconfirm
            // 
            this.barBtnUnconfirm.Caption = "Unconfirm";
            this.barBtnUnconfirm.Id = 20;
            this.barBtnUnconfirm.Name = "barBtnUnconfirm";
            this.barBtnUnconfirm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnUnconfirm_ItemClick);
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Confirm";
            this.barButtonItem1.Id = 21;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnConfirm_ItemClick);
            // 
            // groupControl4
            // 
            this.groupControl4.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl4.Controls.Add(this.label2);
            this.groupControl4.Controls.Add(this.label1);
            this.groupControl4.Controls.Add(this.decision5CheckEdit);
            this.groupControl4.Controls.Add(this.decision4CheckEdit);
            this.groupControl4.Controls.Add(this.decision3CheckEdit);
            this.groupControl4.Controls.Add(this.decision2CheckEdit);
            this.groupControl4.Controls.Add(this.decision1CheckEdit);
            this.groupControl4.Location = new System.Drawing.Point(381, 119);
            this.groupControl4.Name = "groupControl4";
            this.groupControl4.Size = new System.Drawing.Size(529, 164);
            this.PlatetoolTipController.SetSuperTip(this.groupControl4, null);
            this.groupControl4.TabIndex = 40;
            this.groupControl4.Text = "Decision";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 122);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 11;
            this.label2.Text = "Reasons:";
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(16, 96);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(385, 14);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 10;
            this.label1.Text = "Partial reject and need refund (instead of replenishment)";
            // 
            // decision5CheckEdit
            // 
            this.decision5CheckEdit.Location = new System.Drawing.Point(68, 140);
            this.decision5CheckEdit.Name = "decision5CheckEdit";
            this.decision5CheckEdit.Properties.Caption = "No need to replenish as we reduce the gament making qty";
            this.decision5CheckEdit.Size = new System.Drawing.Size(357, 19);
            this.decision5CheckEdit.TabIndex = 9;
            this.decision5CheckEdit.Tag = "Decision5";
            // 
            // decision4CheckEdit
            // 
            this.decision4CheckEdit.Location = new System.Drawing.Point(68, 120);
            this.decision4CheckEdit.Name = "decision4CheckEdit";
            this.decision4CheckEdit.Properties.Caption = "Not enough time for replenishment";
            this.decision4CheckEdit.Size = new System.Drawing.Size(322, 19);
            this.decision4CheckEdit.TabIndex = 7;
            this.decision4CheckEdit.Tag = "Decision4";
            // 
            // decision3CheckEdit
            // 
            this.decision3CheckEdit.Location = new System.Drawing.Point(16, 74);
            this.decision3CheckEdit.Name = "decision3CheckEdit";
            this.decision3CheckEdit.Properties.Caption = "Partial reject and need replenishment";
            this.decision3CheckEdit.Size = new System.Drawing.Size(385, 19);
            this.decision3CheckEdit.TabIndex = 5;
            this.decision3CheckEdit.Tag = "Decision3";
            // 
            // decision2CheckEdit
            // 
            this.decision2CheckEdit.Location = new System.Drawing.Point(16, 49);
            this.decision2CheckEdit.Name = "decision2CheckEdit";
            this.decision2CheckEdit.Properties.Caption = "100% reject with debit note (replenishment is not necessary)";
            this.decision2CheckEdit.Size = new System.Drawing.Size(385, 19);
            this.decision2CheckEdit.TabIndex = 3;
            this.decision2CheckEdit.Tag = "Decision2";
            // 
            // decision1CheckEdit
            // 
            this.decision1CheckEdit.Location = new System.Drawing.Point(16, 24);
            this.decision1CheckEdit.Name = "decision1CheckEdit";
            this.decision1CheckEdit.Properties.Caption = "100% reject and need replenishment";
            this.decision1CheckEdit.Size = new System.Drawing.Size(385, 19);
            this.decision1CheckEdit.TabIndex = 1;
            this.decision1CheckEdit.Tag = "Decision1";
            // 
            // barBtn_RefreshRNDetail
            // 
            this.barBtn_RefreshRNDetail.Caption = "Refresh_RNDetail";
            this.barBtn_RefreshRNDetail.Id = 23;
            this.barBtn_RefreshRNDetail.Name = "barBtn_RefreshRNDetail";
            this.barBtn_RefreshRNDetail.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtn_RefreshRNDetail_ItemClick);
            // 
            // ProblemMasterDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ProblemMasterDetailForm";
            this.Size = new System.Drawing.Size(924, 653);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).EndInit();
            this.headerTitleBar.ResumeLayout(false);
            this.headerTitleBar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_RN_NO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Company.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Item_No.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_StockIn_Date.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.memoEditOtherRejectRemark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit8.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit7.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit6.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit5.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit4.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.txtD_QC_Summary.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).EndInit();
            this.groupControl3.ResumeLayout(false);
            this.groupControl3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.reject_QtySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teHeaderSupplierLength.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teHeaderInspLength.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueD_Item_No.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl4)).EndInit();
            this.groupControl4.ResumeLayout(false);
            this.groupControl4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.decision5CheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.decision4CheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.decision3CheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.decision2CheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.decision1CheckEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sMode"> 
        /// 0: Create Mode
        /// 1: Revise Mode
        /// 2: Confirm Mode
        /// 3: ReadOnly Mode
        /// </param>
        private void setEditMode(EditMode sMode)
        {
            currentMode = sMode;
            txtD_RN_NO.Properties.ReadOnly = true;
            txtAuditNo.Properties.ReadOnly = true;
            if (this.IsNew)
            {
                sbItemNoSelect.Enabled = true;
                //Xsj20120821:添加重取RN_Detail功能
                barBtn_RefreshRNDetail.Enabled = false;
                //---End
                txtD_Company.Properties.ReadOnly = false;
                txtD_Item_No.Properties.ReadOnly = false;
            }
            else
            {
                sbItemNoSelect.Enabled = false;
                //Xsj20120821:添加重取RN_Detail功能
                RN_Header currentRNHeader = this.BindingSource.Current as RN_Header;
                if (currentRNHeader == null || currentRNHeader.RN_confirm == RecordStatus.CONFIRMED)
                {
                    barBtn_RefreshRNDetail.Enabled = false;
                }
                else
                {
                    barBtn_RefreshRNDetail.Enabled = true;
                }
                //---End
                txtD_Company.Properties.ReadOnly = true;
                txtD_Item_No.Properties.ReadOnly = true;
            }

            //if (this.IsNew || this.IsEditting)
            //{
            //    barBtnConfirm.Enabled = true;
            //    barBtnUnconfirm.Enabled = true;
            //}
            //else
            //{
            //    barBtnConfirm.Enabled = false;
            //    barBtnUnconfirm.Enabled = false;
            //}


            teHeaderInspLength.Properties.ReadOnly = true;
            teHeaderInspLength.Properties.ReadOnly = true;

            ProblemDetailListForm devDetailForm = getProblemDetailListForm();
            if (devDetailForm != null)
            {
                if (this.IsNew || this.IsEditting)
                {
                    devDetailForm.objListGridView.OptionsBehavior.Editable = true;
                    //barBtnConfirm.Enabled = true;
                    //barBtnUnconfirm.Enabled = true;
                }
                else
                {
                    devDetailForm.objListGridView.OptionsBehavior.Editable = false;
                    //barBtnConfirm.Enabled = false;
                    //barBtnUnconfirm.Enabled = false;
                }
            }


        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            setEditMode(EditMode.ReadOnly);
        }

        protected override void DeleteCurrent()
        {
            if (this.BindingSource.Current == null)
            {
                return;
            }

            RN_Header currentIQC = (RN_Header)this.BindingSource.Current;
            if ((currentIQC.RN_confirm != null) && (currentIQC.RN_confirm.Equals(RecordStatus.CONFIRMED)))
            {
                MessageBox.Show("this rn can't be deleted, because it has been confirmed.");
                return;
            }

            base.DeleteCurrent();
            setEditMode(EditMode.ReadOnly);
        }

        public override void EditCurrent()
        {
            if (this.BindingSource.Current == null)
            {
                return;
            }

            RN_Header currentIQC = (RN_Header)this.BindingSource.Current;
            if ((currentIQC.RN_confirm != null) && (currentIQC.RN_confirm.Equals(RecordStatus.CONFIRMED)))
            {
                MessageBox.Show("this rn can't be edit, because it has been confirmed.");
                return;
            }

            base.EditCurrent();
            if (this.IsNew)
            {
                currentMode = EditMode.Create;
                setEditMode(currentMode);
            }
            else if (this.BindingSource.Current != null)
            {
                currentMode = EditMode.Revise;
                setEditMode(currentMode);
            }
        }

        protected override void OnClickSaveAndReturn()
        {

            if (SaveCurrentRecord())
            {
                base.OnClickSaveAndReturn();
                setEditMode(EditMode.Confirm);
            }
        }

        protected override void SaveCurrent()
        {
            if (SaveCurrentRecord())
            {
                base.SaveCurrent();
                setEditMode(EditMode.Confirm);

            }
        }

        private bool SaveCurrentRecord()
        {
            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;
            try
            {
                RN_numberLabel.Focus();
                this.BindingSource.EndEdit();

                //foreach (PH.UI.PHBaseForm tempForm in this.ChildList)
                //{
                //    if (tempForm is ProblemDetailListForm)
                //    {
                //        ProblemDetailListForm devDetailForm = (ProblemDetailListForm)tempForm;
                //        devDetailForm.CurBindingSource.EndEdit();
                //        break;
                //    }
                //}



                RN_Header currentIQC = null;

                if (this.BindingSource.Current != null)
                {
                    ProblemDetailListForm devDetailForm = getProblemDetailListForm();
                    currentIQC = (RN_Header)this.BindingSource.Current;
                    if ((currentIQC.Company != null) && (currentIQC.Company != ""))
                    {
                        currentCompanyNo = currentIQC.Company;
                    }

                    if (currentMode == EditMode.Create)
                    {
                        if ((currentCompanyNo == null) || (currentCompanyNo.Trim() == "")
                              || (this.txtD_Item_No.Text == null) || (this.txtD_Item_No.Text.Trim() == ""))
                        {
                            MessageBox.Show("ItemNo不能為空");
                            return false;
                        }

                        currentIQC.Change_User = GlobalInfo.GetCurrentUserId();
                        currentIQC.Change_Date = DateTime.Now;

                        currentIQC.RN_number = GetMaxRNNumber(currentCompanyNo);

                    }



                    if (devDetailForm != null)
                    {
                        foreach (RN_Detail detailInfo in devDetailForm.BindingSource)
                        {

                            if (detailInfo.System_Install_No > 0)
                            {
                                Fabric_Insp_Header tempInspHeader = findInspectionInspHeader(currentCompanyNo, detailInfo.System_Install_No);
                                if (tempInspHeader == null)
                                {
                                    MessageBox.Show("RNDetail is invalid, because System can't find Fabric Inspection information in Fabric_Insp_Header with Company= "
                                        + currentCompanyNo + "and SystemInstallNo=" + detailInfo.System_Install_No);
                                    return false;
                                }
                                detailInfo.Supplier_Length = tempInspHeader.Actual_Length;
                                detailInfo.Insp_Length = tempInspHeader.Insp_Length;
                                detailInfo.Usable_Width = tempInspHeader.Usable_Width;

                                detailInfo.Reject_Reason = tempInspHeader.Insp_Result_Reason;

                            }


                        }

                        foreach (RN_Detail detailInfo in devDetailForm.BindingSource)
                        {

                            if ((detailInfo.Reject_Reason != null) && (detailInfo.Reject_Reason.Trim() != ""))
                            {
                                // update fabric_insp_header
                                //updateInspectionInspResultReason(currentCompanyNo, detailInfo.System_Install_No, detailInfo.Reject_Reason);
                            }
                        }
                    }

                }



                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when Save this record \n" + ex.Message);
            }
            finally
            {
                this.Cursor = currCursor;
            }
            return false;
        }

        public void updateInspectionInspResultReason(string strCompanyNo, int strSystemInstallNo, string strInspResultReason)
        {
            List<Fabric_Insp_Header> tempIQC01s = null;
            try
            {

                PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();

                var tempData =
                    from p in context.Fabric_Insp_Headers
                    where p.Company.Equals(strCompanyNo) && (p.System_Install_No == strSystemInstallNo)
                    select p;
                tempIQC01s = tempData.ToList<Fabric_Insp_Header>();

                //Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
                //tempIQC01s = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListWith(strCompanyNo, strSystemInstallNo);

                for (int i = 0, iSize = tempIQC01s.Count; i < iSize; i++)
                {
                    tempIQC01s[i].Insp_Result_Reason = strInspResultReason;
                }

                context.SubmitChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when update Insp_Result_Reason \n" + ex.Message);
            }


        }

        public Fabric_Insp_Header findInspectionInspHeader(string strCompanyNo, int strSystemInstallNo)
        {
            List<Fabric_Insp_Header> tempIQC01s = null;
            try
            {
                //freddy -- 2009-03-31 for convert to PlatForm2
                //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();

                //var tempData = from p in context.Fabric_Insp_Headers
                //               where p.Company.Equals(strCompanyNo) && (p.System_Install_No == strSystemInstallNo)
                //               select p;
                //tempIQC01s = tempData.ToList<Fabric_Insp_Header>();

                Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
                tempIQC01s = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListWith(strCompanyNo, strSystemInstallNo).ToList<Fabric_Insp_Header>();


                if (tempIQC01s.Count > 0)
                {
                    return tempIQC01s[0];
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when update Insp_Result_Reason \n" + ex.Message);
            }

            return null;

        }

        private ProblemDetailListForm getProblemDetailListForm()
        {
            ProblemDetailListForm devDetailForm = null;

            //freddy V2
            //foreach (PH.UI.PHBaseForm tempForm in this.ChildList)
            //{
            //    if (tempForm is ProblemDetailListForm)
            //    {
            //        devDetailForm = (ProblemDetailListForm)tempForm;
            //        break;
            //    }
            //}

            devDetailForm = this.fiProblemDetailListForm1;

            return devDetailForm;
        }

        private void checkValidation()
        {
            //PH.FabricInspection.BO.Master currentIQC = this.CurBindingSource.Current as PH.FabricInspection.BO.Master;

            //if (currentIQC != null)
            //{
            //    ValideRules.IsNotBlank(currentIQC.Company, "Company Code");
            //    ValideRules.IsNotBlank(currentIQC.Item_No, "Item No");
            //    ValideRules.IsNotBlank(currentIQC.Lot_Id, "Lot Id");
            //}

        }

        private void sbItemNoSelect_Click(object sender, EventArgs e)
        {
            RN_Header currentRNHeader = this.BindingSource.Current as RN_Header;
            if (currentRNHeader == null)
            {
                currentRNHeader = (RN_Header)this.BindingSource.AddNew();
            }

            //1:取得itemNo 和 StockInDate及 CompanyNo
            Fabric_Insp_Header itemInfo = FrmItemNoSelectForRNEditor.ShowItemNoSelectForRNEditor((FabricInspectionDataContext)this.DataContext);
            if (itemInfo == null)
            {
                return;
            }

            ClearRNDetail();

            List<PH984Field> ph984Fields = PH984Field.GetAllDataFromAS400WithItemNo(itemInfo.Company, itemInfo.Item_No, itemInfo.Stock_In_Date);
            decimal dActual_length = 0;
            // decimal dInsp_Qty = 0;
            foreach (PH984Field tempPH984 in ph984Fields)
            {
                dActual_length = dActual_length + tempPH984.Actual_Length;
                //dInsp_Qty = dInsp_Qty + tempPH984.Insp_Length;
            }

            //this.teHeaderItemNo.Text = itemInfo.Item_No;
            //this.teStockInDate.Text = itemInfo.Stock_In_Date;
            //this.teHeaderSupplierLength.Text = dActual_length + "";// itemInfo.Actual_Length + "";
            //this.teHeaderInspLength.Text = (decimal)itemInfo.Insp_Length + "";
            currentCompanyNo = itemInfo.Company;
            currentRNHeader.Item_No = itemInfo.Item_No;
            currentRNHeader.Company = itemInfo.Company;
            currentRNHeader.Item_No = itemInfo.Item_No;
            currentRNHeader.Stock_In_Date = itemInfo.Stock_In_Date;
            //if (itemInfo.Insp_Length == null)
            //{
            //    currentRNHeader.Insp_Qty = 0;
            //}
            //else
            //{
            //    currentRNHeader.Insp_Qty = itemInfo.Insp_Length;
            //}
            //zxz begin cancel
            //currentRNHeader.Insp_Qty = GetSumInspectionLength(itemInfo.Company.Trim(), itemInfo.Item_No.Trim(), itemInfo.Stock_In_Date.Trim());
            //zxz end cancel
            //zxz begin add
            currentRNHeader.Insp_Qty = GetSumActLength(itemInfo.Company.Trim(), itemInfo.Item_No.Trim(), itemInfo.Stock_In_Date.Trim());
            //zxz end add
            currentRNHeader.Receive_Qty = dActual_length;

            //2: 取得所有的InspectionHeader  with itemNo stockIndata companyNo
            decimal shortageRage = GetInspectionShortage(currentCompanyNo, itemInfo.Item_No, itemInfo.Stock_In_Date);
            if (((double)shortageRage > 0.01) || (currentRNHeader.Receive_Qty * shortageRage > 100))
            {
                inspections = GetInspectionForRNCreaterWithShortage(currentCompanyNo, itemInfo.Item_No, itemInfo.Stock_In_Date);
            }
            else
            {
                inspections = GetInspectionForRNCreaterNormal(currentCompanyNo, itemInfo.Item_No, itemInfo.Stock_In_Date);
            }

            //inspections = GetInspectionForRNCreater(currentCompanyNo, itemInfo.Item_No, itemInfo.Stock_In_Date, RecordStatus.STATUS_ALL);


            //3: 生成RN， 一个RNHeader每个InspectionHeader一个RnDetail
            GenerateRN(inspections, currentRNHeader);

            //decimal dInspectLength = 0;
            //Fabric_Insp_Header tempInspectionHeader = null;
            //for (int iPos = 0, iSize = inspections.Count; iPos < iSize; iPos++)
            //{
            //    tempInspectionHeader = inspections[iPos];
            //    dInspectLength = dInspectLength + (decimal)tempInspectionHeader.Insp_Length;

            //}
            //this.teHeaderInspLength.Text = dInspectLength + "";


            //4:在调用save按钮时才 save这些信息
        }

        private decimal GetInspectionShortage(string strCompanyNo, string strItemNo, string stockInDate)
        {
            //select sum[(Insp_Length – Actual_Length+PH_Sample)/Insp_Length] 
            //   from dbo.Fabric_Insp_Header where  Item_No =’屏幕上的item no’ 
            //   AND Stock _In_Date = ’屏幕上的STOCK IN DATE’ AND Company = ‘P1’ and Insp_Length <> 0
            decimal shortageRate = 0;
            List<Fabric_Insp_Header> tempIQC01s = null;
            try
            {

                #region Xsj20111129:如下代碼為了提升速度而被注釋掉

                //PH.FabricInspection.BO.FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;

                //var tempData = from p in context.Fabric_Insp_Headers
                //               where p.Company.Equals(strCompanyNo) && p.Item_No.Equals(strItemNo)
                //               && p.Stock_In_Date.Equals(stockInDate) && (p.Insp_Length != 0)
                //               select p;
                //tempIQC01s = tempData.ToList<Fabric_Insp_Header>();

                //for (int i = tempIQC01s.Count - 1; i >= 0; i--)
                //{
                //    shortageRate = shortageRate + ((decimal)tempIQC01s[i].Insp_Length - (decimal)tempIQC01s[i].Actual_Length + (decimal)tempIQC01s[0].PH_Sample) / (decimal)tempIQC01s[i].Insp_Length;
                //}

                #endregion

                #region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼

                PH.FabricInspection.BO.FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;

                var tempData = from p in context.Fabric_Insp_Headers
                               where p.Company.Equals(strCompanyNo) && p.Item_No.Equals(strItemNo)
                               && p.Stock_In_Date.Equals(stockInDate) && (p.Insp_Length != 0)
                               select ((decimal)p.Insp_Length - (decimal)p.Actual_Length + (decimal)p.PH_Sample) / (decimal)p.Insp_Length;

                shortageRate = tempData.FirstOrDefault();

                #endregion


            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load data from DefectsMaster \n" + ex.Message);
            }

            return shortageRate;
        }

        public List<Fabric_Insp_Header> GetInspectionForRNCreaterWithShortage(string strCompanyNo, string strItemNo, string stockInDate)
        {
            //select System_Install_No,Supplich_Batch,Roll_No,Actual_Length,Insp_Length, (Actual_Length – Insp_Length), 
            //    Usable_Width, Insp_Result_Reason 
            //from dbo.Fabric_Insp_Header where  Item_No =’屏幕上的item no’ 
            //    AND Stock _In_Date = ’屏幕上的STOCK IN DATE’ AND Company = ‘P1’
            List<Fabric_Insp_Header> tempIQC01s = null;
            try
            {
                //freddy -- 2009-03-31 for convert to PlatForm2
                //PH.FabricInspection.BO.FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;

                //var tempData = from p in context.Fabric_Insp_Headers
                //               where p.Company.Equals(strCompanyNo) && p.Item_No.Equals(strItemNo) && p.Stock_In_Date.Equals(stockInDate)
                //               select p;
                //tempIQC01s = tempData.ToList<Fabric_Insp_Header>();           

                Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
                tempIQC01s = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListWith(strCompanyNo, strItemNo, stockInDate).ToList<Fabric_Insp_Header>();

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load data from DefectsMaster \n" + ex.Message);
            }

            return tempIQC01s;

        }

        public List<Fabric_Insp_Header> GetInspectionForRNCreaterNormal(string strCompanyNo, string strItemNo, string stockInDate)
        {
            // select System_Install_No,Supplich_Batch,Roll_No,Actual_Length,Insp_Length, (Actual_Length – Insp_Length), 
            //    Usable_Width, Insp_Result_Reason, Supplier_Code 
            // from dbo.Fabric_Insp_Header 
            // where  Party_Insp_Result= 'Return' 
            // OR 
            // select System_Install_No,Supplich_Batch,Roll_No,Actual_Length,Insp_Length,Usable_Width,Insp_Result_Reason,Supplier_Code 
            //   from dbo.Fabric_Insp_Header where  Party_Insp_Result= 'Return' OR Party_Insp_Result = 'Deduct' 
            //    or Spread_Insp_Result= 'Return' ,Spread_Insp_Result= 'Deduct',Mould_Trial_Result= 'Return' 
            //    or (Lot_Id =(顔色Return:LOCN84) and company = ‘p1’)
            //    顔色Return: 1. Select LOCN84  from AULT4F1.APP84 WHERE CONO84 = ‘P1’
            //    AND PNUM84 = Item no AND SUBST((LOCT84),1,6) = Stock In date 

            List<Fabric_Insp_Header> resultInspHeaders = new List<Fabric_Insp_Header>();
            try
            {
                DataTable dataTable = GetItemsColorGroups(strCompanyNo, strItemNo);

                List<Fabric_Insp_Header> tempIQC01s = null;
                //freddy -- 2009-03-31 for convert to PlatForm2
                //PH.FabricInspection.BO.FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;

                //var tempData = from p in context.Fabric_Insp_Headers
                //               where p.Company.ToUpper().Equals(strCompanyNo.ToUpper())
                //                    && p.Item_No.ToUpper().Equals(strItemNo.ToUpper())
                //                    && p.Stock_In_Date.Equals(stockInDate)
                //               select p;
                //tempIQC01s = tempData.ToList<Fabric_Insp_Header>();

                Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
                tempIQC01s = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListWith(strCompanyNo, strItemNo, stockInDate).ToList<Fabric_Insp_Header>();


                foreach (Fabric_Insp_Header tempInspHeader in tempIQC01s)
                {
                    //if (
                    //    ((tempInspHeader.Party_Insp_Result != null)
                    //         && tempInspHeader.Party_Insp_Result == RecordStatus.STATUS_REJECT
                    //           || tempInspHeader.Party_Insp_Result == RecordStatus.STATUS_DEDUCTIVE)

                    //           || ((tempInspHeader.Spread_Insp_Result != null)
                    //              && tempInspHeader.Spread_Insp_Result == RecordStatus.STATUS_REJECT
                    //           || tempInspHeader.Spread_Insp_Result == RecordStatus.STATUS_DEDUCTIVE)

                    //           || ((tempInspHeader.Mould_Trial_Result != null)
                    //               && tempInspHeader.Mould_Trial_Result == RecordStatus.STATUS_REJECT)

                    //           || GetLotIdColorGroup(dataTable, tempInspHeader.Item_No, tempInspHeader.Lot_Id))

                    //修改此处条件判断 Overall Result* 只要是B或C的，都可以Reject  David 2021-03-27
                    if (tempInspHeader.Insp_Result == "B" || tempInspHeader.Insp_Result == "C")
                    {
                        resultInspHeaders.Add(tempInspHeader);
                    }
                }

                //var tempData = from p in context.Fabric_Insp_Headers
                //               where p.Company.Equals(strCompanyNo)
                //               && (
                //               p.Party_Insp_Result.Trim().Equals(RecordStatus.STATUS_REJECT)
                //               || p.Party_Insp_Result.Trim().Equals(RecordStatus.STATUS_DEDUCTIVE)

                //               || p.Spread_Insp_Result.Trim().Equals(RecordStatus.STATUS_REJECT)
                //               || p.Spread_Insp_Result.Trim().Equals(RecordStatus.STATUS_DEDUCTIVE)

                //               || p.Mould_Trial_Result.Trim().Equals(RecordStatus.STATUS_REJECT)
                //               || GetLotIdColorGroup(dataTable, p.Item_No, p.Lot_Id)
                //               )
                //               select p;

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load data from DefectsMaster \n" + ex.Message);
            }

            return resultInspHeaders;
        }

        public decimal GetSumInspectionLength(string strCompanyNo, string strItemNo, string stockInDate)
        {

            decimal sumInspLength = 0;
            try
            {
                List<Fabric_Insp_Header> tempIQC01s = null;
                //freddy -- 2009-03-31 for convert to PlatForm2
                //PH.FabricInspection.BO.FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;

                //var tempData = from p in context.Fabric_Insp_Headers
                //               where p.Company.Equals(strCompanyNo)
                //                && p.Item_No.Equals(strItemNo)
                //               && p.Stock_In_Date.Equals(stockInDate)

                //               select p;
                //tempIQC01s = tempData.ToList<Fabric_Insp_Header>();

                Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
                tempIQC01s = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListWith(strCompanyNo, strItemNo, stockInDate).ToList<Fabric_Insp_Header>();

                foreach (Fabric_Insp_Header tempInspHeader in tempIQC01s)
                {
                    if (tempInspHeader.Insp_Length > 0)
                    {
                        sumInspLength = sumInspLength + (decimal)tempInspHeader.Insp_Length;
                    }
                }


            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load data from DefectsMaster \n" + ex.Message);
            }

            return sumInspLength;
        }

        //beging zxz add
        public decimal GetSumActLength(string strCompanyNo, string strItemNo, string stockInDate)
        {

            decimal sumActLength = 0;
            try
            {
                List<Fabric_Insp_Header> tempIQC01s = null;
                //freddy -- 2009-03-31 for convert to PlatForm2
                //PH.FabricInspection.BO.FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;

                //var tempData = from p in context.Fabric_Insp_Headers
                //               where p.Company.Equals(strCompanyNo)
                //                && p.Item_No.Equals(strItemNo)
                //               && p.Stock_In_Date.Equals(stockInDate)

                //               select p;
                //tempIQC01s = tempData.ToList<Fabric_Insp_Header>();

                Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
                tempIQC01s = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListWith(strCompanyNo, strItemNo, stockInDate).ToList<Fabric_Insp_Header>();

                foreach (Fabric_Insp_Header tempInspHeader in tempIQC01s)
                {
                    if (tempInspHeader.Insp_Length > 0)
                    {
                        sumActLength = sumActLength + (decimal)tempInspHeader.Actual_Length;
                    }
                }


            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load data from DefectsMaster \n" + ex.Message);
            }

            return sumActLength;
        }

        //zxz end add
        private DataTable GetItemsColorGroups(string companyNo, string itemNo)
        {

            #region Xsj20111129:如下代碼為了提升速度而被注釋掉

            //string strSQL = "SELECT CH4T84, PNUM84, LOTN84 FROM AULT4F1.APP84 WHERE CONO84='" + companyNo + "' and PNUM84='" + itemNo + "'";
            //DataTable dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);

            #endregion
            #region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼

            FabricInspection.BO.FabricInspectionDataContext FISdc = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspection.BO.FabricInspectionDataContext>();
            string sqlStr = "Select * from OpenQuery([as400],'SELECT CH4T84, PNUM84, LOTN84 FROM AULT4F1.APP84 WHERE CONO84=''" + companyNo + "'' and PNUM84=''" + itemNo + "''')";
            DataTable dataTable = FISdc.ExecuteDataTable(sqlStr, "t0");

            #endregion

            return dataTable;

        }

        private bool GetLotIdColorGroup(DataTable dataTable, string itemNo, string lotId)
        {
            //Select LOCN84  from AULT4F1.APP84 WHERE CONO84 = ‘P1’ AND PNUM84 = Item no AND SUBST((LOCT84),1,6) = Stock In date

            for (int i = 0, iSize = dataTable.Rows.Count; i < iSize; i++)
            {
                if ((dataTable.Rows[i]["PNUM84"].ToString().Trim() == itemNo)
                    && (dataTable.Rows[i]["LOTN84"].ToString().Trim() == lotId))
                {
                    return true;

                }
            }

            return false;

        }

        /// <summary>
        /// Xsj(補):重選ItemCode後，先清理原來的Detail資料
        /// </summary>
        private void ClearRNDetail()
        {
            ProblemDetailListForm detailListForm = getProblemDetailListForm();

            if (detailListForm != null)
            {
                #region Xsj20111129:如下代碼為了提升速度而被注釋掉
                //while (detailListForm.BindingSource.Count > 0)
                //{
                //    PH.FabricInspection.BO.RN_Detail currRNDetail = detailListForm.BindingSource.Current as PH.FabricInspection.BO.RN_Detail;
                //    detailListForm.BindingSource.RemoveCurrent(); 
                //}
                #endregion

                #region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼
                detailListForm.BindingSource.Clear();
                #endregion

            }


        }

        private void GenerateRN(List<Fabric_Insp_Header> hbInspectionHeader, RN_Header rnHeader)
        {
            Fabric_Insp_Header tempInspectionHeader = null;
            //RN_Detail rnDetail = null;
            rnHeader.Company = currentCompanyNo;

            ProblemDetailListForm detailListForm = getProblemDetailListForm();

            for (int iPos = 0, iSize = hbInspectionHeader.Count; iPos < iSize; iPos++)
            {
                tempInspectionHeader = hbInspectionHeader[iPos];
                if (iPos == 0)
                {
                    rnHeader.Item_No = tempInspectionHeader.Item_No;
                    rnHeader.IQC_Reference = GetIQCReference(tempInspectionHeader.Lot_Id);

                    //rnHeader.RN_confirm = RecordStatus.CONFIRMED;
                    rnHeader.Use_Status = RecordStatus.USE_STATUS_USED;

                    rnHeader.Stock_In_Date = tempInspectionHeader.Stock_In_Date;

                }

                if (detailListForm != null)
                {
                    RN_Detail rnDetail = detailListForm.BindingSource.AddNew() as RN_Detail;
                    rnDetail.RN_Header = rnHeader; //由David加入  2020-12-24

                    rnDetail.Company = currentCompanyNo;
                    rnDetail.RN_number = rnHeader.RN_number;

                    //int tempSystemInstallNoInMemory = GetNextSystemInstallNumberFromMemoryData();
                    //int tempSystemInstallNoInDB = GetNextSystemInstallNumber();
                    //if (tempSystemInstallNoInDB > tempSystemInstallNoInMemory)
                    //{
                    //    rnDetail.System_Install_No = tempSystemInstallNoInDB;
                    //}
                    //else
                    //{
                    //    rnDetail.System_Install_No = tempSystemInstallNoInMemory;
                    //}
                    rnDetail.System_Install_No = tempInspectionHeader.System_Install_No;

                    //rnDetail.Item_No = tempInspectionHeader.Item_No;
                    rnDetail.Lot_Id = tempInspectionHeader.Lot_Id;
                    if (tempInspectionHeader.Insp_Length > 0)
                    {
                        rnDetail.Insp_Qty = tempInspectionHeader.Actual_Length;
                    }
                    //todo
                    rnDetail.Reject_Reason = "";
                    rnDetail.Supplier_Name = "";
                    rnDetail.HDO_no = "";
                    rnDetail.Supplier_Inv_No = "";
                    rnDetail.Project_No = "";
                    rnDetail.Po_No = "";

                    rnDetail.Roll_No = tempInspectionHeader.Roll_No;
                    rnDetail.Batch_No = tempInspectionHeader.Supplich_Batch;

                    rnDetail.Supplier_Length = tempInspectionHeader.Actual_Length;
                    rnDetail.Insp_Length = tempInspectionHeader.Insp_Length;
                    rnDetail.Usable_Width = tempInspectionHeader.Usable_Width;
                    //zxz  begin add
                    rnDetail.Reject_Reason = tempInspectionHeader.Insp_Result_Reason;
                    rnDetail.HDO_no = tempInspectionHeader.HdoNo;
                    rnDetail.Po_No = tempInspectionHeader.PO;
                    rnDetail.Project_No = tempInspectionHeader.ProjectNo;
                    rnDetail.Supplier_Inv_No = tempInspectionHeader.InvoiceNo;
                    //zxz  end add

                }
            }

            if (detailListForm != null)
            {
                detailListForm.BindingSource.EndEdit();
            }
            //rnDetailsList.RefreshData();

        }

        public int GetNextSystemInstallNumberFromMemoryData()
        {
            ProblemDetailListForm detailListForm = getProblemDetailListForm();
            int maxNo = 0;
            if (detailListForm != null)
            {
                foreach (RN_Detail detailInfo in detailListForm.BindingSource)
                {
                    if (maxNo < detailInfo.System_Install_No)
                    {
                        maxNo = detailInfo.System_Install_No;
                    }
                }
            }
            return maxNo + 1;
        }

        public int GetNextSystemInstallNumber()
        {


            PH.FabricInspection.BO.FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;

            var tempData = context.RN_Details.Max(p => p.System_Install_No);

            return (int)tempData + 1;


        }

        /// <summary>
        /// // 歸類方法:
        /// (把物料代碼,入倉日期相同的歸為一類)同時還要系統自動産生一個IQC REFERENCE(如:M70831, M 是固定不變,7為年,0831是序號)
        /// </summary>
        /// <param name="lotId"></param>
        /// <returns></returns>
        private string GetIQCReference(string lotId)
        {
            string no = lotId.Substring(0, 6);
            if (no.Length == 6)
            {
                no = no.Substring(1);
            }

            return "M" + no;
        }

        public int GetMaxRNNumber(string strCompanyNo)
        {
            PH.FabricInspection.BO.FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;

            //freddy -- 2009-03-31 for convert to PlatForm2
            //var tempData = from rnHeader in context.RN_Headers
            //               select rnHeader;
            //List<RN_Header> tempRnHeaders = tempData.ToList<RN_Header>();

            RN_HeaderList rn_HeaderList = new RN_HeaderList();
            int maxNo = rn_HeaderList.GetRN_HeaderList().Select(p => p.RN_number).Max();

            #region Xsj:依Shelley Zhang的要求對RN_Number更改如下
            //修改的格式是：年份+流水號:如2012年第一份RN， 編號為12001
            string prefix = DateTime.Now.Year.ToString().Substring(2);
            int prefixVal = Convert.ToInt32(prefix);

            int oldYearVal = maxNo / 10000;
            if (prefixVal != oldYearVal)
            {
                maxNo = prefixVal * 10000;
            }

            #endregion

            return maxNo + 1;
        }

        private void barBtnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RN_Header currentIQC = null;
            if (this.BindingSource.Current != null)
            {
                currentIQC = (RN_Header)this.BindingSource.Current;
            }
            if (currentIQC == null)
            {
                MessageBox.Show("No RN need to confirm");
                return;
            }

            currentIQC.RN_confirm = RecordStatus.CONFIRMED;
            currentIQC.Confirmed_User = GlobalInfo.GetCurrentUserId();
            SaveCurrent();


        }

        private void barBtnUnconfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RN_Header currentIQC = null;
            if (this.BindingSource.Current != null)
            {
                currentIQC = (RN_Header)this.BindingSource.Current;
            }
            if (currentIQC == null)
            {
                MessageBox.Show("No RN need to confirm");
                return;
            }

            currentIQC.RN_confirm = RecordStatus.UNCONFIRMED;
            //currentIQC.Confirmed_User = GlobalInfo.GetCurrentUserId();
            SaveCurrent();

        }





        /// <summary>
        /// Xsj20120821:從Fabric_Insp_Header中重新生成RN_Detail信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barBtn_RefreshRNDetail_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            try
            {
                this.Cursor = Cursors.WaitCursor;
                RN_Header currentRNHeader = this.BindingSource.Current as RN_Header;
                if (currentRNHeader == null)
                {
                    return;
                }

                string itemNo = this.txtD_Item_No.EditValue == null ? "" : this.txtD_Item_No.EditValue.ToString().Trim();
                if (itemNo == "") return;
                string stockInDate = this.txtD_StockIn_Date.EditValue == null ? "" : this.txtD_StockIn_Date.EditValue.ToString().Trim();
                if (stockInDate == "") return;


                //1:取得itemNo 和 StockInDate及 CompanyNo
                PH.FabricInspection.BO.FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;
                if (context == null) return;

                Fabric_Insp_Header itemInfo = (from m in context.Fabric_Insp_Headers
                                               where m.Item_No == itemNo && m.Stock_In_Date == stockInDate
                                               select m).FirstOrDefault();
                if (itemInfo == null)
                {
                    return;
                }

                List<PH984Field> ph984Fields = PH984Field.GetAllDataFromAS400WithItemNo(itemInfo.Company, itemInfo.Item_No, itemInfo.Stock_In_Date);
                decimal dActual_length = 0;
                foreach (PH984Field tempPH984 in ph984Fields)
                {
                    dActual_length = dActual_length + tempPH984.Actual_Length;
                }

                currentCompanyNo = itemInfo.Company;
                currentRNHeader.Insp_Qty = GetSumActLength(itemInfo.Company.Trim(), itemInfo.Item_No.Trim(), itemInfo.Stock_In_Date.Trim());
                currentRNHeader.Receive_Qty = dActual_length;



                //Xsj:取得符合退料條件的Fabric_Insp_Header
                currentCompanyNo = currentRNHeader.Company;
                decimal shortageRage = GetInspectionShortage(currentCompanyNo, itemInfo.Item_No, itemInfo.Stock_In_Date);
                if (((double)shortageRage > 0.01) || (currentRNHeader.Receive_Qty * shortageRage > 100))
                {
                    inspections = GetInspectionForRNCreaterWithShortage(currentCompanyNo, itemInfo.Item_No, itemInfo.Stock_In_Date);
                }
                else
                {
                    inspections = GetInspectionForRNCreaterNormal(currentCompanyNo, itemInfo.Item_No, itemInfo.Stock_In_Date);
                }


                //Xsj:重新生成值
                Fabric_Insp_Header tempInspectionHeader = null;
                List<RN_Detail> rnDetailList = new List<RN_Detail>();
                currentRNHeader.Company = currentCompanyNo;

                ProblemDetailListForm detailListForm = getProblemDetailListForm();

                for (int iPos = 0, iSize = inspections.Count; iPos < iSize; iPos++)
                {
                    tempInspectionHeader = inspections[iPos];

                    if (detailListForm != null)
                    {
                        RN_Detail rnDetail = new RN_Detail();
                        rnDetail.Company = currentCompanyNo;
                        rnDetail.RN_number = currentRNHeader.RN_number;
                        rnDetail.System_Install_No = tempInspectionHeader.System_Install_No;
                        rnDetail.Lot_Id = tempInspectionHeader.Lot_Id;
                        if (tempInspectionHeader.Insp_Length > 0)
                        {
                            rnDetail.Insp_Qty = tempInspectionHeader.Actual_Length;
                        }
                        //todo
                        rnDetail.Reject_Reason = "";
                        rnDetail.Supplier_Name = "";
                        rnDetail.HDO_no = "";
                        rnDetail.Supplier_Inv_No = "";
                        rnDetail.Project_No = "";
                        rnDetail.Po_No = "";

                        rnDetail.Roll_No = tempInspectionHeader.Roll_No;
                        rnDetail.Batch_No = tempInspectionHeader.Supplich_Batch;

                        rnDetail.Supplier_Length = tempInspectionHeader.Actual_Length;
                        rnDetail.Insp_Length = tempInspectionHeader.Insp_Length;
                        rnDetail.Usable_Width = tempInspectionHeader.Usable_Width;
                        //zxz  begin add
                        rnDetail.Reject_Reason = tempInspectionHeader.Insp_Result_Reason;
                        rnDetail.HDO_no = tempInspectionHeader.HdoNo;
                        rnDetail.Po_No = tempInspectionHeader.PO;
                        rnDetail.Project_No = tempInspectionHeader.ProjectNo;
                        rnDetail.Supplier_Inv_No = tempInspectionHeader.InvoiceNo;
                        //zxz  end add
                        rnDetailList.Add(rnDetail);
                    }
                }

                if (detailListForm != null)
                {
                    detailListForm.BindingSource.EndEdit();
                }

                //Xsj:添加新值，刪除不存在的值，更新存在的值 
                if (detailListForm != null)
                {
                    //更新存在的值 
                    for (int iPos = detailListForm.BindingSource.List.Count - 1; iPos >= 0; iPos--)
                    {
                        PH.FabricInspection.BO.RN_Detail item = detailListForm.BindingSource.List[iPos] as PH.FabricInspection.BO.RN_Detail;
                        PH.FabricInspection.BO.RN_Detail rnDetail = rnDetailList.Where(p => p.Company == item.Company && p.System_Install_No == item.System_Install_No && p.Lot_Id == item.Lot_Id).FirstOrDefault();
                        if (rnDetail != null)
                        {
                            item.CheckFlag = rnDetail.CheckFlag;
                            item.Insp_Qty = rnDetail.Insp_Qty;
                            item.Supplier_Name = rnDetail.Supplier_Name;

                            item.Roll_No = rnDetail.Roll_No;
                            item.Batch_No = rnDetail.Batch_No;

                            item.Supplier_Length = rnDetail.Supplier_Length;
                            item.Insp_Length = rnDetail.Insp_Length;
                            item.Usable_Width = rnDetail.Usable_Width;

                            item.Reject_Reason = rnDetail.Reject_Reason;
                            item.HDO_no = rnDetail.HDO_no;
                            item.Po_No = rnDetail.Po_No;
                            item.Project_No = rnDetail.Project_No;
                            item.Supplier_Inv_No = rnDetail.Supplier_Inv_No;

                            item.Change_User = GlobalInfo.GetCurrentUserId();
                            item.Change_Date = DateTime.Now;

                        }
                        else
                        {
                            //刪除不存在的值
                            detailListForm.BindingSource.Remove(item);
                            currentRNHeader.RN_Details.Remove(item);
                            context.RN_Details.DeleteOnSubmit(item);
                        }
                    }
                    //插入新增的值
                    foreach (PH.FabricInspection.BO.RN_Detail item2 in rnDetailList)
                    {
                        bool isAlive = false;
                        foreach (PH.FabricInspection.BO.RN_Detail item3 in detailListForm.BindingSource.List)
                        {
                            if (item3.Company == item2.Company && item3.System_Install_No == item2.System_Install_No && item3.Lot_Id == item2.Lot_Id)
                            {
                                isAlive = true;
                            }
                        }
                        if (!isAlive)
                        {
                            //添加新值
                            detailListForm.BindingSource.List.Add(item2);
                        }
                    }

                }
                detailListForm.BindingSource.EndEdit();
                MessageBox.Show("重新生成RN_Detail成功！");

            }
            catch (Exception ex)
            {
                MessageBox.Show("重新生成RN_Detail失敗，錯誤信息：\r\n" + ex.ToString());
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

        }





    }
}
