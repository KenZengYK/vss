namespace PH.MR.UI.HSContract
{
    partial class FrmWoDetail
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.gcDetail = new DevExpress.XtraGrid.GridControl();
            this.gvWoDetail = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcFty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProj = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcQty = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gcDetail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvWoDetail)).BeginInit();
            this.SuspendLayout();
            // 
            // gcDetail
            // 
            this.gcDetail.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcDetail.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.gcDetail.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.gcDetail.Location = new System.Drawing.Point(0, 0);
            this.gcDetail.MainView = this.gvWoDetail;
            this.gcDetail.Name = "gcDetail";
            this.gcDetail.Size = new System.Drawing.Size(622, 364);
            this.gcDetail.TabIndex = 0;
            this.gcDetail.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvWoDetail});
            // 
            // gvWoDetail
            // 
            this.gvWoDetail.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcFty,
            this.gcProj,
            this.gcWo,
            this.gcStyle,
            this.gcQty});
            this.gvWoDetail.GridControl = this.gcDetail;
            this.gvWoDetail.GroupCount = 1;
            this.gvWoDetail.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "SP_QTY", this.gcQty, "")});
            this.gvWoDetail.Name = "gvWoDetail";
            this.gvWoDetail.OptionsBehavior.Editable = false;
            this.gvWoDetail.OptionsView.ShowFooter = true;
            this.gvWoDetail.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcFty, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gcFty
            // 
            this.gcFty.Caption = "工廠";
            this.gcFty.FieldName = "FTY";
            this.gcFty.Name = "gcFty";
            this.gcFty.Visible = true;
            this.gcFty.VisibleIndex = 0;
            this.gcFty.Width = 92;
            // 
            // gcProj
            // 
            this.gcProj.Caption = "工程號";
            this.gcProj.FieldName = "PROJECT";
            this.gcProj.Name = "gcProj";
            this.gcProj.Visible = true;
            this.gcProj.VisibleIndex = 0;
            this.gcProj.Width = 208;
            // 
            // gcWo
            // 
            this.gcWo.Caption = "制單";
            this.gcWo.FieldName = "WO";
            this.gcWo.Name = "gcWo";
            this.gcWo.Visible = true;
            this.gcWo.VisibleIndex = 1;
            this.gcWo.Width = 125;
            // 
            // gcStyle
            // 
            this.gcStyle.Caption = "款號";
            this.gcStyle.FieldName = "STYLE";
            this.gcStyle.Name = "gcStyle";
            this.gcStyle.Visible = true;
            this.gcStyle.VisibleIndex = 2;
            this.gcStyle.Width = 187;
            // 
            // gcQty
            // 
            this.gcQty.Caption = "數量";
            this.gcQty.FieldName = "SP_QTY";
            this.gcQty.Name = "gcQty";
            this.gcQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.gcQty.Visible = true;
            this.gcQty.VisibleIndex = 3;
            this.gcQty.Width = 568;
            // 
            // FrmWoDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(622, 364);
            this.Controls.Add(this.gcDetail);
            this.Name = "FrmWoDetail";
            this.Text = "制單明細";
            ((System.ComponentModel.ISupportInitialize)(this.gcDetail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvWoDetail)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gcDetail;
        private DevExpress.XtraGrid.Views.Grid.GridView gvWoDetail;
        private DevExpress.XtraGrid.Columns.GridColumn gcFty;
        private DevExpress.XtraGrid.Columns.GridColumn gcProj;
        private DevExpress.XtraGrid.Columns.GridColumn gcWo;
        private DevExpress.XtraGrid.Columns.GridColumn gcStyle;
        private DevExpress.XtraGrid.Columns.GridColumn gcQty;
    }
}