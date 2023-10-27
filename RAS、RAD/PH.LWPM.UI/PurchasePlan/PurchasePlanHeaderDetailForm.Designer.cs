namespace PH.LWPM.UI.PurchasePlan
{
    partial class PurchasePlanHeaderDetailForm
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
            System.Windows.Forms.Label purchaseNoLabel;
            System.Windows.Forms.Label purcaseDateLabel;
            this.purchaseNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.purcaseDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.purchasePlanDetailListForm1 = new PH.LWPM.UI.PurchasePlan.PurchasePlanDetailListForm();
            purchaseNoLabel = new System.Windows.Forms.Label();
            purcaseDateLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.purchaseNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.purcaseDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.purcaseDateDateEdit.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 104);
            this.splitterControl1.Size = new System.Drawing.Size(845, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(purcaseDateLabel);
            this.headerTitleBar.Controls.Add(this.purcaseDateDateEdit);
            this.headerTitleBar.Controls.Add(purchaseNoLabel);
            this.headerTitleBar.Controls.Add(this.purchaseNoTextEdit);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(845, 77);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.purchaseNoTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(purchaseNoLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.purcaseDateDateEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(purcaseDateLabel, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 110);
            this.panelControl1.Size = new System.Drawing.Size(845, 398);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.purchasePlanDetailListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(832, 362);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(841, 394);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PurchasePlanHeader);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(971, 0);
            // 
            // purchaseNoLabel
            // 
            purchaseNoLabel.AutoSize = true;
            purchaseNoLabel.Location = new System.Drawing.Point(45, 38);
            purchaseNoLabel.Name = "purchaseNoLabel";
            purchaseNoLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(purchaseNoLabel, null);
            purchaseNoLabel.TabIndex = 1;
            purchaseNoLabel.Text = "Purchasing Plan #:";
            // 
            // purcaseDateLabel
            // 
            purcaseDateLabel.AutoSize = true;
            purcaseDateLabel.Location = new System.Drawing.Point(344, 38);
            purcaseDateLabel.Name = "purcaseDateLabel";
            purcaseDateLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(purcaseDateLabel, null);
            purcaseDateLabel.TabIndex = 3;
            purcaseDateLabel.Text = "Purchasing Plan dd:";
            // 
            // purchaseNoTextEdit
            // 
            this.purchaseNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PurchaseNo", true));
            this.purchaseNoTextEdit.Location = new System.Drawing.Point(164, 35);
            this.purchaseNoTextEdit.Name = "purchaseNoTextEdit";
            this.purchaseNoTextEdit.Size = new System.Drawing.Size(150, 21);
            this.purchaseNoTextEdit.TabIndex = 2;
            // 
            // purcaseDateDateEdit
            // 
            this.purcaseDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PurchaseDate", true));
            this.purcaseDateDateEdit.EditValue = null;
            this.purcaseDateDateEdit.Location = new System.Drawing.Point(469, 35);
            this.purcaseDateDateEdit.Name = "purcaseDateDateEdit";
            this.purcaseDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.purcaseDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.purcaseDateDateEdit.Size = new System.Drawing.Size(201, 21);
            this.purcaseDateDateEdit.TabIndex = 4;
            // 
            // purchasePlanDetailListForm1
            // 
            this.purchasePlanDetailListForm1.AllowAddRow = true;
            this.purchasePlanDetailListForm1.AutoOpenDetailForm = false;
            this.purchasePlanDetailListForm1.DataContext = null;
            this.purchasePlanDetailListForm1.DataSource = null;
            this.purchasePlanDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.purchasePlanDetailListForm1.EditorTypeName = null;
            this.purchasePlanDetailListForm1.FileID = null;
            this.purchasePlanDetailListForm1.FirstForm = null;
            this.purchasePlanDetailListForm1.FormName = "PurchasePlanDetailListForm";
            this.purchasePlanDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.purchasePlanDetailListForm1.FormTitle = "PH.LWPM.UI.PurchasePlan.PurchasePlanDetailListForm";
            this.purchasePlanDetailListForm1.IsCancelList = false;
            this.purchasePlanDetailListForm1.IsShowPivotTable = false;
            this.purchasePlanDetailListForm1.LayoutData = null;
            this.purchasePlanDetailListForm1.LayoutName = null;
            this.purchasePlanDetailListForm1.ListForm = null;
            this.purchasePlanDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.purchasePlanDetailListForm1.MenuID = ((long)(0));
            this.purchasePlanDetailListForm1.Name = "purchasePlanDetailListForm1";
            this.purchasePlanDetailListForm1.NeedCheckPermission = true;
            this.purchasePlanDetailListForm1.NextForm = null;
            this.purchasePlanDetailListForm1.ParentForm = null;
            this.purchasePlanDetailListForm1.PrevForm = null;
            this.purchasePlanDetailListForm1.RowChangeAutoSave = true;
            this.purchasePlanDetailListForm1.ShowMultiCheck = false;
            this.purchasePlanDetailListForm1.SideProgramID = null;
            this.purchasePlanDetailListForm1.Size = new System.Drawing.Size(832, 362);
            this.PlatetoolTipController.SetSuperTip(this.purchasePlanDetailListForm1, null);
            this.purchasePlanDetailListForm1.TabControls = null;
            this.purchasePlanDetailListForm1.TabIndex = 0;
            this.purchasePlanDetailListForm1.TabPage = null;
            // 
            // PurchasePlanHeaderDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PurchasePlanHeaderDetailForm";
            this.Size = new System.Drawing.Size(845, 508);
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
            ((System.ComponentModel.ISupportInitialize)(this.purchaseNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.purcaseDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.purcaseDateDateEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit purchaseNoTextEdit;
        private DevExpress.XtraEditors.DateEdit purcaseDateDateEdit;
        private PurchasePlanDetailListForm purchasePlanDetailListForm1;
    }
}
