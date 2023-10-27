namespace PH.LWPM.UI.Committee
{
    partial class CommitteeMemberListForm
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
            this.colSeqNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEmployeeID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCommitteeTitle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMemberNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMemberNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSeqNo,
            this.colEmployeeID,
            this.colCommitteeTitle,
            this.colMemberNameEN,
            this.colMemberNameCN});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.CommitteeMember);
            // 
            // colSeqNo
            // 
            this.colSeqNo.Caption = "Seq#";
            this.colSeqNo.FieldName = "SeqNo";
            this.colSeqNo.Name = "colSeqNo";
            this.colSeqNo.Visible = true;
            this.colSeqNo.VisibleIndex = 0;
            // 
            // colEmployeeID
            // 
            this.colEmployeeID.Caption = "Employee ID";
            this.colEmployeeID.FieldName = "EmployeeID";
            this.colEmployeeID.Name = "colEmployeeID";
            this.colEmployeeID.Visible = true;
            this.colEmployeeID.VisibleIndex = 1;
            this.colEmployeeID.Width = 101;
            // 
            // colCommitteeTitle
            // 
            this.colCommitteeTitle.Caption = "Committee Title";
            this.colCommitteeTitle.FieldName = "CommitteeTitle";
            this.colCommitteeTitle.Name = "colCommitteeTitle";
            this.colCommitteeTitle.Visible = true;
            this.colCommitteeTitle.VisibleIndex = 4;
            this.colCommitteeTitle.Width = 142;
            // 
            // colMemberNameEN
            // 
            this.colMemberNameEN.Caption = "Member Name";
            this.colMemberNameEN.FieldName = "MemberNameEN";
            this.colMemberNameEN.Name = "colMemberNameEN";
            this.colMemberNameEN.Visible = true;
            this.colMemberNameEN.VisibleIndex = 2;
            this.colMemberNameEN.Width = 145;
            // 
            // colMemberNameCN
            // 
            this.colMemberNameCN.Caption = "Member Name (CN)";
            this.colMemberNameCN.FieldName = "MemberNameCN";
            this.colMemberNameCN.Name = "colMemberNameCN";
            this.colMemberNameCN.Visible = true;
            this.colMemberNameCN.VisibleIndex = 3;
            this.colMemberNameCN.Width = 167;
            // 
            // CommitteeMemberListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "CommitteeMemberListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSeqNo;
        private DevExpress.XtraGrid.Columns.GridColumn colEmployeeID;
        private DevExpress.XtraGrid.Columns.GridColumn colCommitteeTitle;
        private DevExpress.XtraGrid.Columns.GridColumn colMemberNameEN;
        private DevExpress.XtraGrid.Columns.GridColumn colMemberNameCN;
    }
}
