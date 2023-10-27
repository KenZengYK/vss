namespace PH.RWO.UI
{
    partial class SampleListForQCForm
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
            this.label1 = new System.Windows.Forms.Label();
            this.btnGetData = new DevExpress.XtraEditors.SimpleButton();
            this.xtraTabControl1 = new DevExpress.XtraTab.XtraTabControl();
            this.tpExfty = new DevExpress.XtraTab.XtraTabPage();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.label2 = new System.Windows.Forms.Label();
            this.deExftyBegin = new DevExpress.XtraEditors.DateEdit();
            this.deExftyEnd = new DevExpress.XtraEditors.DateEdit();
            this.tpPivot = new DevExpress.XtraTab.XtraTabPage();
            this.pivotSample = new DevExpress.XtraPivotGrid.PivotGridControl();
            this.fieldSalesOrderNo = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldWorkOrderNo = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldColorCode = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldSampleType = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldSampleQty = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldProjectNo = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldPHStyleNo = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldCustStyleNo = new DevExpress.XtraPivotGrid.PivotGridField();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btn2Xls = new DevExpress.XtraEditors.SimpleButton();
            this.btnBack = new DevExpress.XtraEditors.SimpleButton();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            this.tpExfty.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deExftyBegin.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deExftyBegin.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deExftyEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deExftyEnd.Properties)).BeginInit();
            this.tpPivot.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pivotSample)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(41, 48);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 4;
            this.label1.Text = "From";
            // 
            // btnGetData
            // 
            this.btnGetData.Location = new System.Drawing.Point(344, 255);
            this.btnGetData.Name = "btnGetData";
            this.btnGetData.Size = new System.Drawing.Size(90, 29);
            this.btnGetData.TabIndex = 5;
            this.btnGetData.Text = "Get Data >>";
            this.btnGetData.Click += new System.EventHandler(this.btnGetData_Click);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraTabControl1.Location = new System.Drawing.Point(0, 0);
            this.xtraTabControl1.Name = "xtraTabControl1";
            this.xtraTabControl1.SelectedTabPage = this.tpExfty;
            this.xtraTabControl1.Size = new System.Drawing.Size(862, 543);
            this.xtraTabControl1.TabIndex = 6;
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.tpExfty,
            this.tpPivot});
            this.xtraTabControl1.Text = "xtraTabControl1";
            // 
            // tpExfty
            // 
            this.tpExfty.Controls.Add(this.groupControl1);
            this.tpExfty.Controls.Add(this.btnGetData);
            this.tpExfty.Name = "tpExfty";
            this.tpExfty.Size = new System.Drawing.Size(853, 511);
            this.tpExfty.Text = "Ex-fty";
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.label2);
            this.groupControl1.Controls.Add(this.deExftyBegin);
            this.groupControl1.Controls.Add(this.label1);
            this.groupControl1.Controls.Add(this.deExftyEnd);
            this.groupControl1.Location = new System.Drawing.Point(165, 75);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(269, 154);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 8;
            this.groupControl1.Text = "Ex-fty date";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(53, 106);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(17, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 9;
            this.label2.Text = "To";
            // 
            // deExftyBegin
            // 
            this.deExftyBegin.EditValue = null;
            this.deExftyBegin.Location = new System.Drawing.Point(89, 45);
            this.deExftyBegin.Name = "deExftyBegin";
            this.deExftyBegin.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deExftyBegin.Properties.ShowWeekNumbers = true;
            this.deExftyBegin.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deExftyBegin.Size = new System.Drawing.Size(120, 21);
            this.deExftyBegin.TabIndex = 6;
            // 
            // deExftyEnd
            // 
            this.deExftyEnd.EditValue = null;
            this.deExftyEnd.Location = new System.Drawing.Point(89, 97);
            this.deExftyEnd.Name = "deExftyEnd";
            this.deExftyEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deExftyEnd.Properties.ShowWeekNumbers = true;
            this.deExftyEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deExftyEnd.Size = new System.Drawing.Size(120, 21);
            this.deExftyEnd.TabIndex = 7;
            // 
            // tpPivot
            // 
            this.tpPivot.Controls.Add(this.pivotSample);
            this.tpPivot.Controls.Add(this.panelControl1);
            this.tpPivot.Name = "tpPivot";
            this.tpPivot.Size = new System.Drawing.Size(853, 511);
            this.tpPivot.Text = "SampleList";
            // 
            // pivotSample
            // 
            this.pivotSample.Cursor = System.Windows.Forms.Cursors.Default;
            this.pivotSample.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pivotSample.Fields.AddRange(new DevExpress.XtraPivotGrid.PivotGridField[] {
            this.fieldSalesOrderNo,
            this.fieldWorkOrderNo,
            this.fieldColorCode,
            this.fieldSampleType,
            this.fieldSampleQty,
            this.fieldProjectNo,
            this.fieldPHStyleNo,
            this.fieldCustStyleNo});
            this.pivotSample.Location = new System.Drawing.Point(0, 64);
            this.pivotSample.Name = "pivotSample";
            this.pivotSample.OptionsView.ShowColumnHeaders = false;
            this.pivotSample.OptionsView.ShowFilterHeaders = false;
            this.pivotSample.OptionsView.ShowRowTotals = false;
            this.pivotSample.Size = new System.Drawing.Size(853, 447);
            this.pivotSample.TabIndex = 0;
            // 
            // fieldSalesOrderNo
            // 
            this.fieldSalesOrderNo.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldSalesOrderNo.AreaIndex = 1;
            this.fieldSalesOrderNo.Caption = "Sales Order No";
            this.fieldSalesOrderNo.FieldName = "SalesOrderNo";
            this.fieldSalesOrderNo.Name = "fieldSalesOrderNo";
            // 
            // fieldWorkOrderNo
            // 
            this.fieldWorkOrderNo.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldWorkOrderNo.AreaIndex = 2;
            this.fieldWorkOrderNo.Caption = "Work Order No";
            this.fieldWorkOrderNo.FieldName = "WorkOrderNo";
            this.fieldWorkOrderNo.Name = "fieldWorkOrderNo";
            // 
            // fieldColorCode
            // 
            this.fieldColorCode.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldColorCode.AreaIndex = 5;
            this.fieldColorCode.Caption = "Color Code";
            this.fieldColorCode.FieldName = "ColorCode";
            this.fieldColorCode.Name = "fieldColorCode";
            // 
            // fieldSampleType
            // 
            this.fieldSampleType.Area = DevExpress.XtraPivotGrid.PivotArea.ColumnArea;
            this.fieldSampleType.AreaIndex = 0;
            this.fieldSampleType.Caption = "Sample Type";
            this.fieldSampleType.FieldName = "SampleType";
            this.fieldSampleType.Name = "fieldSampleType";
            // 
            // fieldSampleQty
            // 
            this.fieldSampleQty.Area = DevExpress.XtraPivotGrid.PivotArea.DataArea;
            this.fieldSampleQty.AreaIndex = 0;
            this.fieldSampleQty.Caption = "Sample Qty";
            this.fieldSampleQty.FieldName = "SampleQty";
            this.fieldSampleQty.Name = "fieldSampleQty";
            // 
            // fieldProjectNo
            // 
            this.fieldProjectNo.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldProjectNo.AreaIndex = 0;
            this.fieldProjectNo.Caption = "Project No";
            this.fieldProjectNo.FieldName = "ProjectNo";
            this.fieldProjectNo.Name = "fieldProjectNo";
            // 
            // fieldPHStyleNo
            // 
            this.fieldPHStyleNo.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldPHStyleNo.AreaIndex = 3;
            this.fieldPHStyleNo.Caption = "PH Style No";
            this.fieldPHStyleNo.FieldName = "PHStyleNo";
            this.fieldPHStyleNo.Name = "fieldPHStyleNo";
            // 
            // fieldCustStyleNo
            // 
            this.fieldCustStyleNo.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldCustStyleNo.AreaIndex = 4;
            this.fieldCustStyleNo.Caption = "Cust Style No";
            this.fieldCustStyleNo.FieldName = "CustStyleNo";
            this.fieldCustStyleNo.Name = "fieldCustStyleNo";
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.btn2Xls);
            this.panelControl1.Controls.Add(this.btnBack);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(853, 64);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 1;
            // 
            // btn2Xls
            // 
            this.btn2Xls.Location = new System.Drawing.Point(600, 17);
            this.btn2Xls.Name = "btn2Xls";
            this.btn2Xls.Size = new System.Drawing.Size(117, 29);
            this.btn2Xls.TabIndex = 7;
            this.btn2Xls.Text = "Export to Excel";
            this.btn2Xls.Click += new System.EventHandler(this.btn2Xls_Click);
            // 
            // btnBack
            // 
            this.btnBack.Location = new System.Drawing.Point(22, 17);
            this.btnBack.Name = "btnBack";
            this.btnBack.Size = new System.Drawing.Size(90, 29);
            this.btnBack.TabIndex = 6;
            this.btnBack.Text = "<< Back";
            this.btnBack.Click += new System.EventHandler(this.btnBack_Click);
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.RWO.BO.WorkOrderSample);
            // 
            // SampleListForQCForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.xtraTabControl1);
            this.Name = "SampleListForQCForm";
            this.Size = new System.Drawing.Size(862, 543);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            this.tpExfty.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deExftyBegin.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deExftyBegin.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deExftyEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deExftyEnd.Properties)).EndInit();
            this.tpPivot.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pivotSample)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraTab.XtraTabControl xtraTabControl1;
        private DevExpress.XtraTab.XtraTabPage tpExfty;
        private DevExpress.XtraEditors.DateEdit deExftyEnd;
        private DevExpress.XtraEditors.DateEdit deExftyBegin;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.SimpleButton btnGetData;
        private DevExpress.XtraTab.XtraTabPage tpPivot;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraPivotGrid.PivotGridControl pivotSample;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldSalesOrderNo;
        private DevExpress.XtraPivotGrid.PivotGridField fieldWorkOrderNo;
        private DevExpress.XtraPivotGrid.PivotGridField fieldColorCode;
        private DevExpress.XtraPivotGrid.PivotGridField fieldSampleType;
        private DevExpress.XtraPivotGrid.PivotGridField fieldSampleQty;
        private DevExpress.XtraPivotGrid.PivotGridField fieldProjectNo;
        private DevExpress.XtraPivotGrid.PivotGridField fieldPHStyleNo;
        private DevExpress.XtraPivotGrid.PivotGridField fieldCustStyleNo;
        private DevExpress.XtraEditors.SimpleButton btnBack;
        private DevExpress.XtraEditors.SimpleButton btn2Xls;
    }
}
