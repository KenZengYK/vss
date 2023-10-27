namespace PH.RWO.UI.Setting
{
    partial class RWORejectListForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSalesOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRWOCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOReviseDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactoryWorkStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineWorkStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colT3Date = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAjustT3Date = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAjustT3DateConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFCLExFtyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLCLExFtyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOAConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOAConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHeaderConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHeaderConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTopConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTopConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPPCConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPPCConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUsers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNext = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrent = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnReject = new DevExpress.XtraBars.BarButtonItem();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRWO = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnReject});
            this.objbarManager.MaxItemId = 37;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnReject, true)});
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
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.View_RWOConfirm);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 25);
            this.objListGridControl.Size = new System.Drawing.Size(803, 274);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFlag,
            this.colProjectNo,
            this.colWorkOrderNo,
            this.colColorCode,
            this.colRWO,
            this.colFactory,
            this.colCustomer,
            this.colStyleNo,
            this.colCustomerStyleNo,
            this.colSalesOrderLine,
            this.colRWOCreateDate,
            this.colWOReviseDate,
            this.colAmendDate,
            this.colVersion,
            this.colFactoryWorkStartDate,
            this.colLineWorkStartDate,
            this.colT3Date,
            this.colAjustT3Date,
            this.colAjustT3DateConfirm,
            this.colFCLExFtyDate,
            this.colLCLExFtyDate,
            this.colOAConfirm,
            this.colOAConfirmDate,
            this.colHeaderConfirm,
            this.colHeaderConfirmDate,
            this.colTopConfirm,
            this.colTopConfirmDate,
            this.colPPCConfirm,
            this.colPPCConfirmDate,
            this.colUsers,
            this.colNext,
            this.colCurrent});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Project No";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 1;
            this.colProjectNo.Width = 85;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "Customer";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.OptionsColumn.AllowEdit = false;
            this.colCustomer.Visible = true;
            this.colCustomer.VisibleIndex = 2;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 3;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "WorkOrderNo";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.OptionsColumn.AllowEdit = false;
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 4;
            this.colWorkOrderNo.Width = 99;
            // 
            // colStyleNo
            // 
            this.colStyleNo.Caption = "PH Style No";
            this.colStyleNo.FieldName = "StyleNo";
            this.colStyleNo.Name = "colStyleNo";
            this.colStyleNo.OptionsColumn.AllowEdit = false;
            this.colStyleNo.Visible = true;
            this.colStyleNo.VisibleIndex = 7;
            this.colStyleNo.Width = 88;
            // 
            // colCustomerStyleNo
            // 
            this.colCustomerStyleNo.Caption = "Cust Style No";
            this.colCustomerStyleNo.FieldName = "CustomerStyleNo";
            this.colCustomerStyleNo.Name = "colCustomerStyleNo";
            this.colCustomerStyleNo.OptionsColumn.AllowEdit = false;
            this.colCustomerStyleNo.Visible = true;
            this.colCustomerStyleNo.VisibleIndex = 8;
            this.colCustomerStyleNo.Width = 101;
            // 
            // colSalesOrderLine
            // 
            this.colSalesOrderLine.Caption = "SalesOrderLine";
            this.colSalesOrderLine.FieldName = "SalesOrderLine";
            this.colSalesOrderLine.Name = "colSalesOrderLine";
            this.colSalesOrderLine.OptionsColumn.AllowEdit = false;
            // 
            // colRWOCreateDate
            // 
            this.colRWOCreateDate.Caption = "RWO Create Date";
            this.colRWOCreateDate.FieldName = "RWOCreateDate";
            this.colRWOCreateDate.Name = "colRWOCreateDate";
            this.colRWOCreateDate.OptionsColumn.AllowEdit = false;
            this.colRWOCreateDate.Visible = true;
            this.colRWOCreateDate.VisibleIndex = 9;
            this.colRWOCreateDate.Width = 122;
            // 
            // colAmendDate
            // 
            this.colAmendDate.Caption = "Amend Date";
            this.colAmendDate.FieldName = "AmendDate";
            this.colAmendDate.Name = "colAmendDate";
            this.colAmendDate.OptionsColumn.AllowEdit = false;
            this.colAmendDate.Width = 91;
            // 
            // colWOReviseDate
            // 
            this.colWOReviseDate.Caption = "RWO Revise Date";
            this.colWOReviseDate.FieldName = "WOReviseDate";
            this.colWOReviseDate.Name = "colWOReviseDate";
            this.colWOReviseDate.OptionsColumn.AllowEdit = false;
            this.colWOReviseDate.Visible = true;
            this.colWOReviseDate.VisibleIndex = 10;
            this.colWOReviseDate.Width = 121;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.OptionsColumn.AllowEdit = false;
            // 
            // colFactoryWorkStartDate
            // 
            this.colFactoryWorkStartDate.Caption = "FW Start Date";
            this.colFactoryWorkStartDate.FieldName = "FactoryWorkStartDate";
            this.colFactoryWorkStartDate.Name = "colFactoryWorkStartDate";
            this.colFactoryWorkStartDate.OptionsColumn.AllowEdit = false;
            this.colFactoryWorkStartDate.Visible = true;
            this.colFactoryWorkStartDate.VisibleIndex = 11;
            this.colFactoryWorkStartDate.Width = 107;
            // 
            // colLineWorkStartDate
            // 
            this.colLineWorkStartDate.Caption = "LW Start Date";
            this.colLineWorkStartDate.FieldName = "LineWorkStartDate";
            this.colLineWorkStartDate.Name = "colLineWorkStartDate";
            this.colLineWorkStartDate.OptionsColumn.AllowEdit = false;
            this.colLineWorkStartDate.Visible = true;
            this.colLineWorkStartDate.VisibleIndex = 12;
            this.colLineWorkStartDate.Width = 105;
            // 
            // colT3Date
            // 
            this.colT3Date.Caption = "T3 Date";
            this.colT3Date.FieldName = "T3Date";
            this.colT3Date.Name = "colT3Date";
            this.colT3Date.OptionsColumn.AllowEdit = false;
            this.colT3Date.Visible = true;
            this.colT3Date.VisibleIndex = 13;
            // 
            // colAjustT3Date
            // 
            this.colAjustT3Date.Caption = "AdjustT3Date";
            this.colAjustT3Date.FieldName = "AdjustT3Date";
            this.colAjustT3Date.Name = "colAjustT3Date";
            this.colAjustT3Date.OptionsColumn.AllowEdit = false;
            this.colAjustT3Date.Visible = true;
            this.colAjustT3Date.VisibleIndex = 14;
            this.colAjustT3Date.Width = 103;
            // 
            // colAjustT3DateConfirm
            // 
            this.colAjustT3DateConfirm.Caption = "AdjustT3DateConfirm";
            this.colAjustT3DateConfirm.FieldName = "AjustT3DateConfirm";
            this.colAjustT3DateConfirm.Name = "colAjustT3DateConfirm";
            this.colAjustT3DateConfirm.OptionsColumn.AllowEdit = false;
            this.colAjustT3DateConfirm.Visible = true;
            this.colAjustT3DateConfirm.VisibleIndex = 15;
            this.colAjustT3DateConfirm.Width = 146;
            // 
            // colFCLExFtyDate
            // 
            this.colFCLExFtyDate.Caption = "FCL ExFty Date";
            this.colFCLExFtyDate.FieldName = "FCLExFtyDate";
            this.colFCLExFtyDate.Name = "colFCLExFtyDate";
            this.colFCLExFtyDate.OptionsColumn.AllowEdit = false;
            this.colFCLExFtyDate.Visible = true;
            this.colFCLExFtyDate.VisibleIndex = 16;
            this.colFCLExFtyDate.Width = 111;
            // 
            // colLCLExFtyDate
            // 
            this.colLCLExFtyDate.Caption = "LCL ExFty Date";
            this.colLCLExFtyDate.FieldName = "LCLExFtyDate";
            this.colLCLExFtyDate.Name = "colLCLExFtyDate";
            this.colLCLExFtyDate.OptionsColumn.AllowEdit = false;
            this.colLCLExFtyDate.Visible = true;
            this.colLCLExFtyDate.VisibleIndex = 17;
            this.colLCLExFtyDate.Width = 110;
            // 
            // colOAConfirm
            // 
            this.colOAConfirm.Caption = "OA";
            this.colOAConfirm.FieldName = "OAConfirm";
            this.colOAConfirm.Name = "colOAConfirm";
            this.colOAConfirm.OptionsColumn.AllowEdit = false;
            this.colOAConfirm.Visible = true;
            this.colOAConfirm.VisibleIndex = 18;
            this.colOAConfirm.Width = 86;
            // 
            // colOAConfirmDate
            // 
            this.colOAConfirmDate.Caption = "Date(OA)";
            this.colOAConfirmDate.FieldName = "OAConfirmDate";
            this.colOAConfirmDate.Name = "colOAConfirmDate";
            this.colOAConfirmDate.OptionsColumn.AllowEdit = false;
            this.colOAConfirmDate.Visible = true;
            this.colOAConfirmDate.VisibleIndex = 19;
            this.colOAConfirmDate.Width = 85;
            // 
            // colHeaderConfirm
            // 
            this.colHeaderConfirm.Caption = "Mer Mgr";
            this.colHeaderConfirm.FieldName = "HeaderConfirm";
            this.colHeaderConfirm.Name = "colHeaderConfirm";
            this.colHeaderConfirm.OptionsColumn.AllowEdit = false;
            this.colHeaderConfirm.Visible = true;
            this.colHeaderConfirm.VisibleIndex = 24;
            this.colHeaderConfirm.Width = 110;
            // 
            // colHeaderConfirmDate
            // 
            this.colHeaderConfirmDate.Caption = "Date(Mer.Mgr)";
            this.colHeaderConfirmDate.FieldName = "HeaderConfirmDate";
            this.colHeaderConfirmDate.Name = "colHeaderConfirmDate";
            this.colHeaderConfirmDate.OptionsColumn.AllowEdit = false;
            this.colHeaderConfirmDate.Visible = true;
            this.colHeaderConfirmDate.VisibleIndex = 25;
            this.colHeaderConfirmDate.Width = 136;
            // 
            // colTopConfirm
            // 
            this.colTopConfirm.Caption = "Fty Sr Mgr";
            this.colTopConfirm.FieldName = "TopConfirm";
            this.colTopConfirm.Name = "colTopConfirm";
            this.colTopConfirm.OptionsColumn.AllowEdit = false;
            this.colTopConfirm.Visible = true;
            this.colTopConfirm.VisibleIndex = 22;
            this.colTopConfirm.Width = 90;
            // 
            // colTopConfirmDate
            // 
            this.colTopConfirmDate.Caption = "Date(Top)";
            this.colTopConfirmDate.FieldName = "TopConfirmDate";
            this.colTopConfirmDate.Name = "colTopConfirmDate";
            this.colTopConfirmDate.OptionsColumn.AllowEdit = false;
            this.colTopConfirmDate.Visible = true;
            this.colTopConfirmDate.VisibleIndex = 23;
            this.colTopConfirmDate.Width = 123;
            // 
            // colPPCConfirm
            // 
            this.colPPCConfirm.Caption = "Fty PPC";
            this.colPPCConfirm.FieldName = "PPCConfirm";
            this.colPPCConfirm.Name = "colPPCConfirm";
            this.colPPCConfirm.OptionsColumn.AllowEdit = false;
            this.colPPCConfirm.Visible = true;
            this.colPPCConfirm.VisibleIndex = 20;
            this.colPPCConfirm.Width = 87;
            // 
            // colPPCConfirmDate
            // 
            this.colPPCConfirmDate.Caption = "Date(PPC)";
            this.colPPCConfirmDate.FieldName = "PPCConfirmDate";
            this.colPPCConfirmDate.Name = "colPPCConfirmDate";
            this.colPPCConfirmDate.OptionsColumn.AllowEdit = false;
            this.colPPCConfirmDate.Visible = true;
            this.colPPCConfirmDate.VisibleIndex = 21;
            this.colPPCConfirmDate.Width = 85;
            // 
            // colUsers
            // 
            this.colUsers.Caption = "Users";
            this.colUsers.FieldName = "Users";
            this.colUsers.Name = "colUsers";
            this.colUsers.OptionsColumn.AllowEdit = false;
            // 
            // colNext
            // 
            this.colNext.Caption = "Next";
            this.colNext.FieldName = "Next";
            this.colNext.Name = "colNext";
            this.colNext.OptionsColumn.AllowEdit = false;
            // 
            // colCurrent
            // 
            this.colCurrent.Caption = "Current";
            this.colCurrent.FieldName = "Current";
            this.colCurrent.Name = "colCurrent";
            this.colCurrent.OptionsColumn.AllowEdit = false;
            // 
            // colFlag
            // 
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 0;
            this.colFlag.Width = 32;
            // 
            // btnReject
            // 
            this.btnReject.Caption = "Reject";
            this.btnReject.Id = 36;
            this.btnReject.Name = "btnReject";
            this.btnReject.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnReject_ItemClick);
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Clr#";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 5;
            this.colColorCode.Width = 51;
            // 
            // colRWO
            // 
            this.colRWO.Caption = "RWO#";
            this.colRWO.FieldName = "RWO";
            this.colRWO.Name = "colRWO";
            this.colRWO.OptionsColumn.AllowEdit = false;
            this.colRWO.Visible = true;
            this.colRWO.VisibleIndex = 6;
            this.colRWO.Width = 62;
            // 
            // RWORejectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "RWORejectListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colRWOCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendDate;
        private DevExpress.XtraGrid.Columns.GridColumn colWOReviseDate;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryWorkStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn colLineWorkStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn colT3Date;
        private DevExpress.XtraGrid.Columns.GridColumn colAjustT3Date;
        private DevExpress.XtraGrid.Columns.GridColumn colAjustT3DateConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colFCLExFtyDate;
        private DevExpress.XtraGrid.Columns.GridColumn colLCLExFtyDate;
        private DevExpress.XtraGrid.Columns.GridColumn colOAConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colOAConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colHeaderConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colHeaderConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colTopConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colTopConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPPCConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colPPCConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colUsers;
        private DevExpress.XtraGrid.Columns.GridColumn colNext;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrent;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraBars.BarButtonItem btnReject;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colRWO;
    }
}
