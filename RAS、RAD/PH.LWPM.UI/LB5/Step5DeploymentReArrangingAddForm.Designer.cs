namespace PH.LWPM.UI.LB5
{
    partial class Step5DeploymentReArrangingAddForm
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnPrevious = new DevExpress.XtraEditors.SimpleButton();
            this.btnNext = new DevExpress.XtraEditors.SimpleButton();
            this.TabControl = new DevExpress.XtraTab.XtraTabControl();
            this.TabPageLine = new DevExpress.XtraTab.XtraTabPage();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bsWPMaster = new System.Windows.Forms.BindingSource(this.components);
            this.gridLine = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCustStyleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLocation = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWoc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStartTimeShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEndTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colj_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJ2_job = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRwo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBcolor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQNQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.TabPageOperation = new DevExpress.XtraTab.XtraTabPage();
            this.lB5ChildListY1Rearranging = new PH.LWPM.UI.LB5.LB5ChildListY1();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.TabControl)).BeginInit();
            this.TabControl.SuspendLayout();
            this.TabPageLine.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsWPMaster)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridLine)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.TabPageOperation.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnOK);
            this.panel1.Controls.Add(this.btnPrevious);
            this.panel1.Controls.Add(this.btnNext);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 486);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1240, 53);
            this.panel1.TabIndex = 0;
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(1134, 17);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "Close";
            // 
            // btnPrevious
            // 
            this.btnPrevious.Location = new System.Drawing.Point(885, 17);
            this.btnPrevious.Name = "btnPrevious";
            this.btnPrevious.Size = new System.Drawing.Size(75, 23);
            this.btnPrevious.TabIndex = 1;
            this.btnPrevious.Text = "Previous";
            this.btnPrevious.Click += new System.EventHandler(this.btnPrevious_Click);
            // 
            // btnNext
            // 
            this.btnNext.Location = new System.Drawing.Point(976, 17);
            this.btnNext.Name = "btnNext";
            this.btnNext.Size = new System.Drawing.Size(75, 23);
            this.btnNext.TabIndex = 0;
            this.btnNext.Text = "Next";
            this.btnNext.Click += new System.EventHandler(this.btnNext_Click);
            // 
            // TabControl
            // 
            this.TabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.TabControl.Location = new System.Drawing.Point(0, 0);
            this.TabControl.Name = "TabControl";
            this.TabControl.SelectedTabPage = this.TabPageLine;
            this.TabControl.Size = new System.Drawing.Size(1240, 486);
            this.TabControl.TabIndex = 1;
            this.TabControl.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.TabPageLine,
            this.TabPageOperation});
            this.TabControl.Text = "xtraTabControl1";
            // 
            // TabPageLine
            // 
            this.TabPageLine.Controls.Add(this.gridControl1);
            this.TabPageLine.Name = "TabPageLine";
            this.TabPageLine.Size = new System.Drawing.Size(1231, 454);
            this.TabPageLine.Text = "Select Line && QN";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bsWPMaster;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gridLine;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(1231, 454);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridLine,
            this.gridView2});
            // 
            // bsWPMaster
            // 
            this.bsWPMaster.DataSource = typeof(PH.LWPM.BO.WPMaster);
            // 
            // gridLine
            // 
            this.gridLine.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCustStyleCode,
            this.colPHStyleCode,
            this.colLocation,
            this.colFactory,
            this.colLineCode,
            this.colWoc,
            this.colConfirmShow,
            this.colStartTimeShow,
            this.colEndTime,
            this.colj_NO,
            this.colJ2_job,
            this.colRwo,
            this.colQn,
            this.colVersion,
            this.colBcolor,
            this.colQNQty});
            this.gridLine.GridControl = this.gridControl1;
            this.gridLine.GroupCount = 3;
            this.gridLine.Name = "gridLine";
            this.gridLine.OptionsBehavior.Editable = false;
            this.gridLine.OptionsView.ShowDetailButtons = false;
            this.gridLine.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLocation, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLineCode, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colConfirmShow, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.gridLine.DoubleClick += new System.EventHandler(this.gridLine_DoubleClick);
            // 
            // colCustStyleCode
            // 
            this.colCustStyleCode.Caption = "Cust Style";
            this.colCustStyleCode.FieldName = "CustStyleCode";
            this.colCustStyleCode.Name = "colCustStyleCode";
            this.colCustStyleCode.Visible = true;
            this.colCustStyleCode.VisibleIndex = 1;
            this.colCustStyleCode.Width = 82;
            // 
            // colPHStyleCode
            // 
            this.colPHStyleCode.Caption = "PH Style";
            this.colPHStyleCode.FieldName = "PHStyleCode";
            this.colPHStyleCode.Name = "colPHStyleCode";
            this.colPHStyleCode.Visible = true;
            this.colPHStyleCode.VisibleIndex = 0;
            this.colPHStyleCode.Width = 105;
            // 
            // colLocation
            // 
            this.colLocation.Caption = "Workshop";
            this.colLocation.FieldName = "Location";
            this.colLocation.Name = "colLocation";
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            // 
            // colLineCode
            // 
            this.colLineCode.Caption = "Line";
            this.colLineCode.FieldName = "LineCode";
            this.colLineCode.Name = "colLineCode";
            // 
            // colWoc
            // 
            this.colWoc.Caption = "WOc";
            this.colWoc.FieldName = "Woc";
            this.colWoc.Name = "colWoc";
            this.colWoc.Visible = true;
            this.colWoc.VisibleIndex = 6;
            this.colWoc.Width = 79;
            // 
            // colConfirmShow
            // 
            this.colConfirmShow.Caption = "RD processing";
            this.colConfirmShow.FieldName = "ConfirmShow";
            this.colConfirmShow.Name = "colConfirmShow";
            // 
            // colStartTimeShow
            // 
            this.colStartTimeShow.Caption = "Start Time";
            this.colStartTimeShow.FieldName = "StartTimeShow";
            this.colStartTimeShow.Name = "colStartTimeShow";
            this.colStartTimeShow.OptionsColumn.ReadOnly = true;
            this.colStartTimeShow.Visible = true;
            this.colStartTimeShow.VisibleIndex = 2;
            this.colStartTimeShow.Width = 102;
            // 
            // colEndTime
            // 
            this.colEndTime.Caption = "End Time";
            this.colEndTime.FieldName = "EndTime";
            this.colEndTime.Name = "colEndTime";
            this.colEndTime.OptionsColumn.ReadOnly = true;
            this.colEndTime.Visible = true;
            this.colEndTime.VisibleIndex = 3;
            this.colEndTime.Width = 79;
            // 
            // colj_NO
            // 
            this.colj_NO.Caption = "Proj No";
            this.colj_NO.FieldName = "j_NO";
            this.colj_NO.Name = "colj_NO";
            this.colj_NO.Visible = true;
            this.colj_NO.VisibleIndex = 4;
            this.colj_NO.Width = 81;
            // 
            // colJ2_job
            // 
            this.colJ2_job.Caption = "WO";
            this.colJ2_job.FieldName = "J2_job";
            this.colJ2_job.Name = "colJ2_job";
            this.colJ2_job.Visible = true;
            this.colJ2_job.VisibleIndex = 5;
            this.colJ2_job.Width = 79;
            // 
            // colRwo
            // 
            this.colRwo.Caption = "Rwo";
            this.colRwo.FieldName = "RWO";
            this.colRwo.Name = "colRwo";
            this.colRwo.Visible = true;
            this.colRwo.VisibleIndex = 7;
            this.colRwo.Width = 98;
            // 
            // colQn
            // 
            this.colQn.Caption = "Qn";
            this.colQn.FieldName = "Qn";
            this.colQn.Name = "colQn";
            this.colQn.Visible = true;
            this.colQn.VisibleIndex = 8;
            this.colQn.Width = 91;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.Visible = true;
            this.colVersion.VisibleIndex = 11;
            this.colVersion.Width = 71;
            // 
            // colBcolor
            // 
            this.colBcolor.Caption = "Color";
            this.colBcolor.FieldName = "Bcolor";
            this.colBcolor.Name = "colBcolor";
            this.colBcolor.Visible = true;
            this.colBcolor.VisibleIndex = 9;
            this.colBcolor.Width = 86;
            // 
            // colQNQty
            // 
            this.colQNQty.Caption = "QN Qty";
            this.colQNQty.FieldName = "QNQty";
            this.colQNQty.Name = "colQNQty";
            this.colQNQty.Visible = true;
            this.colQNQty.VisibleIndex = 10;
            this.colQNQty.Width = 65;
            // 
            // gridView2
            // 
            this.gridView2.GridControl = this.gridControl1;
            this.gridView2.Name = "gridView2";
            // 
            // TabPageOperation
            // 
            this.TabPageOperation.Controls.Add(this.lB5ChildListY1Rearranging);
            this.TabPageOperation.Name = "TabPageOperation";
            this.TabPageOperation.Size = new System.Drawing.Size(1231, 454);
            this.TabPageOperation.Text = "Deployment re-arrangement (New Proposal)";
            // 
            // lB5ChildListY1Rearranging
            // 
            this.lB5ChildListY1Rearranging.AllowAddRow = false;
            this.lB5ChildListY1Rearranging.AutoOpenDetailForm = false;
            this.lB5ChildListY1Rearranging.DataContext = null;
            this.lB5ChildListY1Rearranging.DataSource = null;
            this.lB5ChildListY1Rearranging.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lB5ChildListY1Rearranging.EditorTypeName = null;
            this.lB5ChildListY1Rearranging.FileID = null;
            this.lB5ChildListY1Rearranging.FirstForm = null;
            this.lB5ChildListY1Rearranging.FormName = "LB5ChildListY1";
            this.lB5ChildListY1Rearranging.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.lB5ChildListY1Rearranging.FormTitle = "PH.LWPM.UI.LB5.LB5ChildListY1";
            this.lB5ChildListY1Rearranging.IsCancelList = false;
            this.lB5ChildListY1Rearranging.IsShowPivotTable = false;
            this.lB5ChildListY1Rearranging.LayoutData = null;
            this.lB5ChildListY1Rearranging.LayoutName = null;
            this.lB5ChildListY1Rearranging.ListForm = null;
            this.lB5ChildListY1Rearranging.Location = new System.Drawing.Point(0, 0);
            this.lB5ChildListY1Rearranging.MenuID = ((long)(0));
            this.lB5ChildListY1Rearranging.Name = "lB5ChildListY1Rearranging";
            this.lB5ChildListY1Rearranging.NeedCheckPermission = true;
            this.lB5ChildListY1Rearranging.NextForm = null;
            this.lB5ChildListY1Rearranging.OptionType = null;
            this.lB5ChildListY1Rearranging.ParentForm = null;
            this.lB5ChildListY1Rearranging.PrevForm = null;
            this.lB5ChildListY1Rearranging.RowChangeAutoSave = true;
            this.lB5ChildListY1Rearranging.ShowMultiCheck = false;
            this.lB5ChildListY1Rearranging.SideProgramID = null;
            this.lB5ChildListY1Rearranging.Size = new System.Drawing.Size(1231, 454);
            this.lB5ChildListY1Rearranging.TabControls = null;
            this.lB5ChildListY1Rearranging.TabIndex = 0;
            this.lB5ChildListY1Rearranging.TabPage = null;
            // 
            // Step5DeploymentReArrangingAddForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1240, 539);
            this.Controls.Add(this.TabControl);
            this.Controls.Add(this.panel1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Step5DeploymentReArrangingAddForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Step5 deployment re-arranging add type";
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.TabControl)).EndInit();
            this.TabControl.ResumeLayout(false);
            this.TabPageLine.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsWPMaster)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridLine)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.TabPageOperation.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraTab.XtraTabControl TabControl;
        private DevExpress.XtraTab.XtraTabPage TabPageLine;
        private DevExpress.XtraTab.XtraTabPage TabPageOperation;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridLine;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private System.Windows.Forms.BindingSource bsWPMaster;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colLineCode;
        private DevExpress.XtraGrid.Columns.GridColumn colj_NO;
        private DevExpress.XtraGrid.Columns.GridColumn colJ2_job;
        private DevExpress.XtraGrid.Columns.GridColumn colRwo;
        private DevExpress.XtraGrid.Columns.GridColumn colQn;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyleCode;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStyleCode;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colBcolor;
        private DevExpress.XtraGrid.Columns.GridColumn colLocation;
        private DevExpress.XtraGrid.Columns.GridColumn colStartTimeShow;
        private DevExpress.XtraGrid.Columns.GridColumn colEndTime;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmShow;
        private DevExpress.XtraGrid.Columns.GridColumn colWoc;
        private DevExpress.XtraGrid.Columns.GridColumn colQNQty;
        private LB5ChildListY1 lB5ChildListY1Rearranging;
        private DevExpress.XtraEditors.SimpleButton btnPrevious;
        private DevExpress.XtraEditors.SimpleButton btnNext;
        private DevExpress.XtraEditors.SimpleButton btnOK;
    }
}