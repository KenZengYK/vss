namespace PH.BasicInfo.UI.TimeElement
{
    partial class ElementsOfTransportationCost
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.barBtnTransportationCostElement = new DevExpress.XtraBars.BarButtonItem();
            this.repositoryItemCheckEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colByProductionSite = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncoterm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsLCL = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitPoint = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPointOfDest = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPoint2PortOfOriginCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFreightCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPort2PointOfDestinationCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPointOfDestination2ProductionSiteCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnTransportationCostElement});
            this.objbarManager.MaxItemId = 55;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnTransportationCostElement)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.TransportationCostElement);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1,
            this.repositoryItemCheckEdit2,
            this.repositoryItemImageComboBox1});
            this.objListGridControl.Size = new System.Drawing.Size(852, 273);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colByProductionSite,
            this.colIncoterm,
            this.colTransitMode,
            this.colIsLCL,
            this.colTransitPoint,
            this.colPointOfDest,
            this.colPoint2PortOfOriginCost,
            this.colFreightCost,
            this.colPort2PointOfDestinationCost,
            this.colPointOfDestination2ProductionSiteCost});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // barBtnTransportationCostElement
            // 
            this.barBtnTransportationCostElement.Caption = "Element of Transportation Cost";
            this.barBtnTransportationCostElement.Id = 54;
            this.barBtnTransportationCostElement.Name = "barBtnTransportationCostElement";
            this.barBtnTransportationCostElement.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnTransportationCostElement_ItemClick);
            // 
            // repositoryItemCheckEdit2
            // 
            this.repositoryItemCheckEdit2.AutoHeight = false;
            this.repositoryItemCheckEdit2.Name = "repositoryItemCheckEdit2";
            // 
            // colByProductionSite
            // 
            this.colByProductionSite.Caption = "By Production Site";
            this.colByProductionSite.FieldName = "ByProductionSite";
            this.colByProductionSite.Name = "colByProductionSite";
            this.colByProductionSite.Visible = true;
            this.colByProductionSite.VisibleIndex = 0;
            // 
            // colIncoterm
            // 
            this.colIncoterm.Caption = "Incoterm";
            this.colIncoterm.FieldName = "Incoterm";
            this.colIncoterm.Name = "colIncoterm";
            this.colIncoterm.Visible = true;
            this.colIncoterm.VisibleIndex = 1;
            // 
            // colTransitMode
            // 
            this.colTransitMode.Caption = "Transit Mode";
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.Visible = true;
            this.colTransitMode.VisibleIndex = 2;
            // 
            // colIsLCL
            // 
            this.colIsLCL.Caption = "LCL / FCL";
            this.colIsLCL.ColumnEdit = this.repositoryItemImageComboBox1;
            this.colIsLCL.FieldName = "IsLCL";
            this.colIsLCL.Name = "colIsLCL";
            this.colIsLCL.Visible = true;
            this.colIsLCL.VisibleIndex = 3;
            // 
            // colTransitPoint
            // 
            this.colTransitPoint.Caption = "Transit Point";
            this.colTransitPoint.FieldName = "TransitPoint";
            this.colTransitPoint.Name = "colTransitPoint";
            this.colTransitPoint.Visible = true;
            this.colTransitPoint.VisibleIndex = 4;
            // 
            // colPointOfDest
            // 
            this.colPointOfDest.Caption = "Point Of Dest";
            this.colPointOfDest.FieldName = "PointOfDest";
            this.colPointOfDest.Name = "colPointOfDest";
            this.colPointOfDest.Visible = true;
            this.colPointOfDest.VisibleIndex = 5;
            // 
            // colPoint2PortOfOriginCost
            // 
            this.colPoint2PortOfOriginCost.Caption = "Point to Port Of Origin Cost";
            this.colPoint2PortOfOriginCost.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colPoint2PortOfOriginCost.FieldName = "Point2PortOfOriginCost";
            this.colPoint2PortOfOriginCost.Name = "colPoint2PortOfOriginCost";
            this.colPoint2PortOfOriginCost.Visible = true;
            this.colPoint2PortOfOriginCost.VisibleIndex = 6;
            this.colPoint2PortOfOriginCost.Width = 171;
            // 
            // colFreightCost
            // 
            this.colFreightCost.Caption = "Freight Cost";
            this.colFreightCost.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colFreightCost.FieldName = "FreightCost";
            this.colFreightCost.Name = "colFreightCost";
            this.colFreightCost.Visible = true;
            this.colFreightCost.VisibleIndex = 7;
            this.colFreightCost.Width = 99;
            // 
            // colPort2PointOfDestinationCost
            // 
            this.colPort2PointOfDestinationCost.Caption = "Port to Point Of Destination Cost";
            this.colPort2PointOfDestinationCost.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colPort2PointOfDestinationCost.FieldName = "Port2PointOfDestinationCost";
            this.colPort2PointOfDestinationCost.Name = "colPort2PointOfDestinationCost";
            this.colPort2PointOfDestinationCost.Visible = true;
            this.colPort2PointOfDestinationCost.VisibleIndex = 8;
            this.colPort2PointOfDestinationCost.Width = 104;
            // 
            // colPointOfDestination2ProductionSiteCost
            // 
            this.colPointOfDestination2ProductionSiteCost.Caption = "Point Of Destination to Production Site Cost";
            this.colPointOfDestination2ProductionSiteCost.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colPointOfDestination2ProductionSiteCost.FieldName = "PointOfDestination2ProductionSiteCost";
            this.colPointOfDestination2ProductionSiteCost.Name = "colPointOfDestination2ProductionSiteCost";
            this.colPointOfDestination2ProductionSiteCost.Visible = true;
            this.colPointOfDestination2ProductionSiteCost.VisibleIndex = 9;
            // 
            // repositoryItemImageComboBox1
            // 
            this.repositoryItemImageComboBox1.AutoHeight = false;
            this.repositoryItemImageComboBox1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox1.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("LCL", true, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("FCL", false, -1)});
            this.repositoryItemImageComboBox1.Name = "repositoryItemImageComboBox1";
            // 
            // ElementsOfTransportationCost
            // 
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ElementsOfTransportationCost";
            this.Size = new System.Drawing.Size(852, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraBars.BarButtonItem barBtnTransportationCostElement;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit2;
        private DevExpress.XtraGrid.Columns.GridColumn colByProductionSite;
        private DevExpress.XtraGrid.Columns.GridColumn colIncoterm;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitMode;
        private DevExpress.XtraGrid.Columns.GridColumn colIsLCL;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitPoint;
        private DevExpress.XtraGrid.Columns.GridColumn colPointOfDest;
        private DevExpress.XtraGrid.Columns.GridColumn colPoint2PortOfOriginCost;
        private DevExpress.XtraGrid.Columns.GridColumn colFreightCost;
        private DevExpress.XtraGrid.Columns.GridColumn colPort2PointOfDestinationCost;
        private DevExpress.XtraGrid.Columns.GridColumn colPointOfDestination2ProductionSiteCost;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox1;
    }
}
