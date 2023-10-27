namespace PH.MobileQC.UI
{
    partial class TraceInfoDetailForm_New
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
            this.deStart = new DevExpress.XtraEditors.DateEdit();
            this.deEnd = new DevExpress.XtraEditors.DateEdit();
            this.gpRecent = new System.Windows.Forms.GroupBox();
            this.btnQuery = new System.Windows.Forms.Button();
            this.lblEnd = new DevExpress.XtraEditors.LabelControl();
            this.gcDefect = new DevExpress.XtraGrid.GridControl();
            this.gvDefect = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcCheck = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTotal = new DevExpress.XtraGrid.Columns.GridColumn();
            this.lblStart = new DevExpress.XtraEditors.LabelControl();
            this.lueExec = new DevExpress.XtraEditors.LookUpEdit();
            this.gluLeve = new DevExpress.XtraEditors.LookUpEdit();
            this.lblFinder = new DevExpress.XtraEditors.LabelControl();
            this.lblExec = new DevExpress.XtraEditors.LabelControl();
            this.edtFindDefect = new DevExpress.XtraEditors.TextEdit();
            this.lblLeve = new DevExpress.XtraEditors.LabelControl();
            this.lblAllDefect = new DevExpress.XtraEditors.LabelControl();
            this.cklDefect = new DevExpress.XtraEditors.CheckedListBoxControl();
            this.chkAll = new DevExpress.XtraEditors.CheckEdit();
            this.btnClear = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).BeginInit();
            this.gpRecent.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueExec.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gluLeve.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFindDefect.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cklDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkAll.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.TraceInfo);
            // 
            // deStart
            // 
            this.deStart.EditValue = null;
            this.deStart.Location = new System.Drawing.Point(82, 31);
            this.deStart.Name = "deStart";
            this.deStart.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deStart.Properties.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.deStart.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deStart.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deStart.Size = new System.Drawing.Size(100, 21);
            this.deStart.TabIndex = 4;
            // 
            // deEnd
            // 
            this.deEnd.EditValue = null;
            this.deEnd.Location = new System.Drawing.Point(265, 31);
            this.deEnd.Name = "deEnd";
            this.deEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deEnd.Properties.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.deEnd.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deEnd.Size = new System.Drawing.Size(100, 21);
            this.deEnd.TabIndex = 5;
            // 
            // gpRecent
            // 
            this.gpRecent.Controls.Add(this.btnQuery);
            this.gpRecent.Controls.Add(this.lblEnd);
            this.gpRecent.Controls.Add(this.deStart);
            this.gpRecent.Controls.Add(this.gcDefect);
            this.gpRecent.Controls.Add(this.lblStart);
            this.gpRecent.Controls.Add(this.deEnd);
            this.gpRecent.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.gpRecent.Location = new System.Drawing.Point(39, 52);
            this.gpRecent.Name = "gpRecent";
            this.gpRecent.Size = new System.Drawing.Size(461, 321);
            this.PlatetoolTipController.SetSuperTip(this.gpRecent, null);
            this.gpRecent.TabIndex = 6;
            this.gpRecent.TabStop = false;
            this.gpRecent.Text = "最近常發生暇疵選擇";
            // 
            // btnQuery
            // 
            this.btnQuery.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btnQuery.Location = new System.Drawing.Point(379, 27);
            this.btnQuery.Name = "btnQuery";
            this.btnQuery.Size = new System.Drawing.Size(47, 31);
            this.PlatetoolTipController.SetSuperTip(this.btnQuery, null);
            this.btnQuery.TabIndex = 18;
            this.btnQuery.Text = "查詢";
            this.btnQuery.UseVisualStyleBackColor = true;
            this.btnQuery.Click += new System.EventHandler(this.btnQuery_Click);
            // 
            // lblEnd
            // 
            this.lblEnd.Location = new System.Drawing.Point(199, 34);
            this.lblEnd.Name = "lblEnd";
            this.lblEnd.Size = new System.Drawing.Size(48, 14);
            this.lblEnd.TabIndex = 8;
            this.lblEnd.Text = "結束日期";
            // 
            // gcDefect
            // 
            this.gcDefect.EmbeddedNavigator.Name = "";
            this.gcDefect.Location = new System.Drawing.Point(16, 64);
            this.gcDefect.MainView = this.gvDefect;
            this.gcDefect.Name = "gcDefect";
            this.gcDefect.Size = new System.Drawing.Size(427, 251);
            this.gcDefect.TabIndex = 17;
            this.gcDefect.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvDefect});
            // 
            // gvDefect
            // 
            this.gvDefect.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcCheck,
            this.gcName,
            this.gcTotal});
            this.gvDefect.GridControl = this.gcDefect;
            this.gvDefect.Name = "gvDefect";
            // 
            // gcCheck
            // 
            this.gcCheck.Caption = "請選擇";
            this.gcCheck.FieldName = "check";
            this.gcCheck.Name = "gcCheck";
            this.gcCheck.Visible = true;
            this.gcCheck.VisibleIndex = 0;
            this.gcCheck.Width = 49;
            // 
            // gcName
            // 
            this.gcName.Caption = "暇疵名稱";
            this.gcName.FieldName = "defectname";
            this.gcName.Name = "gcName";
            this.gcName.OptionsColumn.AllowEdit = false;
            this.gcName.Visible = true;
            this.gcName.VisibleIndex = 1;
            this.gcName.Width = 134;
            // 
            // gcTotal
            // 
            this.gcTotal.Caption = "最近出現次數";
            this.gcTotal.FieldName = "ttl";
            this.gcTotal.Name = "gcTotal";
            this.gcTotal.OptionsColumn.AllowEdit = false;
            this.gcTotal.Visible = true;
            this.gcTotal.VisibleIndex = 2;
            this.gcTotal.Width = 83;
            // 
            // lblStart
            // 
            this.lblStart.Location = new System.Drawing.Point(16, 34);
            this.lblStart.Name = "lblStart";
            this.lblStart.Size = new System.Drawing.Size(48, 14);
            this.lblStart.TabIndex = 7;
            this.lblStart.Text = "開始日期";
            // 
            // lueExec
            // 
            this.lueExec.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Executer", true));
            this.lueExec.Location = new System.Drawing.Point(709, 230);
            this.lueExec.Name = "lueExec";
            this.lueExec.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueExec.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("description", "Remark", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.lueExec.Properties.DisplayMember = "description";
            this.lueExec.Properties.NullText = "";
            this.lueExec.Properties.ValueMember = "datacode";
            this.lueExec.Size = new System.Drawing.Size(163, 21);
            this.lueExec.TabIndex = 20;
            // 
            // gluLeve
            // 
            this.gluLeve.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Level", true));
            this.gluLeve.Location = new System.Drawing.Point(709, 152);
            this.gluLeve.Name = "gluLeve";
            this.gluLeve.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.gluLeve.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("description", "Remark", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.gluLeve.Properties.DisplayMember = "description";
            this.gluLeve.Properties.NullText = "";
            this.gluLeve.Properties.ValueMember = "datacode";
            this.gluLeve.Size = new System.Drawing.Size(163, 21);
            this.gluLeve.TabIndex = 19;
            // 
            // lblFinder
            // 
            this.lblFinder.Location = new System.Drawing.Point(709, 73);
            this.lblFinder.Name = "lblFinder";
            this.lblFinder.Size = new System.Drawing.Size(96, 14);
            this.lblFinder.TabIndex = 7;
            this.lblFinder.Text = "發現者要求的暇疵";
            // 
            // lblExec
            // 
            this.lblExec.Location = new System.Drawing.Point(709, 210);
            this.lblExec.Name = "lblExec";
            this.lblExec.Size = new System.Drawing.Size(36, 14);
            this.lblExec.TabIndex = 13;
            this.lblExec.Text = "執行者";
            // 
            // edtFindDefect
            // 
            this.edtFindDefect.Location = new System.Drawing.Point(706, 93);
            this.edtFindDefect.Name = "edtFindDefect";
            this.edtFindDefect.Size = new System.Drawing.Size(166, 21);
            this.edtFindDefect.TabIndex = 8;
            // 
            // lblLeve
            // 
            this.lblLeve.Location = new System.Drawing.Point(709, 132);
            this.lblLeve.Name = "lblLeve";
            this.lblLeve.Size = new System.Drawing.Size(48, 14);
            this.lblLeve.TabIndex = 11;
            this.lblLeve.Text = "追蹤程度";
            // 
            // lblAllDefect
            // 
            this.lblAllDefect.Location = new System.Drawing.Point(506, 55);
            this.lblAllDefect.Name = "lblAllDefect";
            this.lblAllDefect.Size = new System.Drawing.Size(94, 14);
            this.lblAllDefect.TabIndex = 9;
            this.lblAllDefect.Text = "暇疵列表(請選擇)";
            // 
            // cklDefect
            // 
            this.cklDefect.Location = new System.Drawing.Point(506, 79);
            this.cklDefect.Name = "cklDefect";
            this.cklDefect.Size = new System.Drawing.Size(187, 294);
            this.cklDefect.TabIndex = 15;
            // 
            // chkAll
            // 
            this.chkAll.Location = new System.Drawing.Point(606, 56);
            this.chkAll.Name = "chkAll";
            this.chkAll.Properties.Caption = "全选";
            this.chkAll.Size = new System.Drawing.Size(53, 19);
            this.chkAll.TabIndex = 16;
            this.chkAll.CheckedChanged += new System.EventHandler(this.chkAll_CheckedChanged);
            // 
            // btnClear
            // 
            this.btnClear.Location = new System.Drawing.Point(709, 282);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(93, 23);
            this.PlatetoolTipController.SetSuperTip(this.btnClear, null);
            this.btnClear.TabIndex = 18;
            this.btnClear.Text = "刪除未選暇疵";
            this.btnClear.UseVisualStyleBackColor = true;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // TraceInfoDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lueExec);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.gluLeve);
            this.Controls.Add(this.chkAll);
            this.Controls.Add(this.cklDefect);
            this.Controls.Add(this.lblAllDefect);
            this.Controls.Add(this.gpRecent);
            this.Controls.Add(this.lblFinder);
            this.Controls.Add(this.lblLeve);
            this.Controls.Add(this.lblExec);
            this.Controls.Add(this.edtFindDefect);
            this.Name = "TraceInfoDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.TraceInfoDetailForm_Load);
            this.Controls.SetChildIndex(this.edtFindDefect, 0);
            this.Controls.SetChildIndex(this.lblExec, 0);
            this.Controls.SetChildIndex(this.lblLeve, 0);
            this.Controls.SetChildIndex(this.lblFinder, 0);
            this.Controls.SetChildIndex(this.gpRecent, 0);
            this.Controls.SetChildIndex(this.lblAllDefect, 0);
            this.Controls.SetChildIndex(this.cklDefect, 0);
            this.Controls.SetChildIndex(this.chkAll, 0);
            this.Controls.SetChildIndex(this.gluLeve, 0);
            this.Controls.SetChildIndex(this.btnClear, 0);
            this.Controls.SetChildIndex(this.lueExec, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).EndInit();
            this.gpRecent.ResumeLayout(false);
            this.gpRecent.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueExec.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gluLeve.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFindDefect.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cklDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkAll.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit deStart;
        private DevExpress.XtraEditors.DateEdit deEnd;
        private System.Windows.Forms.GroupBox gpRecent;
        private DevExpress.XtraEditors.LabelControl lblEnd;
        private DevExpress.XtraEditors.LabelControl lblStart;
        private DevExpress.XtraEditors.LabelControl lblFinder;
        private DevExpress.XtraEditors.TextEdit edtFindDefect;
        private DevExpress.XtraEditors.LabelControl lblAllDefect;
        private DevExpress.XtraEditors.LabelControl lblLeve;
        private DevExpress.XtraEditors.LabelControl lblExec;
        private DevExpress.XtraEditors.CheckedListBoxControl cklDefect;
        private DevExpress.XtraEditors.CheckEdit chkAll;
        private DevExpress.XtraGrid.GridControl gcDefect;
        private DevExpress.XtraGrid.Views.Grid.GridView gvDefect;
        private System.Windows.Forms.Button btnQuery;
        private DevExpress.XtraGrid.Columns.GridColumn gcName;
        private DevExpress.XtraGrid.Columns.GridColumn gcTotal;
        private DevExpress.XtraGrid.Columns.GridColumn gcCheck;
        private System.Windows.Forms.Button btnClear;
        private DevExpress.XtraEditors.LookUpEdit gluLeve;
        private DevExpress.XtraEditors.LookUpEdit lueExec;
    }
}
