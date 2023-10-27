namespace PH.LWPM.UI.ActionLog
{
    partial class ActionLogDetailListForm
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.colStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSender = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSummary = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAttachment = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryAttachmentItemHyperLinkEdit = new DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit();
            this.barBtnSendEmail = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryAttachmentItemHyperLinkEdit)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnSendEmail});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnSendEmail)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.ActionLogDetail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryAttachmentItemHyperLinkEdit});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colStartDate,
            this.colSender,
            this.colSummary,
            this.colAttachment});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colStartDate
            // 
            this.colStartDate.Caption = "Start Date";
            this.colStartDate.FieldName = "StartDate";
            this.colStartDate.Name = "colStartDate";
            this.colStartDate.OptionsColumn.AllowEdit = false;
            this.colStartDate.Visible = true;
            this.colStartDate.VisibleIndex = 0;
            this.colStartDate.Width = 107;
            // 
            // colSender
            // 
            this.colSender.Caption = "Sender";
            this.colSender.FieldName = "Sender";
            this.colSender.Name = "colSender";
            this.colSender.OptionsColumn.AllowEdit = false;
            this.colSender.Visible = true;
            this.colSender.VisibleIndex = 1;
            // 
            // colSummary
            // 
            this.colSummary.Caption = "Summary";
            this.colSummary.FieldName = "Summary";
            this.colSummary.Name = "colSummary";
            this.colSummary.OptionsColumn.AllowEdit = false;
            this.colSummary.Visible = true;
            this.colSummary.VisibleIndex = 2;
            this.colSummary.Width = 300;
            // 
            // colAttachment
            // 
            this.colAttachment.Caption = "Attachment";
            this.colAttachment.ColumnEdit = this.repositoryAttachmentItemHyperLinkEdit;
            this.colAttachment.FieldName = "AttFileName";
            this.colAttachment.Name = "colAttachment";
            this.colAttachment.Visible = true;
            this.colAttachment.VisibleIndex = 3;
            this.colAttachment.Width = 200;
            // 
            // repositoryAttachmentItemHyperLinkEdit
            // 
            this.repositoryAttachmentItemHyperLinkEdit.AutoHeight = false;
            this.repositoryAttachmentItemHyperLinkEdit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "Download", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.repositoryAttachmentItemHyperLinkEdit.Name = "repositoryAttachmentItemHyperLinkEdit";
            this.repositoryAttachmentItemHyperLinkEdit.SingleClick = true;
            this.repositoryAttachmentItemHyperLinkEdit.StartKey = new DevExpress.Utils.KeyShortcut((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.X));
            this.repositoryAttachmentItemHyperLinkEdit.OpenLink += new DevExpress.XtraEditors.Controls.OpenLinkEventHandler(this.repositoryAttachmentItemHyperLinkEdit_OpenLink);
            // 
            // barBtnSendEmail
            // 
            this.barBtnSendEmail.Caption = "Send Email";
            this.barBtnSendEmail.Id = 60;
            this.barBtnSendEmail.Name = "barBtnSendEmail";
            this.barBtnSendEmail.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnSendEmail_ItemClick);
            // 
            // ActionLogDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ActionLogDetailListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryAttachmentItemHyperLinkEdit)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSender;
        private DevExpress.XtraGrid.Columns.GridColumn colSummary;
        private DevExpress.XtraGrid.Columns.GridColumn colAttachment;
        private DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit repositoryAttachmentItemHyperLinkEdit;
        private DevExpress.XtraBars.BarButtonItem barBtnSendEmail;
    }
}
