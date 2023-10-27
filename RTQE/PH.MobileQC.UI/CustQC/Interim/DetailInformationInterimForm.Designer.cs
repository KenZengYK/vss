namespace PH.MobileQC.UI.CustQC
{
    partial class DetailInformationInterimForm
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
            this.gridControl = new DevExpress.XtraGrid.GridControl();
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colOID = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMfgLocation = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCatLogNO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemCN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemEN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colResponsibleDept = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustStyle = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colQCLocation = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colControlProcedure = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDefectCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colDefectNameEN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDefectNameCN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDefectNameBD = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCriticalDefectQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMarjorDefectQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMinorDefectQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl
            // 
            this.gridControl.DataSource = this.bindingSource;
            this.gridControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl.EmbeddedNavigator.Name = "";
            this.gridControl.Location = new System.Drawing.Point(0, 0);
            this.gridControl.MainView = this.bandedGridView1;
            this.gridControl.Name = "gridControl";
            this.gridControl.Size = new System.Drawing.Size(1204, 496);
            this.gridControl.TabIndex = 0;
            this.gridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // bindingSource
            // 
            this.bindingSource.DataSource = typeof(PH.MobileQC.BO.sp_CustQCDetailInterimReportResult);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2});
            this.bandedGridView1.ColumnPanelRowHeight = 50;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colOID,
            this.colResponsibleDept,
            this.colProjectNO,
            this.colCustStyle,
            this.colColor,
            this.colCustomer,
            this.colQCLocation,
            this.colMfgLocation,
            this.colCatLogNO,
            this.colItemCN,
            this.colItemEN,
            this.bandedGridColumn1,
            this.colControlProcedure,
            this.colDefectCode,
            this.colDefectNameCN,
            this.colDefectNameEN,
            this.colDefectNameBD,
            this.colCriticalDefectQty,
            this.colMarjorDefectQty,
            this.colMinorDefectQty});
            this.bandedGridView1.GridControl = this.gridControl;
            this.bandedGridView1.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "CriticalDefectQty", this.colCriticalDefectQty, "", "Operation Critical:"),
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "MarjorDefectQty", this.colMarjorDefectQty, ""),
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "MinorDefectQty", this.colMinorDefectQty, "")});
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsView.AllowCellMerge = true;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.ShowGroupPanel = false;
            this.bandedGridView1.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.bandedGridView1_CellMerge);
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Basic Information";
            this.gridBand1.Columns.Add(this.colOID);
            this.gridBand1.Columns.Add(this.colCustomer);
            this.gridBand1.Columns.Add(this.colMfgLocation);
            this.gridBand1.Columns.Add(this.colCatLogNO);
            this.gridBand1.Columns.Add(this.colItemCN);
            this.gridBand1.Columns.Add(this.colItemEN);
            this.gridBand1.Columns.Add(this.colResponsibleDept);
            this.gridBand1.Columns.Add(this.colProjectNO);
            this.gridBand1.Columns.Add(this.colCustStyle);
            this.gridBand1.Columns.Add(this.colColor);
            this.gridBand1.Columns.Add(this.colQCLocation);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 836;
            // 
            // colOID
            // 
            this.colOID.Caption = "OID";
            this.colOID.FieldName = "OID";
            this.colOID.Name = "colOID";
            this.colOID.Width = 43;
            // 
            // colCustomer
            // 
            this.colCustomer.AppearanceCell.Options.UseTextOptions = true;
            this.colCustomer.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCustomer.Caption = "Cust Code";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.Visible = true;
            this.colCustomer.Width = 78;
            // 
            // colMfgLocation
            // 
            this.colMfgLocation.Caption = "Mfg Loc.";
            this.colMfgLocation.FieldName = "MfgLocation";
            this.colMfgLocation.Name = "colMfgLocation";
            this.colMfgLocation.Visible = true;
            this.colMfgLocation.Width = 69;
            // 
            // colCatLogNO
            // 
            this.colCatLogNO.Caption = "Cat. log#";
            this.colCatLogNO.FieldName = "CatLogNO";
            this.colCatLogNO.Name = "colCatLogNO";
            this.colCatLogNO.Visible = true;
            this.colCatLogNO.Width = 73;
            // 
            // colItemCN
            // 
            this.colItemCN.Caption = "CN";
            this.colItemCN.FieldName = "ItemCN";
            this.colItemCN.Name = "colItemCN";
            this.colItemCN.Visible = true;
            this.colItemCN.Width = 180;
            // 
            // colItemEN
            // 
            this.colItemEN.Caption = "EN";
            this.colItemEN.FieldName = "ItemEN";
            this.colItemEN.Name = "colItemEN";
            this.colItemEN.Visible = true;
            this.colItemEN.Width = 151;
            // 
            // colResponsibleDept
            // 
            this.colResponsibleDept.AppearanceCell.Options.UseTextOptions = true;
            this.colResponsibleDept.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colResponsibleDept.Caption = "Responsible\r\nDept\r\n責任部門";
            this.colResponsibleDept.FieldName = "ResponsibleDept";
            this.colResponsibleDept.Name = "colResponsibleDept";
            this.colResponsibleDept.Visible = true;
            this.colResponsibleDept.Width = 85;
            // 
            // colProjectNO
            // 
            this.colProjectNO.AppearanceCell.Options.UseTextOptions = true;
            this.colProjectNO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colProjectNO.Caption = "Project\r\nNo.\r\n工程號";
            this.colProjectNO.FieldName = "ProjectNO";
            this.colProjectNO.Name = "colProjectNO";
            this.colProjectNO.Visible = true;
            this.colProjectNO.Width = 73;
            // 
            // colCustStyle
            // 
            this.colCustStyle.AppearanceCell.Options.UseTextOptions = true;
            this.colCustStyle.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCustStyle.Caption = "Cust Style\r\nNo.\r\n客戶款號";
            this.colCustStyle.FieldName = "CustStyle";
            this.colCustStyle.Name = "colCustStyle";
            this.colCustStyle.Visible = true;
            this.colCustStyle.Width = 77;
            // 
            // colColor
            // 
            this.colColor.AppearanceCell.Options.UseTextOptions = true;
            this.colColor.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colColor.Caption = "Color\r\nCode\r\n色號";
            this.colColor.FieldName = "Color";
            this.colColor.Name = "colColor";
            this.colColor.Visible = true;
            this.colColor.Width = 50;
            // 
            // colQCLocation
            // 
            this.colQCLocation.Caption = "QC Loc.";
            this.colQCLocation.FieldName = "QCLocation";
            this.colQCLocation.Name = "colQCLocation";
            this.colQCLocation.Width = 84;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Defect found";
            this.gridBand2.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand3,
            this.gridBand6,
            this.gridBand7});
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 786;
            // 
            // gridBand3
            // 
            this.gridBand3.Columns.Add(this.colControlProcedure);
            this.gridBand3.Columns.Add(this.colDefectCode);
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 135;
            // 
            // colControlProcedure
            // 
            this.colControlProcedure.AppearanceCell.Options.UseTextOptions = true;
            this.colControlProcedure.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colControlProcedure.Caption = "Control\r\nprocedure";
            this.colControlProcedure.FieldName = "ControlProcedure";
            this.colControlProcedure.Name = "colControlProcedure";
            this.colControlProcedure.Visible = true;
            this.colControlProcedure.Width = 78;
            // 
            // colDefectCode
            // 
            this.colDefectCode.AppearanceCell.Options.UseTextOptions = true;
            this.colDefectCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDefectCode.Caption = "Defect\r\nCode";
            this.colDefectCode.FieldName = "DefectCode";
            this.colDefectCode.Name = "colDefectCode";
            this.colDefectCode.Visible = true;
            this.colDefectCode.Width = 57;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Defect Description";
            this.gridBand6.Columns.Add(this.colDefectNameEN);
            this.gridBand6.Columns.Add(this.colDefectNameCN);
            this.gridBand6.Columns.Add(this.colDefectNameBD);
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 489;
            // 
            // colDefectNameEN
            // 
            this.colDefectNameEN.Caption = "EN";
            this.colDefectNameEN.FieldName = "DefectNameEN";
            this.colDefectNameEN.Name = "colDefectNameEN";
            this.colDefectNameEN.Visible = true;
            this.colDefectNameEN.Width = 189;
            // 
            // colDefectNameCN
            // 
            this.colDefectNameCN.Caption = "CN";
            this.colDefectNameCN.FieldName = "DefectNameCN";
            this.colDefectNameCN.Name = "colDefectNameCN";
            this.colDefectNameCN.Visible = true;
            this.colDefectNameCN.Width = 152;
            // 
            // colDefectNameBD
            // 
            this.colDefectNameBD.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F);
            this.colDefectNameBD.AppearanceCell.Options.UseFont = true;
            this.colDefectNameBD.Caption = "BD";
            this.colDefectNameBD.FieldName = "DefectNameBD";
            this.colDefectNameBD.Name = "colDefectNameBD";
            this.colDefectNameBD.Visible = true;
            this.colDefectNameBD.Width = 148;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "Number Defective";
            this.gridBand7.Columns.Add(this.colCriticalDefectQty);
            this.gridBand7.Columns.Add(this.colMarjorDefectQty);
            this.gridBand7.Columns.Add(this.colMinorDefectQty);
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 162;
            // 
            // colCriticalDefectQty
            // 
            this.colCriticalDefectQty.AppearanceCell.Options.UseTextOptions = true;
            this.colCriticalDefectQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCriticalDefectQty.Caption = "Critical";
            this.colCriticalDefectQty.FieldName = "CriticalDefectQty";
            this.colCriticalDefectQty.Name = "colCriticalDefectQty";
            this.colCriticalDefectQty.Visible = true;
            this.colCriticalDefectQty.Width = 56;
            // 
            // colMarjorDefectQty
            // 
            this.colMarjorDefectQty.AppearanceCell.Options.UseTextOptions = true;
            this.colMarjorDefectQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMarjorDefectQty.Caption = "Marjor";
            this.colMarjorDefectQty.FieldName = "MarjorDefectQty";
            this.colMarjorDefectQty.Name = "colMarjorDefectQty";
            this.colMarjorDefectQty.Visible = true;
            this.colMarjorDefectQty.Width = 55;
            // 
            // colMinorDefectQty
            // 
            this.colMinorDefectQty.AppearanceCell.Options.UseTextOptions = true;
            this.colMinorDefectQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMinorDefectQty.Caption = "Minor";
            this.colMinorDefectQty.FieldName = "MinorDefectQty";
            this.colMinorDefectQty.Name = "colMinorDefectQty";
            this.colMinorDefectQty.Visible = true;
            this.colMinorDefectQty.Width = 51;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.Caption = "bandedGridColumn1";
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            // 
            // DetailInformationInterimForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1204, 496);
            this.Controls.Add(this.gridControl);
            this.Name = "DetailInformationInterimForm";
            this.Text = "Interim Qual Control - Alert of Key Defects on Current Study / 中期審管 - 重點瑕疵提示之現況研討" +
                "";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            ((System.ComponentModel.ISupportInitialize)(this.gridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl;
        private System.Windows.Forms.BindingSource bindingSource;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOID;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colResponsibleDept;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectNO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustStyle;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustomer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQCLocation;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMfgLocation;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCatLogNO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemCN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemEN;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colControlProcedure;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDefectCode;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDefectNameEN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDefectNameCN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDefectNameBD;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCriticalDefectQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMarjorDefectQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMinorDefectQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn1;
    }
}