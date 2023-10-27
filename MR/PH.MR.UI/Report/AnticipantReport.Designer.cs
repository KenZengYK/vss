namespace PH.MR.UI.Report
{
    partial class AnticipantReport
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
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bar2 = new DevExpress.XtraBars.Bar();
            this.bar3 = new DevExpress.XtraBars.Bar();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.editProject = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.btnPrintInQty = new DevExpress.XtraEditors.SimpleButton();
            this.gcProject = new DevExpress.XtraGrid.GridControl();
            this.bsAnticipantMR = new System.Windows.Forms.BindingSource(this.components);
            this.gvProject = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcSaleOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWorkorder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStylecolor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcItemRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcItemColor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWastage = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWoqty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcMRQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcUPX = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcYY_Per = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStock = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStock_Ready = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcReservedPO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSolineref = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcItemno = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcParentNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcACountValue = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnGetData = new DevExpress.XtraEditors.SimpleButton();
            this.btnPrintInValue = new DevExpress.XtraEditors.SimpleButton();
            this.panel1 = new System.Windows.Forms.Panel();
            this.splitter1 = new System.Windows.Forms.Splitter();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.btnGetMRData = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcProject)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsAnticipantMR)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvProject)).BeginInit();
            this.panel1.SuspendLayout();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.SuspendLayout();
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar2,
            this.bar3});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnPrint});
            this.barManager1.MainMenu = this.bar2;
            this.barManager1.MaxItemId = 1;
            this.barManager1.StatusBar = this.bar3;
            // 
            // bar2
            // 
            this.bar2.BarName = "Main menu";
            this.bar2.DockCol = 0;
            this.bar2.DockRow = 0;
            this.bar2.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar2.OptionsBar.MultiLine = true;
            this.bar2.OptionsBar.UseWholeRow = true;
            this.bar2.Text = "Main menu";
            // 
            // bar3
            // 
            this.bar3.BarName = "Status bar";
            this.bar3.CanDockStyle = DevExpress.XtraBars.BarCanDockStyle.Bottom;
            this.bar3.DockCol = 0;
            this.bar3.DockRow = 0;
            this.bar3.DockStyle = DevExpress.XtraBars.BarDockStyle.Bottom;
            this.bar3.OptionsBar.AllowQuickCustomization = false;
            this.bar3.OptionsBar.DrawDragBorder = false;
            this.bar3.OptionsBar.UseWholeRow = true;
            this.bar3.Text = "Status bar";
            this.bar3.Visible = false;
            // 
            // barDockControlTop
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlTop, null);
            // 
            // barDockControlBottom
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlBottom, null);
            // 
            // barDockControlLeft
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlLeft, null);
            // 
            // barDockControlRight
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlRight, null);
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print AnticipantMR Report";
            this.btnPrint.Id = 0;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // editProject
            // 
            this.editProject.Location = new System.Drawing.Point(163, 19);
            this.editProject.Name = "editProject";
            this.editProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editProject.Size = new System.Drawing.Size(147, 21);
            this.editProject.TabIndex = 18;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(86, 24);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 21;
            this.label2.Text = "Project No.";
            // 
            // btnPrintInQty
            // 
            this.btnPrintInQty.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnPrintInQty.Location = new System.Drawing.Point(34, 9);
            this.btnPrintInQty.Name = "btnPrintInQty";
            this.btnPrintInQty.Size = new System.Drawing.Size(189, 29);
            this.btnPrintInQty.TabIndex = 22;
            this.btnPrintInQty.Text = "Aniticpated Working  MR In Qty";
            this.btnPrintInQty.Click += new System.EventHandler(this.btnPrintInQty_Click);
            // 
            // gcProject
            // 
            this.gcProject.AllowDrop = true;
            this.gcProject.DataSource = this.bsAnticipantMR;
            this.gcProject.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcProject.EmbeddedNavigator.Name = "";
            this.gcProject.Location = new System.Drawing.Point(0, 0);
            this.gcProject.MainView = this.gvProject;
            this.gcProject.Name = "gcProject";
            this.gcProject.Size = new System.Drawing.Size(1559, 441);
            this.gcProject.TabIndex = 23;
            this.gcProject.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvProject});
            // 
            // bsAnticipantMR
            // 
            this.bsAnticipantMR.DataSource = typeof(PH.MR.BO.AnticipantMR);
            // 
            // gvProject
            // 
            this.gvProject.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcSaleOrder,
            this.gcProjectNo,
            this.gcWorkorder,
            this.gcStyleNo,
            this.gcStylecolor,
            this.gcItemRef,
            this.gcItemColor,
            this.gcUnit,
            this.gcWastage,
            this.gcWoqty,
            this.gcMRQty,
            this.gcUPX,
            this.gcYY_Per,
            this.gcStock,
            this.gcStock_Ready,
            this.gcReservedPO,
            this.gcSolineref,
            this.gcItemno,
            this.gcParentNo,
            this.gcDate,
            this.gcACountValue});
            this.gvProject.GridControl = this.gcProject;
            this.gvProject.GroupPanelText = "Grand total of item Qty:";
            this.gvProject.HorzScrollVisibility = DevExpress.XtraGrid.Views.Base.ScrollVisibility.Always;
            this.gvProject.Name = "gvProject";
            this.gvProject.OptionsBehavior.AutoSelectAllInEditor = false;
            this.gvProject.OptionsBehavior.Editable = false;
            this.gvProject.OptionsDetail.EnableMasterViewMode = false;
            this.gvProject.OptionsSelection.MultiSelect = true;
            this.gvProject.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.gvProject.OptionsSelection.UseIndicatorForSelection = false;
            this.gvProject.OptionsView.ColumnAutoWidth = false;
            this.gvProject.OptionsView.ShowFooter = true;
            this.gvProject.OptionsView.ShowGroupPanel = false;
            this.gvProject.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcWorkorder, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gcSaleOrder
            // 
            this.gcSaleOrder.Caption = "Sale Order";
            this.gcSaleOrder.FieldName = "Salesorder";
            this.gcSaleOrder.Name = "gcSaleOrder";
            this.gcSaleOrder.Visible = true;
            this.gcSaleOrder.VisibleIndex = 0;
            this.gcSaleOrder.Width = 80;
            // 
            // gcProjectNo
            // 
            this.gcProjectNo.Caption = "Porject";
            this.gcProjectNo.FieldName = "Projectno";
            this.gcProjectNo.Name = "gcProjectNo";
            this.gcProjectNo.Visible = true;
            this.gcProjectNo.VisibleIndex = 1;
            this.gcProjectNo.Width = 77;
            // 
            // gcWorkorder
            // 
            this.gcWorkorder.Caption = "WO No.";
            this.gcWorkorder.FieldName = "Workorderno";
            this.gcWorkorder.Name = "gcWorkorder";
            this.gcWorkorder.Visible = true;
            this.gcWorkorder.VisibleIndex = 2;
            this.gcWorkorder.Width = 85;
            // 
            // gcStyleNo
            // 
            this.gcStyleNo.Caption = "Style No.";
            this.gcStyleNo.FieldName = "Styleno";
            this.gcStyleNo.Name = "gcStyleNo";
            this.gcStyleNo.Visible = true;
            this.gcStyleNo.VisibleIndex = 3;
            // 
            // gcStylecolor
            // 
            this.gcStylecolor.Caption = "Clr Code";
            this.gcStylecolor.FieldName = "Style_color";
            this.gcStylecolor.Name = "gcStylecolor";
            this.gcStylecolor.Visible = true;
            this.gcStylecolor.VisibleIndex = 4;
            this.gcStylecolor.Width = 79;
            // 
            // gcItemRef
            // 
            this.gcItemRef.Caption = "Supplier Item Code";
            this.gcItemRef.FieldName = "Item_ref";
            this.gcItemRef.Name = "gcItemRef";
            this.gcItemRef.Visible = true;
            this.gcItemRef.VisibleIndex = 6;
            this.gcItemRef.Width = 121;
            // 
            // gcItemColor
            // 
            this.gcItemColor.Caption = "Item Clr Code";
            this.gcItemColor.FieldName = "Item_color";
            this.gcItemColor.Name = "gcItemColor";
            this.gcItemColor.Visible = true;
            this.gcItemColor.VisibleIndex = 7;
            this.gcItemColor.Width = 92;
            // 
            // gcUnit
            // 
            this.gcUnit.Caption = "Item\'s UOM";
            this.gcUnit.FieldName = "Unit";
            this.gcUnit.Name = "gcUnit";
            this.gcUnit.Visible = true;
            this.gcUnit.VisibleIndex = 10;
            this.gcUnit.Width = 96;
            // 
            // gcWastage
            // 
            this.gcWastage.Caption = "Wastage(%)";
            this.gcWastage.FieldName = "Wastage";
            this.gcWastage.Name = "gcWastage";
            this.gcWastage.Visible = true;
            this.gcWastage.VisibleIndex = 8;
            this.gcWastage.Width = 91;
            // 
            // gcWoqty
            // 
            this.gcWoqty.Caption = "WO Qty";
            this.gcWoqty.FieldName = "WO_Qty";
            this.gcWoqty.Name = "gcWoqty";
            this.gcWoqty.Visible = true;
            this.gcWoqty.VisibleIndex = 5;
            this.gcWoqty.Width = 78;
            // 
            // gcMRQty
            // 
            this.gcMRQty.Caption = "Total Item Qty";
            this.gcMRQty.FieldName = "MR_Qty";
            this.gcMRQty.GroupInterval = DevExpress.XtraGrid.ColumnGroupInterval.Value;
            this.gcMRQty.Name = "gcMRQty";
            this.gcMRQty.SummaryItem.DisplayFormat = "Total : {0}";
            this.gcMRQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.gcMRQty.Visible = true;
            this.gcMRQty.VisibleIndex = 11;
            this.gcMRQty.Width = 108;
            // 
            // gcUPX
            // 
            this.gcUPX.Caption = "PO Px(HK$)";
            this.gcUPX.FieldName = "UPX";
            this.gcUPX.Name = "gcUPX";
            this.gcUPX.Visible = true;
            this.gcUPX.VisibleIndex = 15;
            this.gcUPX.Width = 78;
            // 
            // gcYY_Per
            // 
            this.gcYY_Per.Caption = "YY Per";
            this.gcYY_Per.FieldName = "QTY_PER";
            this.gcYY_Per.Name = "gcYY_Per";
            this.gcYY_Per.Visible = true;
            this.gcYY_Per.VisibleIndex = 9;
            // 
            // gcStock
            // 
            this.gcStock.Caption = "Reserved open stock";
            this.gcStock.FieldName = "Res_stock";
            this.gcStock.Name = "gcStock";
            this.gcStock.Visible = true;
            this.gcStock.VisibleIndex = 12;
            this.gcStock.Width = 58;
            // 
            // gcStock_Ready
            // 
            this.gcStock_Ready.Caption = "Reserved open stock for re-dye";
            this.gcStock_Ready.FieldName = "Res_redye";
            this.gcStock_Ready.Name = "gcStock_Ready";
            this.gcStock_Ready.Visible = true;
            this.gcStock_Ready.VisibleIndex = 13;
            // 
            // gcReservedPO
            // 
            this.gcReservedPO.Caption = "Reserved open PO";
            this.gcReservedPO.FieldName = "Res_PO";
            this.gcReservedPO.Name = "gcReservedPO";
            this.gcReservedPO.Visible = true;
            this.gcReservedPO.VisibleIndex = 14;
            // 
            // gcSolineref
            // 
            this.gcSolineref.Caption = "SO Line Ref";
            this.gcSolineref.FieldName = "SO_line_ref";
            this.gcSolineref.Name = "gcSolineref";
            this.gcSolineref.Width = 89;
            // 
            // gcItemno
            // 
            this.gcItemno.Caption = "Item No";
            this.gcItemno.FieldName = "Itemno";
            this.gcItemno.Name = "gcItemno";
            this.gcItemno.Width = 67;
            // 
            // gcParentNo
            // 
            this.gcParentNo.Caption = "Parent WO";
            this.gcParentNo.FieldName = "PARENTWO";
            this.gcParentNo.Name = "gcParentNo";
            this.gcParentNo.Visible = true;
            this.gcParentNo.VisibleIndex = 17;
            this.gcParentNo.Width = 91;
            // 
            // gcDate
            // 
            this.gcDate.Caption = "Get Data Date";
            this.gcDate.FieldName = "OperDate";
            this.gcDate.Name = "gcDate";
            this.gcDate.Visible = true;
            this.gcDate.VisibleIndex = 18;
            // 
            // gcACountValue
            // 
            this.gcACountValue.AppearanceCell.Options.UseTextOptions = true;
            this.gcACountValue.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gcACountValue.AppearanceHeader.Options.UseTextOptions = true;
            this.gcACountValue.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gcACountValue.Caption = "Value (HK$)";
            this.gcACountValue.FieldName = "ACountValue";
            this.gcACountValue.Name = "gcACountValue";
            this.gcACountValue.SummaryItem.DisplayFormat = "Total : {0}";
            this.gcACountValue.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.gcACountValue.Visible = true;
            this.gcACountValue.VisibleIndex = 16;
            this.gcACountValue.Width = 97;
            // 
            // btnGetData
            // 
            this.btnGetData.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnGetData.Location = new System.Drawing.Point(418, 19);
            this.btnGetData.Name = "btnGetData";
            this.btnGetData.Size = new System.Drawing.Size(101, 21);
            this.btnGetData.TabIndex = 24;
            this.btnGetData.Text = "Get Data(old)";
            this.btnGetData.Click += new System.EventHandler(this.btnGetData_Click);
            // 
            // btnPrintInValue
            // 
            this.btnPrintInValue.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnPrintInValue.Location = new System.Drawing.Point(229, 8);
            this.btnPrintInValue.Name = "btnPrintInValue";
            this.btnPrintInValue.Size = new System.Drawing.Size(198, 29);
            this.btnPrintInValue.TabIndex = 25;
            this.btnPrintInValue.Text = "Aniticpated Working  MR In Value";
            this.btnPrintInValue.Click += new System.EventHandler(this.btnPrintInValue_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnPrintInValue);
            this.panel1.Controls.Add(this.btnPrintInQty);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 530);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1562, 48);
            this.PlatetoolTipController.SetSuperTip(this.panel1, null);
            this.panel1.TabIndex = 26;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // splitter1
            // 
            this.splitter1.Location = new System.Drawing.Point(0, 24);
            this.splitter1.Name = "splitter1";
            this.splitter1.Size = new System.Drawing.Size(3, 506);
            this.PlatetoolTipController.SetSuperTip(this.splitter1, null);
            this.splitter1.TabIndex = 28;
            this.splitter1.TabStop = false;
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.FixedPanel = System.Windows.Forms.FixedPanel.Panel1;
            this.splitContainer1.Location = new System.Drawing.Point(3, 24);
            this.splitContainer1.Name = "splitContainer1";
            this.splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.btnGetMRData);
            this.splitContainer1.Panel1.Controls.Add(this.editProject);
            this.splitContainer1.Panel1.Controls.Add(this.label2);
            this.splitContainer1.Panel1.Controls.Add(this.btnGetData);
            this.PlatetoolTipController.SetSuperTip(this.splitContainer1.Panel1, null);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.AllowDrop = true;
            this.splitContainer1.Panel2.AutoScroll = true;
            this.splitContainer1.Panel2.Controls.Add(this.gcProject);
            this.PlatetoolTipController.SetSuperTip(this.splitContainer1.Panel2, null);
            this.splitContainer1.Size = new System.Drawing.Size(1559, 506);
            this.splitContainer1.SplitterDistance = 61;
            this.PlatetoolTipController.SetSuperTip(this.splitContainer1, null);
            this.splitContainer1.TabIndex = 29;
            // 
            // btnGetMRData
            // 
            this.btnGetMRData.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnGetMRData.Location = new System.Drawing.Point(325, 19);
            this.btnGetMRData.Name = "btnGetMRData";
            this.btnGetMRData.Size = new System.Drawing.Size(69, 21);
            this.btnGetMRData.TabIndex = 25;
            this.btnGetMRData.Text = "Get Data";
            this.btnGetMRData.Click += new System.EventHandler(this.btnGetMRData_Click);
            // 
            // AnticipantReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.splitContainer1);
            this.Controls.Add(this.splitter1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "AnticipantReport";
            this.Size = new System.Drawing.Size(1562, 600);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.AnticipantReport_Load);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcProject)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsAnticipantMR)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvProject)).EndInit();
            this.panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bar2;
        private DevExpress.XtraBars.BarButtonItem btnPrint;
        private DevExpress.XtraBars.Bar bar3;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraEditors.TextEdit editProject;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.SimpleButton btnPrintInQty;
        private DevExpress.XtraGrid.GridControl gcProject;
        private DevExpress.XtraGrid.Views.Grid.GridView gvProject;
        private DevExpress.XtraEditors.SimpleButton btnGetData;
        private DevExpress.XtraEditors.SimpleButton btnPrintInValue;
        private DevExpress.XtraGrid.Columns.GridColumn gcSaleOrder;
        private DevExpress.XtraGrid.Columns.GridColumn gcProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcWorkorder;
        private DevExpress.XtraGrid.Columns.GridColumn gcSolineref;
        private DevExpress.XtraGrid.Columns.GridColumn gcParentNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcStylecolor;
        private DevExpress.XtraGrid.Columns.GridColumn gcItemno;
        private DevExpress.XtraGrid.Columns.GridColumn gcItemRef;
        private DevExpress.XtraGrid.Columns.GridColumn gcItemColor;
        private DevExpress.XtraGrid.Columns.GridColumn gcUnit;
        private DevExpress.XtraGrid.Columns.GridColumn gcWastage;
        private DevExpress.XtraGrid.Columns.GridColumn gcWoqty;
        private DevExpress.XtraGrid.Columns.GridColumn gcMRQty;
        private System.Windows.Forms.BindingSource bsAnticipantMR;
        private DevExpress.XtraGrid.Columns.GridColumn gcUPX;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.Splitter splitter1;
        private DevExpress.XtraGrid.Columns.GridColumn gcYY_Per;
        private DevExpress.XtraGrid.Columns.GridColumn gcStock;
        private DevExpress.XtraGrid.Columns.GridColumn gcStock_Ready;
        private DevExpress.XtraGrid.Columns.GridColumn gcReservedPO;
        private DevExpress.XtraGrid.Columns.GridColumn gcDate;
        private DevExpress.XtraEditors.SimpleButton btnGetMRData;
        private DevExpress.XtraGrid.Columns.GridColumn gcACountValue;
    }
}
