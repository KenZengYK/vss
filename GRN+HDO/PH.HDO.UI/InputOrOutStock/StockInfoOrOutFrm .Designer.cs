namespace PH.HDO.UI.InputOrOutStock
{
    partial class StockInfoOrOutFrm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(StockInfoOrOutFrm));
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bar1 = new DevExpress.XtraBars.Bar();
            this.bar2 = new DevExpress.XtraBars.Bar();
            this.barButtonPrint = new DevExpress.XtraBars.BarButtonItem();
            this.bar3 = new DevExpress.XtraBars.Bar();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.barButtonInputStock = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonOutStock = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonStockInfo = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonStockOut = new DevExpress.XtraBars.BarButtonItem();
            this.panel2 = new System.Windows.Forms.Panel();
            this.StockBanalce = new System.Windows.Forms.TabControl();
            this.tabStockInfo = new System.Windows.Forms.TabPage();
            this.stockInListFrm1 = new PH.HDO.UI.InputOrOutStock.StockInListFrm();
            this.tabStockOut = new System.Windows.Forms.TabPage();
            this.stockOutListFrm1 = new PH.HDO.UI.InputOrOutStock.StockOutListFrm();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.panel1 = new System.Windows.Forms.Panel();
            this.radioOrderStock = new System.Windows.Forms.RadioButton();
            this.radioOrderLotNo = new System.Windows.Forms.RadioButton();
            this.radioGroupPro = new System.Windows.Forms.RadioButton();
            this.radioGroupMater = new System.Windows.Forms.RadioButton();
            this.radioNoGroup = new System.Windows.Forms.RadioButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.stockBalanceFrm1 = new PH.HDO.UI.InputOrOutStock.StockBalanceFrm();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            this.panel2.SuspendLayout();
            this.StockBanalce.SuspendLayout();
            this.tabStockInfo.SuspendLayout();
            this.tabStockOut.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar1,
            this.bar2,
            this.bar3});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonPrint,
            this.barButtonInputStock,
            this.barButtonOutStock,
            this.barButtonStockInfo,
            this.barButtonStockOut});
            this.barManager1.MainMenu = this.bar2;
            this.barManager1.MaxItemId = 6;
            this.barManager1.StatusBar = this.bar3;
            // 
            // bar1
            // 
            this.bar1.BarName = "Tools";
            this.bar1.DockCol = 0;
            this.bar1.DockRow = 1;
            this.bar1.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar1.Text = "Tools";
            // 
            // bar2
            // 
            this.bar2.BarName = "Main menu";
            this.bar2.DockCol = 0;
            this.bar2.DockRow = 0;
            this.bar2.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonPrint, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.bar2.OptionsBar.MultiLine = true;
            this.bar2.OptionsBar.UseWholeRow = true;
            this.bar2.Text = "Main menu";
            // 
            // barButtonPrint
            // 
            this.barButtonPrint.Caption = "Print";
            this.barButtonPrint.Glyph = global::PH.HDO.UI.Properties.Resources.print16_h1;
            this.barButtonPrint.Id = 0;
            this.barButtonPrint.Name = "barButtonPrint";
            this.barButtonPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonPrint_ItemClick);
            // 
            // bar3
            // 
            this.bar3.BarName = "Status bar";
            this.bar3.CanDockStyle = DevExpress.XtraBars.BarCanDockStyle.Bottom;
            this.bar3.DockCol = 0;
            this.bar3.DockRow = 0;
            this.bar3.DockStyle = DevExpress.XtraBars.BarDockStyle.Bottom;
            this.bar3.OptionsBar.AllowQuickCustomization = false;
            this.bar3.OptionsBar.DrawDragBorder = false;
            this.bar3.OptionsBar.UseWholeRow = true;
            this.bar3.Text = "Status bar";
            // 
            // barDockControlTop
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlTop, null);
            // 
            // barDockControlBottom
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlBottom, null);
            // 
            // barDockControlLeft
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlLeft, null);
            // 
            // barDockControlRight
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControlRight, null);
            // 
            // barButtonInputStock
            // 
            this.barButtonInputStock.Id = 3;
            this.barButtonInputStock.Name = "barButtonInputStock";
            // 
            // barButtonOutStock
            // 
            this.barButtonOutStock.Caption = "Input OutStock File";
            this.barButtonOutStock.Id = 2;
            this.barButtonOutStock.Name = "barButtonOutStock";
            // 
            // barButtonStockInfo
            // 
            this.barButtonStockInfo.Caption = "Input StockInfo Excel";
            this.barButtonStockInfo.Id = 4;
            this.barButtonStockInfo.Name = "barButtonStockInfo";
            // 
            // barButtonStockOut
            // 
            this.barButtonStockOut.Caption = "Input StockOut Excel";
            this.barButtonStockOut.Id = 5;
            this.barButtonStockOut.Name = "barButtonStockOut";
            // 
            // panel2
            // 
            this.panel2.AutoScroll = true;
            this.panel2.Controls.Add(this.StockBanalce);
            this.panel2.Controls.Add(this.panel1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 51);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1788, 489);
            this.PlatetoolTipController.SetSuperTip(this.panel2, null);
            this.panel2.TabIndex = 5;
            // 
            // StockBanalce
            // 
            this.StockBanalce.Controls.Add(this.tabStockInfo);
            this.StockBanalce.Controls.Add(this.tabStockOut);
            this.StockBanalce.Controls.Add(this.tabPage1);
            this.StockBanalce.Dock = System.Windows.Forms.DockStyle.Fill;
            this.StockBanalce.Location = new System.Drawing.Point(0, 51);
            this.StockBanalce.Name = "StockBanalce";
            this.StockBanalce.SelectedIndex = 0;
            this.StockBanalce.Size = new System.Drawing.Size(1788, 438);
            this.PlatetoolTipController.SetSuperTip(this.StockBanalce, null);
            this.StockBanalce.TabIndex = 2;
            // 
            // tabStockInfo
            // 
            this.tabStockInfo.Controls.Add(this.stockInListFrm1);
            this.tabStockInfo.Location = new System.Drawing.Point(4, 21);
            this.tabStockInfo.Name = "tabStockInfo";
            this.tabStockInfo.Padding = new System.Windows.Forms.Padding(3);
            this.tabStockInfo.Size = new System.Drawing.Size(1780, 413);
            this.PlatetoolTipController.SetSuperTip(this.tabStockInfo, null);
            this.tabStockInfo.TabIndex = 0;
            this.tabStockInfo.Text = "Stock In Excel";
            this.tabStockInfo.UseVisualStyleBackColor = true;
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
            this.stockInListFrm1.Location = new System.Drawing.Point(3, 3);
            this.stockInListFrm1.MenuID = ((long)(0));
            this.stockInListFrm1.Name = "stockInListFrm1";
            this.stockInListFrm1.NextForm = null;
            this.stockInListFrm1.ParentForm = null;
            this.stockInListFrm1.PrevForm = null;
            this.stockInListFrm1.RowChangeAutoSave = true;
            this.stockInListFrm1.ShowMultiCheck = false;
            this.stockInListFrm1.SideProgramID = null;
            this.stockInListFrm1.Size = new System.Drawing.Size(1774, 407);
            this.PlatetoolTipController.SetSuperTip(this.stockInListFrm1, null);
            this.stockInListFrm1.TabControls = null;
            this.stockInListFrm1.TabIndex = 0;
            this.stockInListFrm1.TabPage = null;
            // 
            // tabStockOut
            // 
            this.tabStockOut.Controls.Add(this.stockOutListFrm1);
            this.tabStockOut.Location = new System.Drawing.Point(4, 21);
            this.tabStockOut.Name = "tabStockOut";
            this.tabStockOut.Padding = new System.Windows.Forms.Padding(3);
            this.tabStockOut.Size = new System.Drawing.Size(1780, 413);
            this.PlatetoolTipController.SetSuperTip(this.tabStockOut, null);
            this.tabStockOut.TabIndex = 1;
            this.tabStockOut.Text = "Stock Out Excel";
            this.tabStockOut.UseVisualStyleBackColor = true;
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
            this.stockOutListFrm1.Location = new System.Drawing.Point(3, 3);
            this.stockOutListFrm1.MenuID = ((long)(0));
            this.stockOutListFrm1.Name = "stockOutListFrm1";
            this.stockOutListFrm1.NextForm = null;
            this.stockOutListFrm1.ParentForm = null;
            this.stockOutListFrm1.PrevForm = null;
            this.stockOutListFrm1.RowChangeAutoSave = true;
            this.stockOutListFrm1.ShowMultiCheck = false;
            this.stockOutListFrm1.SideProgramID = null;
            this.stockOutListFrm1.Size = new System.Drawing.Size(1774, 407);
            this.PlatetoolTipController.SetSuperTip(this.stockOutListFrm1, null);
            this.stockOutListFrm1.TabControls = null;
            this.stockOutListFrm1.TabIndex = 0;
            this.stockOutListFrm1.TabPage = null;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.stockBalanceFrm1);
            this.tabPage1.Location = new System.Drawing.Point(4, 21);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1780, 413);
            this.PlatetoolTipController.SetSuperTip(this.tabPage1, null);
            this.tabPage1.TabIndex = 2;
            this.tabPage1.Text = "Stock Balance Excel";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.radioOrderStock);
            this.panel1.Controls.Add(this.radioOrderLotNo);
            this.panel1.Controls.Add(this.radioGroupPro);
            this.panel1.Controls.Add(this.radioGroupMater);
            this.panel1.Controls.Add(this.radioNoGroup);
            this.panel1.Controls.Add(this.simpleButton1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1788, 51);
            this.PlatetoolTipController.SetSuperTip(this.panel1, null);
            this.panel1.TabIndex = 1;
            // 
            // radioOrderStock
            // 
            this.radioOrderStock.AutoSize = true;
            this.radioOrderStock.Location = new System.Drawing.Point(848, 20);
            this.radioOrderStock.Name = "radioOrderStock";
            this.radioOrderStock.Size = new System.Drawing.Size(127, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioOrderStock, null);
            this.radioOrderStock.TabIndex = 7;
            this.radioOrderStock.TabStop = true;
            this.radioOrderStock.Text = "Rv Stock Tack Report";
            this.radioOrderStock.UseVisualStyleBackColor = true;
            // 
            // radioOrderLotNo
            // 
            this.radioOrderLotNo.AutoSize = true;
            this.radioOrderLotNo.Location = new System.Drawing.Point(724, 20);
            this.radioOrderLotNo.Name = "radioOrderLotNo";
            this.radioOrderLotNo.Size = new System.Drawing.Size(103, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioOrderLotNo, null);
            this.radioOrderLotNo.TabIndex = 6;
            this.radioOrderLotNo.TabStop = true;
            this.radioOrderLotNo.Text = "Order By Lot No";
            this.radioOrderLotNo.UseVisualStyleBackColor = true;
            // 
            // radioGroupPro
            // 
            this.radioGroupPro.AutoSize = true;
            this.radioGroupPro.Location = new System.Drawing.Point(564, 20);
            this.radioGroupPro.Name = "radioGroupPro";
            this.radioGroupPro.Size = new System.Drawing.Size(125, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioGroupPro, null);
            this.radioGroupPro.TabIndex = 5;
            this.radioGroupPro.TabStop = true;
            this.radioGroupPro.Text = "Group By Project_No";
            this.radioGroupPro.UseVisualStyleBackColor = true;
            // 
            // radioGroupMater
            // 
            this.radioGroupMater.AutoSize = true;
            this.radioGroupMater.Location = new System.Drawing.Point(425, 20);
            this.radioGroupMater.Name = "radioGroupMater";
            this.radioGroupMater.Size = new System.Drawing.Size(111, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioGroupMater, null);
            this.radioGroupMater.TabIndex = 4;
            this.radioGroupMater.TabStop = true;
            this.radioGroupMater.Text = "Group By Material";
            this.radioGroupMater.UseVisualStyleBackColor = true;
            // 
            // radioNoGroup
            // 
            this.radioNoGroup.AutoSize = true;
            this.radioNoGroup.Checked = true;
            this.radioNoGroup.Location = new System.Drawing.Point(334, 20);
            this.radioNoGroup.Name = "radioNoGroup";
            this.radioNoGroup.Size = new System.Drawing.Size(70, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioNoGroup, null);
            this.radioNoGroup.TabIndex = 3;
            this.radioNoGroup.TabStop = true;
            this.radioNoGroup.Text = "No Group";
            this.radioNoGroup.UseVisualStyleBackColor = true;
            // 
            // simpleButton1
            // 
            this.simpleButton1.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton1.Image")));
            this.simpleButton1.Location = new System.Drawing.Point(171, 5);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(123, 36);
            this.simpleButton1.TabIndex = 2;
            this.simpleButton1.Text = "Open excel file";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // stockBalanceFrm1
            // 
            this.stockBalanceFrm1.AllowAddRow = true;
            this.stockBalanceFrm1.AutoOpenDetailForm = false;
            this.stockBalanceFrm1.DataContext = null;
            this.stockBalanceFrm1.DataSource = null;
            this.stockBalanceFrm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.stockBalanceFrm1.EditorTypeName = null;
            this.stockBalanceFrm1.FileID = null;
            this.stockBalanceFrm1.FirstForm = null;
            this.stockBalanceFrm1.FormName = "StockBalanceFrm";
            this.stockBalanceFrm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.stockBalanceFrm1.FormTitle = "PH.HDO.UI.InputOrOutStock.StockBalanceFrm";
            this.stockBalanceFrm1.IsCancelList = false;
            this.stockBalanceFrm1.IsShowPivotTable = false;
            this.stockBalanceFrm1.LayoutData = null;
            this.stockBalanceFrm1.LayoutName = null;
            this.stockBalanceFrm1.ListForm = null;
            this.stockBalanceFrm1.Location = new System.Drawing.Point(3, 3);
            this.stockBalanceFrm1.MenuID = ((long)(0));
            this.stockBalanceFrm1.Name = "stockBalanceFrm1";
            this.stockBalanceFrm1.NextForm = null;
            this.stockBalanceFrm1.ParentForm = null;
            this.stockBalanceFrm1.PrevForm = null;
            this.stockBalanceFrm1.RowChangeAutoSave = true;
            this.stockBalanceFrm1.ShowMultiCheck = false;
            this.stockBalanceFrm1.SideProgramID = null;
            this.stockBalanceFrm1.Size = new System.Drawing.Size(1774, 407);
            this.PlatetoolTipController.SetSuperTip(this.stockBalanceFrm1, null);
            this.stockBalanceFrm1.TabControls = null;
            this.stockBalanceFrm1.TabIndex = 0;
            this.stockBalanceFrm1.TabPage = null;
            // 
            // StockInfoOrOutFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "StockInfoOrOutFrm";
            this.Size = new System.Drawing.Size(1788, 562);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            this.panel2.ResumeLayout(false);
            this.StockBanalce.ResumeLayout(false);
            this.tabStockInfo.ResumeLayout(false);
            this.tabStockOut.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bar1;
        private DevExpress.XtraBars.Bar bar2;
        private DevExpress.XtraBars.Bar bar3;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraBars.BarButtonItem barButtonPrint;
        private DevExpress.XtraBars.BarButtonItem barButtonInputStock;
        private DevExpress.XtraBars.BarButtonItem barButtonOutStock;
        private DevExpress.XtraBars.BarButtonItem barButtonStockInfo;
        private DevExpress.XtraBars.BarButtonItem barButtonStockOut;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.RadioButton radioGroupPro;
        private System.Windows.Forms.RadioButton radioGroupMater;
        private System.Windows.Forms.RadioButton radioNoGroup;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private System.Windows.Forms.TabControl StockBanalce;
        private System.Windows.Forms.TabPage tabStockInfo;
        private System.Windows.Forms.TabPage tabStockOut;
        private System.Windows.Forms.RadioButton radioOrderStock;
        private System.Windows.Forms.RadioButton radioOrderLotNo;
        private StockInListFrm stockInListFrm1;
        private StockOutListFrm stockOutListFrm1;
        private System.Windows.Forms.TabPage tabPage1;
        private StockBalanceFrm stockBalanceFrm1;
    }
}
