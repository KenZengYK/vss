namespace PH.SPC.UI
{
    partial class Form1
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode3 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode4 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode5 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode6 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode7 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode8 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode9 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode10 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode11 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode12 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode13 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode14 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode15 = new DevExpress.XtraGrid.GridLevelNode();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.colSampleOrderID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDueDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleOrderRank = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleOrderType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTable = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCompleteDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsComplete = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGarment1stDelDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSamplerOrderOther = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPhase = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustDept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactoryStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colShipmentDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrentDataContext = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBOWorkMode = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource1;
            this.gridControl1.EmbeddedNavigator.Name = "";
            gridLevelNode3.RelationName = "CurrentBindingSource";
            gridLevelNode2.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode3});
            gridLevelNode2.RelationName = "StyleBOMs";
            gridLevelNode5.RelationName = "CurrentBindingSource";
            gridLevelNode4.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode5});
            gridLevelNode4.RelationName = "StyleSampleProgressSheets";
            gridLevelNode9.RelationName = "CurrentBindingSource";
            gridLevelNode8.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode9});
            gridLevelNode8.RelationName = "StyleProduceRemarks";
            gridLevelNode11.RelationName = "CurrentBindingSource";
            gridLevelNode10.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode11});
            gridLevelNode10.RelationName = "StyleSizes";
            gridLevelNode12.RelationName = "CurrentBindingSource";
            gridLevelNode7.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode8,
            gridLevelNode10,
            gridLevelNode12});
            gridLevelNode7.RelationName = "StyleSortEditions";
            gridLevelNode13.RelationName = "CurrentBindingSource";
            gridLevelNode6.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode7,
            gridLevelNode13});
            gridLevelNode6.RelationName = "StyleSorts";
            gridLevelNode14.RelationName = "CurrentBindingSource";
            gridLevelNode1.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode2,
            gridLevelNode4,
            gridLevelNode6,
            gridLevelNode14});
            gridLevelNode1.RelationName = "Styles";
            gridLevelNode15.RelationName = "CurrentBindingSource";
            this.gridControl1.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1,
            gridLevelNode15});
            this.gridControl1.Location = new System.Drawing.Point(12, 12);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(518, 381);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1,
            this.gridView2});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSampleOrderID,
            this.colProjectID,
            this.colCustomerID,
            this.colDueDate,
            this.colSampleOrderRank,
            this.colSampleOrderType,
            this.colConfirm,
            this.colTable,
            this.colProjectNo,
            this.colCompleteDate,
            this.colIsComplete,
            this.colGarment1stDelDate,
            this.colSamplerOrderOther,
            this.colPhase,
            this.colCustDept,
            this.colFactoryStartDate,
            this.colShipmentDate,
            this.colCurrentDataContext,
            this.colBOWorkMode});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            // 
            // gridView2
            // 
            this.gridView2.GridControl = this.gridControl1;
            this.gridView2.Name = "gridView2";
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.SPC.BO.SampleOrder);
            // 
            // colSampleOrderID
            // 
            this.colSampleOrderID.Caption = "SampleOrderID";
            this.colSampleOrderID.FieldName = "SampleOrderID";
            this.colSampleOrderID.Name = "colSampleOrderID";
            this.colSampleOrderID.Visible = true;
            this.colSampleOrderID.VisibleIndex = 0;
            // 
            // colProjectID
            // 
            this.colProjectID.Caption = "ProjectID";
            this.colProjectID.FieldName = "ProjectID";
            this.colProjectID.Name = "colProjectID";
            this.colProjectID.Visible = true;
            this.colProjectID.VisibleIndex = 1;
            // 
            // colCustomerID
            // 
            this.colCustomerID.Caption = "CustomerID";
            this.colCustomerID.FieldName = "CustomerID";
            this.colCustomerID.Name = "colCustomerID";
            this.colCustomerID.Visible = true;
            this.colCustomerID.VisibleIndex = 2;
            // 
            // colDueDate
            // 
            this.colDueDate.Caption = "DueDate";
            this.colDueDate.FieldName = "DueDate";
            this.colDueDate.Name = "colDueDate";
            this.colDueDate.Visible = true;
            this.colDueDate.VisibleIndex = 3;
            // 
            // colSampleOrderRank
            // 
            this.colSampleOrderRank.Caption = "SampleOrderRank";
            this.colSampleOrderRank.FieldName = "SampleOrderRank";
            this.colSampleOrderRank.Name = "colSampleOrderRank";
            this.colSampleOrderRank.Visible = true;
            this.colSampleOrderRank.VisibleIndex = 4;
            // 
            // colSampleOrderType
            // 
            this.colSampleOrderType.Caption = "SampleOrderType";
            this.colSampleOrderType.FieldName = "SampleOrderType";
            this.colSampleOrderType.Name = "colSampleOrderType";
            this.colSampleOrderType.Visible = true;
            this.colSampleOrderType.VisibleIndex = 5;
            // 
            // colConfirm
            // 
            this.colConfirm.Caption = "Confirm";
            this.colConfirm.FieldName = "Confirm";
            this.colConfirm.Name = "colConfirm";
            this.colConfirm.Visible = true;
            this.colConfirm.VisibleIndex = 6;
            // 
            // colTable
            // 
            this.colTable.Caption = "Table";
            this.colTable.FieldName = "Table";
            this.colTable.Name = "colTable";
            this.colTable.Visible = true;
            this.colTable.VisibleIndex = 7;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "ProjectNo";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 8;
            // 
            // colCompleteDate
            // 
            this.colCompleteDate.Caption = "CompleteDate";
            this.colCompleteDate.FieldName = "CompleteDate";
            this.colCompleteDate.Name = "colCompleteDate";
            this.colCompleteDate.Visible = true;
            this.colCompleteDate.VisibleIndex = 9;
            // 
            // colIsComplete
            // 
            this.colIsComplete.Caption = "IsComplete";
            this.colIsComplete.FieldName = "IsComplete";
            this.colIsComplete.Name = "colIsComplete";
            this.colIsComplete.Visible = true;
            this.colIsComplete.VisibleIndex = 10;
            // 
            // colGarment1stDelDate
            // 
            this.colGarment1stDelDate.Caption = "Garment1stDelDate";
            this.colGarment1stDelDate.FieldName = "Garment1stDelDate";
            this.colGarment1stDelDate.Name = "colGarment1stDelDate";
            this.colGarment1stDelDate.Visible = true;
            this.colGarment1stDelDate.VisibleIndex = 11;
            // 
            // colSamplerOrderOther
            // 
            this.colSamplerOrderOther.Caption = "SamplerOrderOther";
            this.colSamplerOrderOther.FieldName = "SamplerOrderOther";
            this.colSamplerOrderOther.Name = "colSamplerOrderOther";
            this.colSamplerOrderOther.Visible = true;
            this.colSamplerOrderOther.VisibleIndex = 12;
            // 
            // colPhase
            // 
            this.colPhase.Caption = "Phase";
            this.colPhase.FieldName = "Phase";
            this.colPhase.Name = "colPhase";
            this.colPhase.Visible = true;
            this.colPhase.VisibleIndex = 13;
            // 
            // colCustDept
            // 
            this.colCustDept.Caption = "CustDept";
            this.colCustDept.FieldName = "CustDept";
            this.colCustDept.Name = "colCustDept";
            this.colCustDept.Visible = true;
            this.colCustDept.VisibleIndex = 14;
            // 
            // colFactoryStartDate
            // 
            this.colFactoryStartDate.Caption = "FactoryStartDate";
            this.colFactoryStartDate.FieldName = "FactoryStartDate";
            this.colFactoryStartDate.Name = "colFactoryStartDate";
            this.colFactoryStartDate.Visible = true;
            this.colFactoryStartDate.VisibleIndex = 15;
            // 
            // colShipmentDate
            // 
            this.colShipmentDate.Caption = "ShipmentDate";
            this.colShipmentDate.FieldName = "ShipmentDate";
            this.colShipmentDate.Name = "colShipmentDate";
            this.colShipmentDate.Visible = true;
            this.colShipmentDate.VisibleIndex = 16;
            // 
            // colCurrentDataContext
            // 
            this.colCurrentDataContext.Caption = "CurrentDataContext";
            this.colCurrentDataContext.FieldName = "CurrentDataContext";
            this.colCurrentDataContext.Name = "colCurrentDataContext";
            this.colCurrentDataContext.Visible = true;
            this.colCurrentDataContext.VisibleIndex = 17;
            // 
            // colBOWorkMode
            // 
            this.colBOWorkMode.Caption = "BOWorkMode";
            this.colBOWorkMode.FieldName = "BOWorkMode";
            this.colBOWorkMode.Name = "colBOWorkMode";
            this.colBOWorkMode.Visible = true;
            this.colBOWorkMode.VisibleIndex = 18;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(534, 421);
            this.Controls.Add(this.gridControl1);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleOrderID;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectID;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerID;
        private DevExpress.XtraGrid.Columns.GridColumn colDueDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleOrderRank;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleOrderType;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colTable;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCompleteDate;
        private DevExpress.XtraGrid.Columns.GridColumn colIsComplete;
        private DevExpress.XtraGrid.Columns.GridColumn colGarment1stDelDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSamplerOrderOther;
        private DevExpress.XtraGrid.Columns.GridColumn colPhase;
        private DevExpress.XtraGrid.Columns.GridColumn colCustDept;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn colShipmentDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrentDataContext;
        private DevExpress.XtraGrid.Columns.GridColumn colBOWorkMode;
    }
}