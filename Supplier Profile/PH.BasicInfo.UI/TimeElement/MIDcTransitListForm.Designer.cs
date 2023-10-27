namespace PH.BasicInfo.UI.TimeElement
{
    partial class MIDcTransitListForm
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
            this.colPHFactories = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsLCL = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox3 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colIncoterms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncotermsPointPort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPointofDestination = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOverseaInlandCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOverseaFreightCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHKInlandCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHK2SLTransportCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSL2FJTransportCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHK2KBOceanFreightCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThaiInlandCost = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.repositoryItemLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.repositoryItemCheckedComboBoxEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit();
            this.repositoryItemRadioGroup1 = new DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup();
            this.repositoryItemImageComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckedComboBoxEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.MIDcTransit);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1,
            this.repositoryItemComboBox2,
            this.repositoryItemLookUpEdit1,
            this.repositoryItemComboBox3,
            this.repositoryItemCheckedComboBoxEdit1,
            this.repositoryItemRadioGroup1,
            this.repositoryItemImageComboBox1});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colPHFactories,
            this.colIncoterms,
            this.colTransitMode,
            this.colIsLCL,
            this.colIncotermsPointPort,
            this.colPointofDestination,
            this.colOverseaInlandCost,
            this.colOverseaFreightCost,
            this.colHKInlandCost,
            this.colHK2SLTransportCost,
            this.colSL2FJTransportCost,
            this.colHK2KBOceanFreightCost,
            this.colThaiInlandCost});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colPHFactories
            // 
            this.colPHFactories.Caption = "Byr Pro Site";
            this.colPHFactories.FieldName = "PHFactories";
            this.colPHFactories.Name = "colPHFactories";
            this.colPHFactories.Visible = true;
            this.colPHFactories.VisibleIndex = 0;
            // 
            // colIsLCL
            // 
            this.colIsLCL.Caption = "LCL / FCL";
            this.colIsLCL.ColumnEdit = this.repositoryItemImageComboBox1;
            this.colIsLCL.FieldName = "IsLCL";
            this.colIsLCL.Name = "colIsLCL";
            this.colIsLCL.Visible = true;
            this.colIsLCL.VisibleIndex = 3;
            this.colIsLCL.Width = 78;
            // 
            // repositoryItemComboBox3
            // 
            this.repositoryItemComboBox3.AutoHeight = false;
            this.repositoryItemComboBox3.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox3.Items.AddRange(new object[] {
            "FCL=0",
            "LCL=1"});
            this.repositoryItemComboBox3.Name = "repositoryItemComboBox3";
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "LCL",
            "FCL"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // colIncoterms
            // 
            this.colIncoterms.Caption = "Incoterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            this.colIncoterms.Visible = true;
            this.colIncoterms.VisibleIndex = 1;
            // 
            // colTransitMode
            // 
            this.colTransitMode.Caption = "Transit Mode";
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.Visible = true;
            this.colTransitMode.VisibleIndex = 2;
            // 
            // colIncotermsPointPort
            // 
            this.colIncotermsPointPort.Caption = "Transit Point";
            this.colIncotermsPointPort.FieldName = "IncotermsPointPort";
            this.colIncotermsPointPort.Name = "colIncotermsPointPort";
            this.colIncotermsPointPort.Visible = true;
            this.colIncotermsPointPort.VisibleIndex = 4;
            // 
            // colPointofDestination
            // 
            this.colPointofDestination.Caption = "Point of Destination";
            this.colPointofDestination.FieldName = "PointofDestination";
            this.colPointofDestination.Name = "colPointofDestination";
            this.colPointofDestination.Visible = true;
            this.colPointofDestination.VisibleIndex = 5;
            // 
            // colOverseaInlandCost
            // 
            this.colOverseaInlandCost.Caption = "Oversea Inland Cost";
            this.colOverseaInlandCost.FieldName = "OverseaInlandCost";
            this.colOverseaInlandCost.Name = "colOverseaInlandCost";
            this.colOverseaInlandCost.Visible = true;
            this.colOverseaInlandCost.VisibleIndex = 6;
            // 
            // colOverseaFreightCost
            // 
            this.colOverseaFreightCost.Caption = "Oversea Freight Cost";
            this.colOverseaFreightCost.FieldName = "OverseaFreightCost";
            this.colOverseaFreightCost.Name = "colOverseaFreightCost";
            this.colOverseaFreightCost.Visible = true;
            this.colOverseaFreightCost.VisibleIndex = 7;
            // 
            // colHKInlandCost
            // 
            this.colHKInlandCost.Caption = "HK Inland Cost(Code 9 to 1)";
            this.colHKInlandCost.FieldName = "HKInlandCost";
            this.colHKInlandCost.Name = "colHKInlandCost";
            this.colHKInlandCost.Visible = true;
            this.colHKInlandCost.VisibleIndex = 8;
            // 
            // colHK2SLTransportCost
            // 
            this.colHK2SLTransportCost.Caption = "HK to SLTransport Cost(Code 1 to 2)";
            this.colHK2SLTransportCost.FieldName = "HK2SLTransportCost";
            this.colHK2SLTransportCost.Name = "colHK2SLTransportCost";
            this.colHK2SLTransportCost.Visible = true;
            this.colHK2SLTransportCost.VisibleIndex = 9;
            // 
            // colSL2FJTransportCost
            // 
            this.colSL2FJTransportCost.Caption = "SL to FJ Transport Cost(Code 2 to 4)";
            this.colSL2FJTransportCost.FieldName = "SL2FJTransportCost";
            this.colSL2FJTransportCost.Name = "colSL2FJTransportCost";
            this.colSL2FJTransportCost.Visible = true;
            this.colSL2FJTransportCost.VisibleIndex = 10;
            // 
            // colHK2KBOceanFreightCost
            // 
            this.colHK2KBOceanFreightCost.Caption = "HK to Thai Ocean Freight Cost(Code 2 to 4)";
            this.colHK2KBOceanFreightCost.FieldName = "HK2KBOceanFreightCost";
            this.colHK2KBOceanFreightCost.Name = "colHK2KBOceanFreightCost";
            this.colHK2KBOceanFreightCost.Visible = true;
            this.colHK2KBOceanFreightCost.VisibleIndex = 11;
            // 
            // colThaiInlandCost
            // 
            this.colThaiInlandCost.Caption = "Thai Inland Cost";
            this.colThaiInlandCost.FieldName = "ThaiInlandCost";
            this.colThaiInlandCost.Name = "colThaiInlandCost";
            this.colThaiInlandCost.Visible = true;
            this.colThaiInlandCost.VisibleIndex = 12;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // repositoryItemLookUpEdit1
            // 
            this.repositoryItemLookUpEdit1.AutoHeight = false;
            this.repositoryItemLookUpEdit1.Name = "repositoryItemLookUpEdit1";
            // 
            // repositoryItemCheckedComboBoxEdit1
            // 
            this.repositoryItemCheckedComboBoxEdit1.AutoHeight = false;
            this.repositoryItemCheckedComboBoxEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemCheckedComboBoxEdit1.Name = "repositoryItemCheckedComboBoxEdit1";
            // 
            // repositoryItemRadioGroup1
            // 
            this.repositoryItemRadioGroup1.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "LCL"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "FCL")});
            this.repositoryItemRadioGroup1.Name = "repositoryItemRadioGroup1";
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
            // MIDcTransitListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MIDcTransitListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckedComboBoxEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colPHFactories;
        private DevExpress.XtraGrid.Columns.GridColumn colIsLCL;
        private DevExpress.XtraGrid.Columns.GridColumn colIncoterms;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitMode;
        private DevExpress.XtraGrid.Columns.GridColumn colIncotermsPointPort;
        private DevExpress.XtraGrid.Columns.GridColumn colPointofDestination;
        private DevExpress.XtraGrid.Columns.GridColumn colOverseaInlandCost;
        private DevExpress.XtraGrid.Columns.GridColumn colOverseaFreightCost;
        private DevExpress.XtraGrid.Columns.GridColumn colHKInlandCost;
        private DevExpress.XtraGrid.Columns.GridColumn colHK2SLTransportCost;
        private DevExpress.XtraGrid.Columns.GridColumn colSL2FJTransportCost;
        private DevExpress.XtraGrid.Columns.GridColumn colHK2KBOceanFreightCost;
        private DevExpress.XtraGrid.Columns.GridColumn colThaiInlandCost;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repositoryItemLookUpEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox3;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit repositoryItemCheckedComboBoxEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup repositoryItemRadioGroup1;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox1;
    }
}
