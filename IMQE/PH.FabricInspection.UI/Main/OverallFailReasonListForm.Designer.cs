namespace PH.FabricInspection.UI.Main
{
    partial class OverallFailReasonListForm
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
            this.colDataCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDescription = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDataName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemButtonEdit_Defect = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colDataNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReasonNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemarkEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemarkCN = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_Defect)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemButtonEdit_Defect});
            this.objListGridControl.Size = new System.Drawing.Size(973, 386);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDataCode,
            this.colDescription,
            this.colDataName,
            this.colDataNameCN,
            this.colReasonNameCN,
            this.colRemarkEN,
            this.colRemarkCN});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colDataCode
            // 
            this.colDataCode.Caption = "Seq#";
            this.colDataCode.FieldName = "SeqNo";
            this.colDataCode.Name = "colDataCode";
            this.colDataCode.Visible = true;
            this.colDataCode.VisibleIndex = 0;
            // 
            // colDescription
            // 
            this.colDescription.Caption = "Reason Grp";
            this.colDescription.FieldName = "ReasonGroup";
            this.colDescription.Name = "colDescription";
            this.colDescription.Visible = true;
            this.colDescription.VisibleIndex = 1;
            this.colDescription.Width = 84;
            // 
            // colDataName
            // 
            this.colDataName.Caption = "Reason Code";
            this.colDataName.ColumnEdit = this.repositoryItemButtonEdit_Defect;
            this.colDataName.FieldName = "ReasonCode";
            this.colDataName.Name = "colDataName";
            this.colDataName.Visible = true;
            this.colDataName.VisibleIndex = 2;
            this.colDataName.Width = 93;
            // 
            // repositoryItemButtonEdit_Defect
            // 
            this.repositoryItemButtonEdit_Defect.AutoHeight = false;
            this.repositoryItemButtonEdit_Defect.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_Defect.Name = "repositoryItemButtonEdit_Defect";
            this.repositoryItemButtonEdit_Defect.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_Defect_ButtonClick);
            // 
            // colDataNameCN
            // 
            this.colDataNameCN.Caption = "Overall Fail Reason";
            this.colDataNameCN.FieldName = "ReasonNameEN";
            this.colDataNameCN.Name = "colDataNameCN";
            this.colDataNameCN.OptionsColumn.AllowEdit = false;
            this.colDataNameCN.Visible = true;
            this.colDataNameCN.VisibleIndex = 3;
            this.colDataNameCN.Width = 268;
            // 
            // colReasonNameCN
            // 
            this.colReasonNameCN.Caption = "Overall Fail Reason (CN)";
            this.colReasonNameCN.FieldName = "ReasonNameCN";
            this.colReasonNameCN.Name = "colReasonNameCN";
            this.colReasonNameCN.OptionsColumn.AllowEdit = false;
            this.colReasonNameCN.Visible = true;
            this.colReasonNameCN.VisibleIndex = 4;
            this.colReasonNameCN.Width = 207;
            // 
            // colRemarkEN
            // 
            this.colRemarkEN.Caption = "Overall Fail Reason Remark";
            this.colRemarkEN.FieldName = "RemarkEN";
            this.colRemarkEN.Name = "colRemarkEN";
            this.colRemarkEN.OptionsColumn.AllowEdit = false;
            this.colRemarkEN.Visible = true;
            this.colRemarkEN.VisibleIndex = 5;
            this.colRemarkEN.Width = 228;
            // 
            // colRemarkCN
            // 
            this.colRemarkCN.Caption = "Overall Fail Reason Remark (CN)";
            this.colRemarkCN.FieldName = "RemarkCN";
            this.colRemarkCN.Name = "colRemarkCN";
            this.colRemarkCN.OptionsColumn.AllowEdit = false;
            this.colRemarkCN.Visible = true;
            this.colRemarkCN.VisibleIndex = 6;
            this.colRemarkCN.Width = 222;
            // 
            // OverallFailReasonListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "OverallFailReasonListForm";
            this.Size = new System.Drawing.Size(973, 413);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_Defect)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDataCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDescription;
        private DevExpress.XtraGrid.Columns.GridColumn colDataName;
        private DevExpress.XtraGrid.Columns.GridColumn colDataNameCN;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_Defect;
        private DevExpress.XtraGrid.Columns.GridColumn colReasonNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn colRemarkEN;
        private DevExpress.XtraGrid.Columns.GridColumn colRemarkCN;
    }
}
