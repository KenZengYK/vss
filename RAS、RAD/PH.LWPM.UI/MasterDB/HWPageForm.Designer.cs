namespace PH.LWPM.UI.MasterDB
{
    partial class HWPageForm
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
            this.pnlTop = new DevExpress.XtraEditors.PanelControl();
            this.cbChoiceType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblChoceType = new DevExpress.XtraEditors.LabelControl();
            this.tcHW = new DevExpress.XtraTab.XtraTabControl();
            this.tbCategory = new DevExpress.XtraTab.XtraTabPage();
            this.frmCategory = new PH.LWPM.UI.MasterDB.HWCategoryListForm();
            this.tbGroup = new DevExpress.XtraTab.XtraTabPage();
            this.frmHWGroup = new PH.LWPM.UI.MasterDB.HWGroupListForm();
            this.tbType = new DevExpress.XtraTab.XtraTabPage();
            this.frmHWType = new PH.LWPM.UI.MasterDB.HWTypeListForm();
            ((System.ComponentModel.ISupportInitialize)(this.pnlTop)).BeginInit();
            this.pnlTop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbChoiceType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tcHW)).BeginInit();
            this.tcHW.SuspendLayout();
            this.tbCategory.SuspendLayout();
            this.tbGroup.SuspendLayout();
            this.tbType.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlTop
            // 
            this.pnlTop.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlTop.Controls.Add(this.cbChoiceType);
            this.pnlTop.Controls.Add(this.lblChoceType);
            this.pnlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlTop.Location = new System.Drawing.Point(0, 0);
            this.pnlTop.Name = "pnlTop";
            this.pnlTop.Size = new System.Drawing.Size(962, 46);
            this.PlatetoolTipController.SetSuperTip(this.pnlTop, null);
            this.pnlTop.TabIndex = 3;
            // 
            // cbChoiceType
            // 
            this.cbChoiceType.EditValue = "1. HW Category db";
            this.cbChoiceType.Location = new System.Drawing.Point(272, 13);
            this.cbChoiceType.Name = "cbChoiceType";
            this.cbChoiceType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbChoiceType.Properties.Items.AddRange(new object[] {
            "1. HW Category db",
            "2. HW Group db",
            "3. HW Type db"});
            this.cbChoiceType.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cbChoiceType.Size = new System.Drawing.Size(303, 21);
            this.cbChoiceType.TabIndex = 9;
            this.cbChoiceType.SelectedIndexChanged += new System.EventHandler(this.cbChoiceType_SelectedIndexChanged);
            // 
            // lblChoceType
            // 
            this.lblChoceType.Location = new System.Drawing.Point(153, 16);
            this.lblChoceType.Name = "lblChoceType";
            this.lblChoceType.Size = new System.Drawing.Size(110, 14);
            this.lblChoceType.TabIndex = 8;
            this.lblChoceType.Text = "Please choose type:";
            // 
            // tcHW
            // 
            this.tcHW.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tcHW.Location = new System.Drawing.Point(0, 46);
            this.tcHW.Name = "tcHW";
            this.tcHW.SelectedTabPage = this.tbCategory;
            this.tcHW.Size = new System.Drawing.Size(962, 462);
            this.tcHW.TabIndex = 4;
            this.tcHW.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.tbCategory,
            this.tbGroup,
            this.tbType});
            this.tcHW.Text = "xtraTabControl1";
            // 
            // tbCategory
            // 
            this.tbCategory.Controls.Add(this.frmCategory);
            this.tbCategory.Name = "tbCategory";
            this.tbCategory.Size = new System.Drawing.Size(953, 430);
            this.tbCategory.Text = "1.HW Category db";
            // 
            // frmCategory
            // 
            this.frmCategory.AllowAddRow = true;
            this.frmCategory.AutoOpenDetailForm = false;
            this.frmCategory.BaseCodeType = "McCategory";
            this.frmCategory.DataContext = null;
            this.frmCategory.DataSource = null;
            this.frmCategory.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmCategory.EditorTypeName = null;
            this.frmCategory.FileID = null;
            this.frmCategory.FirstForm = null;
            this.frmCategory.FormName = "HWCategoryListForm";
            this.frmCategory.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmCategory.FormTitle = "PH.LWPM.UI.MasterDB.HWCategoryListForm";
            this.frmCategory.IsCancelList = false;
            this.frmCategory.IsShowPivotTable = false;
            this.frmCategory.LayoutData = null;
            this.frmCategory.LayoutName = null;
            this.frmCategory.ListForm = null;
            this.frmCategory.Location = new System.Drawing.Point(0, 0);
            this.frmCategory.MenuID = ((long)(0));
            this.frmCategory.Name = "frmCategory";
            this.frmCategory.NeedCheckPermission = true;
            this.frmCategory.NextForm = null;
            this.frmCategory.ParentForm = null;
            this.frmCategory.PrevForm = null;
            this.frmCategory.ReportTitle = "HW Category";
            this.frmCategory.RowChangeAutoSave = true;
            this.frmCategory.ShowMultiCheck = false;
            this.frmCategory.SideProgramID = null;
            this.frmCategory.Size = new System.Drawing.Size(953, 430);
            this.PlatetoolTipController.SetSuperTip(this.frmCategory, null);
            this.frmCategory.TabControls = null;
            this.frmCategory.TabIndex = 0;
            this.frmCategory.TabPage = null;
            // 
            // tbGroup
            // 
            this.tbGroup.Controls.Add(this.frmHWGroup);
            this.tbGroup.Name = "tbGroup";
            this.tbGroup.Size = new System.Drawing.Size(953, 430);
            this.tbGroup.Text = "2. HW Group db";
            // 
            // frmHWGroup
            // 
            this.frmHWGroup.AllowAddRow = true;
            this.frmHWGroup.AutoOpenDetailForm = false;
            this.frmHWGroup.BaseCodeType = "McGroup";
            this.frmHWGroup.DataContext = null;
            this.frmHWGroup.DataSource = null;
            this.frmHWGroup.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmHWGroup.EditorTypeName = null;
            this.frmHWGroup.FileID = null;
            this.frmHWGroup.FirstForm = null;
            this.frmHWGroup.FormName = "HWGroupListForm";
            this.frmHWGroup.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmHWGroup.FormTitle = "PH.LWPM.UI.MasterDB.HWGroupListForm";
            this.frmHWGroup.IsCancelList = false;
            this.frmHWGroup.IsShowPivotTable = false;
            this.frmHWGroup.LayoutData = null;
            this.frmHWGroup.LayoutName = null;
            this.frmHWGroup.ListForm = null;
            this.frmHWGroup.Location = new System.Drawing.Point(0, 0);
            this.frmHWGroup.MenuID = ((long)(0));
            this.frmHWGroup.Name = "frmHWGroup";
            this.frmHWGroup.NeedCheckPermission = true;
            this.frmHWGroup.NextForm = null;
            this.frmHWGroup.ParentForm = null;
            this.frmHWGroup.PrevForm = null;
            this.frmHWGroup.ReportTitle = null;
            this.frmHWGroup.RowChangeAutoSave = true;
            this.frmHWGroup.ShowMultiCheck = false;
            this.frmHWGroup.SideProgramID = null;
            this.frmHWGroup.Size = new System.Drawing.Size(953, 430);
            this.PlatetoolTipController.SetSuperTip(this.frmHWGroup, null);
            this.frmHWGroup.TabControls = null;
            this.frmHWGroup.TabIndex = 0;
            this.frmHWGroup.TabPage = null;
            // 
            // tbType
            // 
            this.tbType.Controls.Add(this.frmHWType);
            this.tbType.Name = "tbType";
            this.tbType.Size = new System.Drawing.Size(953, 430);
            this.tbType.Text = "3. HW Type db";
            // 
            // frmHWType
            // 
            this.frmHWType.AllowAddRow = true;
            this.frmHWType.AutoOpenDetailForm = false;
            this.frmHWType.BaseCodeType = "METHODTYPE";
            this.frmHWType.DataContext = null;
            this.frmHWType.DataSource = null;
            this.frmHWType.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmHWType.EditorTypeName = null;
            this.frmHWType.FileID = null;
            this.frmHWType.FirstForm = null;
            this.frmHWType.FormName = "HWTypeListForm";
            this.frmHWType.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmHWType.FormTitle = "PH.LWPM.UI.MasterDB.HWTypeListForm";
            this.frmHWType.IsCancelList = false;
            this.frmHWType.IsShowPivotTable = false;
            this.frmHWType.LayoutData = null;
            this.frmHWType.LayoutName = null;
            this.frmHWType.ListForm = null;
            this.frmHWType.Location = new System.Drawing.Point(0, 0);
            this.frmHWType.MenuID = ((long)(0));
            this.frmHWType.Name = "frmHWType";
            this.frmHWType.NeedCheckPermission = true;
            this.frmHWType.NextForm = null;
            this.frmHWType.ParentForm = null;
            this.frmHWType.PrevForm = null;
            this.frmHWType.ReportTitle = null;
            this.frmHWType.RowChangeAutoSave = true;
            this.frmHWType.ShowMultiCheck = false;
            this.frmHWType.SideProgramID = null;
            this.frmHWType.Size = new System.Drawing.Size(953, 430);
            this.PlatetoolTipController.SetSuperTip(this.frmHWType, null);
            this.frmHWType.TabControls = null;
            this.frmHWType.TabIndex = 0;
            this.frmHWType.TabPage = null;
            // 
            // HWPageForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tcHW);
            this.Controls.Add(this.pnlTop);
            this.Name = "HWPageForm";
            this.Size = new System.Drawing.Size(962, 508);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.pnlTop)).EndInit();
            this.pnlTop.ResumeLayout(false);
            this.pnlTop.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbChoiceType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tcHW)).EndInit();
            this.tcHW.ResumeLayout(false);
            this.tbCategory.ResumeLayout(false);
            this.tbGroup.ResumeLayout(false);
            this.tbType.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl pnlTop;
        private DevExpress.XtraEditors.ComboBoxEdit cbChoiceType;
        private DevExpress.XtraEditors.LabelControl lblChoceType;
        private DevExpress.XtraTab.XtraTabControl tcHW;
        private DevExpress.XtraTab.XtraTabPage tbCategory;
        private DevExpress.XtraTab.XtraTabPage tbGroup;
        private DevExpress.XtraTab.XtraTabPage tbType;
        private HWCategoryListForm frmCategory;
        private HWGroupListForm frmHWGroup;
        private HWTypeListForm frmHWType;
    }
}
