namespace PH.LWPM.UI.WF
{
    partial class WFChildList
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.advBandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colThisPartialStyle_Code = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colThisPartialStyle_Name = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAttach = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colThisMed_Code = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colThisMed_Name = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colThisGeneralOpCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colThisGeneralOpName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colThisOp_Code = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colThisOp_Name = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colThisOp_Sah = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.TimesForHundredUnits = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLineIsArc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLineIsStraight = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOptLength = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOptRaiseAndFall = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colFabIsScrolled = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFabThickNess = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFabRange = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMtmProj = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMtmCurr = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colConfirm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSelected = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.advBandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.MainView = this.advBandedGridView1;
            this.objListGridControl.Size = new System.Drawing.Size(867, 422);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.advBandedGridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // advBandedGridView1
            // 
            this.advBandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand4,
            this.gridBand5,
            this.gridBand6,
            this.gridBand7,
            this.gridBand8});
            this.advBandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colThisOp_Name,
            this.colThisPartialStyle_Code,
            this.colFabIsScrolled,
            this.colOptLength,
            this.colThisMed_Name,
            this.TimesForHundredUnits,
            this.colFabThickNess,
            this.colThisPartialStyle_Name,
            this.colMtmCurr,
            this.colMtmProj,
            this.colThisOp_Sah,
            this.colOptRaiseAndFall,
            this.colThisOp_Code,
            this.colThisMed_Code,
            this.colFabRange,
            this.colAttach,
            this.colLineIsStraight,
            this.colLineIsArc,
            this.colThisGeneralOpCode,
            this.colThisGeneralOpName,
            this.colConfirm,
            this.colSelected});
            this.advBandedGridView1.GridControl = this.objListGridControl;
            this.advBandedGridView1.Name = "advBandedGridView1";
            this.advBandedGridView1.OptionsBehavior.Editable = false;
            this.advBandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.advBandedGridView1.OptionsPrint.AutoWidth = false;
            this.advBandedGridView1.OptionsView.ShowGroupPanel = false;
            // 
            // gridBand1
            // 
            this.gridBand1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand1.Caption = "Mc feature";
            this.gridBand1.Columns.Add(this.colThisPartialStyle_Code);
            this.gridBand1.Columns.Add(this.colThisPartialStyle_Name);
            this.gridBand1.Columns.Add(this.colAttach);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 205;
            // 
            // colThisPartialStyle_Code
            // 
            this.colThisPartialStyle_Code.Caption = "Code";
            this.colThisPartialStyle_Code.FieldName = "ThisPartialStyle_Code";
            this.colThisPartialStyle_Code.Name = "colThisPartialStyle_Code";
            this.colThisPartialStyle_Code.Visible = true;
            this.colThisPartialStyle_Code.Width = 62;
            // 
            // colThisPartialStyle_Name
            // 
            this.colThisPartialStyle_Name.Caption = "Description";
            this.colThisPartialStyle_Name.FieldName = "ThisPartialStyle_Name";
            this.colThisPartialStyle_Name.Name = "colThisPartialStyle_Name";
            this.colThisPartialStyle_Name.Visible = true;
            // 
            // colAttach
            // 
            this.colAttach.Caption = "Attach";
            this.colAttach.FieldName = "Attach";
            this.colAttach.Name = "colAttach";
            this.colAttach.Visible = true;
            this.colAttach.Width = 68;
            // 
            // gridBand2
            // 
            this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand2.Caption = "Mc-Method feature";
            this.gridBand2.Columns.Add(this.colThisMed_Code);
            this.gridBand2.Columns.Add(this.colThisMed_Name);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 174;
            // 
            // colThisMed_Code
            // 
            this.colThisMed_Code.Caption = "Code";
            this.colThisMed_Code.FieldName = "ThisMed_Code";
            this.colThisMed_Code.Name = "colThisMed_Code";
            this.colThisMed_Code.Visible = true;
            this.colThisMed_Code.Width = 76;
            // 
            // colThisMed_Name
            // 
            this.colThisMed_Name.Caption = "Description";
            this.colThisMed_Name.FieldName = "ThisMed_Name";
            this.colThisMed_Name.Name = "colThisMed_Name";
            this.colThisMed_Name.Visible = true;
            this.colThisMed_Name.Width = 98;
            // 
            // gridBand3
            // 
            this.gridBand3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand3.Caption = "General Operation";
            this.gridBand3.Columns.Add(this.colThisGeneralOpCode);
            this.gridBand3.Columns.Add(this.colThisGeneralOpName);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 182;
            // 
            // colThisGeneralOpCode
            // 
            this.colThisGeneralOpCode.Caption = "Code";
            this.colThisGeneralOpCode.FieldName = "ThisGeneralOpCode";
            this.colThisGeneralOpCode.Name = "colThisGeneralOpCode";
            this.colThisGeneralOpCode.Visible = true;
            this.colThisGeneralOpCode.Width = 79;
            // 
            // colThisGeneralOpName
            // 
            this.colThisGeneralOpName.Caption = "Description";
            this.colThisGeneralOpName.FieldName = "ThisGeneralOpName";
            this.colThisGeneralOpName.Name = "colThisGeneralOpName";
            this.colThisGeneralOpName.Visible = true;
            this.colThisGeneralOpName.Width = 103;
            // 
            // gridBand4
            // 
            this.gridBand4.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand4.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand4.Caption = "Operations";
            this.gridBand4.Columns.Add(this.colThisOp_Code);
            this.gridBand4.Columns.Add(this.colThisOp_Name);
            this.gridBand4.Columns.Add(this.colThisOp_Sah);
            this.gridBand4.Columns.Add(this.TimesForHundredUnits);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 218;
            // 
            // colThisOp_Code
            // 
            this.colThisOp_Code.Caption = "Code";
            this.colThisOp_Code.FieldName = "ThisOp_Code";
            this.colThisOp_Code.Name = "colThisOp_Code";
            this.colThisOp_Code.Visible = true;
            this.colThisOp_Code.Width = 48;
            // 
            // colThisOp_Name
            // 
            this.colThisOp_Name.Caption = "Description";
            this.colThisOp_Name.FieldName = "ThisOp_Name";
            this.colThisOp_Name.Name = "colThisOp_Name";
            this.colThisOp_Name.Visible = true;
            this.colThisOp_Name.Width = 53;
            // 
            // colThisOp_Sah
            // 
            this.colThisOp_Sah.Caption = "SAH";
            this.colThisOp_Sah.FieldName = "GsdSah";
            this.colThisOp_Sah.Name = "colThisOp_Sah";
            this.colThisOp_Sah.Visible = true;
            this.colThisOp_Sah.Width = 59;
            // 
            // TimesForHundredUnits
            // 
            this.TimesForHundredUnits.Caption = "Times";
            this.TimesForHundredUnits.FieldName = "TimesForHundredUnits";
            this.TimesForHundredUnits.Name = "TimesForHundredUnits";
            this.TimesForHundredUnits.Visible = true;
            this.TimesForHundredUnits.Width = 58;
            // 
            // gridBand5
            // 
            this.gridBand5.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand5.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand5.Caption = "Opt feature";
            this.gridBand5.Columns.Add(this.colLineIsArc);
            this.gridBand5.Columns.Add(this.colLineIsStraight);
            this.gridBand5.Columns.Add(this.colOptLength);
            this.gridBand5.Columns.Add(this.colOptRaiseAndFall);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 220;
            // 
            // colLineIsArc
            // 
            this.colLineIsArc.Caption = "Arc";
            this.colLineIsArc.FieldName = "LineIsArc";
            this.colLineIsArc.Name = "colLineIsArc";
            this.colLineIsArc.Visible = true;
            this.colLineIsArc.Width = 44;
            // 
            // colLineIsStraight
            // 
            this.colLineIsStraight.Caption = "Straight line";
            this.colLineIsStraight.FieldName = "LineIsStraight";
            this.colLineIsStraight.Name = "colLineIsStraight";
            this.colLineIsStraight.Visible = true;
            this.colLineIsStraight.Width = 44;
            // 
            // colOptLength
            // 
            this.colOptLength.Caption = "Length";
            this.colOptLength.FieldName = "OptLength";
            this.colOptLength.Name = "colOptLength";
            this.colOptLength.Visible = true;
            this.colOptLength.Width = 63;
            // 
            // colOptRaiseAndFall
            // 
            this.colOptRaiseAndFall.Caption = "Burst";
            this.colOptRaiseAndFall.FieldName = "OptRaiseAndFall";
            this.colOptRaiseAndFall.Name = "colOptRaiseAndFall";
            this.colOptRaiseAndFall.Visible = true;
            this.colOptRaiseAndFall.Width = 69;
            // 
            // gridBand6
            // 
            this.gridBand6.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand6.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand6.Caption = "Fabric feature";
            this.gridBand6.Columns.Add(this.colFabIsScrolled);
            this.gridBand6.Columns.Add(this.colFabThickNess);
            this.gridBand6.Columns.Add(this.colFabRange);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 273;
            // 
            // colFabIsScrolled
            // 
            this.colFabIsScrolled.Caption = "Curl selvedge";
            this.colFabIsScrolled.FieldName = "FabIsScrolled";
            this.colFabIsScrolled.Name = "colFabIsScrolled";
            this.colFabIsScrolled.Visible = true;
            this.colFabIsScrolled.Width = 102;
            // 
            // colFabThickNess
            // 
            this.colFabThickNess.Caption = "Thick/Medium/Thin";
            this.colFabThickNess.FieldName = "FabThickNess";
            this.colFabThickNess.Name = "colFabThickNess";
            this.colFabThickNess.Visible = true;
            this.colFabThickNess.Width = 92;
            // 
            // colFabRange
            // 
            this.colFabRange.Caption = "Elongation";
            this.colFabRange.FieldName = "FabRange";
            this.colFabRange.Name = "colFabRange";
            this.colFabRange.Visible = true;
            this.colFabRange.Width = 79;
            // 
            // gridBand7
            // 
            this.gridBand7.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand7.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand7.Caption = "MTM";
            this.gridBand7.Columns.Add(this.colMtmProj);
            this.gridBand7.Columns.Add(this.colMtmCurr);
            this.gridBand7.MinWidth = 20;
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 124;
            // 
            // colMtmProj
            // 
            this.colMtmProj.Caption = "Proj";
            this.colMtmProj.FieldName = "MtmProj";
            this.colMtmProj.Name = "colMtmProj";
            this.colMtmProj.Visible = true;
            this.colMtmProj.Width = 53;
            // 
            // colMtmCurr
            // 
            this.colMtmCurr.Caption = "Curr";
            this.colMtmCurr.FieldName = "MtmCurr";
            this.colMtmCurr.Name = "colMtmCurr";
            this.colMtmCurr.Visible = true;
            this.colMtmCurr.Width = 71;
            // 
            // gridBand8
            // 
            this.gridBand8.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand8.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand8.Caption = "State";
            this.gridBand8.Columns.Add(this.colConfirm);
            this.gridBand8.Columns.Add(this.colSelected);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Width = 135;
            // 
            // colConfirm
            // 
            this.colConfirm.Caption = "Confirm";
            this.colConfirm.FieldName = "IsConfirmed";
            this.colConfirm.Name = "colConfirm";
            this.colConfirm.Visible = true;
            this.colConfirm.Width = 65;
            // 
            // colSelected
            // 
            this.colSelected.Caption = "Selected";
            this.colSelected.FieldName = "Selected";
            this.colSelected.Name = "colSelected";
            this.colSelected.Visible = true;
            this.colSelected.Width = 70;
            // 
            // WFChildList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WFChildList";
            this.Size = new System.Drawing.Size(867, 447);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.advBandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView advBandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colThisPartialStyle_Code;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colThisPartialStyle_Name;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAttach;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colThisMed_Code;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colThisMed_Name;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colThisGeneralOpCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colThisGeneralOpName;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colThisOp_Code;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colThisOp_Name;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colThisOp_Sah;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn TimesForHundredUnits;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLineIsArc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLineIsStraight;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOptLength;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOptRaiseAndFall;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFabIsScrolled;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFabThickNess;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFabRange;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMtmProj;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMtmCurr;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colConfirm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSelected;
    }
}
