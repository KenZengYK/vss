namespace PH.LWPM.UI.MC
{
    partial class McClassDetailFrm
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label langLabel;
            this.tbxSeqno = new System.Windows.Forms.TextBox();
            this.lblSortID = new System.Windows.Forms.Label();
            this.lblNameCn = new System.Windows.Forms.Label();
            this.tbxNameCn = new System.Windows.Forms.TextBox();
            this.lblNameEn = new System.Windows.Forms.Label();
            this.tbxNameEn = new System.Windows.Forms.TextBox();
            this.mcClassList1 = new PH.LWPM.UI.MC.McClassList();
            this.langTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.edtCateory = new DevExpress.XtraEditors.LookUpEdit();
            langLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.langTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCateory.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 262);
            this.splitterControl1.Size = new System.Drawing.Size(1191, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.edtCateory);
            this.headerTitleBar.Controls.Add(this.label1);
            this.headerTitleBar.Controls.Add(this.langTextEdit);
            this.headerTitleBar.Controls.Add(langLabel);
            this.headerTitleBar.Controls.Add(this.tbxSeqno);
            this.headerTitleBar.Controls.Add(this.lblSortID);
            this.headerTitleBar.Controls.Add(this.lblNameCn);
            this.headerTitleBar.Controls.Add(this.tbxNameCn);
            this.headerTitleBar.Controls.Add(this.lblNameEn);
            this.headerTitleBar.Controls.Add(this.tbxNameEn);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(1191, 235);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.tbxNameEn, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lblNameEn, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.tbxNameCn, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lblNameCn, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lblSortID, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.tbxSeqno, 0);
            this.headerTitleBar.Controls.SetChildIndex(langLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.langTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.label1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.edtCateory, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 268);
            this.panelControl1.Size = new System.Drawing.Size(1191, 159);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.mcClassList1);
            this.xtraTabPage1.Size = new System.Drawing.Size(1178, 123);
            this.xtraTabPage1.Text = "M/C equipment list in details(for reference only)";
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(1187, 155);
            this.xtraTabControl1.Text = "";
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.BaseCode);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(2985, 0);
            // 
            // langLabel
            // 
            langLabel.AutoSize = true;
            langLabel.Location = new System.Drawing.Point(106, 67);
            langLabel.Name = "langLabel";
            langLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(langLabel, null);
            langLabel.TabIndex = 32;
            langLabel.Text = "HW Grp Code:";
            // 
            // tbxSeqno
            // 
            this.tbxSeqno.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "SortID", true));
            this.tbxSeqno.Location = new System.Drawing.Point(189, 34);
            this.tbxSeqno.Name = "tbxSeqno";
            this.tbxSeqno.Size = new System.Drawing.Size(115, 21);
            this.PlatetoolTipController.SetSuperTip(this.tbxSeqno, null);
            this.tbxSeqno.TabIndex = 31;
            // 
            // lblSortID
            // 
            this.lblSortID.AutoSize = true;
            this.lblSortID.Location = new System.Drawing.Point(136, 37);
            this.lblSortID.Name = "lblSortID";
            this.lblSortID.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblSortID, null);
            this.lblSortID.TabIndex = 30;
            this.lblSortID.Text = "Seq No:";
            // 
            // lblNameCn
            // 
            this.lblNameCn.AutoSize = true;
            this.lblNameCn.Location = new System.Drawing.Point(76, 127);
            this.lblNameCn.Name = "lblNameCn";
            this.lblNameCn.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblNameCn, null);
            this.lblNameCn.TabIndex = 26;
            this.lblNameCn.Text = "Description (CN):";
            // 
            // tbxNameCn
            // 
            this.tbxNameCn.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Description", true));
            this.tbxNameCn.Location = new System.Drawing.Point(189, 125);
            this.tbxNameCn.Name = "tbxNameCn";
            this.tbxNameCn.Size = new System.Drawing.Size(340, 21);
            this.PlatetoolTipController.SetSuperTip(this.tbxNameCn, null);
            this.tbxNameCn.TabIndex = 27;
            // 
            // lblNameEn
            // 
            this.lblNameEn.AutoSize = true;
            this.lblNameEn.Location = new System.Drawing.Point(106, 96);
            this.lblNameEn.Name = "lblNameEn";
            this.lblNameEn.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblNameEn, null);
            this.lblNameEn.TabIndex = 24;
            this.lblNameEn.Text = "Description:";
            // 
            // tbxNameEn
            // 
            this.tbxNameEn.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Name", true));
            this.tbxNameEn.Location = new System.Drawing.Point(189, 93);
            this.tbxNameEn.Name = "tbxNameEn";
            this.tbxNameEn.Size = new System.Drawing.Size(340, 21);
            this.PlatetoolTipController.SetSuperTip(this.tbxNameEn, null);
            this.tbxNameEn.TabIndex = 25;
            // 
            // mcClassList1
            // 
            this.mcClassList1.AllowAddRow = true;
            this.mcClassList1.AutoOpenDetailForm = false;
            this.mcClassList1.DataContext = null;
            this.mcClassList1.DataSource = null;
            this.mcClassList1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.mcClassList1.EditorTypeName = null;
            this.mcClassList1.FileID = null;
            this.mcClassList1.FirstForm = null;
            this.mcClassList1.FormName = "McClassList";
            this.mcClassList1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.mcClassList1.FormTitle = "PH.LWPM.UI.MC.McClassList";
            this.mcClassList1.IsCancelList = false;
            this.mcClassList1.IsShowPivotTable = false;
            this.mcClassList1.LayoutData = null;
            this.mcClassList1.LayoutName = null;
            this.mcClassList1.ListForm = null;
            this.mcClassList1.Location = new System.Drawing.Point(0, 0);
            this.mcClassList1.MenuID = ((long)(0));
            this.mcClassList1.Name = "mcClassList1";
            this.mcClassList1.NeedCheckPermission = true;
            this.mcClassList1.NextForm = null;
            this.mcClassList1.ParentForm = null;
            this.mcClassList1.PrevForm = null;
            this.mcClassList1.RowChangeAutoSave = true;
            this.mcClassList1.ShowMultiCheck = false;
            this.mcClassList1.SideProgramID = null;
            this.mcClassList1.Size = new System.Drawing.Size(1178, 123);
            this.PlatetoolTipController.SetSuperTip(this.mcClassList1, null);
            this.mcClassList1.TabControls = null;
            this.mcClassList1.TabIndex = 0;
            this.mcClassList1.TabPage = null;
            // 
            // langTextEdit
            // 
            this.langTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Lang", true));
            this.langTextEdit.Location = new System.Drawing.Point(189, 62);
            this.langTextEdit.Name = "langTextEdit";
            this.langTextEdit.Size = new System.Drawing.Size(115, 21);
            this.langTextEdit.TabIndex = 33;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(106, 159);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 34;
            this.label1.Text = "HW Category:";
            // 
            // edtCateory
            // 
            this.edtCateory.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSCode", true));
            this.edtCateory.Location = new System.Drawing.Point(190, 156);
            this.edtCateory.Name = "edtCateory";
            this.edtCateory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtCateory.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Lang", "Code", 40),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Description(En)", 200),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Description(Local)", 150)});
            this.edtCateory.Properties.NullText = "";
            this.edtCateory.Properties.PopupWidth = 400;
            this.edtCateory.Size = new System.Drawing.Size(339, 21);
            this.edtCateory.TabIndex = 35;
            // 
            // McClassDetailFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "McClassDetailFrm";
            this.Size = new System.Drawing.Size(1191, 427);
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
            ((System.ComponentModel.ISupportInitialize)(this.langTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCateory.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TextBox tbxSeqno;
        public System.Windows.Forms.Label lblSortID;
        private System.Windows.Forms.Label lblNameCn;
        private System.Windows.Forms.TextBox tbxNameCn;
        private System.Windows.Forms.Label lblNameEn;
        private System.Windows.Forms.TextBox tbxNameEn;
        private McClassList mcClassList1;
        private DevExpress.XtraEditors.TextEdit langTextEdit;
        private DevExpress.XtraEditors.LookUpEdit edtCateory;
        private System.Windows.Forms.Label label1;
    }
}
