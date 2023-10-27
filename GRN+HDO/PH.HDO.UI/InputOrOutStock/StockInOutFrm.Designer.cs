namespace PH.HDO.UI.InputOrOutStock
{
    partial class StockInOutFrm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(StockInOutFrm));
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.stockOutListFrm1 = new PH.HDO.UI.InputOrOutStock.StockOutListFrm();
            this.radioOrderStock = new System.Windows.Forms.RadioButton();
            this.radioOrderLotNo = new System.Windows.Forms.RadioButton();
            this.radioGroupPro = new System.Windows.Forms.RadioButton();
            this.radioGroupMater = new System.Windows.Forms.RadioButton();
            this.radioNoGroup = new System.Windows.Forms.RadioButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barPrint = new DevExpress.XtraBars.BarButtonItem();
            this.stockInListFrm1 = new PH.HDO.UI.InputOrOutStock.StockInListFrm();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).BeginInit();
            this.headerTitleBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.xtraTabPage2.SuspendLayout();
            this.SuspendLayout();
            // 
            // objEdtbarManager
            // 
            this.objEdtbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1,
            this.barPrint});
            this.objEdtbarManager.MaxItemId = 25;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            this.objEditBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barPrint)});
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 107);
            this.splitterControl1.Size = new System.Drawing.Size(1131, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.radioOrderStock);
            this.headerTitleBar.Controls.Add(this.radioOrderLotNo);
            this.headerTitleBar.Controls.Add(this.radioGroupPro);
            this.headerTitleBar.Controls.Add(this.radioGroupMater);
            this.headerTitleBar.Controls.Add(this.radioNoGroup);
            this.headerTitleBar.Controls.Add(this.simpleButton1);
            this.headerTitleBar.Size = new System.Drawing.Size(1131, 81);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.simpleButton1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.radioNoGroup, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.radioGroupMater, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.radioGroupPro, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.radioOrderLotNo, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.radioOrderStock, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 113);
            this.panelControl1.Size = new System.Drawing.Size(1131, 519);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.stockInListFrm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(1118, 483);
            this.xtraTabPage1.Text = "StockIn Excel";
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(1127, 515);
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage2});
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage2, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage1, 0);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.HDO.BO.Stock_In);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(3355, 0);
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.stockOutListFrm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(1118, 483);
            this.xtraTabPage2.Text = "StockOut Excel";
            // 
            // stockOutListFrm1
            // 
            this.stockOutListFrm1.AllowAddRow = true;
            this.stockOutListFrm1.AutoOpenDetailForm = false;
            this.stockOutListFrm1.DataContext = null;
            this.stockOutListFrm1.DataSource = null;
            this.stockOutListFrm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.stockOutListFrm1.EditorTypeName = null;
            this.stockOutListFrm1.FileID = null;
            this.stockOutListFrm1.FirstForm = null;
            this.stockOutListFrm1.FormName = "StockOutListFrm";
            this.stockOutListFrm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.stockOutListFrm1.FormTitle = "PH.HDO.UI.InputOrOutStock.StockOutListFrm";
            this.stockOutListFrm1.IsCancelList = false;
            this.stockOutListFrm1.IsShowPivotTable = false;
            this.stockOutListFrm1.LayoutData = null;
            this.stockOutListFrm1.LayoutName = null;
            this.stockOutListFrm1.ListForm = null;
            this.stockOutListFrm1.Location = new System.Drawing.Point(0, 0);
            this.stockOutListFrm1.MenuID = ((long)(0));
            this.stockOutListFrm1.Name = "stockOutListFrm1";
            this.stockOutListFrm1.NextForm = null;
            this.stockOutListFrm1.ParentForm = null;
            this.stockOutListFrm1.PrevForm = null;
            this.stockOutListFrm1.RowChangeAutoSave = true;
            this.stockOutListFrm1.ShowMultiCheck = false;
            this.stockOutListFrm1.SideProgramID = null;
            this.stockOutListFrm1.Size = new System.Drawing.Size(1118, 483);
            this.PlatetoolTipController.SetSuperTip(this.stockOutListFrm1, null);
            this.stockOutListFrm1.TabControls = null;
            this.stockOutListFrm1.TabIndex = 0;
            this.stockOutListFrm1.TabPage = null;
            // 
            // radioOrderStock
            // 
            this.radioOrderStock.AutoSize = true;
            this.radioOrderStock.Location = new System.Drawing.Point(755, 39);
            this.radioOrderStock.Name = "radioOrderStock";
            this.radioOrderStock.Size = new System.Drawing.Size(127, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioOrderStock, null);
            this.radioOrderStock.TabIndex = 13;
            this.radioOrderStock.TabStop = true;
            this.radioOrderStock.Text = "Rv Stock Tack Report";
            this.radioOrderStock.UseVisualStyleBackColor = true;
            // 
            // radioOrderLotNo
            // 
            this.radioOrderLotNo.AutoSize = true;
            this.radioOrderLotNo.Location = new System.Drawing.Point(631, 39);
            this.radioOrderLotNo.Name = "radioOrderLotNo";
            this.radioOrderLotNo.Size = new System.Drawing.Size(103, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioOrderLotNo, null);
            this.radioOrderLotNo.TabIndex = 12;
            this.radioOrderLotNo.TabStop = true;
            this.radioOrderLotNo.Text = "Order By Lot No";
            this.radioOrderLotNo.UseVisualStyleBackColor = true;
            // 
            // radioGroupPro
            // 
            this.radioGroupPro.AutoSize = true;
            this.radioGroupPro.Location = new System.Drawing.Point(471, 39);
            this.radioGroupPro.Name = "radioGroupPro";
            this.radioGroupPro.Size = new System.Drawing.Size(125, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioGroupPro, null);
            this.radioGroupPro.TabIndex = 11;
            this.radioGroupPro.TabStop = true;
            this.radioGroupPro.Text = "Group By Project_No";
            this.radioGroupPro.UseVisualStyleBackColor = true;
            // 
            // radioGroupMater
            // 
            this.radioGroupMater.AutoSize = true;
            this.radioGroupMater.Location = new System.Drawing.Point(332, 39);
            this.radioGroupMater.Name = "radioGroupMater";
            this.radioGroupMater.Size = new System.Drawing.Size(111, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioGroupMater, null);
            this.radioGroupMater.TabIndex = 10;
            this.radioGroupMater.TabStop = true;
            this.radioGroupMater.Text = "Group By Material";
            this.radioGroupMater.UseVisualStyleBackColor = true;
            // 
            // radioNoGroup
            // 
            this.radioNoGroup.AutoSize = true;
            this.radioNoGroup.Checked = true;
            this.radioNoGroup.Location = new System.Drawing.Point(241, 39);
            this.radioNoGroup.Name = "radioNoGroup";
            this.radioNoGroup.Size = new System.Drawing.Size(70, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioNoGroup, null);
            this.radioNoGroup.TabIndex = 9;
            this.radioNoGroup.TabStop = true;
            this.radioNoGroup.Text = "No Group";
            this.radioNoGroup.UseVisualStyleBackColor = true;
            // 
            // simpleButton1
            // 
            this.simpleButton1.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton1.Image")));
            this.simpleButton1.Location = new System.Drawing.Point(81, 30);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(123, 32);
            this.simpleButton1.TabIndex = 8;
            this.simpleButton1.Text = "Open excel file";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "barButtonItem1";
            this.barButtonItem1.Id = 23;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // barPrint
            // 
            this.barPrint.Caption = "Print";
            this.barPrint.Id = 24;
            this.barPrint.Name = "barPrint";
            this.barPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barPrint_ItemClick);
            // 
            // stockInListFrm1
            // 
            this.stockInListFrm1.AllowAddRow = true;
            this.stockInListFrm1.AutoOpenDetailForm = false;
            this.stockInListFrm1.DataContext = null;
            this.stockInListFrm1.DataSource = null;
            this.stockInListFrm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.stockInListFrm1.EditorTypeName = null;
            this.stockInListFrm1.FileID = null;
            this.stockInListFrm1.FirstForm = null;
            this.stockInListFrm1.FormName = "StockInListFrm";
            this.stockInListFrm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.stockInListFrm1.FormTitle = "PH.HDO.UI.InputOrOutStock.StockInListFrm";
            this.stockInListFrm1.IsCancelList = false;
            this.stockInListFrm1.IsShowPivotTable = false;
            this.stockInListFrm1.LayoutData = null;
            this.stockInListFrm1.LayoutName = null;
            this.stockInListFrm1.ListForm = null;
            this.stockInListFrm1.Location = new System.Drawing.Point(0, 0);
            this.stockInListFrm1.MenuID = ((long)(0));
            this.stockInListFrm1.Name = "stockInListFrm1";
            this.stockInListFrm1.NextForm = null;
            this.stockInListFrm1.ParentForm = null;
            this.stockInListFrm1.PrevForm = null;
            this.stockInListFrm1.RowChangeAutoSave = true;
            this.stockInListFrm1.ShowMultiCheck = false;
            this.stockInListFrm1.SideProgramID = null;
            this.stockInListFrm1.Size = new System.Drawing.Size(1118, 483);
            this.PlatetoolTipController.SetSuperTip(this.stockInListFrm1, null);
            this.stockInListFrm1.TabControls = null;
            this.stockInListFrm1.TabIndex = 0;
            this.stockInListFrm1.TabPage = null;
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // StockInOutFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StockInOutFrm";
            this.Size = new System.Drawing.Size(1131, 632);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).EndInit();
            this.headerTitleBar.ResumeLayout(false);
            this.headerTitleBar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.xtraTabPage2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private System.Windows.Forms.RadioButton radioOrderStock;
        private System.Windows.Forms.RadioButton radioOrderLotNo;
        private System.Windows.Forms.RadioButton radioGroupPro;
        private System.Windows.Forms.RadioButton radioGroupMater;
        private System.Windows.Forms.RadioButton radioNoGroup;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barPrint;
        private StockInListFrm stockInListFrm1;
        private StockOutListFrm stockOutListFrm1;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
    }
}
