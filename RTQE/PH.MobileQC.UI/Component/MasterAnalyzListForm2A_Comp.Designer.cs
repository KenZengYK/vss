namespace PH.MobileQC.UI 
{
    partial class MasterAnalyzListForm2A_Comp : PH.Platform.UI.CS.UI2.ListForm
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
              this.Columns_WFID = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_OptCode = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_CheckQty = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_P = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_F = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_U = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_S = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_OPTName = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_WFHame = new DevExpress.XtraGrid.Columns.GridColumn();
              this.barbut_PrintOPT = new DevExpress.XtraBars.BarButtonItem();
              this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
              this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
              this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
              this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
              this.barBtn_Summary = new DevExpress.XtraBars.BarButtonItem();
              ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
              this.SuspendLayout();
              // 
              // objbarManager
              // 
              this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barbut_PrintOPT,
            this.barBtn_Summary});
              this.objbarManager.MaxItemId = 45;
              // 
              // ObjListBar
              // 
              this.ObjListBar.Appearance.Options.UseTextOptions = true;
              this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barbut_PrintOPT, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtn_Summary, true)});
              // 
              // barBtnFind
              // 
              this.barBtnFind.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
              // 
              // objListGridControl
              // 
              this.objListGridControl.EmbeddedNavigator.Name = "";
              gridLevelNode1.RelationName = "Level1";
              this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
              this.objListGridControl.Size = new System.Drawing.Size(1054, 426);
              // 
              // objListGridView
              // 
              this.objListGridView.ColumnPanelRowHeight = 35;
              this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn3,
            this.gridColumn2,
            this.gridColumn1,
            this.Columns_OptCode,
            this.Columns_OPTName,
            this.Columns_WFID,
            this.Columns_WFHame,
            this.Columns_CheckQty,
            this.Columns_P,
            this.Columns_F,
            this.Columns_U,
            this.Columns_S});
              this.objListGridView.OptionsBehavior.Editable = false;
              this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
              this.objListGridView.OptionsPrint.AutoWidth = false;
              this.objListGridView.OptionsView.ColumnAutoWidth = false;
              // 
              // Columns_WFID
              // 
              this.Columns_WFID.Caption = "勞動者\r\n  ID";
              this.Columns_WFID.FieldName = "WFID";
              this.Columns_WFID.Name = "Columns_WFID";
              this.Columns_WFID.Visible = true;
              this.Columns_WFID.VisibleIndex = 4;
              this.Columns_WFID.Width = 55;
              // 
              // Columns_OptCode
              // 
              this.Columns_OptCode.Caption = "Componet";
              this.Columns_OptCode.FieldName = "OptCode";
              this.Columns_OptCode.Name = "Columns_OptCode";
              this.Columns_OptCode.Visible = true;
              this.Columns_OptCode.VisibleIndex = 3;
              this.Columns_OptCode.Width = 78;
              // 
              // Columns_CheckQty
              // 
              this.Columns_CheckQty.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_CheckQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_CheckQty.Caption = "Audited\r\n  Qty";
              this.Columns_CheckQty.FieldName = "AuditTotal";
              this.Columns_CheckQty.Name = "Columns_CheckQty";
              this.Columns_CheckQty.Visible = true;
              this.Columns_CheckQty.VisibleIndex = 6;
              this.Columns_CheckQty.Width = 55;
              // 
              // Columns_P
              // 
              this.Columns_P.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_P.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_P.Caption = "   P\r\n(合格)";
              this.Columns_P.FieldName = "P_Qty";
              this.Columns_P.Name = "Columns_P";
              this.Columns_P.Visible = true;
              this.Columns_P.VisibleIndex = 7;
              this.Columns_P.Width = 55;
              // 
              // Columns_F
              // 
              this.Columns_F.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_F.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_F.Caption = "    F\r\n(不合格)";
              this.Columns_F.FieldName = "F_Qty";
              this.Columns_F.Name = "Columns_F";
              this.Columns_F.Visible = true;
              this.Columns_F.VisibleIndex = 8;
              this.Columns_F.Width = 69;
              // 
              // Columns_U
              // 
              this.Columns_U.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_U.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_U.Caption = "    U\r\n(不入類)";
              this.Columns_U.FieldName = "U_Qty";
              this.Columns_U.Name = "Columns_U";
              this.Columns_U.Visible = true;
              this.Columns_U.VisibleIndex = 9;
              this.Columns_U.Width = 65;
              // 
              // Columns_S
              // 
              this.Columns_S.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_S.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_S.Caption = "  S\r\n(廢棄)";
              this.Columns_S.FieldName = "S_Qty";
              this.Columns_S.Name = "Columns_S";
              this.Columns_S.Visible = true;
              this.Columns_S.VisibleIndex = 10;
              this.Columns_S.Width = 54;
              // 
              // Columns_OPTName
              // 
              this.Columns_OPTName.Caption = "組件";
              this.Columns_OPTName.FieldName = "OPTName";
              this.Columns_OPTName.Name = "Columns_OPTName";
              this.Columns_OPTName.Width = 134;
              // 
              // Columns_WFHame
              // 
              this.Columns_WFHame.Caption = "勞動者\r\n 名稱";
              this.Columns_WFHame.FieldName = "WFHame";
              this.Columns_WFHame.Name = "Columns_WFHame";
              this.Columns_WFHame.Visible = true;
              this.Columns_WFHame.VisibleIndex = 5;
              this.Columns_WFHame.Width = 54;
              // 
              // barbut_PrintOPT
              // 
              this.barbut_PrintOPT.Caption = "Main Sheet";
              this.barbut_PrintOPT.Id = 39;
              this.barbut_PrintOPT.Name = "barbut_PrintOPT";
              this.barbut_PrintOPT.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barbut_PrintOPT_ItemClick);
              // 
              // barButtonItem3
              // 
              this.barButtonItem3.Caption = "Print OPT";
              this.barButtonItem3.Id = 39;
              this.barButtonItem3.Name = "barButtonItem3";
              // 
              // gridColumn1
              // 
              this.gridColumn1.Caption = "CustStyle";
              this.gridColumn1.FieldName = "CustStyle";
              this.gridColumn1.Name = "gridColumn1";
              this.gridColumn1.Visible = true;
              this.gridColumn1.VisibleIndex = 2;
              this.gridColumn1.Width = 92;
              // 
              // gridColumn2
              // 
              this.gridColumn2.Caption = "Project";
              this.gridColumn2.FieldName = "Project";
              this.gridColumn2.Name = "gridColumn2";
              this.gridColumn2.Visible = true;
              this.gridColumn2.VisibleIndex = 1;
              this.gridColumn2.Width = 68;
              // 
              // gridColumn3
              // 
              this.gridColumn3.Caption = "Line";
              this.gridColumn3.FieldName = "Line";
              this.gridColumn3.Name = "gridColumn3";
              this.gridColumn3.Visible = true;
              this.gridColumn3.VisibleIndex = 0;
              this.gridColumn3.Width = 48;
              // 
              // barBtn_Summary
              // 
              this.barBtn_Summary.Caption = "Supplement Sheet1";
              this.barBtn_Summary.Id = 44;
              this.barBtn_Summary.Name = "barBtn_Summary";
              this.barBtn_Summary.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtn_Summary_ItemClick);
              // 
              // MasterAnalyzListForm2A_Comp
              // 
              this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
              this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
              this.Name = "MasterAnalyzListForm2A_Comp";
              this.Size = new System.Drawing.Size(1054, 453);
              this.PlatetoolTipController.SetSuperTip(this, null);
              ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
              this.ResumeLayout(false);

          }

          #endregion

          private DevExpress.XtraGrid.Columns.GridColumn Columns_WFID;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_OptCode;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_CheckQty;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_P;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_F;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_U;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_S;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_OPTName;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_WFHame;
          private DevExpress.XtraBars.BarButtonItem barbut_PrintOPT;
          private DevExpress.XtraBars.BarButtonItem barButtonItem3;
          private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
          private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
          private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
          private DevExpress.XtraBars.BarButtonItem barBtn_Summary;

     }
}

