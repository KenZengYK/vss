namespace PH.HDO.UI.InputOrOutStock
{
    partial class StockInOutListFrm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(StockInOutListFrm));
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.radioOrderStock = new System.Windows.Forms.RadioButton();
            this.radioOrderLotNo = new System.Windows.Forms.RadioButton();
            this.radioGroupPro = new System.Windows.Forms.RadioButton();
            this.radioGroupMater = new System.Windows.Forms.RadioButton();
            this.radioNoGroup = new System.Windows.Forms.RadioButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.xtraTabControl1 = new DevExpress.XtraTab.XtraTabControl();
            this.xtraTabPage1 = new DevExpress.XtraTab.XtraTabPage();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.stockInListFrm1 = new PH.HDO.UI.InputOrOutStock.StockInListFrm();
            this.stockOutListFrm1 = new PH.HDO.UI.InputOrOutStock.StockOutListFrm();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            ((System.ComponentModel.ISupportInitialize)(this.barManagerPrint)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            this.xtraTabPage2.SuspendLayout();
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
            this.panelControl1.Size = new System.Drawing.Size(1064, 77);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 4;
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
            this.xtraTabControl1.Size = new System.Drawing.Size(1064, 461);
            this.xtraTabControl1.TabIndex = 5;
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage1,
            this.xtraTabPage2});
            this.xtraTabControl1.Text = "xtraTabControl1";
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.stockInListFrm1);
            this.xtraTabPage1.Name = "xtraTabPage1";
            this.xtraTabPage1.Size = new System.Drawing.Size(1055, 429);
            this.xtraTabPage1.Text = "StockIn Excel";
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.stockOutListFrm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(1055, 429);
            this.xtraTabPage2.Text = "StockOut Excel";
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
            this.stockInListFrm1.Size = new System.Drawing.Size(1055, 429);
            this.PlatetoolTipController.SetSuperTip(this.stockInListFrm1, null);
            this.stockInListFrm1.TabControls = null;
            this.stockInListFrm1.TabIndex = 0;
            this.stockInListFrm1.TabPage = null;
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
            this.stockOutListFrm1.Size = new System.Drawing.Size(1055, 429);
            this.PlatetoolTipController.SetSuperTip(this.stockOutListFrm1, null);
            this.stockOutListFrm1.TabControls = null;
            this.stockOutListFrm1.TabIndex = 0;
            this.stockOutListFrm1.TabPage = null;
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // StockInOutListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.xtraTabControl1);
            this.Controls.Add(this.panelControl1);
            this.Name = "StockInOutListFrm";
            this.Size = new System.Drawing.Size(1064, 564);
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
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraTab.XtraTabControl xtraTabControl1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private System.Windows.Forms.RadioButton radioOrderStock;
        private System.Windows.Forms.RadioButton radioOrderLotNo;
        private System.Windows.Forms.RadioButton radioGroupPro;
        private System.Windows.Forms.RadioButton radioGroupMater;
        private System.Windows.Forms.RadioButton radioNoGroup;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private StockInListFrm stockInListFrm1;
        private StockOutListFrm stockOutListFrm1;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
    }
}
