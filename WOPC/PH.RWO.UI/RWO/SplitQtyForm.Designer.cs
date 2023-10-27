namespace PH.RWO.UI.RWO
{
    partial class SplitQtyForm
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
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.tempRWOSKUBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRwoNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSizeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCupCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaxBulkQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBulkQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaxSampleQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRatio = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSizeDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tempRWOSKUBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.tempRWOSKUBindingSource;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(786, 439);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // tempRWOSKUBindingSource
            // 
            this.tempRWOSKUBindingSource.DataSource = typeof(PH.RWO.BO.TempRWOSKU);
            // 
            // gridView1
            // 
            this.gridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView1.Appearance.Row.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.gridView1.Appearance.Row.Options.UseBackColor = true;
            this.gridView1.Appearance.Row.Options.UseTextOptions = true;
            this.gridView1.Appearance.Row.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView1.ColumnPanelRowHeight = 30;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colColorCode,
            this.colRwoNo,
            this.colSizeCode,
            this.colCupCode,
            this.colMaxBulkQty,
            this.colBulkQty,
            this.colMaxSampleQty,
            this.colSampleQty,
            this.colRatio,
            this.colSizeDesc,
            this.colCustCup});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsCustomization.AllowFilter = false;
            this.gridView1.OptionsCustomization.AllowGroup = false;
            this.gridView1.OptionsView.AllowCellMerge = true;
            this.gridView1.OptionsView.ShowFooter = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.CustomDrawFooterCell += new DevExpress.XtraGrid.Views.Grid.FooterCellCustomDrawEventHandler(this.gridView1_CustomDrawFooterCell);
            this.gridView1.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.gridView1_RowCellStyle);
            this.gridView1.InvalidRowException += new DevExpress.XtraGrid.Views.Base.InvalidRowExceptionEventHandler(this.gridView1_InvalidRowException);
            this.gridView1.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.gridView1_ValidateRow);
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Color Code";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.OptionsColumn.ReadOnly = true;
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 0;
            this.colColorCode.Width = 78;
            // 
            // colRwoNo
            // 
            this.colRwoNo.Caption = "RWO#";
            this.colRwoNo.FieldName = "RwoNo";
            this.colRwoNo.Name = "colRwoNo";
            this.colRwoNo.OptionsColumn.AllowEdit = false;
            this.colRwoNo.OptionsColumn.ReadOnly = true;
            this.colRwoNo.Visible = true;
            this.colRwoNo.VisibleIndex = 1;
            this.colRwoNo.Width = 67;
            // 
            // colSizeCode
            // 
            this.colSizeCode.Caption = "Size Code";
            this.colSizeCode.FieldName = "CustSize";
            this.colSizeCode.Name = "colSizeCode";
            this.colSizeCode.OptionsColumn.AllowEdit = false;
            this.colSizeCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSizeCode.Visible = true;
            this.colSizeCode.VisibleIndex = 2;
            this.colSizeCode.Width = 76;
            // 
            // colCupCode
            // 
            this.colCupCode.Caption = "Cup Code";
            this.colCupCode.FieldName = "CustCup";
            this.colCupCode.Name = "colCupCode";
            this.colCupCode.OptionsColumn.AllowEdit = false;
            this.colCupCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCupCode.Visible = true;
            this.colCupCode.VisibleIndex = 3;
            this.colCupCode.Width = 72;
            // 
            // colMaxBulkQty
            // 
            this.colMaxBulkQty.Caption = "Allow Max Qty";
            this.colMaxBulkQty.FieldName = "MaxBulkQty";
            this.colMaxBulkQty.Name = "colMaxBulkQty";
            this.colMaxBulkQty.OptionsColumn.AllowEdit = false;
            this.colMaxBulkQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colMaxBulkQty.SummaryItem.DisplayFormat = "Max = {0:N0}";
            this.colMaxBulkQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colMaxBulkQty.Visible = true;
            this.colMaxBulkQty.VisibleIndex = 4;
            this.colMaxBulkQty.Width = 104;
            // 
            // colBulkQty
            // 
            this.colBulkQty.AppearanceCell.BackColor = System.Drawing.Color.White;
            this.colBulkQty.AppearanceCell.Options.UseBackColor = true;
            this.colBulkQty.Caption = "Qty";
            this.colBulkQty.FieldName = "BulkQty";
            this.colBulkQty.Name = "colBulkQty";
            this.colBulkQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkQty.SummaryItem.DisplayFormat = "Total = {0:N0}";
            this.colBulkQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colBulkQty.Visible = true;
            this.colBulkQty.VisibleIndex = 5;
            this.colBulkQty.Width = 107;
            // 
            // colMaxSampleQty
            // 
            this.colMaxSampleQty.Caption = "MaxSampleQty";
            this.colMaxSampleQty.FieldName = "MaxSampleQty";
            this.colMaxSampleQty.Name = "colMaxSampleQty";
            this.colMaxSampleQty.OptionsColumn.AllowEdit = false;
            this.colMaxSampleQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colMaxSampleQty.Visible = true;
            this.colMaxSampleQty.VisibleIndex = 6;
            // 
            // colSampleQty
            // 
            this.colSampleQty.AppearanceCell.BackColor = System.Drawing.Color.White;
            this.colSampleQty.AppearanceCell.Options.UseBackColor = true;
            this.colSampleQty.Caption = "Sample Qty";
            this.colSampleQty.FieldName = "SampleQty";
            this.colSampleQty.Name = "colSampleQty";
            this.colSampleQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSampleQty.Visible = true;
            this.colSampleQty.VisibleIndex = 7;
            // 
            // colRatio
            // 
            this.colRatio.Caption = "Ratio";
            this.colRatio.FieldName = "Ratio";
            this.colRatio.Name = "colRatio";
            // 
            // colSizeDesc
            // 
            this.colSizeDesc.Caption = "Size Desc";
            this.colSizeDesc.FieldName = "SizeDesc";
            this.colSizeDesc.Name = "colSizeDesc";
            // 
            // colCustCup
            // 
            this.colCustCup.Caption = "Cust Cup";
            this.colCustCup.FieldName = "CustCup";
            this.colCustCup.Name = "colCustCup";
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.btnCancel);
            this.panelControl1.Controls.Add(this.btnOK);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(0, 439);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(786, 49);
            this.panelControl1.TabIndex = 1;
            // 
            // btnCancel
            // 
            this.btnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(676, 11);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 30);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(543, 11);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 30);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK"; 
            // 
            // SplitQtyForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(786, 488);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.panelControl1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SplitQtyForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Entrance Key - Split RWO Qty";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tempRWOSKUBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private System.Windows.Forms.BindingSource tempRWOSKUBindingSource;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colRwoNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colCupCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleQty;
        private DevExpress.XtraGrid.Columns.GridColumn colBulkQty;
        private DevExpress.XtraGrid.Columns.GridColumn colRatio;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraGrid.Columns.GridColumn colMaxBulkQty;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colCustCup;
        private DevExpress.XtraGrid.Columns.GridColumn colMaxSampleQty;
    }
}