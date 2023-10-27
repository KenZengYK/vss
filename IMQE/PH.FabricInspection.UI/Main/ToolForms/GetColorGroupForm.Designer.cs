namespace PH.FabricInspection.UI
{
    partial class GetColorGroupForm
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
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.gCtrl_FabricInspHeader = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colItem_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLot_Id = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colActual_Length = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRoll_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplich_Batch = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColor_Group_Status = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.sBtn_Close = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_GetColorGroup = new DevExpress.XtraEditors.SimpleButton();
            this.progressBarCtrl = new DevExpress.XtraEditors.ProgressBarControl();
            this.repositoryItemMemoEdit_MultiRow = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gCtrl_FabricInspHeader)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.progressBarCtrl.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultiRow)).BeginInit();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.gCtrl_FabricInspHeader);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(813, 249);
            this.panelControl1.TabIndex = 0;
            // 
            // gCtrl_FabricInspHeader
            // 
            this.gCtrl_FabricInspHeader.DataSource = this.bindingSource1;
            this.gCtrl_FabricInspHeader.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gCtrl_FabricInspHeader.EmbeddedNavigator.Name = "";
            this.gCtrl_FabricInspHeader.Location = new System.Drawing.Point(2, 2);
            this.gCtrl_FabricInspHeader.MainView = this.gridView1;
            this.gCtrl_FabricInspHeader.Name = "gCtrl_FabricInspHeader";
            this.gCtrl_FabricInspHeader.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemSpinEdit1,
            this.repositoryItemMemoEdit_MultiRow});
            this.gCtrl_FabricInspHeader.Size = new System.Drawing.Size(809, 245);
            this.gCtrl_FabricInspHeader.TabIndex = 0;
            this.gCtrl_FabricInspHeader.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1,
            this.gridView2});
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.FabricInspection.BO.Fabric_Insp_Header);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colItem_No,
            this.colLot_Id,
            this.colActual_Length,
            this.gridColumn1,
            this.colRoll_No,
            this.colSupplich_Batch,
            this.colColor_Group_Status});
            this.gridView1.GridControl = this.gCtrl_FabricInspHeader;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsCustomization.AllowRowSizing = true;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // colItem_No
            // 
            this.colItem_No.Caption = "Item Cde/Clr";
            this.colItem_No.FieldName = "Item_No";
            this.colItem_No.Name = "colItem_No";
            this.colItem_No.OptionsColumn.AllowEdit = false;
            this.colItem_No.Visible = true;
            this.colItem_No.VisibleIndex = 0;
            this.colItem_No.Width = 121;
            // 
            // colLot_Id
            // 
            this.colLot_Id.Caption = "Item id#";
            this.colLot_Id.ColumnEdit = this.repositoryItemMemoEdit_MultiRow;
            this.colLot_Id.FieldName = "Lot_Id";
            this.colLot_Id.Name = "colLot_Id";
            this.colLot_Id.OptionsColumn.AllowEdit = false;
            this.colLot_Id.Visible = true;
            this.colLot_Id.VisibleIndex = 1;
            this.colLot_Id.Width = 129;
            // 
            // colActual_Length
            // 
            this.colActual_Length.Caption = "Packing List Length";
            this.colActual_Length.DisplayFormat.FormatString = "#,###,##0.####";
            this.colActual_Length.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colActual_Length.FieldName = "Actual_Length";
            this.colActual_Length.Name = "colActual_Length";
            this.colActual_Length.OptionsColumn.AllowEdit = false;
            this.colActual_Length.Visible = true;
            this.colActual_Length.VisibleIndex = 2;
            this.colActual_Length.Width = 147;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Meas. Length";
            this.gridColumn1.DisplayFormat.FormatString = "#,###,##0.####";
            this.gridColumn1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn1.FieldName = "ActualMeasureLength";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 3;
            this.gridColumn1.Width = 96;
            // 
            // colRoll_No
            // 
            this.colRoll_No.Caption = "Roll#";
            this.colRoll_No.FieldName = "Roll_No";
            this.colRoll_No.Name = "colRoll_No";
            this.colRoll_No.Visible = true;
            this.colRoll_No.VisibleIndex = 4;
            this.colRoll_No.Width = 71;
            // 
            // colSupplich_Batch
            // 
            this.colSupplich_Batch.Caption = "Batch#";
            this.colSupplich_Batch.FieldName = "Supplich_Batch";
            this.colSupplich_Batch.Name = "colSupplich_Batch";
            this.colSupplich_Batch.Visible = true;
            this.colSupplich_Batch.VisibleIndex = 5;
            this.colSupplich_Batch.Width = 103;
            // 
            // colColor_Group_Status
            // 
            this.colColor_Group_Status.Caption = "Color Group ";
            this.colColor_Group_Status.FieldName = "Color_Group_Status";
            this.colColor_Group_Status.Name = "colColor_Group_Status";
            this.colColor_Group_Status.OptionsColumn.AllowEdit = false;
            this.colColor_Group_Status.Visible = true;
            this.colColor_Group_Status.VisibleIndex = 6;
            this.colColor_Group_Status.Width = 90;
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.DisplayFormat.FormatString = "#,###,##0.####";
            this.repositoryItemSpinEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.repositoryItemSpinEdit1.EditFormat.FormatString = "#,###,##0.####";
            this.repositoryItemSpinEdit1.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // gridView2
            // 
            this.gridView2.GridControl = this.gCtrl_FabricInspHeader;
            this.gridView2.Name = "gridView2";
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.sBtn_Close);
            this.panelControl2.Controls.Add(this.sBtn_GetColorGroup);
            this.panelControl2.Controls.Add(this.progressBarCtrl);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl2.Location = new System.Drawing.Point(0, 249);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(813, 35);
            this.panelControl2.TabIndex = 0;
            // 
            // sBtn_Close
            // 
            this.sBtn_Close.Location = new System.Drawing.Point(643, 2);
            this.sBtn_Close.Name = "sBtn_Close";
            this.sBtn_Close.Size = new System.Drawing.Size(82, 28);
            this.sBtn_Close.TabIndex = 2;
            this.sBtn_Close.Text = "Close";
            this.sBtn_Close.Click += new System.EventHandler(this.sBtn_Close_Click);
            // 
            // sBtn_GetColorGroup
            // 
            this.sBtn_GetColorGroup.Location = new System.Drawing.Point(724, 2);
            this.sBtn_GetColorGroup.Name = "sBtn_GetColorGroup";
            this.sBtn_GetColorGroup.Size = new System.Drawing.Size(82, 28);
            this.sBtn_GetColorGroup.TabIndex = 1;
            this.sBtn_GetColorGroup.Text = "Get";
            this.sBtn_GetColorGroup.Click += new System.EventHandler(this.sBtn_GetColorGroup_Click);
            // 
            // progressBarCtrl
            // 
            this.progressBarCtrl.Location = new System.Drawing.Point(10, 9);
            this.progressBarCtrl.Name = "progressBarCtrl";
            this.progressBarCtrl.Size = new System.Drawing.Size(627, 18);
            this.progressBarCtrl.TabIndex = 0;
            this.progressBarCtrl.Visible = false;
            // 
            // repositoryItemMemoEdit_MultiRow
            // 
            this.repositoryItemMemoEdit_MultiRow.Name = "repositoryItemMemoEdit_MultiRow";
            // 
            // GetColorGroupForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(813, 284);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.panelControl2);
            this.Name = "GetColorGroupForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "GetColorGroupForm";
            this.Load += new System.EventHandler(this.GetColorGroupForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gCtrl_FabricInspHeader)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.progressBarCtrl.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultiRow)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraGrid.GridControl gCtrl_FabricInspHeader;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraEditors.SimpleButton sBtn_GetColorGroup;
        private DevExpress.XtraEditors.ProgressBarControl progressBarCtrl;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Columns.GridColumn colItem_No;
        private DevExpress.XtraGrid.Columns.GridColumn colLot_Id;
        private DevExpress.XtraGrid.Columns.GridColumn colColor_Group_Status;
        private DevExpress.XtraGrid.Columns.GridColumn colActual_Length;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn colRoll_No;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private DevExpress.XtraEditors.SimpleButton sBtn_Close;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplich_Batch;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit_MultiRow;
    }
}