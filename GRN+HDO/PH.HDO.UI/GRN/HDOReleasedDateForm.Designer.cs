namespace PH.HDO.UI.GRN
{
    partial class HDOReleasedDateForm
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
            this.colHDO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHDOReleasedDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colHDODate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colwhse = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreator = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit1});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHDO,
            this.colHDODate,
            this.colStatus,
            this.colCreator,
            this.colHDOReleasedDate,
            this.colwhse});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.objListGridView_CustomDrawCell);
            this.objListGridView.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.objListGridView_ValidateRow);
            this.objListGridView.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(this.objListGridView_CustomDrawColumnHeader);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.HDO.BO.HDOReleasedDateInfomation);
            // 
            // colHDO
            // 
            this.colHDO.AppearanceHeader.Options.UseTextOptions = true;
            this.colHDO.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHDO.Caption = "HDO";
            this.colHDO.FieldName = "HDONo";
            this.colHDO.Name = "colHDO";
            this.colHDO.OptionsColumn.AllowEdit = false;
            this.colHDO.Visible = true;
            this.colHDO.VisibleIndex = 0;
            // 
            // colHDOReleasedDate
            // 
            this.colHDOReleasedDate.AppearanceHeader.BackColor = System.Drawing.Color.Moccasin;
            this.colHDOReleasedDate.AppearanceHeader.Options.UseBackColor = true;
            this.colHDOReleasedDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colHDOReleasedDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHDOReleasedDate.Caption = "Released Date";
            this.colHDOReleasedDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.colHDOReleasedDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colHDOReleasedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colHDOReleasedDate.FieldName = "HDOReleasedDate";
            this.colHDOReleasedDate.Name = "colHDOReleasedDate";
            this.colHDOReleasedDate.Visible = true;
            this.colHDOReleasedDate.VisibleIndex = 5;
            this.colHDOReleasedDate.Width = 112;
            // 
            // repositoryItemDateEdit1
            // 
            this.repositoryItemDateEdit1.AutoHeight = false;
            this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit1.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.repositoryItemDateEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit1.EditFormat.FormatString = "yyyy/MM/dd";
            this.repositoryItemDateEdit1.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit1.Mask.EditMask = "yyyy/MM/dd";
            this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // colHDODate
            // 
            this.colHDODate.AppearanceHeader.Options.UseTextOptions = true;
            this.colHDODate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHDODate.Caption = "Planned Date";
            this.colHDODate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colHDODate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colHDODate.FieldName = "HDODate";
            this.colHDODate.Name = "colHDODate";
            this.colHDODate.OptionsColumn.AllowEdit = false;
            this.colHDODate.Visible = true;
            this.colHDODate.VisibleIndex = 4;
            this.colHDODate.Width = 125;
            // 
            // colStatus
            // 
            this.colStatus.AppearanceHeader.Options.UseTextOptions = true;
            this.colStatus.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStatus.Caption = "Status";
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.OptionsColumn.AllowEdit = false;
            this.colStatus.Visible = true;
            this.colStatus.VisibleIndex = 2;
            // 
            // colwhse
            // 
            this.colwhse.AppearanceHeader.Options.UseTextOptions = true;
            this.colwhse.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colwhse.Caption = "Whse";
            this.colwhse.FieldName = "Whse";
            this.colwhse.Name = "colwhse";
            this.colwhse.OptionsColumn.AllowEdit = false;
            this.colwhse.Visible = true;
            this.colwhse.VisibleIndex = 1;
            this.colwhse.Width = 110;
            // 
            // colCreator
            // 
            this.colCreator.AppearanceHeader.Options.UseTextOptions = true;
            this.colCreator.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCreator.Caption = "Creator";
            this.colCreator.FieldName = "Creator";
            this.colCreator.Name = "colCreator";
            this.colCreator.OptionsColumn.AllowEdit = false;
            this.colCreator.Visible = true;
            this.colCreator.VisibleIndex = 3;
            this.colCreator.Width = 103;
            // 
            // HDOReleasedDateForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "HDOReleasedDateForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colHDO;
        private DevExpress.XtraGrid.Columns.GridColumn colHDOReleasedDate;
        private DevExpress.XtraGrid.Columns.GridColumn colHDODate;
        private DevExpress.XtraGrid.Columns.GridColumn colStatus;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colwhse;
        private DevExpress.XtraGrid.Columns.GridColumn colCreator;
    }
}
