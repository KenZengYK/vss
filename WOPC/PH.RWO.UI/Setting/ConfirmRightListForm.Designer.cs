namespace PH.RWO.UI
{
    partial class ConfirmRightListForm
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
            this.CustomerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Customers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Users = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Team = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Factory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Item = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNext = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrent = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPhase = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colisrwo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(892, 541);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.CustomerCode,
            this.Customers,
            this.Users,
            this.Team,
            this.Factory,
            this.colPhase,
            this.Item,
            this.colNext,
            this.colCurrent,
            this.colisrwo});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // CustomerCode
            // 
            this.CustomerCode.Caption = "Customer Code";
            this.CustomerCode.FieldName = "CustomerCode";
            this.CustomerCode.Name = "CustomerCode";
            this.CustomerCode.Visible = true;
            this.CustomerCode.VisibleIndex = 1;
            this.CustomerCode.Width = 128;
            // 
            // Customers
            // 
            this.Customers.Caption = "Customers";
            this.Customers.FieldName = "SubCustomers";
            this.Customers.Name = "Customers";
            this.Customers.Visible = true;
            this.Customers.VisibleIndex = 2;
            this.Customers.Width = 121;
            // 
            // Users
            // 
            this.Users.Caption = "Users";
            this.Users.FieldName = "Users";
            this.Users.Name = "Users";
            this.Users.Visible = true;
            this.Users.VisibleIndex = 5;
            this.Users.Width = 98;
            // 
            // Team
            // 
            this.Team.Caption = "Team";
            this.Team.FieldName = "Team";
            this.Team.Name = "Team";
            this.Team.Visible = true;
            this.Team.VisibleIndex = 6;
            this.Team.Width = 63;
            // 
            // Factory
            // 
            this.Factory.Caption = "Factory";
            this.Factory.FieldName = "Factory";
            this.Factory.Name = "Factory";
            this.Factory.Visible = true;
            this.Factory.VisibleIndex = 3;
            this.Factory.Width = 100;
            // 
            // Item
            // 
            this.Item.Caption = "Item";
            this.Item.FieldName = "Item";
            this.Item.Name = "Item";
            this.Item.Visible = true;
            this.Item.VisibleIndex = 4;
            this.Item.Width = 110;
            // 
            // colNext
            // 
            this.colNext.Caption = "Next";
            this.colNext.FieldName = "Next";
            this.colNext.Name = "colNext";
            // 
            // colCurrent
            // 
            this.colCurrent.Caption = "Current";
            this.colCurrent.FieldName = "Current";
            this.colCurrent.Name = "colCurrent";
            // 
            // colPhase
            // 
            this.colPhase.Caption = "Phase";
            this.colPhase.FieldName = "Phase";
            this.colPhase.Name = "colPhase";
            this.colPhase.Visible = true;
            this.colPhase.VisibleIndex = 0;
            this.colPhase.Width = 100;
            // 
            // colisrwo
            // 
            this.colisrwo.Caption = "WO/Cop WO";
            this.colisrwo.FieldName = "WORWO";
            this.colisrwo.Name = "colisrwo";
            this.colisrwo.OptionsColumn.AllowEdit = false;
            this.colisrwo.Visible = true;
            this.colisrwo.VisibleIndex = 7;
            this.colisrwo.Width = 119;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // ConfirmRightListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ConfirmRightListForm";
            this.Size = new System.Drawing.Size(892, 568);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ConfirmRightListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn CustomerCode;
        private DevExpress.XtraGrid.Columns.GridColumn Customers;
        private DevExpress.XtraGrid.Columns.GridColumn Users;
        private DevExpress.XtraGrid.Columns.GridColumn Team;
        private DevExpress.XtraGrid.Columns.GridColumn Factory;
        private DevExpress.XtraGrid.Columns.GridColumn Item;
        private DevExpress.XtraGrid.Columns.GridColumn colNext;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrent;
        private DevExpress.XtraGrid.Columns.GridColumn colPhase;
        private DevExpress.XtraGrid.Columns.GridColumn colisrwo;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
    }
}
