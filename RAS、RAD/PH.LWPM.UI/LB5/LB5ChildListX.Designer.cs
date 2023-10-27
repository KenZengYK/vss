namespace PH.LWPM.UI.LB5
{
    partial class LB5ChildListX
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
            this.colDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOTN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsConfirmed = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.colReason = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(876, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDate,
            this.colOTN,
            this.colIsConfirmed,
            this.colConfirmTime,
            this.colReason});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowGroupPanel = false;
            // 
            // colDate
            // 
            this.colDate.Caption = "Date";
            this.colDate.DisplayFormat.FormatString = "yy-MM-dd";
            this.colDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDate.FieldName = "Date";
            this.colDate.Name = "colDate";
            this.colDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.colDate.Visible = true;
            this.colDate.VisibleIndex = 0;
            this.colDate.Width = 84;
            // 
            // colOTN
            // 
            this.colOTN.Caption = "Time";
            this.colOTN.FieldName = "OTN";
            this.colOTN.Name = "colOTN";
            this.colOTN.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOTN.Visible = true;
            this.colOTN.VisibleIndex = 1;
            this.colOTN.Width = 63;
            // 
            // colIsConfirmed
            // 
            this.colIsConfirmed.Caption = "Confirmed";
            this.colIsConfirmed.FieldName = "IsConfirmed";
            this.colIsConfirmed.Name = "colIsConfirmed";
            this.colIsConfirmed.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colIsConfirmed.Visible = true;
            this.colIsConfirmed.VisibleIndex = 2;
            // 
            // colConfirmTime
            // 
            this.colConfirmTime.Caption = "Confirm Date/Time";
            this.colConfirmTime.DisplayFormat.FormatString = "yy/MM/dd HH:mm";
            this.colConfirmTime.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colConfirmTime.FieldName = "ConfirmTime";
            this.colConfirmTime.Name = "colConfirmTime";
            this.colConfirmTime.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colConfirmTime.Visible = true;
            this.colConfirmTime.VisibleIndex = 3;
            this.colConfirmTime.Width = 145;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "AddNew";
            this.barButtonItem1.Id = 60;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // colReason
            // 
            this.colReason.Caption = "Reason";
            this.colReason.FieldName = "Reason";
            this.colReason.Name = "colReason";
            this.colReason.Visible = true;
            this.colReason.VisibleIndex = 4;
            this.colReason.Width = 328;
            // 
            // LB5ChildListX
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "LB5ChildListX";
            this.Size = new System.Drawing.Size(876, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDate;
        private DevExpress.XtraGrid.Columns.GridColumn colOTN;
        private DevExpress.XtraGrid.Columns.GridColumn colIsConfirmed;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmTime;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Columns.GridColumn colReason;
    }
}
