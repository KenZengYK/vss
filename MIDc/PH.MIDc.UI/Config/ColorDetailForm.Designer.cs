namespace PH.MIDc.UI
{
    partial class ColorDetailForm
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
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.colorBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.StautsLabel = new System.Windows.Forms.Label();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.SeasonLabel = new System.Windows.Forms.Label();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.DescriptionLabel = new System.Windows.Forms.Label();
            this.Color1Label = new System.Windows.Forms.Label();
            this.textEdit4 = new DevExpress.XtraEditors.TextEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.textEdit5 = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dateEdit1 = new DevExpress.XtraEditors.DateEdit();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.colorCustNameListForm1 = new PH.MIDc.UI.Config.ColorCustNameListForm();
            this.colorSuppNameListForm1 = new PH.MIDc.UI.Config.ColorSuppNameListForm();
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
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit4.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit5.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).BeginInit();
            this.xtraTabPage2.SuspendLayout();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 256);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.dateEdit1);
            this.headerTitleBar.Controls.Add(this.textEdit4);
            this.headerTitleBar.Controls.Add(this.StautsLabel);
            this.headerTitleBar.Controls.Add(this.label3);
            this.headerTitleBar.Controls.Add(this.label1);
            this.headerTitleBar.Controls.Add(this.DescriptionLabel);
            this.headerTitleBar.Controls.Add(this.SeasonLabel);
            this.headerTitleBar.Controls.Add(this.textEdit5);
            this.headerTitleBar.Controls.Add(this.label2);
            this.headerTitleBar.Controls.Add(this.Color1Label);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(809, 229);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.Color1Label, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.label2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit5, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.SeasonLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.DescriptionLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.label1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.label3, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.StautsLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit4, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.dateEdit1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 262);
            this.panelControl1.Size = new System.Drawing.Size(809, 246);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.colorSuppNameListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(796, 210);
            this.xtraTabPage1.Text = "Supp Color Name";
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(805, 242);
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage2});
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage2, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage1, 0);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.Color);
            // 
            // textEdit3
            // 
            this.textEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Status", true));
            this.textEdit3.Location = new System.Drawing.Point(94, 98);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit3.Size = new System.Drawing.Size(222, 21);
            this.textEdit3.TabIndex = 16;
            this.textEdit3.Tag = "Status";
            // 
            // StautsLabel
            // 
            this.StautsLabel.AutoSize = true;
            this.StautsLabel.BackColor = System.Drawing.Color.Transparent;
            this.StautsLabel.Location = new System.Drawing.Point(11, 70);
            this.StautsLabel.Name = "StautsLabel";
            this.StautsLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.StautsLabel, null);
            this.StautsLabel.TabIndex = 15;
            this.StautsLabel.Text = "Status:";
            this.StautsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // textEdit2
            // 
            this.textEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Season", true));
            this.textEdit2.Location = new System.Drawing.Point(94, 72);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit2.Size = new System.Drawing.Size(222, 21);
            this.textEdit2.TabIndex = 14;
            this.textEdit2.Tag = "Season";
            // 
            // SeasonLabel
            // 
            this.SeasonLabel.AutoSize = true;
            this.SeasonLabel.BackColor = System.Drawing.Color.Transparent;
            this.SeasonLabel.Location = new System.Drawing.Point(11, 44);
            this.SeasonLabel.Name = "SeasonLabel";
            this.SeasonLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.SeasonLabel, null);
            this.SeasonLabel.TabIndex = 13;
            this.SeasonLabel.Text = "Season:";
            this.SeasonLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.memoEdit1.Location = new System.Drawing.Point(94, 124);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(587, 122);
            this.memoEdit1.TabIndex = 12;
            this.memoEdit1.Tag = "Description";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Color1", true));
            this.textEdit1.Location = new System.Drawing.Point(94, 48);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit1.Size = new System.Drawing.Size(222, 21);
            this.textEdit1.TabIndex = 11;
            this.textEdit1.Tag = "Color1";
            // 
            // DescriptionLabel
            // 
            this.DescriptionLabel.AutoSize = true;
            this.DescriptionLabel.BackColor = System.Drawing.Color.Transparent;
            this.DescriptionLabel.Location = new System.Drawing.Point(11, 99);
            this.DescriptionLabel.Name = "DescriptionLabel";
            this.DescriptionLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.DescriptionLabel, null);
            this.DescriptionLabel.TabIndex = 10;
            this.DescriptionLabel.Text = "Description:";
            this.DescriptionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // Color1Label
            // 
            this.Color1Label.AutoSize = true;
            this.Color1Label.BackColor = System.Drawing.Color.Transparent;
            this.Color1Label.Location = new System.Drawing.Point(11, 21);
            this.Color1Label.Name = "Color1Label";
            this.Color1Label.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.Color1Label, null);
            this.Color1Label.TabIndex = 9;
            this.Color1Label.Text = "Color:";
            this.Color1Label.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // textEdit4
            // 
            this.textEdit4.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ColorType", true));
            this.textEdit4.Location = new System.Drawing.Point(459, 22);
            this.textEdit4.Name = "textEdit4";
            this.textEdit4.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit4.Size = new System.Drawing.Size(222, 21);
            this.textEdit4.TabIndex = 18;
            this.textEdit4.Tag = "";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(352, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 17;
            this.label1.Text = "Color Type:";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // textEdit5
            // 
            this.textEdit5.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PantoneNumber", true));
            this.textEdit5.Location = new System.Drawing.Point(459, 47);
            this.textEdit5.Name = "textEdit5";
            this.textEdit5.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit5.Size = new System.Drawing.Size(222, 21);
            this.textEdit5.TabIndex = 20;
            this.textEdit5.Tag = "";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(352, 50);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 19;
            this.label2.Text = "Pantone Number:";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(352, 76);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.label3, null);
            this.label3.TabIndex = 21;
            this.label3.Text = "Create Date:";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // dateEdit1
            // 
            this.dateEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateDate", true));
            this.dateEdit1.EditValue = null;
            this.dateEdit1.Location = new System.Drawing.Point(459, 71);
            this.dateEdit1.Name = "dateEdit1";
            this.dateEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit1.Properties.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.dateEdit1.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dateEdit1.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit1.Size = new System.Drawing.Size(222, 21);
            this.dateEdit1.TabIndex = 22;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.colorCustNameListForm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(796, 210);
            this.xtraTabPage2.Text = "Cust Color Name";
            // 
            // colorCustNameListForm1
            // 
            this.colorCustNameListForm1.AllowAddRow = true;
            this.colorCustNameListForm1.AlwaysShowDesignLayout = false;
            this.colorCustNameListForm1.AutoOpenDetailForm = false;
            this.colorCustNameListForm1.DataContext = null;
            this.colorCustNameListForm1.DataSource = null;
            this.colorCustNameListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.colorCustNameListForm1.EditorTypeName = null;
            this.colorCustNameListForm1.FileID = null;
            this.colorCustNameListForm1.FirstForm = null;
            this.colorCustNameListForm1.FormName = "ColorCustNameListForm";
            this.colorCustNameListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.colorCustNameListForm1.FormTitle = "PH.MIDc.UI.Config.ColorCustNameListForm";
            this.colorCustNameListForm1.IsCancelList = false;
            this.colorCustNameListForm1.IsShowPivotTable = false;
            this.colorCustNameListForm1.LayoutData = null;
            this.colorCustNameListForm1.LayoutName = null;
            this.colorCustNameListForm1.ListForm = null;
            this.colorCustNameListForm1.Location = new System.Drawing.Point(0, 0);
            this.colorCustNameListForm1.MenuID = ((long)(0));
            this.colorCustNameListForm1.Name = "colorCustNameListForm1";
            this.colorCustNameListForm1.NeedCheckPermission = true;
            this.colorCustNameListForm1.NextForm = null;
            this.colorCustNameListForm1.ParentForm = null;
            this.colorCustNameListForm1.PrevForm = null;
            this.colorCustNameListForm1.RowChangeAutoSave = true;
            this.colorCustNameListForm1.ShowMultiCheck = false;
            this.colorCustNameListForm1.SideProgramID = null;
            this.colorCustNameListForm1.Size = new System.Drawing.Size(796, 210);
            this.PlatetoolTipController.SetSuperTip(this.colorCustNameListForm1, null);
            this.colorCustNameListForm1.TabControls = null;
            this.colorCustNameListForm1.TabIndex = 0;
            this.colorCustNameListForm1.TabPage = null;
            // 
            // colorSuppNameListForm1
            // 
            this.colorSuppNameListForm1.AllowAddRow = true;
            this.colorSuppNameListForm1.AlwaysShowDesignLayout = false;
            this.colorSuppNameListForm1.AutoOpenDetailForm = false;
            this.colorSuppNameListForm1.DataContext = null;
            this.colorSuppNameListForm1.DataSource = null;
            this.colorSuppNameListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.colorSuppNameListForm1.EditorTypeName = null;
            this.colorSuppNameListForm1.FileID = null;
            this.colorSuppNameListForm1.FirstForm = null;
            this.colorSuppNameListForm1.FormName = "ColorSuppNameListForm";
            this.colorSuppNameListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.colorSuppNameListForm1.FormTitle = "PH.MIDc.UI.Config.ColorSuppNameListForm";
            this.colorSuppNameListForm1.IsCancelList = false;
            this.colorSuppNameListForm1.IsShowPivotTable = false;
            this.colorSuppNameListForm1.LayoutData = null;
            this.colorSuppNameListForm1.LayoutName = null;
            this.colorSuppNameListForm1.ListForm = null;
            this.colorSuppNameListForm1.Location = new System.Drawing.Point(0, 0);
            this.colorSuppNameListForm1.MenuID = ((long)(0));
            this.colorSuppNameListForm1.Name = "colorSuppNameListForm1";
            this.colorSuppNameListForm1.NeedCheckPermission = true;
            this.colorSuppNameListForm1.NextForm = null;
            this.colorSuppNameListForm1.ParentForm = null;
            this.colorSuppNameListForm1.PrevForm = null;
            this.colorSuppNameListForm1.RowChangeAutoSave = true;
            this.colorSuppNameListForm1.ShowMultiCheck = false;
            this.colorSuppNameListForm1.SideProgramID = null;
            this.colorSuppNameListForm1.Size = new System.Drawing.Size(796, 210);
            this.PlatetoolTipController.SetSuperTip(this.colorSuppNameListForm1, null);
            this.colorSuppNameListForm1.TabControls = null;
            this.colorSuppNameListForm1.TabIndex = 0;
            this.colorSuppNameListForm1.TabPage = null;
            // 
            // ColorDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.textEdit3);
            this.Controls.Add(this.textEdit2);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.textEdit1);
            this.Name = "ColorDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.headerTitleBar, 0);
            this.Controls.SetChildIndex(this.splitterControl1, 0);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.textEdit2, 0);
            this.Controls.SetChildIndex(this.textEdit3, 0);
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
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit4.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit5.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).EndInit();
            this.xtraTabPage2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit3;
        private System.Windows.Forms.Label StautsLabel;
        private DevExpress.XtraEditors.TextEdit textEdit2;
        private System.Windows.Forms.Label SeasonLabel;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private System.Windows.Forms.Label DescriptionLabel;
        private System.Windows.Forms.Label Color1Label;
        private System.Windows.Forms.BindingSource colorBindingSource;
        private DevExpress.XtraEditors.TextEdit textEdit4;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.TextEdit textEdit5;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.DateEdit dateEdit1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private PH.MIDc.UI.Config.ColorSuppNameListForm colorSuppNameListForm1;
        private PH.MIDc.UI.Config.ColorCustNameListForm colorCustNameListForm1;
    }
}
