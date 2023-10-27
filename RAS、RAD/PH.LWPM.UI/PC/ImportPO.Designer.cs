namespace PH.LWPM.UI.PC
{
    partial class ImportPOForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gridMachine = new DevExpress.XtraGrid.GridControl();
            this.gridSelect = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCheckFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIssueDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaymentTerm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncoterms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridMachine)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridSelect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridMachine
            // 
            this.gridMachine.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.gridMachine.EmbeddedNavigator.Name = "";
            this.gridMachine.Location = new System.Drawing.Point(0, 0);
            this.gridMachine.MainView = this.gridSelect;
            this.gridMachine.Name = "gridMachine";
            this.gridMachine.Size = new System.Drawing.Size(1008, 376);
            this.gridMachine.TabIndex = 0;
            this.gridMachine.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridSelect});
            // 
            // gridSelect
            // 
            this.gridSelect.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCheckFlag,
            this.colPONO,
            this.colAmendNo,
            this.colIssueDate,
            this.colPaymentTerm,
            this.colIncoterms,
            this.colTransitMode});
            this.gridSelect.GridControl = this.gridMachine;
            this.gridSelect.Name = "gridSelect";
            this.gridSelect.OptionsView.ShowGroupPanel = false;
            // 
            // colCheckFlag
            // 
            this.colCheckFlag.FieldName = "CheckFlag";
            this.colCheckFlag.Name = "colCheckFlag";
            this.colCheckFlag.UnboundType = DevExpress.Data.UnboundColumnType.Boolean;
            this.colCheckFlag.Visible = true;
            this.colCheckFlag.VisibleIndex = 0;
            this.colCheckFlag.Width = 28;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO NO";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 1;
            this.colPONO.Width = 126;
            // 
            // colAmendNo
            // 
            this.colAmendNo.Caption = "Amend No";
            this.colAmendNo.FieldName = "AmendNo";
            this.colAmendNo.Name = "colAmendNo";
            this.colAmendNo.OptionsColumn.AllowEdit = false;
            this.colAmendNo.Visible = true;
            this.colAmendNo.VisibleIndex = 2;
            this.colAmendNo.Width = 72;
            // 
            // colIssueDate
            // 
            this.colIssueDate.Caption = "Issue Date";
            this.colIssueDate.FieldName = "IssueDate";
            this.colIssueDate.Name = "colIssueDate";
            this.colIssueDate.OptionsColumn.AllowEdit = false;
            this.colIssueDate.Visible = true;
            this.colIssueDate.VisibleIndex = 3;
            this.colIssueDate.Width = 107;
            // 
            // colPaymentTerm
            // 
            this.colPaymentTerm.Caption = "Payment Term";
            this.colPaymentTerm.FieldName = "PaymentTerm";
            this.colPaymentTerm.Name = "colPaymentTerm";
            this.colPaymentTerm.OptionsColumn.AllowEdit = false;
            this.colPaymentTerm.Visible = true;
            this.colPaymentTerm.VisibleIndex = 4;
            this.colPaymentTerm.Width = 107;
            // 
            // colIncoterms
            // 
            this.colIncoterms.Caption = "Incoterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            this.colIncoterms.OptionsColumn.AllowEdit = false;
            this.colIncoterms.Visible = true;
            this.colIncoterms.VisibleIndex = 5;
            this.colIncoterms.Width = 90;
            // 
            // colTransitMode
            // 
            this.colTransitMode.Caption = "Transit Mode";
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.OptionsColumn.AllowEdit = false;
            this.colTransitMode.Visible = true;
            this.colTransitMode.VisibleIndex = 6;
            this.colTransitMode.Width = 156;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.btnCancel);
            this.panelControl1.Controls.Add(this.btnOK);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(0, 376);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1008, 56);
            this.panelControl1.TabIndex = 1;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(793, 18);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(689, 18);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // ImportPOForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1008, 432);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.gridMachine);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ImportPOForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Import PO";
            ((System.ComponentModel.ISupportInitialize)(this.gridMachine)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridSelect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridMachine;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendNo;
        private DevExpress.XtraGrid.Columns.GridColumn colIssueDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPaymentTerm;
        private DevExpress.XtraGrid.Columns.GridColumn colIncoterms;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitMode;
        private DevExpress.XtraGrid.Columns.GridColumn colCheckFlag;
        protected DevExpress.XtraGrid.Views.Grid.GridView gridSelect;
        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
    }
}