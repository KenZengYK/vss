namespace PH.MR.UI.HSWOIssue
{
    partial class IssueHSMaterialChoseForm
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
            this.sBtn_Create = new DevExpress.XtraEditors.SimpleButton();
            this.gridControl_MRHSCodeRptBO = new DevExpress.XtraGrid.GridControl();
            this.bindingSource_BO = new System.Windows.Forms.BindingSource(this.components);
            this.gridView_MRHSCodeRptBO = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colIsSelected = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleno = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSTypeName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectno = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkorderno = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSItemSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSItemMaterialName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSItemMemo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.sBtn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_MRHSCodeRptBO)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_BO)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_MRHSCodeRptBO)).BeginInit();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.sBtn_Cancel);
            this.panelControl1.Controls.Add(this.sBtn_Create);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1014, 36);
            this.panelControl1.TabIndex = 0;
            // 
            // sBtn_Create
            // 
            this.sBtn_Create.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_Create.Location = new System.Drawing.Point(899, 4);
            this.sBtn_Create.Name = "sBtn_Create";
            this.sBtn_Create.Size = new System.Drawing.Size(103, 28);
            this.sBtn_Create.TabIndex = 0;
            this.sBtn_Create.Text = "創建發料單";
            this.sBtn_Create.Click += new System.EventHandler(this.sBtn_Create_Click);
            // 
            // gridControl_MRHSCodeRptBO
            // 
            this.gridControl_MRHSCodeRptBO.DataSource = this.bindingSource_BO;
            this.gridControl_MRHSCodeRptBO.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl_MRHSCodeRptBO.EmbeddedNavigator.Name = "";
            this.gridControl_MRHSCodeRptBO.Location = new System.Drawing.Point(0, 36);
            this.gridControl_MRHSCodeRptBO.MainView = this.gridView_MRHSCodeRptBO;
            this.gridControl_MRHSCodeRptBO.Name = "gridControl_MRHSCodeRptBO";
            this.gridControl_MRHSCodeRptBO.Size = new System.Drawing.Size(1014, 368);
            this.gridControl_MRHSCodeRptBO.TabIndex = 1;
            this.gridControl_MRHSCodeRptBO.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView_MRHSCodeRptBO});
            // 
            // bindingSource_BO
            // 
            this.bindingSource_BO.DataSource = typeof(PH.MR.BO.HSWOIssueMaterialType);
            // 
            // gridView_MRHSCodeRptBO
            // 
            this.gridView_MRHSCodeRptBO.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colIsSelected,
            this.colStyleno,
            this.colHSTypeName,
            this.colProjectno,
            this.colWorkorderno,
            this.colHSItemSeq,
            this.colHSItemCode,
            this.colHSItemMaterialName,
            this.colHSItemMemo});
            this.gridView_MRHSCodeRptBO.GridControl = this.gridControl_MRHSCodeRptBO;
            this.gridView_MRHSCodeRptBO.GroupCount = 2;
            this.gridView_MRHSCodeRptBO.Name = "gridView_MRHSCodeRptBO";
            this.gridView_MRHSCodeRptBO.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colProjectno, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colWorkorderno, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // colIsSelected
            // 
            this.colIsSelected.Caption = "IsSelected";
            this.colIsSelected.FieldName = "IsSelected";
            this.colIsSelected.Name = "colIsSelected";
            this.colIsSelected.Visible = true;
            this.colIsSelected.VisibleIndex = 0;
            // 
            // colStyleno
            // 
            this.colStyleno.Caption = "Styleno";
            this.colStyleno.FieldName = "Styleno";
            this.colStyleno.Name = "colStyleno";
            this.colStyleno.OptionsColumn.AllowEdit = false;
            this.colStyleno.Visible = true;
            this.colStyleno.VisibleIndex = 1;
            // 
            // colHSTypeName
            // 
            this.colHSTypeName.Caption = "HSTypeName";
            this.colHSTypeName.FieldName = "HSTypeName";
            this.colHSTypeName.Name = "colHSTypeName";
            this.colHSTypeName.OptionsColumn.AllowEdit = false;
            this.colHSTypeName.Visible = true;
            this.colHSTypeName.VisibleIndex = 2;
            // 
            // colProjectno
            // 
            this.colProjectno.Caption = "Projectno";
            this.colProjectno.FieldName = "Projectno";
            this.colProjectno.Name = "colProjectno";
            this.colProjectno.OptionsColumn.AllowEdit = false;
            this.colProjectno.Visible = true;
            this.colProjectno.VisibleIndex = 3;
            // 
            // colWorkorderno
            // 
            this.colWorkorderno.Caption = "Workorderno";
            this.colWorkorderno.FieldName = "Workorderno";
            this.colWorkorderno.Name = "colWorkorderno";
            this.colWorkorderno.OptionsColumn.AllowEdit = false;
            this.colWorkorderno.Visible = true;
            this.colWorkorderno.VisibleIndex = 3;
            // 
            // colHSItemSeq
            // 
            this.colHSItemSeq.Caption = "HSItemSeq";
            this.colHSItemSeq.FieldName = "HSItemSeq";
            this.colHSItemSeq.Name = "colHSItemSeq";
            this.colHSItemSeq.OptionsColumn.AllowEdit = false;
            this.colHSItemSeq.Visible = true;
            this.colHSItemSeq.VisibleIndex = 3;
            // 
            // colHSItemCode
            // 
            this.colHSItemCode.Caption = "HSItemCode";
            this.colHSItemCode.FieldName = "HSItemCode";
            this.colHSItemCode.Name = "colHSItemCode";
            this.colHSItemCode.OptionsColumn.AllowEdit = false;
            this.colHSItemCode.Visible = true;
            this.colHSItemCode.VisibleIndex = 4;
            // 
            // colHSItemMaterialName
            // 
            this.colHSItemMaterialName.Caption = "HSItemMaterialName";
            this.colHSItemMaterialName.FieldName = "HSItemMaterialName";
            this.colHSItemMaterialName.Name = "colHSItemMaterialName";
            this.colHSItemMaterialName.OptionsColumn.AllowEdit = false;
            this.colHSItemMaterialName.Visible = true;
            this.colHSItemMaterialName.VisibleIndex = 5;
            // 
            // colHSItemMemo
            // 
            this.colHSItemMemo.Caption = "HSItemMemo";
            this.colHSItemMemo.FieldName = "HSItemMemo";
            this.colHSItemMemo.Name = "colHSItemMemo";
            this.colHSItemMemo.OptionsColumn.AllowEdit = false;
            this.colHSItemMemo.Visible = true;
            this.colHSItemMemo.VisibleIndex = 6;
            // 
            // sBtn_Cancel
            // 
            this.sBtn_Cancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_Cancel.Location = new System.Drawing.Point(790, 5);
            this.sBtn_Cancel.Name = "sBtn_Cancel";
            this.sBtn_Cancel.Size = new System.Drawing.Size(103, 28);
            this.sBtn_Cancel.TabIndex = 0;
            this.sBtn_Cancel.Text = "取消";
            this.sBtn_Cancel.Click += new System.EventHandler(this.sBtn_Cancel_Click);
            // 
            // IssueHSMaterialChoseForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1014, 404);
            this.Controls.Add(this.gridControl_MRHSCodeRptBO);
            this.Controls.Add(this.panelControl1);
            this.Name = "IssueHSMaterialChoseForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "IssueHSMaterialChoseForm";
            this.Load += new System.EventHandler(this.IssueHSMaterialChoseForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_MRHSCodeRptBO)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_BO)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_MRHSCodeRptBO)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraGrid.GridControl gridControl_MRHSCodeRptBO;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView_MRHSCodeRptBO;
        private System.Windows.Forms.BindingSource bindingSource_BO;
        private DevExpress.XtraGrid.Columns.GridColumn colIsSelected;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleno;
        private DevExpress.XtraGrid.Columns.GridColumn colHSTypeName;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectno;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkorderno;
        private DevExpress.XtraGrid.Columns.GridColumn colHSItemSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colHSItemCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHSItemMaterialName;
        private DevExpress.XtraGrid.Columns.GridColumn colHSItemMemo;
        private DevExpress.XtraEditors.SimpleButton sBtn_Create;
        private DevExpress.XtraEditors.SimpleButton sBtn_Cancel;
    }
}