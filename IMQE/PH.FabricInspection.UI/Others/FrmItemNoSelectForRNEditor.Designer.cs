namespace PH.FabricInspection.UI
{
    partial class FrmItemNoSelectForRNEditor
    {
        /// <summary>
        /// 必需的设计器变量⼿        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源⼿        /// </summary>
        /// <param name="disposing">如果应释放托管资源，䶿true；否则为 false⼿param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方毿 不要
        /// 使用代码编辑器修改此方法的内容⾿
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.sbCancel = new DevExpress.XtraEditors.SimpleButton();
            this.sbSelect = new DevExpress.XtraEditors.SimpleButton();
            this.pnlFuncButtons = new DevExpress.XtraEditors.PanelControl();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.gridControl2 = new DevExpress.XtraGrid.GridControl();
            this.bsParameterType = new System.Windows.Forms.BindingSource(this.components);
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcItem_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStock_In_Date = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcItem_Desc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dateEdit_StockInDateEnd = new DevExpress.XtraEditors.DateEdit();
            this.dateEdit_StockInDateFrom = new DevExpress.XtraEditors.DateEdit();
            this.textEdit_ItemNo = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.sBtn_Find = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).BeginInit();
            this.pnlFuncButtons.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsParameterType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_StockInDateEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_StockInDateEnd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_StockInDateFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_StockInDateFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_ItemNo.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // sbCancel
            // 
            this.sbCancel.Location = new System.Drawing.Point(280, 4);
            this.sbCancel.Margin = new System.Windows.Forms.Padding(2);
            this.sbCancel.Name = "sbCancel";
            this.sbCancel.Size = new System.Drawing.Size(100, 36);
            this.sbCancel.TabIndex = 66;
            this.sbCancel.Text = "Cancel";
            this.sbCancel.Click += new System.EventHandler(this.sbCancel_Click);
            // 
            // sbSelect
            // 
            this.sbSelect.Location = new System.Drawing.Point(176, 4);
            this.sbSelect.Margin = new System.Windows.Forms.Padding(2);
            this.sbSelect.Name = "sbSelect";
            this.sbSelect.Size = new System.Drawing.Size(100, 36);
            this.sbSelect.TabIndex = 68;
            this.sbSelect.Text = "Select";
            this.sbSelect.Click += new System.EventHandler(this.sbSelect_Click);
            // 
            // pnlFuncButtons
            // 
            this.pnlFuncButtons.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlFuncButtons.Controls.Add(this.sbCancel);
            this.pnlFuncButtons.Controls.Add(this.sbSelect);
            this.pnlFuncButtons.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlFuncButtons.Location = new System.Drawing.Point(0, 306);
            this.pnlFuncButtons.Margin = new System.Windows.Forms.Padding(2);
            this.pnlFuncButtons.Name = "pnlFuncButtons";
            this.pnlFuncButtons.Size = new System.Drawing.Size(550, 44);
            this.pnlFuncButtons.TabIndex = 70;
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.gridControl2);
            this.panelControl2.Controls.Add(this.groupBox1);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl2.Location = new System.Drawing.Point(0, 0);
            this.panelControl2.Margin = new System.Windows.Forms.Padding(2);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(550, 306);
            this.panelControl2.TabIndex = 71;
            // 
            // gridControl2
            // 
            this.gridControl2.DataSource = this.bsParameterType;
            this.gridControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl2.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(2);
            this.gridControl2.EmbeddedNavigator.Name = "";
            this.gridControl2.Location = new System.Drawing.Point(4, 55);
            this.gridControl2.MainView = this.gridView2;
            this.gridControl2.Margin = new System.Windows.Forms.Padding(2);
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(542, 247);
            this.gridControl2.TabIndex = 3;
            this.gridControl2.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView2});
            // 
            // gridView2
            // 
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcItem_No,
            this.gcStock_In_Date,
            this.gcItem_Desc});
            this.gridView2.GridControl = this.gridControl2;
            this.gridView2.Name = "gridView2";
            this.gridView2.OptionsBehavior.Editable = false;
            this.gridView2.OptionsDetail.AllowZoomDetail = false;
            this.gridView2.OptionsDetail.EnableMasterViewMode = false;
            this.gridView2.OptionsDetail.ShowDetailTabs = false;
            this.gridView2.OptionsDetail.SmartDetailExpand = false;
            this.gridView2.OptionsView.ColumnAutoWidth = false;
            this.gridView2.OptionsView.ShowDetailButtons = false;
            this.gridView2.OptionsView.ShowGroupPanel = false;
            // 
            // gcItem_No
            // 
            this.gcItem_No.Caption = "Item No";
            this.gcItem_No.FieldName = "Item_No";
            this.gcItem_No.Name = "gcItem_No";
            this.gcItem_No.Visible = true;
            this.gcItem_No.VisibleIndex = 0;
            this.gcItem_No.Width = 130;
            // 
            // gcStock_In_Date
            // 
            this.gcStock_In_Date.Caption = "Stock In Date";
            this.gcStock_In_Date.FieldName = "Stock_In_Date";
            this.gcStock_In_Date.Name = "gcStock_In_Date";
            this.gcStock_In_Date.Visible = true;
            this.gcStock_In_Date.VisibleIndex = 1;
            this.gcStock_In_Date.Width = 98;
            // 
            // gcItem_Desc
            // 
            this.gcItem_Desc.Caption = "Description";
            this.gcItem_Desc.FieldName = "Item_Desc";
            this.gcItem_Desc.Name = "gcItem_Desc";
            this.gcItem_Desc.Visible = true;
            this.gcItem_Desc.VisibleIndex = 2;
            this.gcItem_Desc.Width = 281;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dateEdit_StockInDateEnd);
            this.groupBox1.Controls.Add(this.dateEdit_StockInDateFrom);
            this.groupBox1.Controls.Add(this.textEdit_ItemNo);
            this.groupBox1.Controls.Add(this.labelControl3);
            this.groupBox1.Controls.Add(this.labelControl2);
            this.groupBox1.Controls.Add(this.labelControl1);
            this.groupBox1.Controls.Add(this.sBtn_Find);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Location = new System.Drawing.Point(4, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(542, 51);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "查詢條件:";
            // 
            // dateEdit_StockInDateEnd
            // 
            this.dateEdit_StockInDateEnd.EditValue = null;
            this.dateEdit_StockInDateEnd.Location = new System.Drawing.Point(382, 19);
            this.dateEdit_StockInDateEnd.Name = "dateEdit_StockInDateEnd";
            this.dateEdit_StockInDateEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_StockInDateEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit_StockInDateEnd.Size = new System.Drawing.Size(88, 21);
            this.dateEdit_StockInDateEnd.TabIndex = 3;
            // 
            // dateEdit_StockInDateFrom
            // 
            this.dateEdit_StockInDateFrom.EditValue = null;
            this.dateEdit_StockInDateFrom.Location = new System.Drawing.Point(267, 19);
            this.dateEdit_StockInDateFrom.Name = "dateEdit_StockInDateFrom";
            this.dateEdit_StockInDateFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_StockInDateFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit_StockInDateFrom.Size = new System.Drawing.Size(90, 21);
            this.dateEdit_StockInDateFrom.TabIndex = 3;
            // 
            // textEdit_ItemNo
            // 
            this.textEdit_ItemNo.Location = new System.Drawing.Point(59, 19);
            this.textEdit_ItemNo.Name = "textEdit_ItemNo";
            this.textEdit_ItemNo.Size = new System.Drawing.Size(106, 21);
            this.textEdit_ItemNo.TabIndex = 2;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(363, 22);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(15, 14);
            this.labelControl3.TabIndex = 1;
            this.labelControl3.Text = "To";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(184, 22);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(80, 14);
            this.labelControl2.TabIndex = 1;
            this.labelControl2.Text = "Stock In Date:";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(7, 22);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(49, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Item No:";
            // 
            // sBtn_Find
            // 
            this.sBtn_Find.Location = new System.Drawing.Point(480, 18);
            this.sBtn_Find.Name = "sBtn_Find";
            this.sBtn_Find.Size = new System.Drawing.Size(55, 23);
            this.sBtn_Find.TabIndex = 0;
            this.sBtn_Find.Text = "Find";
            this.sBtn_Find.Click += new System.EventHandler(this.sBtn_Find_Click);
            // 
            // FrmItemNoSelectForRNEditor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(550, 350);
            this.Controls.Add(this.panelControl2);
            this.Controls.Add(this.pnlFuncButtons);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "FrmItemNoSelectForRNEditor";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Item Code Select";
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).EndInit();
            this.pnlFuncButtons.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsParameterType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_StockInDateEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_StockInDateEnd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_StockInDateFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_StockInDateFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_ItemNo.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton sbCancel;
        private DevExpress.XtraEditors.SimpleButton sbSelect;
        private DevExpress.XtraEditors.PanelControl pnlFuncButtons;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraGrid.GridControl gridControl2;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn gcItem_No;
        private System.Windows.Forms.BindingSource bsParameterType;
        private DevExpress.XtraGrid.Columns.GridColumn gcItem_Desc;
        private DevExpress.XtraGrid.Columns.GridColumn gcStock_In_Date;
        private System.Windows.Forms.GroupBox groupBox1;
        private DevExpress.XtraEditors.DateEdit dateEdit_StockInDateEnd;
        private DevExpress.XtraEditors.DateEdit dateEdit_StockInDateFrom;
        private DevExpress.XtraEditors.TextEdit textEdit_ItemNo;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SimpleButton sBtn_Find;

    }
}