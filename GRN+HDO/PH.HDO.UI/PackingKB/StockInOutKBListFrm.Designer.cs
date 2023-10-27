namespace PH.HDO.UI.PackingKB
{
    partial class StockInOutKBListFrm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(StockInOutKBListFrm));
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.radioOrderStock = new System.Windows.Forms.RadioButton();
            this.radioOrderLotNo = new System.Windows.Forms.RadioButton();
            this.radioGroupPro = new System.Windows.Forms.RadioButton();
            this.radioGroupMater = new System.Windows.Forms.RadioButton();
            this.radioNoGroup = new System.Windows.Forms.RadioButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.xtraTabControl1 = new DevExpress.XtraTab.XtraTabControl();
            this.xtraTabPage1 = new DevExpress.XtraTab.XtraTabPage();
            this.stockInKBListFrm1 = new PH.HDO.UI.PackingKB.StockInKBListFrm();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.stockOutKBListFrm1 = new PH.HDO.UI.PackingKB.StockOutKBListFrm();
            this.xtraTabPage3 = new DevExpress.XtraTab.XtraTabPage();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.stockBalanceKBListFrm1 = new PH.HDO.UI.PackingKB.StockBalanceKBListFrm();
            ((System.ComponentModel.ISupportInitialize)(this.barManagerPrint)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            this.xtraTabPage2.SuspendLayout();
            this.xtraTabPage3.SuspendLayout();
            this.SuspendLayout();
            // 
            // barBtnPrintBase
            // 
            this.barBtnPrintBase.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrintBase_ItemClick);
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.radioOrderStock);
            this.panelControl1.Controls.Add(this.radioOrderLotNo);
            this.panelControl1.Controls.Add(this.radioGroupPro);
            this.panelControl1.Controls.Add(this.radioGroupMater);
            this.panelControl1.Controls.Add(this.radioNoGroup);
            this.panelControl1.Controls.Add(this.simpleButton1);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 26);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1058, 77);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 5;
            // 
            // radioOrderStock
            // 
            this.radioOrderStock.AutoSize = true;
            this.radioOrderStock.Location = new System.Drawing.Point(746, 34);
            this.radioOrderStock.Name = "radioOrderStock";
            this.radioOrderStock.Size = new System.Drawing.Size(127, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioOrderStock, null);
            this.radioOrderStock.TabIndex = 19;
            this.radioOrderStock.TabStop = true;
            this.radioOrderStock.Text = "Rv Stock Tack Report";
            this.radioOrderStock.UseVisualStyleBackColor = true;
            // 
            // radioOrderLotNo
            // 
            this.radioOrderLotNo.AutoSize = true;
            this.radioOrderLotNo.Location = new System.Drawing.Point(622, 34);
            this.radioOrderLotNo.Name = "radioOrderLotNo";
            this.radioOrderLotNo.Size = new System.Drawing.Size(103, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioOrderLotNo, null);
            this.radioOrderLotNo.TabIndex = 18;
            this.radioOrderLotNo.TabStop = true;
            this.radioOrderLotNo.Text = "Order By Lot No";
            this.radioOrderLotNo.UseVisualStyleBackColor = true;
            // 
            // radioGroupPro
            // 
            this.radioGroupPro.AutoSize = true;
            this.radioGroupPro.Location = new System.Drawing.Point(462, 34);
            this.radioGroupPro.Name = "radioGroupPro";
            this.radioGroupPro.Size = new System.Drawing.Size(125, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioGroupPro, null);
            this.radioGroupPro.TabIndex = 17;
            this.radioGroupPro.TabStop = true;
            this.radioGroupPro.Text = "Group By Project_No";
            this.radioGroupPro.UseVisualStyleBackColor = true;
            // 
            // radioGroupMater
            // 
            this.radioGroupMater.AutoSize = true;
            this.radioGroupMater.Location = new System.Drawing.Point(323, 34);
            this.radioGroupMater.Name = "radioGroupMater";
            this.radioGroupMater.Size = new System.Drawing.Size(111, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioGroupMater, null);
            this.radioGroupMater.TabIndex = 16;
            this.radioGroupMater.TabStop = true;
            this.radioGroupMater.Text = "Group By Material";
            this.radioGroupMater.UseVisualStyleBackColor = true;
            // 
            // radioNoGroup
            // 
            this.radioNoGroup.AutoSize = true;
            this.radioNoGroup.Checked = true;
            this.radioNoGroup.Location = new System.Drawing.Point(232, 34);
            this.radioNoGroup.Name = "radioNoGroup";
            this.radioNoGroup.Size = new System.Drawing.Size(70, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioNoGroup, null);
            this.radioNoGroup.TabIndex = 15;
            this.radioNoGroup.TabStop = true;
            this.radioNoGroup.Text = "No Group";
            this.radioNoGroup.UseVisualStyleBackColor = true;
            // 
            // simpleButton1
            // 
            this.simpleButton1.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton1.Image")));
            this.simpleButton1.Location = new System.Drawing.Point(72, 25);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(123, 32);
            this.simpleButton1.TabIndex = 14;
            this.simpleButton1.Text = "Open excel file";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraTabControl1.Location = new System.Drawing.Point(0, 103);
            this.xtraTabControl1.Name = "xtraTabControl1";
            this.xtraTabControl1.SelectedTabPage = this.xtraTabPage1;
            this.xtraTabControl1.Size = new System.Drawing.Size(1058, 515);
            this.xtraTabControl1.TabIndex = 6;
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage1,
            this.xtraTabPage2,
            this.xtraTabPage3});
            this.xtraTabControl1.Text = "xtraTabControl1";
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.stockInKBListFrm1);
            this.xtraTabPage1.Name = "xtraTabPage1";
            this.xtraTabPage1.Size = new System.Drawing.Size(1049, 483);
            this.xtraTabPage1.Text = "StockIn Excel";
            // 
            // stockInKBListFrm1
            // 
            this.stockInKBListFrm1.AllowAddRow = true;
            this.stockInKBListFrm1.AutoOpenDetailForm = false;
            this.stockInKBListFrm1.DataContext = null;
            this.stockInKBListFrm1.DataSource = null;
            this.stockInKBListFrm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.stockInKBListFrm1.EditorTypeName = null;
            this.stockInKBListFrm1.FileID = null;
            this.stockInKBListFrm1.FirstForm = null;
            this.stockInKBListFrm1.FormName = "StockInKBListFrm";
            this.stockInKBListFrm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.stockInKBListFrm1.FormTitle = "PH.HDO.UI.PackingKB.StockInKBListFrm";
            this.stockInKBListFrm1.IsCancelList = false;
            this.stockInKBListFrm1.IsShowPivotTable = false;
            this.stockInKBListFrm1.LayoutData = null;
            this.stockInKBListFrm1.LayoutName = null;
            this.stockInKBListFrm1.ListForm = null;
            this.stockInKBListFrm1.Location = new System.Drawing.Point(0, 0);
            this.stockInKBListFrm1.MenuID = ((long)(0));
            this.stockInKBListFrm1.Name = "stockInKBListFrm1";
            this.stockInKBListFrm1.NextForm = null;
            this.stockInKBListFrm1.ParentForm = null;
            this.stockInKBListFrm1.PrevForm = null;
            this.stockInKBListFrm1.RowChangeAutoSave = true;
            this.stockInKBListFrm1.ShowMultiCheck = false;
            this.stockInKBListFrm1.SideProgramID = null;
            this.stockInKBListFrm1.Size = new System.Drawing.Size(1049, 483);
            this.PlatetoolTipController.SetSuperTip(this.stockInKBListFrm1, null);
            this.stockInKBListFrm1.TabControls = null;
            this.stockInKBListFrm1.TabIndex = 0;
            this.stockInKBListFrm1.TabPage = null;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.stockOutKBListFrm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(1049, 483);
            this.xtraTabPage2.Text = "StockOut Excel";
            // 
            // stockOutKBListFrm1
            // 
            this.stockOutKBListFrm1.AllowAddRow = true;
            this.stockOutKBListFrm1.AutoOpenDetailForm = false;
            this.stockOutKBListFrm1.DataContext = null;
            this.stockOutKBListFrm1.DataSource = null;
            this.stockOutKBListFrm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.stockOutKBListFrm1.EditorTypeName = null;
            this.stockOutKBListFrm1.FileID = null;
            this.stockOutKBListFrm1.FirstForm = null;
            this.stockOutKBListFrm1.FormName = "StockOutKBListFrm";
            this.stockOutKBListFrm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.stockOutKBListFrm1.FormTitle = "PH.HDO.UI.PackingKB.StockOutKBListFrm";
            this.stockOutKBListFrm1.IsCancelList = false;
            this.stockOutKBListFrm1.IsShowPivotTable = false;
            this.stockOutKBListFrm1.LayoutData = null;
            this.stockOutKBListFrm1.LayoutName = null;
            this.stockOutKBListFrm1.ListForm = null;
            this.stockOutKBListFrm1.Location = new System.Drawing.Point(0, 0);
            this.stockOutKBListFrm1.MenuID = ((long)(0));
            this.stockOutKBListFrm1.Name = "stockOutKBListFrm1";
            this.stockOutKBListFrm1.NextForm = null;
            this.stockOutKBListFrm1.ParentForm = null;
            this.stockOutKBListFrm1.PrevForm = null;
            this.stockOutKBListFrm1.RowChangeAutoSave = true;
            this.stockOutKBListFrm1.ShowMultiCheck = false;
            this.stockOutKBListFrm1.SideProgramID = null;
            this.stockOutKBListFrm1.Size = new System.Drawing.Size(1049, 483);
            this.PlatetoolTipController.SetSuperTip(this.stockOutKBListFrm1, null);
            this.stockOutKBListFrm1.TabControls = null;
            this.stockOutKBListFrm1.TabIndex = 0;
            this.stockOutKBListFrm1.TabPage = null;
            // 
            // xtraTabPage3
            // 
            this.xtraTabPage3.Controls.Add(this.stockBalanceKBListFrm1);
            this.xtraTabPage3.Name = "xtraTabPage3";
            this.xtraTabPage3.Size = new System.Drawing.Size(1049, 483);
            this.xtraTabPage3.Text = "Stock Balance Excel";
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // stockBalanceKBListFrm1
            // 
            this.stockBalanceKBListFrm1.AllowAddRow = true;
            this.stockBalanceKBListFrm1.AutoOpenDetailForm = false;
            this.stockBalanceKBListFrm1.DataContext = null;
            this.stockBalanceKBListFrm1.DataSource = null;
            this.stockBalanceKBListFrm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.stockBalanceKBListFrm1.EditorTypeName = null;
            this.stockBalanceKBListFrm1.FileID = null;
            this.stockBalanceKBListFrm1.FirstForm = null;
            this.stockBalanceKBListFrm1.FormName = "StockBalanceKBListFrm";
            this.stockBalanceKBListFrm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.stockBalanceKBListFrm1.FormTitle = "PH.HDO.UI.PackingKB.StockBalanceKBListFrm";
            this.stockBalanceKBListFrm1.IsCancelList = false;
            this.stockBalanceKBListFrm1.IsShowPivotTable = false;
            this.stockBalanceKBListFrm1.LayoutData = null;
            this.stockBalanceKBListFrm1.LayoutName = null;
            this.stockBalanceKBListFrm1.ListForm = null;
            this.stockBalanceKBListFrm1.Location = new System.Drawing.Point(0, 0);
            this.stockBalanceKBListFrm1.MenuID = ((long)(0));
            this.stockBalanceKBListFrm1.Name = "stockBalanceKBListFrm1";
            this.stockBalanceKBListFrm1.NextForm = null;
            this.stockBalanceKBListFrm1.ParentForm = null;
            this.stockBalanceKBListFrm1.PrevForm = null;
            this.stockBalanceKBListFrm1.RowChangeAutoSave = true;
            this.stockBalanceKBListFrm1.ShowMultiCheck = false;
            this.stockBalanceKBListFrm1.SideProgramID = null;
            this.stockBalanceKBListFrm1.Size = new System.Drawing.Size(1049, 483);
            this.PlatetoolTipController.SetSuperTip(this.stockBalanceKBListFrm1, null);
            this.stockBalanceKBListFrm1.TabControls = null;
            this.stockBalanceKBListFrm1.TabIndex = 0;
            this.stockBalanceKBListFrm1.TabPage = null;
            // 
            // StockInOutKBListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.xtraTabControl1);
            this.Controls.Add(this.panelControl1);
            this.Name = "StockInOutKBListFrm";
            this.Size = new System.Drawing.Size(1058, 618);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.xtraTabControl1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.barManagerPrint)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            this.xtraTabPage2.ResumeLayout(false);
            this.xtraTabPage3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private System.Windows.Forms.RadioButton radioOrderStock;
        private System.Windows.Forms.RadioButton radioOrderLotNo;
        private System.Windows.Forms.RadioButton radioGroupPro;
        private System.Windows.Forms.RadioButton radioGroupMater;
        private System.Windows.Forms.RadioButton radioNoGroup;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraTab.XtraTabControl xtraTabControl1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private StockInKBListFrm stockInKBListFrm1;
        private StockOutKBListFrm stockOutKBListFrm1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage3;
        private StockBalanceKBListFrm stockBalanceKBListFrm1;
    }
}
