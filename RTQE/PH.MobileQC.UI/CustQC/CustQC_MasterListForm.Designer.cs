namespace PH.MobileQC.UI.CustQC
{
    partial class CustQC_MasterListForm
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
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMasterID = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWeek = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colQCTime = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustomerPO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProject = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStyle = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colQCCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colAQLLevel = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAcceptQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRejectQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMajorDefectQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMinorDefectQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colQCResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCasingDefectQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCasingQCResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCheckTimes = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.CustQC_Master);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.Size = new System.Drawing.Size(1255, 479);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.BandPanelRowHeight = 40;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand4,
            this.gridBand5});
            this.bandedGridView1.ColumnPanelRowHeight = 40;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colMasterID,
            this.colWeek,
            this.colQCTime,
            this.colProject,
            this.colStyle,
            this.colQCCount,
            this.colAQLLevel,
            this.colAcceptQty,
            this.colRejectQty,
            this.colMajorDefectQty,
            this.colMinorDefectQty,
            this.colQCResult,
            this.colCasingDefectQty,
            this.colCasingQCResult,
            this.colCheckTimes,
            this.colCustomerPO});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1365, 409, 225, 352);
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Base Information";
            this.gridBand1.Columns.Add(this.colMasterID);
            this.gridBand1.Columns.Add(this.colWeek);
            this.gridBand1.Columns.Add(this.colQCTime);
            this.gridBand1.Columns.Add(this.colCustomerPO);
            this.gridBand1.Columns.Add(this.colProject);
            this.gridBand1.Columns.Add(this.colStyle);
            this.gridBand1.Columns.Add(this.colQCCount);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 462;
            // 
            // colMasterID
            // 
            this.colMasterID.Caption = "MasterID";
            this.colMasterID.FieldName = "MasterID";
            this.colMasterID.Name = "colMasterID";
            this.colMasterID.Width = 60;
            // 
            // colWeek
            // 
            this.colWeek.Caption = "Week\r\n周";
            this.colWeek.FieldName = "Week";
            this.colWeek.Name = "colWeek";
            this.colWeek.Visible = true;
            this.colWeek.Width = 54;
            // 
            // colQCTime
            // 
            this.colQCTime.Caption = "Audit Date\r\n驗貨日期";
            this.colQCTime.FieldName = "QCTime";
            this.colQCTime.Name = "colQCTime";
            this.colQCTime.Visible = true;
            this.colQCTime.Width = 73;
            // 
            // colCustomerPO
            // 
            this.colCustomerPO.Caption = "Customer PO\r\n客人PO";
            this.colCustomerPO.FieldName = "CustomerPO";
            this.colCustomerPO.Name = "colCustomerPO";
            this.colCustomerPO.Visible = true;
            this.colCustomerPO.Width = 93;
            // 
            // colProject
            // 
            this.colProject.Caption = "Project\r\n工程號  ";
            this.colProject.FieldName = "Project";
            this.colProject.Name = "colProject";
            this.colProject.Visible = true;
            this.colProject.Width = 93;
            // 
            // colStyle
            // 
            this.colStyle.Caption = "Style\r\n款號 ";
            this.colStyle.FieldName = "Style";
            this.colStyle.Name = "colStyle";
            this.colStyle.Visible = true;
            this.colStyle.Width = 78;
            // 
            // colQCCount
            // 
            this.colQCCount.Caption = "Shpt Qty\r\n出貨數";
            this.colQCCount.FieldName = "QCCount";
            this.colQCCount.Name = "colQCCount";
            this.colQCCount.Visible = true;
            this.colQCCount.Width = 71;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "AQL";
            this.gridBand2.Columns.Add(this.colAQLLevel);
            this.gridBand2.Columns.Add(this.colAcceptQty);
            this.gridBand2.Columns.Add(this.colRejectQty);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 221;
            // 
            // colAQLLevel
            // 
            this.colAQLLevel.Caption = "Level";
            this.colAQLLevel.FieldName = "AQLLevel";
            this.colAQLLevel.Name = "colAQLLevel";
            this.colAQLLevel.Visible = true;
            this.colAQLLevel.Width = 63;
            // 
            // colAcceptQty
            // 
            this.colAcceptQty.Caption = "Acc\r\n接受標准";
            this.colAcceptQty.FieldName = "AcceptQty";
            this.colAcceptQty.Name = "colAcceptQty";
            this.colAcceptQty.Visible = true;
            this.colAcceptQty.Width = 81;
            // 
            // colRejectQty
            // 
            this.colRejectQty.Caption = "Rej\r\n拒收標准";
            this.colRejectQty.FieldName = "RejectQty";
            this.colRejectQty.Name = "colRejectQty";
            this.colRejectQty.Visible = true;
            this.colRejectQty.Width = 77;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Garment\r\n成品檢查";
            this.gridBand3.Columns.Add(this.colMajorDefectQty);
            this.gridBand3.Columns.Add(this.colMinorDefectQty);
            this.gridBand3.Columns.Add(this.colQCResult);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 215;
            // 
            // colMajorDefectQty
            // 
            this.colMajorDefectQty.Caption = "Major\r\n主要次品";
            this.colMajorDefectQty.FieldName = "MajorDefectQty";
            this.colMajorDefectQty.Name = "colMajorDefectQty";
            this.colMajorDefectQty.Visible = true;
            this.colMajorDefectQty.Width = 70;
            // 
            // colMinorDefectQty
            // 
            this.colMinorDefectQty.Caption = "Minor\r\n次要次品";
            this.colMinorDefectQty.FieldName = "MinorDefectQty";
            this.colMinorDefectQty.Name = "colMinorDefectQty";
            this.colMinorDefectQty.Visible = true;
            this.colMinorDefectQty.Width = 70;
            // 
            // colQCResult
            // 
            this.colQCResult.Caption = "QC Result\r\n檢查結果";
            this.colQCResult.FieldName = "QCResult";
            this.colQCResult.Name = "colQCResult";
            this.colQCResult.Visible = true;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "Casing\r\n箱檢查";
            this.gridBand4.Columns.Add(this.colCasingDefectQty);
            this.gridBand4.Columns.Add(this.colCasingQCResult);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 145;
            // 
            // colCasingDefectQty
            // 
            this.colCasingDefectQty.Caption = "Major\r\n主要疵點";
            this.colCasingDefectQty.FieldName = "CasingDefectQty";
            this.colCasingDefectQty.Name = "colCasingDefectQty";
            this.colCasingDefectQty.Visible = true;
            this.colCasingDefectQty.Width = 70;
            // 
            // colCasingQCResult
            // 
            this.colCasingQCResult.Caption = "QC Result\r\n檢查結果";
            this.colCasingQCResult.FieldName = "CasingQCResult";
            this.colCasingQCResult.Name = "colCasingQCResult";
            this.colCasingQCResult.Visible = true;
            // 
            // gridBand5
            // 
            this.gridBand5.Columns.Add(this.colCheckTimes);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 91;
            // 
            // colCheckTimes
            // 
            this.colCheckTimes.Caption = "Check Times\r\n檢查次數";
            this.colCheckTimes.FieldName = "CheckTimes";
            this.colCheckTimes.Name = "colCheckTimes";
            this.colCheckTimes.Visible = true;
            this.colCheckTimes.Width = 91;
            // 
            // CustQC_MasterListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "CustQC_MasterListForm";
            this.Size = new System.Drawing.Size(1255, 506);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMasterID;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWeek;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQCTime;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProject;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStyle;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQCCount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAQLLevel;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAcceptQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRejectQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMajorDefectQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMinorDefectQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQCResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCasingDefectQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCasingQCResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCheckTimes;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustomerPO;


    }
}
