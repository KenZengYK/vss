namespace PH.MobileQC.UI 
{
     partial class MasterAnalyzListForm : PH.Platform.UI.CS.UI2.ListForm
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
              this.Columns_CP = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_EV = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_MA = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_WS = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_Other = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_OPTName = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_WFHame = new DevExpress.XtraGrid.Columns.GridColumn();
              this.barbut_PrintOPT = new DevExpress.XtraBars.BarButtonItem();
              this.barbut_PrintWF = new DevExpress.XtraBars.BarButtonItem();
              this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
              this.colFPY = new DevExpress.XtraGrid.Columns.GridColumn();
              this.colDefect = new DevExpress.XtraGrid.Columns.GridColumn();
              ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
              this.SuspendLayout();
              // 
              // objbarManager
              // 
              this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barbut_PrintOPT,
            this.barbut_PrintWF});
              this.objbarManager.MaxItemId = 44;
              // 
              // ObjListBar
              // 
              this.ObjListBar.Appearance.Options.UseTextOptions = true;
              this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barbut_PrintOPT),
            new DevExpress.XtraBars.LinkPersistInfo(this.barbut_PrintWF, true)});
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
              this.objListGridControl.Size = new System.Drawing.Size(1119, 484);
              // 
              // objListGridView
              // 
              this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
              this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
              this.objListGridView.ColumnPanelRowHeight = 35;
              this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_OptCode,
            this.Columns_OPTName,
            this.Columns_WFID,
            this.Columns_WFHame,
            this.Columns_CheckQty,
            this.Columns_P,
            this.Columns_F,
            this.Columns_U,
            this.Columns_S,
            this.Columns_CP,
            this.Columns_EV,
            this.Columns_MA,
            this.Columns_WS,
            this.colFPY,
            this.Columns_Other,
            this.colDefect});
              this.objListGridView.OptionsBehavior.Editable = false;
              this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
              this.objListGridView.OptionsPrint.AutoWidth = false;
              this.objListGridView.OptionsView.ColumnAutoWidth = false;
              this.objListGridView.OptionsView.RowAutoHeight = true;
              // 
              // Columns_WFID
              // 
              this.Columns_WFID.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_WFID.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_WFID.AppearanceHeader.Options.UseTextOptions = true;
              this.Columns_WFID.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_WFID.Caption = "WF ID\r\n工人";
              this.Columns_WFID.FieldName = "Worker";
              this.Columns_WFID.Name = "Columns_WFID";
              this.Columns_WFID.Visible = true;
              this.Columns_WFID.VisibleIndex = 0;
              this.Columns_WFID.Width = 57;
              // 
              // Columns_OptCode
              // 
              this.Columns_OptCode.Caption = "OPT Code";
              this.Columns_OptCode.FieldName = "OptCode";
              this.Columns_OptCode.Name = "Columns_OptCode";
              this.Columns_OptCode.Width = 82;
              // 
              // Columns_CheckQty
              // 
              this.Columns_CheckQty.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_CheckQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_CheckQty.AppearanceHeader.Options.UseTextOptions = true;
              this.Columns_CheckQty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_CheckQty.Caption = "Check Qty\r\n審考件數";
              this.Columns_CheckQty.FieldName = "CheckQty";
              this.Columns_CheckQty.Name = "Columns_CheckQty";
              this.Columns_CheckQty.Visible = true;
              this.Columns_CheckQty.VisibleIndex = 2;
              this.Columns_CheckQty.Width = 85;
              // 
              // Columns_P
              // 
              this.Columns_P.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_P.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_P.AppearanceHeader.Options.UseTextOptions = true;
              this.Columns_P.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_P.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
              this.Columns_P.Caption = " P\r\n(合格)";
              this.Columns_P.FieldName = "PQty";
              this.Columns_P.Name = "Columns_P";
              this.Columns_P.Visible = true;
              this.Columns_P.VisibleIndex = 4;
              this.Columns_P.Width = 56;
              // 
              // Columns_F
              // 
              this.Columns_F.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_F.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_F.Caption = "     F\r\n(不合格)";
              this.Columns_F.FieldName = "FQty";
              this.Columns_F.Name = "Columns_F";
              this.Columns_F.Visible = true;
              this.Columns_F.VisibleIndex = 5;
              this.Columns_F.Width = 68;
              // 
              // Columns_U
              // 
              this.Columns_U.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_U.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_U.Caption = "    U\r\n(不入類)";
              this.Columns_U.FieldName = "UQty";
              this.Columns_U.Name = "Columns_U";
              this.Columns_U.Visible = true;
              this.Columns_U.VisibleIndex = 6;
              this.Columns_U.Width = 66;
              // 
              // Columns_S
              // 
              this.Columns_S.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_S.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_S.Caption = "  S\r\n(廢棄)";
              this.Columns_S.FieldName = "SQty";
              this.Columns_S.Name = "Columns_S";
              this.Columns_S.Visible = true;
              this.Columns_S.VisibleIndex = 7;
              this.Columns_S.Width = 54;
              // 
              // Columns_CP
              // 
              this.Columns_CP.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_CP.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_CP.Caption = " CP\r\n(裁片)";
              this.Columns_CP.FieldName = "CP";
              this.Columns_CP.Name = "Columns_CP";
              this.Columns_CP.Width = 55;
              // 
              // Columns_EV
              // 
              this.Columns_EV.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_EV.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_EV.Caption = " EV\r\n(環境)";
              this.Columns_EV.FieldName = "EV";
              this.Columns_EV.Name = "Columns_EV";
              this.Columns_EV.Width = 54;
              // 
              // Columns_MA
              // 
              this.Columns_MA.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_MA.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_MA.Caption = " MA\r\n(物料)";
              this.Columns_MA.FieldName = "MA";
              this.Columns_MA.Name = "Columns_MA";
              this.Columns_MA.Width = 56;
              // 
              // Columns_WS
              // 
              this.Columns_WS.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_WS.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_WS.Caption = "WS\r\n(縫合)";
              this.Columns_WS.FieldName = "WS";
              this.Columns_WS.Name = "Columns_WS";
              this.Columns_WS.Width = 57;
              // 
              // Columns_Other
              // 
              this.Columns_Other.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_Other.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_Other.Caption = "Other";
              this.Columns_Other.FieldName = "Other";
              this.Columns_Other.Name = "Columns_Other";
              this.Columns_Other.Width = 54;
              // 
              // Columns_OPTName
              // 
              this.Columns_OPTName.Caption = "OPT Name";
              this.Columns_OPTName.FieldName = "OPTName";
              this.Columns_OPTName.Name = "Columns_OPTName";
              this.Columns_OPTName.Width = 219;
              // 
              // Columns_WFHame
              // 
              this.Columns_WFHame.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_WFHame.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_WFHame.AppearanceHeader.Options.UseTextOptions = true;
              this.Columns_WFHame.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.Columns_WFHame.Caption = "WF Name\r\n工人名稱";
              this.Columns_WFHame.FieldName = "WorkerName";
              this.Columns_WFHame.Name = "Columns_WFHame";
              this.Columns_WFHame.Visible = true;
              this.Columns_WFHame.VisibleIndex = 1;
              this.Columns_WFHame.Width = 97;
              // 
              // barbut_PrintOPT
              // 
              this.barbut_PrintOPT.Caption = "Print OPN";
              this.barbut_PrintOPT.Id = 39;
              this.barbut_PrintOPT.Name = "barbut_PrintOPT";
              this.barbut_PrintOPT.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barbut_PrintOPT_ItemClick);
              // 
              // barbut_PrintWF
              // 
              this.barbut_PrintWF.Caption = "Print";
              this.barbut_PrintWF.Id = 43;
              this.barbut_PrintWF.Name = "barbut_PrintWF";
              this.barbut_PrintWF.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barbut_PrintWF_ItemClick);
              // 
              // barButtonItem3
              // 
              this.barButtonItem3.Caption = "Print OPT";
              this.barButtonItem3.Id = 39;
              this.barButtonItem3.Name = "barButtonItem3";
              // 
              // colFPY
              // 
              this.colFPY.AppearanceCell.Options.UseTextOptions = true;
              this.colFPY.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.colFPY.AppearanceHeader.Options.UseTextOptions = true;
              this.colFPY.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.colFPY.Caption = "FPY\r\n首通率";
              this.colFPY.FieldName = "FPY";
              this.colFPY.Name = "colFPY";
              this.colFPY.Visible = true;
              this.colFPY.VisibleIndex = 8;
              // 
              // colDefect
              // 
              this.colDefect.AppearanceCell.Options.UseTextOptions = true;
              this.colDefect.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
              this.colDefect.AppearanceHeader.Options.UseTextOptions = true;
              this.colDefect.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
              this.colDefect.Caption = "Defect\r\n疵點";
              this.colDefect.FieldName = "Defect";
              this.colDefect.Name = "colDefect";
              this.colDefect.Visible = true;
              this.colDefect.VisibleIndex = 3;
              this.colDefect.Width = 149;
              // 
              // MasterAnalyzListForm
              // 
              this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
              this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
              this.Name = "MasterAnalyzListForm";
              this.Size = new System.Drawing.Size(1119, 511);
              this.PlatetoolTipController.SetSuperTip(this, null);
              ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
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
          private DevExpress.XtraGrid.Columns.GridColumn Columns_CP;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_EV;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_MA;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_WS;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_Other;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_OPTName;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_WFHame;
          private DevExpress.XtraBars.BarButtonItem barbut_PrintOPT;
          private DevExpress.XtraBars.BarButtonItem barbut_PrintWF;
          private DevExpress.XtraBars.BarButtonItem barButtonItem3;
          private DevExpress.XtraGrid.Columns.GridColumn colFPY;
          private DevExpress.XtraGrid.Columns.GridColumn colDefect;

     }
}

