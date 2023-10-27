namespace PH.MobileQC.UI
{
    partial class DefectSummaryList
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
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCuster = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProj = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOperCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOperDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLabor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPointQty = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.btnPrint});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint)});
            // 
            // barBtnFind
            // 
            this.barBtnFind.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colLine,
            this.colCuster,
            this.colProj,
            this.colCustStyle,
            this.colOperCode,
            this.colOperDesc,
            this.colAuditQty,
            this.colDefectQty,
            this.colPass,
            this.colLabor,
            this.colDefectCode,
            this.colDefectDesc,
            this.colPointQty});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 60;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // colLine
            // 
            this.colLine.Caption = "Line";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 0;
            // 
            // colCuster
            // 
            this.colCuster.Caption = "Customer";
            this.colCuster.FieldName = "Custmer";
            this.colCuster.Name = "colCuster";
            this.colCuster.Visible = true;
            this.colCuster.VisibleIndex = 12;
            // 
            // colProj
            // 
            this.colProj.Caption = "Project";
            this.colProj.FieldName = "ProjNo";
            this.colProj.Name = "colProj";
            this.colProj.Visible = true;
            this.colProj.VisibleIndex = 11;
            // 
            // colCustStyle
            // 
            this.colCustStyle.Caption = "Cust Style";
            this.colCustStyle.FieldName = "CustStyle";
            this.colCustStyle.Name = "colCustStyle";
            this.colCustStyle.Visible = true;
            this.colCustStyle.VisibleIndex = 10;
            // 
            // colOperCode
            // 
            this.colOperCode.Caption = "Operation Code";
            this.colOperCode.FieldName = "OperCode";
            this.colOperCode.Name = "colOperCode";
            this.colOperCode.Visible = true;
            this.colOperCode.VisibleIndex = 1;
            // 
            // colOperDesc
            // 
            this.colOperDesc.Caption = "Operation Desc";
            this.colOperDesc.FieldName = "OperName";
            this.colOperDesc.Name = "colOperDesc";
            this.colOperDesc.Visible = true;
            this.colOperDesc.VisibleIndex = 2;
            // 
            // colAuditQty
            // 
            this.colAuditQty.Caption = "Audit Qty";
            this.colAuditQty.FieldName = "AuditQty";
            this.colAuditQty.Name = "colAuditQty";
            this.colAuditQty.Visible = true;
            this.colAuditQty.VisibleIndex = 9;
            // 
            // colDefectQty
            // 
            this.colDefectQty.Caption = "Defect Qty";
            this.colDefectQty.FieldName = "DefectQty";
            this.colDefectQty.Name = "colDefectQty";
            this.colDefectQty.Visible = true;
            this.colDefectQty.VisibleIndex = 3;
            // 
            // colPass
            // 
            this.colPass.Caption = "Pass Rate";
            this.colPass.FieldName = "PerPass";
            this.colPass.Name = "colPass";
            this.colPass.Visible = true;
            this.colPass.VisibleIndex = 4;
            // 
            // colLabor
            // 
            this.colLabor.Caption = "Labor";
            this.colLabor.FieldName = "Worker";
            this.colLabor.Name = "colLabor";
            this.colLabor.Visible = true;
            this.colLabor.VisibleIndex = 8;
            // 
            // colDefectCode
            // 
            this.colDefectCode.Caption = "Defect Code";
            this.colDefectCode.FieldName = "DefectCode";
            this.colDefectCode.Name = "colDefectCode";
            this.colDefectCode.Visible = true;
            this.colDefectCode.VisibleIndex = 5;
            // 
            // colDefectDesc
            // 
            this.colDefectDesc.Caption = "Defect Desc";
            this.colDefectDesc.FieldName = "DefectName";
            this.colDefectDesc.Name = "colDefectDesc";
            this.colDefectDesc.Visible = true;
            this.colDefectDesc.VisibleIndex = 6;
            // 
            // colPointQty
            // 
            this.colPointQty.Caption = "Point Qty";
            this.colPointQty.FieldName = "PointQty";
            this.colPointQty.Name = "colPointQty";
            this.colPointQty.Visible = true;
            this.colPointQty.VisibleIndex = 7;
            // 
            // DefectSummaryList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DefectSummaryList";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem btnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colCuster;
        private DevExpress.XtraGrid.Columns.GridColumn colProj;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colOperCode;
        private DevExpress.XtraGrid.Columns.GridColumn colOperDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditQty;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectQty;
        private DevExpress.XtraGrid.Columns.GridColumn colPass;
        private DevExpress.XtraGrid.Columns.GridColumn colLabor;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colPointQty;
    }
}
