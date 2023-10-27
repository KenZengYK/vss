namespace PH.FabricInspection.UI.SupplierQE.Allover
{
    partial class sPictureListForm
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
            this.rItemHLinkEdit_ImgA = new DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit();
            this.rItemBtnEdit = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.rItemHLinkEdit_ImgB = new DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSystem_Install_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBroadNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colImg_A = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colImg_B = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSystem_Install_No1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBroadNo1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colImg_A1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colImg_B1 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rItemHLinkEdit_ImgA)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rItemBtnEdit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rItemHLinkEdit_ImgB)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.Fabric_Insp_Picture);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.rItemBtnEdit,
            this.rItemHLinkEdit_ImgA,
            this.rItemHLinkEdit_ImgB});
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView2});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSystem_Install_No1,
            this.colBroadNo1,
            this.colImg_A1,
            this.colImg_B1});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // rItemHLinkEdit_ImgA
            // 
            this.rItemHLinkEdit_ImgA.AutoHeight = false;
            this.rItemHLinkEdit_ImgA.Name = "rItemHLinkEdit_ImgA";
            this.rItemHLinkEdit_ImgA.DoubleClick += new System.EventHandler(this.rItemHLinkEdit_ImgA_DoubleClick);
            // 
            // rItemBtnEdit
            // 
            this.rItemBtnEdit.AutoHeight = false;
            this.rItemBtnEdit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.rItemBtnEdit.ButtonsStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.rItemBtnEdit.Name = "rItemBtnEdit";
            this.rItemBtnEdit.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            // 
            // rItemHLinkEdit_ImgB
            // 
            this.rItemHLinkEdit_ImgB.AutoHeight = false;
            this.rItemHLinkEdit_ImgB.Name = "rItemHLinkEdit_ImgB";
            this.rItemHLinkEdit_ImgB.DoubleClick += new System.EventHandler(this.rItemHLinkEdit_ImgB_DoubleClick);
            // 
            // gridControl1
            // 
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(239, 200);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(8, 8);
            this.gridControl1.TabIndex = 6;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            // 
            // gridView2
            // 
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSystem_Install_No,
            this.colBroadNo,
            this.colImg_A,
            this.colImg_B});
            this.gridView2.GridControl = this.objListGridControl;
            this.gridView2.Name = "gridView2";
            this.gridView2.OptionsBehavior.Editable = false;
            this.gridView2.OptionsDetail.EnableMasterViewMode = false;
            this.gridView2.OptionsPrint.AutoWidth = false;
            this.gridView2.OptionsView.ColumnAutoWidth = false;
            // 
            // colSystem_Install_No
            // 
            this.colSystem_Install_No.Caption = "System_Install_No";
            this.colSystem_Install_No.FieldName = "System_Install_No";
            this.colSystem_Install_No.Name = "colSystem_Install_No";
            this.colSystem_Install_No.Visible = true;
            this.colSystem_Install_No.VisibleIndex = 0;
            this.colSystem_Install_No.Width = 147;
            // 
            // colBroadNo
            // 
            this.colBroadNo.Caption = "BroadNo";
            this.colBroadNo.FieldName = "BroadNo";
            this.colBroadNo.Name = "colBroadNo";
            this.colBroadNo.Visible = true;
            this.colBroadNo.VisibleIndex = 1;
            this.colBroadNo.Width = 129;
            // 
            // colImg_A
            // 
            this.colImg_A.Caption = "Img_A";
            this.colImg_A.ColumnEdit = this.rItemHLinkEdit_ImgA;
            this.colImg_A.FieldName = "Img_A";
            this.colImg_A.ImageAlignment = System.Drawing.StringAlignment.Center;
            this.colImg_A.Name = "colImg_A";
            this.colImg_A.OptionsColumn.ReadOnly = true;
            this.colImg_A.Visible = true;
            this.colImg_A.VisibleIndex = 2;
            this.colImg_A.Width = 129;
            // 
            // colImg_B
            // 
            this.colImg_B.Caption = "Img_B";
            this.colImg_B.ColumnEdit = this.rItemBtnEdit;
            this.colImg_B.FieldName = "Img_B";
            this.colImg_B.Name = "colImg_B";
            this.colImg_B.OptionsColumn.ReadOnly = true;
            this.colImg_B.Visible = true;
            this.colImg_B.VisibleIndex = 3;
            this.colImg_B.Width = 116;
            // 
            // colSystem_Install_No1
            // 
            this.colSystem_Install_No1.Caption = "System_Install_No";
            this.colSystem_Install_No1.FieldName = "System_Install_No";
            this.colSystem_Install_No1.Name = "colSystem_Install_No1";
            this.colSystem_Install_No1.Visible = true;
            this.colSystem_Install_No1.VisibleIndex = 0;
            // 
            // colBroadNo1
            // 
            this.colBroadNo1.Caption = "BroadNo";
            this.colBroadNo1.FieldName = "BroadNo";
            this.colBroadNo1.Name = "colBroadNo1";
            this.colBroadNo1.Visible = true;
            this.colBroadNo1.VisibleIndex = 1;
            this.colBroadNo1.Width = 114;
            // 
            // colImg_A1
            // 
            this.colImg_A1.Caption = "Img_A";
            this.colImg_A1.ColumnEdit = this.rItemHLinkEdit_ImgA;
            this.colImg_A1.FieldName = "Img_A";
            this.colImg_A1.Name = "colImg_A1";
            this.colImg_A1.OptionsColumn.ReadOnly = true;
            this.colImg_A1.Visible = true;
            this.colImg_A1.VisibleIndex = 2;
            // 
            // colImg_B1
            // 
            this.colImg_B1.Caption = "Img_B";
            this.colImg_B1.ColumnEdit = this.rItemHLinkEdit_ImgB;
            this.colImg_B1.FieldName = "Img_B";
            this.colImg_B1.Name = "colImg_B1";
            this.colImg_B1.OptionsColumn.ReadOnly = true;
            this.colImg_B1.Visible = true;
            this.colImg_B1.VisibleIndex = 3;
            this.colImg_B1.Width = 106;
            // 
            // PictureListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.gridControl1);
            this.Name = "PictureListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.gridControl1, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rItemHLinkEdit_ImgA)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rItemBtnEdit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rItemHLinkEdit_ImgB)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit rItemBtnEdit;
        private DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit rItemHLinkEdit_ImgA;
        private DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit rItemHLinkEdit_ImgB;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn colSystem_Install_No;
        private DevExpress.XtraGrid.Columns.GridColumn colBroadNo;
        private DevExpress.XtraGrid.Columns.GridColumn colImg_A;
        private DevExpress.XtraGrid.Columns.GridColumn colImg_B;
        private DevExpress.XtraGrid.Columns.GridColumn colSystem_Install_No1;
        private DevExpress.XtraGrid.Columns.GridColumn colBroadNo1;
        private DevExpress.XtraGrid.Columns.GridColumn colImg_A1;
        private DevExpress.XtraGrid.Columns.GridColumn colImg_B1;
    }
}
