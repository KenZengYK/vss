namespace PH.POPC.UI.POPC
{
    partial class SubGridViewForm
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
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bandedGridView2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand38 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.coltype = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand56 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMamount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMPer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand57 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLamount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLPer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand58 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colEamount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEPer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand59 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colAamount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ColAPer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand60 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCamount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCPer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand61 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.bandedGridView2;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(847, 454);
            this.gridControl1.TabIndex = 18;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView2});
            // 
            // bandedGridView2
            // 
            this.bandedGridView2.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand38,
            this.gridBand56,
            this.gridBand57,
            this.gridBand58,
            this.gridBand59,
            this.gridBand60,
            this.gridBand61});
            this.bandedGridView2.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.coltype,
            this.colLamount,
            this.colLPer,
            this.colLItemCode,
            this.colMamount,
            this.colMPer,
            this.colMItemCode,
            this.colAamount,
            this.ColAPer,
            this.colAItemCode,
            this.colCamount,
            this.colCPer,
            this.colCItemCode,
            this.colEamount,
            this.colEPer,
            this.colEItemCode,
            this.colTotal,
            this.colTotalItemCode});
            this.bandedGridView2.GridControl = this.gridControl1;
            this.bandedGridView2.Name = "bandedGridView2";
            this.bandedGridView2.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView2.OptionsView.ShowGroupPanel = false;
            // 
            // gridBand38
            // 
            this.gridBand38.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand38.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand38.Caption = "Over";
            this.gridBand38.Columns.Add(this.coltype);
            this.gridBand38.MinWidth = 20;
            this.gridBand38.Name = "gridBand38";
            this.gridBand38.Width = 47;
            // 
            // coltype
            // 
            this.coltype.AppearanceHeader.Options.UseTextOptions = true;
            this.coltype.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.coltype.Caption = "Ahead";
            this.coltype.FieldName = "Type";
            this.coltype.Name = "coltype";
            this.coltype.OptionsColumn.AllowEdit = false;
            this.coltype.Visible = true;
            this.coltype.Width = 47;
            // 
            // gridBand56
            // 
            this.gridBand56.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand56.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand56.Caption = "M";
            this.gridBand56.Columns.Add(this.colMamount);
            this.gridBand56.Columns.Add(this.colMPer);
            this.gridBand56.Columns.Add(this.colMItemCode);
            this.gridBand56.MinWidth = 20;
            this.gridBand56.Name = "gridBand56";
            this.gridBand56.Width = 133;
            // 
            // colMamount
            // 
            this.colMamount.AppearanceCell.Options.UseTextOptions = true;
            this.colMamount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colMamount.AppearanceHeader.Options.UseTextOptions = true;
            this.colMamount.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMamount.Caption = "Amount";
            this.colMamount.FieldName = "Mamount";
            this.colMamount.Name = "colMamount";
            this.colMamount.OptionsColumn.AllowEdit = false;
            this.colMamount.Visible = true;
            this.colMamount.Width = 56;
            // 
            // colMPer
            // 
            this.colMPer.AppearanceCell.Options.UseTextOptions = true;
            this.colMPer.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMPer.AppearanceHeader.Options.UseTextOptions = true;
            this.colMPer.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMPer.Caption = "%";
            this.colMPer.FieldName = "MPer";
            this.colMPer.Name = "colMPer";
            this.colMPer.OptionsColumn.AllowEdit = false;
            this.colMPer.Visible = true;
            this.colMPer.Width = 24;
            // 
            // colMItemCode
            // 
            this.colMItemCode.AppearanceCell.Options.UseTextOptions = true;
            this.colMItemCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colMItemCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colMItemCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMItemCode.Caption = "Item(s)";
            this.colMItemCode.FieldName = "MItemCode";
            this.colMItemCode.Name = "colMItemCode";
            this.colMItemCode.OptionsColumn.AllowEdit = false;
            this.colMItemCode.Visible = true;
            this.colMItemCode.Width = 53;
            // 
            // gridBand57
            // 
            this.gridBand57.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand57.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand57.Caption = "L";
            this.gridBand57.Columns.Add(this.colLamount);
            this.gridBand57.Columns.Add(this.colLPer);
            this.gridBand57.Columns.Add(this.colLItemCode);
            this.gridBand57.MinWidth = 20;
            this.gridBand57.Name = "gridBand57";
            this.gridBand57.Width = 133;
            // 
            // colLamount
            // 
            this.colLamount.AppearanceCell.Options.UseTextOptions = true;
            this.colLamount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colLamount.AppearanceHeader.Options.UseTextOptions = true;
            this.colLamount.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLamount.Caption = "Amount";
            this.colLamount.FieldName = "Lamount";
            this.colLamount.Name = "colLamount";
            this.colLamount.OptionsColumn.AllowEdit = false;
            this.colLamount.Visible = true;
            this.colLamount.Width = 56;
            // 
            // colLPer
            // 
            this.colLPer.AppearanceCell.Options.UseTextOptions = true;
            this.colLPer.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLPer.AppearanceHeader.Options.UseTextOptions = true;
            this.colLPer.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLPer.Caption = "%";
            this.colLPer.FieldName = "LPer";
            this.colLPer.Name = "colLPer";
            this.colLPer.OptionsColumn.AllowEdit = false;
            this.colLPer.Visible = true;
            this.colLPer.Width = 24;
            // 
            // colLItemCode
            // 
            this.colLItemCode.AppearanceCell.Options.UseTextOptions = true;
            this.colLItemCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colLItemCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colLItemCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLItemCode.Caption = "Item(s)";
            this.colLItemCode.FieldName = "LItemCode";
            this.colLItemCode.Name = "colLItemCode";
            this.colLItemCode.OptionsColumn.AllowEdit = false;
            this.colLItemCode.Visible = true;
            this.colLItemCode.Width = 53;
            // 
            // gridBand58
            // 
            this.gridBand58.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand58.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand58.Caption = "E";
            this.gridBand58.Columns.Add(this.colEamount);
            this.gridBand58.Columns.Add(this.colEPer);
            this.gridBand58.Columns.Add(this.colEItemCode);
            this.gridBand58.MinWidth = 20;
            this.gridBand58.Name = "gridBand58";
            this.gridBand58.Width = 133;
            // 
            // colEamount
            // 
            this.colEamount.AppearanceCell.Options.UseTextOptions = true;
            this.colEamount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colEamount.AppearanceHeader.Options.UseTextOptions = true;
            this.colEamount.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEamount.Caption = "Amount";
            this.colEamount.FieldName = "Eamount";
            this.colEamount.Name = "colEamount";
            this.colEamount.OptionsColumn.AllowEdit = false;
            this.colEamount.Visible = true;
            this.colEamount.Width = 56;
            // 
            // colEPer
            // 
            this.colEPer.AppearanceCell.Options.UseTextOptions = true;
            this.colEPer.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEPer.AppearanceHeader.Options.UseTextOptions = true;
            this.colEPer.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEPer.Caption = "%";
            this.colEPer.FieldName = "EPer";
            this.colEPer.Name = "colEPer";
            this.colEPer.OptionsColumn.AllowEdit = false;
            this.colEPer.Visible = true;
            this.colEPer.Width = 24;
            // 
            // colEItemCode
            // 
            this.colEItemCode.AppearanceCell.Options.UseTextOptions = true;
            this.colEItemCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colEItemCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colEItemCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEItemCode.Caption = "Item(s)";
            this.colEItemCode.FieldName = "EItemCode";
            this.colEItemCode.Name = "colEItemCode";
            this.colEItemCode.OptionsColumn.AllowEdit = false;
            this.colEItemCode.Visible = true;
            this.colEItemCode.Width = 53;
            // 
            // gridBand59
            // 
            this.gridBand59.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand59.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand59.Caption = "A";
            this.gridBand59.Columns.Add(this.colAamount);
            this.gridBand59.Columns.Add(this.ColAPer);
            this.gridBand59.Columns.Add(this.colAItemCode);
            this.gridBand59.MinWidth = 20;
            this.gridBand59.Name = "gridBand59";
            this.gridBand59.Width = 133;
            // 
            // colAamount
            // 
            this.colAamount.AppearanceCell.Options.UseTextOptions = true;
            this.colAamount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colAamount.AppearanceHeader.Options.UseTextOptions = true;
            this.colAamount.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colAamount.Caption = "Amount";
            this.colAamount.FieldName = "Aamount";
            this.colAamount.Name = "colAamount";
            this.colAamount.OptionsColumn.AllowEdit = false;
            this.colAamount.Visible = true;
            this.colAamount.Width = 56;
            // 
            // ColAPer
            // 
            this.ColAPer.AppearanceCell.Options.UseTextOptions = true;
            this.ColAPer.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ColAPer.AppearanceHeader.Options.UseTextOptions = true;
            this.ColAPer.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ColAPer.Caption = "%";
            this.ColAPer.FieldName = "APer";
            this.ColAPer.Name = "ColAPer";
            this.ColAPer.OptionsColumn.AllowEdit = false;
            this.ColAPer.Visible = true;
            this.ColAPer.Width = 24;
            // 
            // colAItemCode
            // 
            this.colAItemCode.AppearanceCell.Options.UseTextOptions = true;
            this.colAItemCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colAItemCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colAItemCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colAItemCode.Caption = "Item(s)";
            this.colAItemCode.FieldName = "AItemCode";
            this.colAItemCode.Name = "colAItemCode";
            this.colAItemCode.OptionsColumn.AllowEdit = false;
            this.colAItemCode.Visible = true;
            this.colAItemCode.Width = 53;
            // 
            // gridBand60
            // 
            this.gridBand60.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand60.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand60.Caption = "C";
            this.gridBand60.Columns.Add(this.colCamount);
            this.gridBand60.Columns.Add(this.colCPer);
            this.gridBand60.Columns.Add(this.colCItemCode);
            this.gridBand60.MinWidth = 20;
            this.gridBand60.Name = "gridBand60";
            this.gridBand60.Width = 133;
            // 
            // colCamount
            // 
            this.colCamount.AppearanceCell.Options.UseTextOptions = true;
            this.colCamount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colCamount.AppearanceHeader.Options.UseTextOptions = true;
            this.colCamount.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCamount.Caption = "Amount";
            this.colCamount.FieldName = "Camount";
            this.colCamount.Name = "colCamount";
            this.colCamount.OptionsColumn.AllowEdit = false;
            this.colCamount.Visible = true;
            this.colCamount.Width = 56;
            // 
            // colCPer
            // 
            this.colCPer.AppearanceCell.Options.UseTextOptions = true;
            this.colCPer.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCPer.AppearanceHeader.Options.UseTextOptions = true;
            this.colCPer.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCPer.Caption = "%";
            this.colCPer.FieldName = "CPer";
            this.colCPer.Name = "colCPer";
            this.colCPer.OptionsColumn.AllowEdit = false;
            this.colCPer.Visible = true;
            this.colCPer.Width = 24;
            // 
            // colCItemCode
            // 
            this.colCItemCode.AppearanceCell.Options.UseTextOptions = true;
            this.colCItemCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colCItemCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colCItemCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCItemCode.Caption = "Item(s)";
            this.colCItemCode.FieldName = "CItemCode";
            this.colCItemCode.Name = "colCItemCode";
            this.colCItemCode.OptionsColumn.AllowEdit = false;
            this.colCItemCode.Visible = true;
            this.colCItemCode.Width = 53;
            // 
            // gridBand61
            // 
            this.gridBand61.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand61.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand61.Caption = "Total";
            this.gridBand61.Columns.Add(this.colTotal);
            this.gridBand61.Columns.Add(this.colTotalItemCode);
            this.gridBand61.MinWidth = 20;
            this.gridBand61.Name = "gridBand61";
            this.gridBand61.Width = 109;
            // 
            // colTotal
            // 
            this.colTotal.AppearanceCell.Options.UseTextOptions = true;
            this.colTotal.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colTotal.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotal.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTotal.Caption = "Amount";
            this.colTotal.FieldName = "Total";
            this.colTotal.Name = "colTotal";
            this.colTotal.OptionsColumn.AllowEdit = false;
            this.colTotal.Visible = true;
            this.colTotal.Width = 56;
            // 
            // colTotalItemCode
            // 
            this.colTotalItemCode.AppearanceCell.Options.UseTextOptions = true;
            this.colTotalItemCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colTotalItemCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalItemCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTotalItemCode.Caption = "Item(s)";
            this.colTotalItemCode.FieldName = "TotalItemCode";
            this.colTotalItemCode.Name = "colTotalItemCode";
            this.colTotalItemCode.OptionsColumn.AllowEdit = false;
            this.colTotalItemCode.Visible = true;
            this.colTotalItemCode.Width = 53;
            // 
            // SubGridViewForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(847, 454);
            this.Controls.Add(this.gridControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SubGridViewForm";
            this.Text = "SubGridViewForm";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand38;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn coltype;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand56;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMamount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMPer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand57;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLamount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLPer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand58;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEamount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEPer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand59;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAamount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn ColAPer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand60;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCamount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCPer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand61;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotal;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalItemCode;
    }
}