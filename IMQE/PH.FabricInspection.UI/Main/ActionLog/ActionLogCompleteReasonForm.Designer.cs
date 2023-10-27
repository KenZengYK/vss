namespace PH.FabricInspection.UI.Main.ActionLog
{
    partial class ActionLogCompleteReasonForm
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
            this.components = new System.ComponentModel.Container();
            this.bsActionLogCompleteReason = new System.Windows.Forms.BindingSource(this.components);
            this.pnlBottom = new DevExpress.XtraEditors.PanelControl();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSortID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colcolRemarkCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemarkBD = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogCompleteReason)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).BeginInit();
            this.pnlBottom.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // bsActionLogCompleteReason
            // 
            this.bsActionLogCompleteReason.DataSource = typeof(PH.FabricInspection.BO.ActionLogCompleteReason);
            // 
            // pnlBottom
            // 
            this.pnlBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlBottom.Controls.Add(this.btnOK);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 512);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(1087, 50);
            this.pnlBottom.TabIndex = 1;
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(876, 14);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bsActionLogCompleteReason;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(1087, 512);
            this.gridControl1.TabIndex = 3;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSortID,
            this.colRemark,
            this.colcolRemarkCN,
            this.colRemarkBD});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // colSortID
            // 
            this.colSortID.Caption = "Code";
            this.colSortID.FieldName = "SeqNo";
            this.colSortID.Name = "colSortID";
            this.colSortID.Visible = true;
            this.colSortID.VisibleIndex = 0;
            this.colSortID.Width = 62;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Action log completed reason (EN)";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 1;
            this.colRemark.Width = 332;
            // 
            // colcolRemarkCN
            // 
            this.colcolRemarkCN.Caption = "Action log completed reason (CN)";
            this.colcolRemarkCN.FieldName = "RemarkCN";
            this.colcolRemarkCN.Name = "colcolRemarkCN";
            this.colcolRemarkCN.Visible = true;
            this.colcolRemarkCN.VisibleIndex = 2;
            this.colcolRemarkCN.Width = 243;
            // 
            // colRemarkBD
            // 
            this.colRemarkBD.AppearanceCell.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F);
            this.colRemarkBD.AppearanceCell.Options.UseFont = true;
            this.colRemarkBD.Caption = "Action log completed reason (BD)";
            this.colRemarkBD.FieldName = "RemarkBD";
            this.colRemarkBD.Name = "colRemarkBD";
            this.colRemarkBD.Visible = true;
            this.colRemarkBD.VisibleIndex = 3;
            this.colRemarkBD.Width = 429;
            // 
            // ActionLogCompleteReasonForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1087, 562);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.pnlBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ActionLogCompleteReasonForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Action Log Complete Reason";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.ActionLogCompleteReasonForm_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogCompleteReason)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).EndInit();
            this.pnlBottom.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.BindingSource bsActionLogCompleteReason;
        private DevExpress.XtraEditors.PanelControl pnlBottom;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colSortID;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colcolRemarkCN;
        private DevExpress.XtraGrid.Columns.GridColumn colRemarkBD;

    }
}