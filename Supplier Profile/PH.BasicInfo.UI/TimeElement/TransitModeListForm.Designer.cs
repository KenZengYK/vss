namespace PH.BasicInfo.UI.TimeElement
{
    partial class TransitModeListForm
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
            this.colPHFactories = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLocationofSuppFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncoterms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncotermsPointPort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPointofDestination = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimeFrame = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFromEffectivedDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colToEffectivedDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSpecialNote = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colForwarderAddressEn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colForwarderAddressCH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colForwarderAddressTH = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.TransitModeTransitPointChange);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colPHFactories,
            this.colLocationofSuppFactory,
            this.colIncoterms,
            this.colIncotermsPointPort,
            this.colPointofDestination,
            this.colTransitMode,
            this.colTimeFrame,
            this.colFromEffectivedDate,
            this.colToEffectivedDate,
            this.colSpecialNote,
            this.colForwarderAddressEn,
            this.colForwarderAddressCH,
            this.colForwarderAddressTH});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colPHFactories
            // 
            this.colPHFactories.Caption = "Buyer Production Site";
            this.colPHFactories.FieldName = "PHFactories";
            this.colPHFactories.Name = "colPHFactories";
            this.colPHFactories.Visible = true;
            this.colPHFactories.VisibleIndex = 0;
            this.colPHFactories.Width = 112;
            // 
            // colLocationofSuppFactory
            // 
            this.colLocationofSuppFactory.Caption = "Location of Supp Factory";
            this.colLocationofSuppFactory.FieldName = "LocationofSuppFactory";
            this.colLocationofSuppFactory.Name = "colLocationofSuppFactory";
            this.colLocationofSuppFactory.Visible = true;
            this.colLocationofSuppFactory.VisibleIndex = 1;
            this.colLocationofSuppFactory.Width = 154;
            // 
            // colIncoterms
            // 
            this.colIncoterms.Caption = "Incoterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            this.colIncoterms.Visible = true;
            this.colIncoterms.VisibleIndex = 2;
            this.colIncoterms.Width = 107;
            // 
            // colIncotermsPointPort
            // 
            this.colIncotermsPointPort.Caption = "Transit Point";
            this.colIncotermsPointPort.FieldName = "IncotermsPointPort";
            this.colIncotermsPointPort.Name = "colIncotermsPointPort";
            this.colIncotermsPointPort.Visible = true;
            this.colIncotermsPointPort.VisibleIndex = 3;
            this.colIncotermsPointPort.Width = 148;
            // 
            // colPointofDestination
            // 
            this.colPointofDestination.Caption = "Cargo Receiving && ConsolidationStation(Code)";
            this.colPointofDestination.FieldName = "PointofDestination";
            this.colPointofDestination.Name = "colPointofDestination";
            this.colPointofDestination.Visible = true;
            this.colPointofDestination.VisibleIndex = 4;
            this.colPointofDestination.Width = 183;
            // 
            // colTransitMode
            // 
            this.colTransitMode.Caption = "Transit Mode";
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.Visible = true;
            this.colTransitMode.VisibleIndex = 5;
            this.colTransitMode.Width = 116;
            // 
            // colTimeFrame
            // 
            this.colTimeFrame.Caption = "Time Frame";
            this.colTimeFrame.FieldName = "TimeFrame";
            this.colTimeFrame.Name = "colTimeFrame";
            this.colTimeFrame.Visible = true;
            this.colTimeFrame.VisibleIndex = 6;
            this.colTimeFrame.Width = 114;
            // 
            // colFromEffectivedDate
            // 
            this.colFromEffectivedDate.Caption = "From Effective Date";
            this.colFromEffectivedDate.FieldName = "FromEffectivedDate";
            this.colFromEffectivedDate.Name = "colFromEffectivedDate";
            this.colFromEffectivedDate.Visible = true;
            this.colFromEffectivedDate.VisibleIndex = 7;
            this.colFromEffectivedDate.Width = 141;
            // 
            // colToEffectivedDate
            // 
            this.colToEffectivedDate.Caption = "To Effective Date";
            this.colToEffectivedDate.FieldName = "ToEffectivedDate";
            this.colToEffectivedDate.Name = "colToEffectivedDate";
            this.colToEffectivedDate.Visible = true;
            this.colToEffectivedDate.VisibleIndex = 8;
            this.colToEffectivedDate.Width = 137;
            // 
            // colSpecialNote
            // 
            this.colSpecialNote.Caption = "Special Note";
            this.colSpecialNote.FieldName = "SpecialNote";
            this.colSpecialNote.Name = "colSpecialNote";
            this.colSpecialNote.Visible = true;
            this.colSpecialNote.VisibleIndex = 9;
            this.colSpecialNote.Width = 139;
            // 
            // colForwarderAddressEn
            // 
            this.colForwarderAddressEn.Caption = "ForwarderAddressEn";
            this.colForwarderAddressEn.FieldName = "ForwarderAddressEn";
            this.colForwarderAddressEn.Name = "colForwarderAddressEn";
            this.colForwarderAddressEn.Visible = true;
            this.colForwarderAddressEn.VisibleIndex = 10;
            this.colForwarderAddressEn.Width = 149;
            // 
            // colForwarderAddressCH
            // 
            this.colForwarderAddressCH.Caption = "ForwarderAddressCH";
            this.colForwarderAddressCH.FieldName = "ForwarderAddressCH";
            this.colForwarderAddressCH.Name = "colForwarderAddressCH";
            this.colForwarderAddressCH.Visible = true;
            this.colForwarderAddressCH.VisibleIndex = 11;
            this.colForwarderAddressCH.Width = 150;
            // 
            // colForwarderAddressTH
            // 
            this.colForwarderAddressTH.Caption = "ForwarderAddressTH";
            this.colForwarderAddressTH.FieldName = "ForwarderAddressTH";
            this.colForwarderAddressTH.Name = "colForwarderAddressTH";
            this.colForwarderAddressTH.Visible = true;
            this.colForwarderAddressTH.VisibleIndex = 12;
            this.colForwarderAddressTH.Width = 148;
            // 
            // TransitModeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TransitModeListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colPHFactories;
        private DevExpress.XtraGrid.Columns.GridColumn colLocationofSuppFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colIncoterms;
        private DevExpress.XtraGrid.Columns.GridColumn colIncotermsPointPort;
        private DevExpress.XtraGrid.Columns.GridColumn colPointofDestination;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitMode;
        private DevExpress.XtraGrid.Columns.GridColumn colTimeFrame;
        private DevExpress.XtraGrid.Columns.GridColumn colFromEffectivedDate;
        private DevExpress.XtraGrid.Columns.GridColumn colToEffectivedDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSpecialNote;
        private DevExpress.XtraGrid.Columns.GridColumn colForwarderAddressEn;
        private DevExpress.XtraGrid.Columns.GridColumn colForwarderAddressCH;
        private DevExpress.XtraGrid.Columns.GridColumn colForwarderAddressTH;
    }
}
