namespace PH.RWO.UI
{
    partial class CustomerCodeDetailForm
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
            System.Windows.Forms.Label projectNoLabel;
            this.CustomerCode = new DevExpress.XtraEditors.TextEdit();
            this.Team = new DevExpress.XtraEditors.TextEdit();
            this.lable_SalesOrderNo = new System.Windows.Forms.Label();
            this.Customer = new DevExpress.XtraEditors.TextEdit();
            this.lable_Company = new System.Windows.Forms.Label();
            this.customerCommissionListForm1 = new PH.RWO.UI.CustomerCommissionListForm();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.packingCategoryListForm1 = new PH.RWO.UI.Setting.PackingCategoryListForm();
            this.label2 = new System.Windows.Forms.Label();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            projectNoLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.CustomerCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Team.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Customer.Properties)).BeginInit();
            this.xtraTabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 246);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.memoEdit1);
            this.headerTitleBar.Controls.Add(this.textEdit1);
            this.headerTitleBar.Controls.Add(this.label2);
            this.headerTitleBar.Controls.Add(this.lable_Company);
            this.headerTitleBar.Controls.Add(this.Customer);
            this.headerTitleBar.Controls.Add(this.label1);
            this.headerTitleBar.Controls.Add(this.CustomerCode);
            this.headerTitleBar.Controls.Add(projectNoLabel);
            this.headerTitleBar.Controls.Add(this.Team);
            this.headerTitleBar.Controls.Add(this.lable_SalesOrderNo);
            this.headerTitleBar.Size = new System.Drawing.Size(809, 220);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.lable_SalesOrderNo, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Team, 0);
            this.headerTitleBar.Controls.SetChildIndex(projectNoLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.CustomerCode, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.label1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Customer, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lable_Company, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.label2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.memoEdit1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 252);
            this.panelControl1.Size = new System.Drawing.Size(809, 256);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.customerCommissionListForm1);
            this.xtraTabPage1.PageVisible = false;
            this.xtraTabPage1.Size = new System.Drawing.Size(796, 220);
            this.xtraTabPage1.Text = "Commission";
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(805, 252);
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage2});
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage2, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage1, 0);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.CustomerCode);
            // 
            // projectNoLabel
            // 
            projectNoLabel.AutoSize = true;
            projectNoLabel.BackColor = System.Drawing.Color.Transparent;
            projectNoLabel.Location = new System.Drawing.Point(32, 71);
            projectNoLabel.Name = "projectNoLabel";
            projectNoLabel.Size = new System.Drawing.Size(81, 12);
            this.PlatetoolTipController.SetSuperTip(projectNoLabel, null);
            projectNoLabel.TabIndex = 302;
            projectNoLabel.Text = "Customer Code:";
            // 
            // CustomerCode
            // 
            this.CustomerCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerCode1", true));
            this.CustomerCode.Location = new System.Drawing.Point(134, 66);
            this.CustomerCode.Name = "CustomerCode";
            this.CustomerCode.Size = new System.Drawing.Size(200, 21);
            this.CustomerCode.TabIndex = 303;
            this.CustomerCode.Tag = "CustomerCode";
            // 
            // Team
            // 
            this.Team.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Team", true));
            this.Team.Location = new System.Drawing.Point(134, 105);
            this.Team.Name = "Team";
            this.Team.Size = new System.Drawing.Size(200, 21);
            this.Team.TabIndex = 301;
            this.Team.Tag = "Team";
            // 
            // lable_SalesOrderNo
            // 
            this.lable_SalesOrderNo.AutoSize = true;
            this.lable_SalesOrderNo.BackColor = System.Drawing.Color.Transparent;
            this.lable_SalesOrderNo.Location = new System.Drawing.Point(79, 110);
            this.lable_SalesOrderNo.Name = "lable_SalesOrderNo";
            this.lable_SalesOrderNo.Size = new System.Drawing.Size(34, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_SalesOrderNo, null);
            this.lable_SalesOrderNo.TabIndex = 299;
            this.lable_SalesOrderNo.Text = "Team:";
            // 
            // Customer
            // 
            this.Customer.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Customer", true));
            this.Customer.Location = new System.Drawing.Point(134, 31);
            this.Customer.Name = "Customer";
            this.Customer.Size = new System.Drawing.Size(200, 21);
            this.Customer.TabIndex = 300;
            this.Customer.Tag = "Customer";
            // 
            // lable_Company
            // 
            this.lable_Company.AutoSize = true;
            this.lable_Company.BackColor = System.Drawing.Color.Transparent;
            this.lable_Company.Location = new System.Drawing.Point(57, 36);
            this.lable_Company.Name = "lable_Company";
            this.lable_Company.Size = new System.Drawing.Size(56, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_Company, null);
            this.lable_Company.TabIndex = 298;
            this.lable_Company.Text = "Customer :";
            // 
            // customerCommissionListForm1
            // 
            this.customerCommissionListForm1.AllowAddRow = true;
            this.customerCommissionListForm1.AlwaysShowDesignLayout = false;
            this.customerCommissionListForm1.AutoOpenDetailForm = false;
            this.customerCommissionListForm1.DataContext = null;
            this.customerCommissionListForm1.DataSource = null;
            this.customerCommissionListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.customerCommissionListForm1.EditorTypeName = null;
            this.customerCommissionListForm1.FileID = null;
            this.customerCommissionListForm1.FirstForm = null;
            this.customerCommissionListForm1.FormName = "CustomerCommissionListForm";
            this.customerCommissionListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.customerCommissionListForm1.FormTitle = "PH.RWO.UI.CustomerCommissionListForm";
            this.customerCommissionListForm1.IsCancelList = false;
            this.customerCommissionListForm1.IsShowPivotTable = false;
            this.customerCommissionListForm1.LayoutData = null;
            this.customerCommissionListForm1.LayoutName = null;
            this.customerCommissionListForm1.ListForm = null;
            this.customerCommissionListForm1.Location = new System.Drawing.Point(0, 0);
            this.customerCommissionListForm1.MenuID = ((long)(0));
            this.customerCommissionListForm1.Name = "customerCommissionListForm1";
            this.customerCommissionListForm1.NeedCheckPermission = true;
            this.customerCommissionListForm1.NextForm = null;
            this.customerCommissionListForm1.ParentForm = null;
            this.customerCommissionListForm1.PrevForm = null;
            this.customerCommissionListForm1.RowChangeAutoSave = true;
            this.customerCommissionListForm1.ShowMultiCheck = false;
            this.customerCommissionListForm1.SideProgramID = null;
            this.customerCommissionListForm1.Size = new System.Drawing.Size(796, 220);
            this.PlatetoolTipController.SetSuperTip(this.customerCommissionListForm1, null);
            this.customerCommissionListForm1.TabControls = null;
            this.customerCommissionListForm1.TabIndex = 0;
            this.customerCommissionListForm1.TabPage = null;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.packingCategoryListForm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(796, 246);
            this.xtraTabPage2.Text = "Packing";
            // 
            // packingCategoryListForm1
            // 
            this.packingCategoryListForm1.AllowAddRow = true;
            this.packingCategoryListForm1.AllowGridEdit = true;
            this.packingCategoryListForm1.AlwaysShowDesignLayout = false;
            this.packingCategoryListForm1.AutoOpenDetailForm = false;
            this.packingCategoryListForm1.DataContext = null;
            this.packingCategoryListForm1.DataSource = null;
            this.packingCategoryListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.packingCategoryListForm1.EditorTypeName = null;
            this.packingCategoryListForm1.FileID = null;
            this.packingCategoryListForm1.FirstForm = null;
            this.packingCategoryListForm1.FormName = "PackingCategoryListForm";
            this.packingCategoryListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.packingCategoryListForm1.FormTitle = "PH.RWO.UI.Setting.PackingCategoryListForm";
            this.packingCategoryListForm1.IsCancelList = false;
            this.packingCategoryListForm1.IsShowPivotTable = false;
            this.packingCategoryListForm1.LayoutData = null;
            this.packingCategoryListForm1.LayoutName = null;
            this.packingCategoryListForm1.ListForm = null;
            this.packingCategoryListForm1.Location = new System.Drawing.Point(0, 0);
            this.packingCategoryListForm1.MenuID = ((long)(0));
            this.packingCategoryListForm1.Name = "packingCategoryListForm1";
            this.packingCategoryListForm1.NeedCheckPermission = true;
            this.packingCategoryListForm1.NextForm = null;
            this.packingCategoryListForm1.ParentForm = null;
            this.packingCategoryListForm1.PrevForm = null;
            this.packingCategoryListForm1.RowChangeAutoSave = true;
            this.packingCategoryListForm1.ShowMultiCheck = false;
            this.packingCategoryListForm1.SideProgramID = null;
            this.packingCategoryListForm1.Size = new System.Drawing.Size(796, 246);
            this.PlatetoolTipController.SetSuperTip(this.packingCategoryListForm1, null);
            this.packingCategoryListForm1.TabControls = null;
            this.packingCategoryListForm1.TabIndex = 0;
            this.packingCategoryListForm1.TabPage = null;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Location = new System.Drawing.Point(65, 141);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(48, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 306;
            this.label2.Text = "Remark :";
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.memoEdit1.Location = new System.Drawing.Point(134, 139);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(200, 69);
            this.memoEdit1.TabIndex = 307;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Location = new System.Drawing.Point(499, 92);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(79, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 304;
            this.label1.Text = "Customer Alias:";
            this.label1.Visible = false;
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerAlias", true));
            this.textEdit1.Location = new System.Drawing.Point(501, 107);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(200, 21);
            this.textEdit1.TabIndex = 305;
            this.textEdit1.Tag = "Team";
            this.textEdit1.Visible = false;
            // 
            // CustomerCodeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "CustomerCodeDetailForm";
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
            ((System.ComponentModel.ISupportInitialize)(this.CustomerCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Team.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Customer.Properties)).EndInit();
            this.xtraTabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit CustomerCode;
        private DevExpress.XtraEditors.TextEdit Team;
        private System.Windows.Forms.Label lable_SalesOrderNo;
        private DevExpress.XtraEditors.TextEdit Customer;
        private System.Windows.Forms.Label lable_Company;
        private CustomerCommissionListForm customerCommissionListForm1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private PH.RWO.UI.Setting.PackingCategoryListForm packingCategoryListForm1;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private System.Windows.Forms.Label label1;
    }
}
