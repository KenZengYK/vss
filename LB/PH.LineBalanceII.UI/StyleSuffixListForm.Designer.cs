namespace PH.LineBalanceII.UI
{
    partial class StyleSuffixListForm
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.splitContainerControl1 = new DevExpress.XtraEditors.SplitContainerControl();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gvSuffix = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcML = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSuffix = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCountry = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcHang = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridControl2 = new DevExpress.XtraGrid.GridControl();
            this.gvRang = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcMP = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).BeginInit();
            this.splitContainerControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSuffix)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvRang)).BeginInit();
            this.tableLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // splitContainerControl1
            // 
            this.splitContainerControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.splitContainerControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.splitContainerControl1.Location = new System.Drawing.Point(0, 0);
            this.splitContainerControl1.Name = "splitContainerControl1";
            this.splitContainerControl1.Panel1.Controls.Add(this.gridControl1);
            this.splitContainerControl1.Panel1.Text = "Panel1";
            this.splitContainerControl1.Panel2.Controls.Add(this.gridControl2);
            this.splitContainerControl1.Panel2.Text = "Panel2";
            this.splitContainerControl1.Size = new System.Drawing.Size(1000, 370);
            this.splitContainerControl1.SplitterPosition = 745;
            this.PlatetoolTipController.SetSuperTip(this.splitContainerControl1, null);
            this.splitContainerControl1.TabIndex = 0;
            this.splitContainerControl1.Text = "splitContainerControl1";
            // 
            // gridControl1
            // 
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gvSuffix;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(741, 366);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvSuffix});
            // 
            // gvSuffix
            // 
            this.gvSuffix.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcML,
            this.gcSuffix,
            this.gcCountry,
            this.gcHang,
            this.gcRemark});
            this.gvSuffix.GridControl = this.gridControl1;
            this.gvSuffix.Name = "gvSuffix";
            this.gvSuffix.OptionsBehavior.Editable = false;
            this.gvSuffix.OptionsView.AllowCellMerge = true;
            this.gvSuffix.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.gvSuffix_CellMerge);
            // 
            // gcML
            // 
            this.gcML.Caption = "ML/OP";
            this.gcML.FieldName = "MP";
            this.gcML.Name = "gcML";
            this.gcML.Visible = true;
            this.gcML.VisibleIndex = 0;
            this.gcML.Width = 104;
            // 
            // gcSuffix
            // 
            this.gcSuffix.Caption = "Suffix";
            this.gcSuffix.FieldName = "Suffix";
            this.gcSuffix.Name = "gcSuffix";
            this.gcSuffix.Visible = true;
            this.gcSuffix.VisibleIndex = 1;
            this.gcSuffix.Width = 89;
            // 
            // gcCountry
            // 
            this.gcCountry.Caption = "Country";
            this.gcCountry.FieldName = "Country";
            this.gcCountry.Name = "gcCountry";
            this.gcCountry.Visible = true;
            this.gcCountry.VisibleIndex = 2;
            this.gcCountry.Width = 130;
            // 
            // gcHang
            // 
            this.gcHang.Caption = "Hangtags";
            this.gcHang.FieldName = "Hangtag";
            this.gcHang.Name = "gcHang";
            this.gcHang.Visible = true;
            this.gcHang.VisibleIndex = 3;
            this.gcHang.Width = 114;
            // 
            // gcRemark
            // 
            this.gcRemark.AppearanceCell.Options.UseTextOptions = true;
            this.gcRemark.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcRemark.Caption = "Remark";
            this.gcRemark.FieldName = "Remark";
            this.gcRemark.Name = "gcRemark";
            this.gcRemark.Visible = true;
            this.gcRemark.VisibleIndex = 4;
            this.gcRemark.Width = 651;
            // 
            // gridControl2
            // 
            this.gridControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl2.EmbeddedNavigator.Name = "";
            this.gridControl2.Location = new System.Drawing.Point(0, 0);
            this.gridControl2.MainView = this.gvRang;
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(245, 366);
            this.gridControl2.TabIndex = 0;
            this.gridControl2.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvRang});
            // 
            // gvRang
            // 
            this.gvRang.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcMP,
            this.gcName});
            this.gvRang.GridControl = this.gridControl2;
            this.gvRang.Name = "gvRang";
            this.gvRang.OptionsBehavior.Editable = false;
            // 
            // gcMP
            // 
            this.gcMP.Caption = "ML/OP";
            this.gcMP.FieldName = "MP";
            this.gcMP.Name = "gcMP";
            this.gcMP.Visible = true;
            this.gcMP.VisibleIndex = 0;
            this.gcMP.Width = 191;
            // 
            // gcName
            // 
            this.gcName.Caption = "Collection Name (Range)";
            this.gcName.FieldName = "RangeName";
            this.gcName.Name = "gcName";
            this.gcName.Visible = true;
            this.gcName.VisibleIndex = 1;
            this.gcName.Width = 897;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 1;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 17.1F));
            this.tableLayoutPanel1.Controls.Add(this.labelControl2, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.labelControl3, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.labelControl4, 0, 3);
            this.tableLayoutPanel1.Controls.Add(this.labelControl1, 0, 0);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 370);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 4;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 24F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(1000, 96);
            this.PlatetoolTipController.SetSuperTip(this.tableLayoutPanel1, null);
            this.tableLayoutPanel1.TabIndex = 0;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(3, 3);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(22, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "PS :";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(3, 29);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(292, 14);
            this.labelControl2.TabIndex = 1;
            this.labelControl2.Text = "1) Suffix \"D\" applied to ML & OP on different countries";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(3, 55);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(292, 14);
            this.labelControl3.TabIndex = 2;
            this.labelControl3.Text = "2) Country code \"NL\" have different suffix on ML & OP";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(3, 79);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(326, 14);
            this.labelControl4.TabIndex = 3;
            this.labelControl4.Text = "3) Country code \"CA\" have same suffix \"G\" on both ML & OP";
            // 
            // StyleSuffixListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tableLayoutPanel1);
            this.Controls.Add(this.splitContainerControl1);
            this.Name = "StyleSuffixListForm";
            this.Size = new System.Drawing.Size(1000, 466);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.StyleSuffixListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).EndInit();
            this.splitContainerControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSuffix)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvRang)).EndInit();
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl1;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gvSuffix;
        private DevExpress.XtraGrid.GridControl gridControl2;
        private DevExpress.XtraGrid.Views.Grid.GridView gvRang;
        private DevExpress.XtraGrid.Columns.GridColumn gcML;
        private DevExpress.XtraGrid.Columns.GridColumn gcSuffix;
        private DevExpress.XtraGrid.Columns.GridColumn gcCountry;
        private DevExpress.XtraGrid.Columns.GridColumn gcHang;
        private DevExpress.XtraGrid.Columns.GridColumn gcRemark;
        private DevExpress.XtraGrid.Columns.GridColumn gcMP;
        private DevExpress.XtraGrid.Columns.GridColumn gcName;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl4;
    }
}
