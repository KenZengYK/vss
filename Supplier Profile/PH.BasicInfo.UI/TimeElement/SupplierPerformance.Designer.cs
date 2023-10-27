namespace PH.BasicInfo.UI.TimeElement
{
    partial class SupplierPerformance
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
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            this.gvPerformanceRanking = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCategory1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWeight = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCalcEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCalcEdit();
            this.colDescription = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.colSpecific = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPerformance = new DevExpress.XtraGrid.GridControl();
            this.performanceBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gvPerformance = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWeightAve = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmPerson = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfrimDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.gcSupplier = new DevExpress.XtraGrid.GridControl();
            this.supplierProfileBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gvSupplier = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcSupplierName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.spCreditEval = new DevExpress.XtraEditors.SplitContainerControl();
            this.btnSave = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gvPerformanceRanking)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCalcEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcPerformance)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.performanceBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvPerformance)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcSupplier)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierProfileBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSupplier)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spCreditEval)).BeginInit();
            this.spCreditEval.SuspendLayout();
            this.SuspendLayout();
            // 
            // gvPerformanceRanking
            // 
            this.gvPerformanceRanking.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSeq,
            this.colCategory1,
            this.colItemCode,
            this.colWeight,
            this.colDescription,
            this.colSpecific});
            this.gvPerformanceRanking.GridControl = this.gcPerformance;
            this.gvPerformanceRanking.Name = "gvPerformanceRanking";
            this.gvPerformanceRanking.OptionsCustomization.AllowFilter = false;
            this.gvPerformanceRanking.OptionsCustomization.AllowSort = false;
            this.gvPerformanceRanking.OptionsDetail.EnableMasterViewMode = false;
            this.gvPerformanceRanking.OptionsView.ColumnAutoWidth = false;
            this.gvPerformanceRanking.OptionsView.RowAutoHeight = true;
            this.gvPerformanceRanking.OptionsView.ShowGroupPanel = false;
            this.gvPerformanceRanking.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSeq, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.gvPerformanceRanking.ValidatingEditor += new DevExpress.XtraEditors.Controls.BaseContainerValidateEditorEventHandler(this.gvPerformanceRanking_ValidatingEditor);
            // 
            // colSeq
            // 
            this.colSeq.Caption = " ";
            this.colSeq.FieldName = "Seq";
            this.colSeq.Name = "colSeq";
            this.colSeq.OptionsColumn.AllowEdit = false;
            this.colSeq.Visible = true;
            this.colSeq.VisibleIndex = 0;
            this.colSeq.Width = 30;
            // 
            // colCategory1
            // 
            this.colCategory1.Caption = "Category";
            this.colCategory1.FieldName = "Category";
            this.colCategory1.Name = "colCategory1";
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "ItemCode";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            // 
            // colWeight
            // 
            this.colWeight.Caption = "Weight";
            this.colWeight.ColumnEdit = this.repositoryItemCalcEdit1;
            this.colWeight.FieldName = "Weight";
            this.colWeight.Name = "colWeight";
            this.colWeight.Visible = true;
            this.colWeight.VisibleIndex = 3;
            this.colWeight.Width = 89;
            // 
            // repositoryItemCalcEdit1
            // 
            this.repositoryItemCalcEdit1.AutoHeight = false;
            this.repositoryItemCalcEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemCalcEdit1.Name = "repositoryItemCalcEdit1";
            // 
            // colDescription
            // 
            this.colDescription.Caption = "Description";
            this.colDescription.ColumnEdit = this.repositoryItemMemoEdit1;
            this.colDescription.FieldName = "Description";
            this.colDescription.Name = "colDescription";
            this.colDescription.OptionsColumn.AllowEdit = false;
            this.colDescription.Visible = true;
            this.colDescription.VisibleIndex = 1;
            this.colDescription.Width = 130;
            // 
            // repositoryItemMemoEdit1
            // 
            this.repositoryItemMemoEdit1.Appearance.Font = new System.Drawing.Font("Courier New", 9F);
            this.repositoryItemMemoEdit1.Appearance.Options.UseFont = true;
            this.repositoryItemMemoEdit1.Name = "repositoryItemMemoEdit1";
            // 
            // colSpecific
            // 
            this.colSpecific.AppearanceCell.Font = new System.Drawing.Font("Courier New", 9F);
            this.colSpecific.AppearanceCell.Options.UseFont = true;
            this.colSpecific.Caption = "Specific";
            this.colSpecific.ColumnEdit = this.repositoryItemMemoEdit1;
            this.colSpecific.FieldName = "Specific";
            this.colSpecific.Name = "colSpecific";
            this.colSpecific.OptionsColumn.AllowEdit = false;
            this.colSpecific.Visible = true;
            this.colSpecific.VisibleIndex = 2;
            this.colSpecific.Width = 619;
            // 
            // gcPerformance
            // 
            this.gcPerformance.DataSource = this.performanceBindingSource;
            this.gcPerformance.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcPerformance.EmbeddedNavigator.Name = "";
            gridLevelNode2.LevelTemplate = this.gvPerformanceRanking;
            gridLevelNode2.RelationName = "PerformanceRankings";
            this.gcPerformance.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode2});
            this.gcPerformance.Location = new System.Drawing.Point(0, 0);
            this.gcPerformance.MainView = this.gvPerformance;
            this.gcPerformance.Name = "gcPerformance";
            this.gcPerformance.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit1,
            this.repositoryItemCalcEdit1});
            this.gcPerformance.Size = new System.Drawing.Size(639, 395);
            this.gcPerformance.TabIndex = 0;
            this.gcPerformance.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvPerformance,
            this.gvPerformanceRanking});
            // 
            // performanceBindingSource
            // 
            this.performanceBindingSource.DataSource = typeof(PH.BasicInfo.BO.Performance);
            // 
            // gvPerformance
            // 
            this.gvPerformance.ChildGridLevelName = "PerformanceRankings";
            this.gvPerformance.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCategory,
            this.colDept,
            this.colWeightAve,
            this.colConfirmPerson,
            this.colConfrimDate});
            this.gvPerformance.GridControl = this.gcPerformance;
            this.gvPerformance.Name = "gvPerformance";
            this.gvPerformance.OptionsBehavior.Editable = false;
            this.gvPerformance.OptionsDetail.AllowOnlyOneMasterRowExpanded = true;
            this.gvPerformance.OptionsDetail.ShowDetailTabs = false;
            this.gvPerformance.OptionsDetail.SmartDetailExpand = false;
            this.gvPerformance.OptionsView.ColumnAutoWidth = false;
            this.gvPerformance.OptionsView.RowAutoHeight = true;
            this.gvPerformance.OptionsView.ShowGroupPanel = false;
            // 
            // colCategory
            // 
            this.colCategory.Caption = "Category";
            this.colCategory.FieldName = "Category";
            this.colCategory.Name = "colCategory";
            this.colCategory.Visible = true;
            this.colCategory.VisibleIndex = 0;
            this.colCategory.Width = 185;
            // 
            // colDept
            // 
            this.colDept.Caption = "Dept";
            this.colDept.FieldName = "Dept";
            this.colDept.Name = "colDept";
            this.colDept.Visible = true;
            this.colDept.VisibleIndex = 2;
            this.colDept.Width = 76;
            // 
            // colWeightAve
            // 
            this.colWeightAve.AppearanceCell.Options.UseTextOptions = true;
            this.colWeightAve.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWeightAve.Caption = "Weight";
            this.colWeightAve.FieldName = "WeightAve";
            this.colWeightAve.Name = "colWeightAve";
            this.colWeightAve.Visible = true;
            this.colWeightAve.VisibleIndex = 1;
            // 
            // colConfirmPerson
            // 
            this.colConfirmPerson.Caption = "Confirm by";
            this.colConfirmPerson.FieldName = "ConfirmPerson";
            this.colConfirmPerson.Name = "colConfirmPerson";
            this.colConfirmPerson.Visible = true;
            this.colConfirmPerson.VisibleIndex = 3;
            this.colConfirmPerson.Width = 104;
            // 
            // colConfrimDate
            // 
            this.colConfrimDate.Caption = "Confrim Date";
            this.colConfrimDate.FieldName = "ConfrimDate";
            this.colConfrimDate.Name = "colConfrimDate";
            this.colConfrimDate.Visible = true;
            this.colConfrimDate.VisibleIndex = 4;
            this.colConfrimDate.Width = 121;
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.FixedPanel = System.Windows.Forms.FixedPanel.Panel1;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.gcSupplier);
            this.PlatetoolTipController.SetSuperTip(this.splitContainer1.Panel1, null);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.spCreditEval);
            this.PlatetoolTipController.SetSuperTip(this.splitContainer1.Panel2, null);
            this.splitContainer1.Size = new System.Drawing.Size(772, 444);
            this.splitContainer1.SplitterDistance = 125;
            this.PlatetoolTipController.SetSuperTip(this.splitContainer1, null);
            this.splitContainer1.TabIndex = 0;
            // 
            // gcSupplier
            // 
            this.gcSupplier.DataSource = this.supplierProfileBindingSource;
            this.gcSupplier.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcSupplier.EmbeddedNavigator.Name = "";
            this.gcSupplier.Location = new System.Drawing.Point(0, 0);
            this.gcSupplier.MainView = this.gvSupplier;
            this.gcSupplier.Name = "gcSupplier";
            this.gcSupplier.Size = new System.Drawing.Size(125, 444);
            this.gcSupplier.TabIndex = 0;
            this.gcSupplier.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvSupplier});
            // 
            // supplierProfileBindingSource
            // 
            this.supplierProfileBindingSource.DataSource = typeof(PH.BasicInfo.BO.SupplierProfile);
            // 
            // gvSupplier
            // 
            this.gvSupplier.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcSupplierName,
            this.colSupplier,
            this.colSupplierName});
            this.gvSupplier.GridControl = this.gcSupplier;
            this.gvSupplier.Name = "gvSupplier";
            this.gvSupplier.OptionsBehavior.Editable = false;
            this.gvSupplier.OptionsDetail.EnableMasterViewMode = false;
            this.gvSupplier.OptionsSelection.InvertSelection = true;
            this.gvSupplier.OptionsView.ColumnAutoWidth = false;
            this.gvSupplier.OptionsView.ShowGroupPanel = false;
            // 
            // gcSupplierName
            // 
            this.gcSupplierName.Caption = "Supplier";
            this.gcSupplierName.FieldName = "ERPSupplier";
            this.gcSupplierName.Name = "gcSupplierName";
            this.gcSupplierName.Visible = true;
            this.gcSupplierName.VisibleIndex = 0;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "MIDc Supplier";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.Width = 106;
            // 
            // colSupplierName
            // 
            this.colSupplierName.Caption = "Supplier Name";
            this.colSupplierName.FieldName = "SupplierName";
            this.colSupplierName.Name = "colSupplierName";
            this.colSupplierName.Width = 291;
            // 
            // spCreditEval
            // 
            this.spCreditEval.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.spCreditEval.Dock = System.Windows.Forms.DockStyle.Fill;
            this.spCreditEval.Horizontal = false;
            this.spCreditEval.Location = new System.Drawing.Point(0, 0);
            this.spCreditEval.Name = "spCreditEval";
            this.spCreditEval.Panel1.Controls.Add(this.btnSave);
            this.spCreditEval.Panel1.Text = "Panel1";
            this.spCreditEval.Panel2.Controls.Add(this.gcPerformance);
            this.spCreditEval.Panel2.Text = "Panel2";
            this.spCreditEval.Size = new System.Drawing.Size(643, 444);
            this.spCreditEval.SplitterPosition = 39;
            this.PlatetoolTipController.SetSuperTip(this.spCreditEval, null);
            this.spCreditEval.TabIndex = 0;
            this.spCreditEval.Text = "splitContainerControl1";
            // 
            // btnSave
            // 
            this.btnSave.Image = global::PH.BasicInfo.UI.Properties.Resources.Save;
            this.btnSave.Location = new System.Drawing.Point(67, 3);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 26);
            this.btnSave.TabIndex = 1;
            this.btnSave.Text = "Save";
            this.btnSave.Click += new System.EventHandler(this.Save_Click);
            // 
            // SupplierPerformance
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.splitContainer1);
            this.Name = "SupplierPerformance";
            this.Size = new System.Drawing.Size(772, 444);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.gvPerformanceRanking)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCalcEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcPerformance)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.performanceBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvPerformance)).EndInit();
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcSupplier)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierProfileBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSupplier)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spCreditEval)).EndInit();
            this.spCreditEval.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.SplitContainer splitContainer1;
        private DevExpress.XtraGrid.GridControl gcSupplier;
        private DevExpress.XtraGrid.Views.Grid.GridView gvSupplier;
        private DevExpress.XtraEditors.SplitContainerControl spCreditEval;
        private DevExpress.XtraEditors.SimpleButton btnSave;
        private DevExpress.XtraGrid.GridControl gcPerformance;
        private DevExpress.XtraGrid.Views.Grid.GridView gvPerformance;
        private DevExpress.XtraGrid.Columns.GridColumn gcSupplierName;
        private System.Windows.Forms.BindingSource supplierProfileBindingSource;
        private System.Windows.Forms.BindingSource performanceBindingSource;
        private DevExpress.XtraGrid.Views.Grid.GridView gvPerformanceRanking;
        private DevExpress.XtraGrid.Columns.GridColumn colCategory;
        private DevExpress.XtraGrid.Columns.GridColumn colDept;
        private DevExpress.XtraGrid.Columns.GridColumn colWeightAve;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmPerson;
        private DevExpress.XtraGrid.Columns.GridColumn colConfrimDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCategory1;
        private DevExpress.XtraGrid.Columns.GridColumn colItemCode;
        private DevExpress.XtraGrid.Columns.GridColumn colWeight;
        private DevExpress.XtraGrid.Columns.GridColumn colDescription;
        private DevExpress.XtraGrid.Columns.GridColumn colSpecific;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colSeq;
        private DevExpress.XtraEditors.Repository.RepositoryItemCalcEdit repositoryItemCalcEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierName;

    }
}
