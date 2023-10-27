namespace PH.MIDc.UI
{
    partial class FGStyleHSCodeDetailForm
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtStyleNo = new DevExpress.XtraEditors.TextEdit();
            this.txtHSCode = new DevExpress.XtraEditors.TextEdit();
            this.TabCustomDeclare = new DevExpress.XtraTab.XtraTabPage();
            this.customMaterialDeclare_FGListForm1 = new PH.MIDc.UI.CustomMaterialDeclare_FGListForm();
            this.gridComposition = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.ColStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColNameTW = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColValue = new DevExpress.XtraGrid.Columns.GridColumn();
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
            ((System.ComponentModel.ISupportInitialize)(this.txtStyleNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtHSCode.Properties)).BeginInit();
            this.TabCustomDeclare.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridComposition)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 154);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.labelControl2);
            this.headerTitleBar.Controls.Add(this.txtHSCode);
            this.headerTitleBar.Controls.Add(this.txtStyleNo);
            this.headerTitleBar.Controls.Add(this.labelControl1);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(809, 127);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtStyleNo, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtHSCode, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 160);
            this.panelControl1.Size = new System.Drawing.Size(809, 348);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.gridComposition);
            this.xtraTabPage1.Size = new System.Drawing.Size(796, 312);
            this.xtraTabPage1.Text = "Composition";
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(805, 344);
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.TabCustomDeclare});
            this.xtraTabControl1.Controls.SetChildIndex(this.TabCustomDeclare, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage1, 0);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.FGStyleHSCode);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(67, 40);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(46, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "SytleNo:";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(67, 75);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(51, 14);
            this.labelControl2.TabIndex = 2;
            this.labelControl2.Text = "HS Code:";
            // 
            // txtStyleNo
            // 
            this.txtStyleNo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "StyleNo", true));
            this.txtStyleNo.Enabled = false;
            this.txtStyleNo.Location = new System.Drawing.Point(132, 37);
            this.txtStyleNo.Name = "txtStyleNo";
            this.txtStyleNo.Size = new System.Drawing.Size(139, 21);
            this.txtStyleNo.TabIndex = 3;
            // 
            // txtHSCode
            // 
            this.txtHSCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSCode", true));
            this.txtHSCode.Enabled = false;
            this.txtHSCode.Location = new System.Drawing.Point(132, 72);
            this.txtHSCode.Name = "txtHSCode";
            this.txtHSCode.Size = new System.Drawing.Size(139, 21);
            this.txtHSCode.TabIndex = 4;
            // 
            // TabCustomDeclare
            // 
            this.TabCustomDeclare.Controls.Add(this.customMaterialDeclare_FGListForm1);
            this.TabCustomDeclare.Name = "TabCustomDeclare";
            this.TabCustomDeclare.Size = new System.Drawing.Size(796, 312);
            this.TabCustomDeclare.Text = "Custom Declare";
            // 
            // customMaterialDeclare_FGListForm1
            // 
            this.customMaterialDeclare_FGListForm1.AllowAddRow = true;
            this.customMaterialDeclare_FGListForm1.AutoOpenDetailForm = false;
            this.customMaterialDeclare_FGListForm1.DataContext = null;
            this.customMaterialDeclare_FGListForm1.DataSource = null;
            this.customMaterialDeclare_FGListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.customMaterialDeclare_FGListForm1.EditorTypeName = null;
            this.customMaterialDeclare_FGListForm1.FileID = null;
            this.customMaterialDeclare_FGListForm1.FirstForm = null;
            this.customMaterialDeclare_FGListForm1.FormName = "CustomMaterialDeclare_FGListForm";
            this.customMaterialDeclare_FGListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.customMaterialDeclare_FGListForm1.FormTitle = "PH.MIDc.UI.CustomMaterialDeclare_FGListForm";
            this.customMaterialDeclare_FGListForm1.HSCode = null;
            this.customMaterialDeclare_FGListForm1.IsCancelList = false;
            this.customMaterialDeclare_FGListForm1.IsShowPivotTable = false;
            this.customMaterialDeclare_FGListForm1.LayoutData = null;
            this.customMaterialDeclare_FGListForm1.LayoutName = null;
            this.customMaterialDeclare_FGListForm1.ListForm = null;
            this.customMaterialDeclare_FGListForm1.Location = new System.Drawing.Point(0, 0);
            this.customMaterialDeclare_FGListForm1.MenuID = ((long)(0));
            this.customMaterialDeclare_FGListForm1.Name = "customMaterialDeclare_FGListForm1";
            this.customMaterialDeclare_FGListForm1.NeedCheckPermission = true;
            this.customMaterialDeclare_FGListForm1.NextForm = null;
            this.customMaterialDeclare_FGListForm1.ParentForm = null;
            this.customMaterialDeclare_FGListForm1.PrevForm = null;
            this.customMaterialDeclare_FGListForm1.RowChangeAutoSave = true;
            this.customMaterialDeclare_FGListForm1.ShowMultiCheck = false;
            this.customMaterialDeclare_FGListForm1.SideProgramID = null;
            this.customMaterialDeclare_FGListForm1.Size = new System.Drawing.Size(796, 312);
            this.customMaterialDeclare_FGListForm1.StyleNo = null;
            this.PlatetoolTipController.SetSuperTip(this.customMaterialDeclare_FGListForm1, null);
            this.customMaterialDeclare_FGListForm1.TabControls = null;
            this.customMaterialDeclare_FGListForm1.TabIndex = 0;
            this.customMaterialDeclare_FGListForm1.TabPage = null;
            // 
            // gridComposition
            // 
            this.gridComposition.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridComposition.EmbeddedNavigator.Name = "";
            this.gridComposition.Location = new System.Drawing.Point(0, 0);
            this.gridComposition.MainView = this.gridView1;
            this.gridComposition.Name = "gridComposition";
            this.gridComposition.Size = new System.Drawing.Size(796, 312);
            this.gridComposition.TabIndex = 0;
            this.gridComposition.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.ColStyleNo,
            this.ColCode,
            this.ColNameEN,
            this.ColNameTW,
            this.ColNameCN,
            this.ColValue});
            this.gridView1.GridControl = this.gridComposition;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowFooter = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // ColStyleNo
            // 
            this.ColStyleNo.Caption = "StyleNo";
            this.ColStyleNo.FieldName = "StyleNo";
            this.ColStyleNo.Name = "ColStyleNo";
            this.ColStyleNo.Visible = true;
            this.ColStyleNo.VisibleIndex = 0;
            this.ColStyleNo.Width = 100;
            // 
            // ColCode
            // 
            this.ColCode.Caption = "Code";
            this.ColCode.FieldName = "Code";
            this.ColCode.Name = "ColCode";
            this.ColCode.Visible = true;
            this.ColCode.VisibleIndex = 1;
            this.ColCode.Width = 100;
            // 
            // ColNameEN
            // 
            this.ColNameEN.Caption = "NameEN";
            this.ColNameEN.FieldName = "NameEN";
            this.ColNameEN.Name = "ColNameEN";
            this.ColNameEN.Visible = true;
            this.ColNameEN.VisibleIndex = 2;
            this.ColNameEN.Width = 160;
            // 
            // ColNameTW
            // 
            this.ColNameTW.Caption = "NameTW";
            this.ColNameTW.FieldName = "NameTW";
            this.ColNameTW.Name = "ColNameTW";
            this.ColNameTW.Visible = true;
            this.ColNameTW.VisibleIndex = 3;
            this.ColNameTW.Width = 160;
            // 
            // ColNameCN
            // 
            this.ColNameCN.Caption = "NameCN";
            this.ColNameCN.FieldName = "NameCN";
            this.ColNameCN.Name = "ColNameCN";
            this.ColNameCN.Visible = true;
            this.ColNameCN.VisibleIndex = 4;
            this.ColNameCN.Width = 160;
            // 
            // ColValue
            // 
            this.ColValue.Caption = "Percentage";
            this.ColValue.FieldName = "Value";
            this.ColValue.Name = "ColValue";
            this.ColValue.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.ColValue.Visible = true;
            this.ColValue.VisibleIndex = 5;
            this.ColValue.Width = 100;
            // 
            // FGStyleHSCodeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "FGStyleHSCodeDetailForm";
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
            ((System.ComponentModel.ISupportInitialize)(this.txtStyleNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtHSCode.Properties)).EndInit();
            this.TabCustomDeclare.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridComposition)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit txtStyleNo;
        private DevExpress.XtraEditors.TextEdit txtHSCode;
        private DevExpress.XtraTab.XtraTabPage TabCustomDeclare;
        private DevExpress.XtraGrid.GridControl gridComposition;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn ColStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn ColCode;
        private DevExpress.XtraGrid.Columns.GridColumn ColValue;
        private DevExpress.XtraGrid.Columns.GridColumn ColNameEN;
        private DevExpress.XtraGrid.Columns.GridColumn ColNameTW;
        private DevExpress.XtraGrid.Columns.GridColumn ColNameCN;
        private CustomMaterialDeclare_FGListForm customMaterialDeclare_FGListForm1;
    }
}
