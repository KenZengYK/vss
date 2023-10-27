namespace PH.LineBalanceII.UI.BondingSpect
{
    partial class SpecListForm
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
            this.colCustNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPhStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colKtno = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMtype = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colApplyUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUpdateBy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUpdateTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnAudit = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnCopy = new DevExpress.XtraBars.BarButtonItem();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.barBtnAudit,
            this.barBtnCopy});
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnAudit, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnCopy, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1056, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCustNo,
            this.colCustStyle,
            this.colPhStyle,
            this.colKtno,
            this.colMtype,
            this.colApplyUser,
            this.colAuditer,
            this.colAuditDate,
            this.colCreater,
            this.colCreateTime,
            this.colUpdateBy,
            this.colUpdateTime,
            this.colFactory});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colCustNo
            // 
            this.colCustNo.Caption = "客戶代號";
            this.colCustNo.FieldName = "CustNo";
            this.colCustNo.Name = "colCustNo";
            this.colCustNo.Visible = true;
            this.colCustNo.VisibleIndex = 0;
            this.colCustNo.Width = 68;
            // 
            // colCustStyle
            // 
            this.colCustStyle.Caption = "客款號";
            this.colCustStyle.FieldName = "CustStyle";
            this.colCustStyle.Name = "colCustStyle";
            this.colCustStyle.Visible = true;
            this.colCustStyle.VisibleIndex = 1;
            this.colCustStyle.Width = 122;
            // 
            // colPhStyle
            // 
            this.colPhStyle.Caption = "PH款號";
            this.colPhStyle.FieldName = "PhStyle";
            this.colPhStyle.Name = "colPhStyle";
            this.colPhStyle.Visible = true;
            this.colPhStyle.VisibleIndex = 2;
            this.colPhStyle.Width = 131;
            // 
            // colKtno
            // 
            this.colKtno.Caption = "款團號";
            this.colKtno.FieldName = "Ktno";
            this.colKtno.Name = "colKtno";
            this.colKtno.Visible = true;
            this.colKtno.VisibleIndex = 5;
            this.colKtno.Width = 60;
            // 
            // colMtype
            // 
            this.colMtype.Caption = "類型";
            this.colMtype.FieldName = "Mtype";
            this.colMtype.Name = "colMtype";
            this.colMtype.Visible = true;
            this.colMtype.VisibleIndex = 4;
            this.colMtype.Width = 57;
            // 
            // colApplyUser
            // 
            this.colApplyUser.Caption = "申請者";
            this.colApplyUser.FieldName = "ApplyUser";
            this.colApplyUser.Name = "colApplyUser";
            this.colApplyUser.Visible = true;
            this.colApplyUser.VisibleIndex = 6;
            // 
            // colAuditer
            // 
            this.colAuditer.Caption = "審核者";
            this.colAuditer.FieldName = "Auditer";
            this.colAuditer.Name = "colAuditer";
            this.colAuditer.Visible = true;
            this.colAuditer.VisibleIndex = 7;
            this.colAuditer.Width = 68;
            // 
            // colAuditDate
            // 
            this.colAuditDate.Caption = "審核日期";
            this.colAuditDate.FieldName = "AuditDate";
            this.colAuditDate.Name = "colAuditDate";
            this.colAuditDate.Visible = true;
            this.colAuditDate.VisibleIndex = 8;
            this.colAuditDate.Width = 84;
            // 
            // colCreater
            // 
            this.colCreater.Caption = "建立者";
            this.colCreater.FieldName = "CreateBy";
            this.colCreater.Name = "colCreater";
            this.colCreater.Visible = true;
            this.colCreater.VisibleIndex = 9;
            this.colCreater.Width = 62;
            // 
            // colCreateTime
            // 
            this.colCreateTime.Caption = "建立時間";
            this.colCreateTime.FieldName = "CreateTime";
            this.colCreateTime.Name = "colCreateTime";
            this.colCreateTime.Visible = true;
            this.colCreateTime.VisibleIndex = 10;
            this.colCreateTime.Width = 103;
            // 
            // colUpdateBy
            // 
            this.colUpdateBy.Caption = "修改者";
            this.colUpdateBy.FieldName = "UpdateBy";
            this.colUpdateBy.Name = "colUpdateBy";
            this.colUpdateBy.Visible = true;
            this.colUpdateBy.VisibleIndex = 11;
            this.colUpdateBy.Width = 62;
            // 
            // colUpdateTime
            // 
            this.colUpdateTime.Caption = "修改時間";
            this.colUpdateTime.FieldName = "UpdateTime";
            this.colUpdateTime.Name = "colUpdateTime";
            this.colUpdateTime.Visible = true;
            this.colUpdateTime.VisibleIndex = 12;
            this.colUpdateTime.Width = 133;
            // 
            // barBtnAudit
            // 
            this.barBtnAudit.Caption = "Audit";
            this.barBtnAudit.Id = 60;
            this.barBtnAudit.Name = "barBtnAudit";
            this.barBtnAudit.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnAudit_ItemClick);
            // 
            // barBtnCopy
            // 
            this.barBtnCopy.Caption = "Copy";
            this.barBtnCopy.Id = 61;
            this.barBtnCopy.Name = "barBtnCopy";
            this.barBtnCopy.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnCopy_ItemClick);
            // 
            // colFactory
            // 
            this.colFactory.Caption = "工廠";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 3;
            this.colFactory.Width = 51;
            // 
            // SpecListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "SpecListForm";
            this.Size = new System.Drawing.Size(1056, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCustNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colPhStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colKtno;
        private DevExpress.XtraGrid.Columns.GridColumn colMtype;
        private DevExpress.XtraGrid.Columns.GridColumn colApplyUser;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditer;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCreater;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateTime;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdateBy;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdateTime;
        private DevExpress.XtraBars.BarButtonItem barBtnAudit;
        private DevExpress.XtraBars.BarButtonItem barBtnCopy;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
    }
}
