namespace PH.LWPM.UI.WF.Report
{
    partial class WFExcel
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
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSeniorityS = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLB4YNSel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLocked = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colResered = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNameCn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNameEn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSex = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNextDept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeptName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineCode = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource1;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(30, 12);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(685, 395);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.LWPM.BO.WorkForce);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSeniorityS,
            this.colLB4YNSel,
            this.colLocked,
            this.colResered,
            this.colId,
            this.colNameCn,
            this.colNameEn,
            this.colSex,
            this.colFactory,
            this.colDept,
            this.colNextDept,
            this.colDeptName,
            this.colLineCode});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.GroupCount = 2;
            this.gridView1.Name = "gridView1";
            this.gridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSeniorityS, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLocked, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.gridView1.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.gridView1_CustomSummaryCalculate);
            // 
            // colSeniorityS
            // 
            this.colSeniorityS.Caption = "SeniorityS";
            this.colSeniorityS.FieldName = "SeniorityS";
            this.colSeniorityS.Name = "colSeniorityS";
            this.colSeniorityS.OptionsColumn.ReadOnly = true;
            this.colSeniorityS.Visible = true;
            this.colSeniorityS.VisibleIndex = 0;
            // 
            // colLB4YNSel
            // 
            this.colLB4YNSel.Caption = "LB4YNSel";
            this.colLB4YNSel.FieldName = "LB4YNSel";
            this.colLB4YNSel.Name = "colLB4YNSel";
            this.colLB4YNSel.Visible = true;
            this.colLB4YNSel.VisibleIndex = 0;
            // 
            // colLocked
            // 
            this.colLocked.Caption = "Locked";
            this.colLocked.FieldName = "Locked";
            this.colLocked.Name = "colLocked";
            this.colLocked.Visible = true;
            this.colLocked.VisibleIndex = 1;
            // 
            // colResered
            // 
            this.colResered.Caption = "Resered";
            this.colResered.FieldName = "Resered";
            this.colResered.Name = "colResered";
            this.colResered.Visible = true;
            this.colResered.VisibleIndex = 1;
            // 
            // colId
            // 
            this.colId.Caption = "Id";
            this.colId.FieldName = "Id";
            this.colId.Name = "colId";
            this.colId.Visible = true;
            this.colId.VisibleIndex = 2;
            // 
            // colNameCn
            // 
            this.colNameCn.Caption = "NameCn";
            this.colNameCn.FieldName = "NameCn";
            this.colNameCn.Name = "colNameCn";
            this.colNameCn.Visible = true;
            this.colNameCn.VisibleIndex = 3;
            // 
            // colNameEn
            // 
            this.colNameEn.Caption = "NameEn";
            this.colNameEn.FieldName = "NameEn";
            this.colNameEn.Name = "colNameEn";
            this.colNameEn.Visible = true;
            this.colNameEn.VisibleIndex = 4;
            // 
            // colSex
            // 
            this.colSex.Caption = "Sex";
            this.colSex.FieldName = "Sex";
            this.colSex.Name = "colSex";
            this.colSex.Visible = true;
            this.colSex.VisibleIndex = 5;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 6;
            // 
            // colDept
            // 
            this.colDept.Caption = "Dept";
            this.colDept.FieldName = "Dept";
            this.colDept.Name = "colDept";
            this.colDept.Visible = true;
            this.colDept.VisibleIndex = 7;
            // 
            // colNextDept
            // 
            this.colNextDept.Caption = "NextDept";
            this.colNextDept.FieldName = "NextDept";
            this.colNextDept.Name = "colNextDept";
            this.colNextDept.Visible = true;
            this.colNextDept.VisibleIndex = 8;
            // 
            // colDeptName
            // 
            this.colDeptName.Caption = "DeptName";
            this.colDeptName.FieldName = "DeptName";
            this.colDeptName.Name = "colDeptName";
            this.colDeptName.Visible = true;
            this.colDeptName.VisibleIndex = 9;
            // 
            // colLineCode
            // 
            this.colLineCode.Caption = "LineCode";
            this.colLineCode.FieldName = "LineCode";
            this.colLineCode.Name = "colLineCode";
            this.colLineCode.Visible = true;
            this.colLineCode.VisibleIndex = 10;
            // 
            // WFExcel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(727, 438);
            this.Controls.Add(this.gridControl1);
            this.Name = "WFExcel";
            this.Text = "WFExcel";
            this.Load += new System.EventHandler(this.WFExcel_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Columns.GridColumn colSeniorityS;
        private DevExpress.XtraGrid.Columns.GridColumn colLB4YNSel;
        private DevExpress.XtraGrid.Columns.GridColumn colLocked;
        private DevExpress.XtraGrid.Columns.GridColumn colResered;
        private DevExpress.XtraGrid.Columns.GridColumn colId;
        private DevExpress.XtraGrid.Columns.GridColumn colNameCn;
        private DevExpress.XtraGrid.Columns.GridColumn colNameEn;
        private DevExpress.XtraGrid.Columns.GridColumn colSex;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colDept;
        private DevExpress.XtraGrid.Columns.GridColumn colNextDept;
        private DevExpress.XtraGrid.Columns.GridColumn colDeptName;
        private DevExpress.XtraGrid.Columns.GridColumn colLineCode;

    }
}