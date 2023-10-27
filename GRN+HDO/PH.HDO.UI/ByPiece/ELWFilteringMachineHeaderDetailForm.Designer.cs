namespace PH.HDO.UI.ByPiece
{
    partial class ELWFilteringMachineHeaderDetailForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtIDONo = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtIssueQty = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtProjectNo = new DevExpress.XtraEditors.TextEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.xrRemark = new DevExpress.XtraEditors.TextEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.dateEdit1 = new DevExpress.XtraEditors.DateEdit();
            this.elwFilteringMachineDetailListForm1 = new PH.HDO.UI.ByPiece.ELWFilteringMachineDetailListForm();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.txtNumOfTime = new DevExpress.XtraEditors.TextEdit();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
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
            ((System.ComponentModel.ISupportInitialize)(this.txtIDONo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIssueQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtProjectNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrRemark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNumOfTime.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.txtNumOfTime);
            this.headerTitleBar.Controls.Add(this.labelControl7);
            this.headerTitleBar.Controls.Add(this.labelControl6);
            this.headerTitleBar.Controls.Add(this.dateEdit1);
            this.headerTitleBar.Controls.Add(this.xrRemark);
            this.headerTitleBar.Controls.Add(this.labelControl5);
            this.headerTitleBar.Controls.Add(this.txtIssueQty);
            this.headerTitleBar.Controls.Add(this.labelControl3);
            this.headerTitleBar.Controls.Add(this.txtProjectNo);
            this.headerTitleBar.Controls.Add(this.labelControl4);
            this.headerTitleBar.Controls.Add(this.txtIDONo);
            this.headerTitleBar.Controls.Add(this.labelControl2);
            this.headerTitleBar.Controls.Add(this.labelControl1);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtIDONo, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl4, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtProjectNo, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl3, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtIssueQty, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl5, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.xrRemark, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.dateEdit1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl6, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl7, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtNumOfTime, 0);
            // 
            // panelControl1
            // 
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.elwFilteringMachineDetailListForm1);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Text = "ß^™C”µÁ¿";
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.ByPiece_ELWFilteringMachineHeader);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(101, 36);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(66, 14);
            this.labelControl1.TabIndex = 2;
            this.labelControl1.Text = "Create Date";
            // 
            // txtIDONo
            // 
            this.txtIDONo.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "IDONo", true));
            this.txtIDONo.Location = new System.Drawing.Point(193, 68);
            this.txtIDONo.Name = "txtIDONo";
            this.txtIDONo.Size = new System.Drawing.Size(161, 21);
            this.txtIDONo.TabIndex = 3;
            this.txtIDONo.EditValueChanged += new System.EventHandler(this.txtIDONo_EditValueChanged);
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(127, 71);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(40, 14);
            this.labelControl2.TabIndex = 4;
            this.labelControl2.Text = "IDO No";
            // 
            // txtIssueQty
            // 
            this.txtIssueQty.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "IssueQty", true));
            this.txtIssueQty.Enabled = false;
            this.txtIssueQty.Location = new System.Drawing.Point(193, 135);
            this.txtIssueQty.Name = "txtIssueQty";
            this.txtIssueQty.Size = new System.Drawing.Size(161, 21);
            this.txtIssueQty.TabIndex = 7;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(115, 138);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(52, 14);
            this.labelControl3.TabIndex = 8;
            this.labelControl3.Text = "Issue Qty";
            // 
            // txtProjectNo
            // 
            this.txtProjectNo.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ProjectNo", true));
            this.txtProjectNo.Enabled = false;
            this.txtProjectNo.Location = new System.Drawing.Point(193, 101);
            this.txtProjectNo.Name = "txtProjectNo";
            this.txtProjectNo.Size = new System.Drawing.Size(161, 21);
            this.txtProjectNo.TabIndex = 5;
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(109, 104);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(58, 14);
            this.labelControl4.TabIndex = 6;
            this.labelControl4.Text = "Project No";
            // 
            // xrRemark
            // 
            this.xrRemark.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Remark", true));
            this.xrRemark.Location = new System.Drawing.Point(193, 167);
            this.xrRemark.Name = "xrRemark";
            this.xrRemark.Size = new System.Drawing.Size(161, 21);
            this.xrRemark.TabIndex = 9;
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(127, 170);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(40, 14);
            this.labelControl5.TabIndex = 10;
            this.labelControl5.Text = "Remark";
            // 
            // dateEdit1
            // 
            this.dateEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateDate", true));
            this.dateEdit1.EditValue = null;
            this.dateEdit1.Location = new System.Drawing.Point(193, 32);
            this.dateEdit1.Name = "dateEdit1";
            this.dateEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit1.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.dateEdit1.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dateEdit1.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.dateEdit1.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dateEdit1.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.dateEdit1.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit1.Size = new System.Drawing.Size(161, 21);
            this.dateEdit1.TabIndex = 11;
            // 
            // elwFilteringMachineDetailListForm1
            // 
            this.elwFilteringMachineDetailListForm1.AllowAddRow = true;
            this.elwFilteringMachineDetailListForm1.AlwaysShowDesignLayout = false;
            this.elwFilteringMachineDetailListForm1.AutoOpenDetailForm = false;
            this.elwFilteringMachineDetailListForm1.DataContext = null;
            this.elwFilteringMachineDetailListForm1.DataSource = null;
            this.elwFilteringMachineDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.elwFilteringMachineDetailListForm1.EditorTypeName = null;
            this.elwFilteringMachineDetailListForm1.FileID = null;
            this.elwFilteringMachineDetailListForm1.FirstForm = null;
            this.elwFilteringMachineDetailListForm1.FormName = "ELWFilteringMachineDetailListForm";
            this.elwFilteringMachineDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.elwFilteringMachineDetailListForm1.FormTitle = "PH.HDO.UI.ByPiece.ELWFilteringMachineDetailListForm";
            this.elwFilteringMachineDetailListForm1.IsCancelList = false;
            this.elwFilteringMachineDetailListForm1.IsShowPivotTable = false;
            this.elwFilteringMachineDetailListForm1.LayoutData = null;
            this.elwFilteringMachineDetailListForm1.LayoutName = null;
            this.elwFilteringMachineDetailListForm1.ListForm = null;
            this.elwFilteringMachineDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.elwFilteringMachineDetailListForm1.MenuID = ((long)(0));
            this.elwFilteringMachineDetailListForm1.Name = "elwFilteringMachineDetailListForm1";
            this.elwFilteringMachineDetailListForm1.NeedCheckPermission = true;
            this.elwFilteringMachineDetailListForm1.NextForm = null;
            this.elwFilteringMachineDetailListForm1.ParentForm = null;
            this.elwFilteringMachineDetailListForm1.PrevForm = null;
            this.elwFilteringMachineDetailListForm1.RowChangeAutoSave = true;
            this.elwFilteringMachineDetailListForm1.ShowMultiCheck = false;
            this.elwFilteringMachineDetailListForm1.SideProgramID = null;
            this.elwFilteringMachineDetailListForm1.Size = new System.Drawing.Size(796, 205);
            this.PlatetoolTipController.SetSuperTip(this.elwFilteringMachineDetailListForm1, null);
            this.elwFilteringMachineDetailListForm1.TabControls = null;
            this.elwFilteringMachineDetailListForm1.TabIndex = 0;
            this.elwFilteringMachineDetailListForm1.TabPage = null;
            // 
            // labelControl6
            // 
            this.labelControl6.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ShowBalanceIssueQty", true));
            this.labelControl6.Location = new System.Drawing.Point(193, 138);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(0, 14);
            this.labelControl6.TabIndex = 12;
            // 
            // txtNumOfTime
            // 
            this.txtNumOfTime.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "NumOfTime", true));
            this.txtNumOfTime.Enabled = false;
            this.txtNumOfTime.Location = new System.Drawing.Point(193, 195);
            this.txtNumOfTime.Name = "txtNumOfTime";
            this.txtNumOfTime.Size = new System.Drawing.Size(161, 21);
            this.txtNumOfTime.TabIndex = 13;
            // 
            // labelControl7
            // 
            this.labelControl7.Location = new System.Drawing.Point(119, 198);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(48, 14);
            this.labelControl7.TabIndex = 14;
            this.labelControl7.Text = "ß^™C´Î”µ";
            // 
            // ELWFilteringMachineHeaderDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ELWFilteringMachineHeaderDetailForm";
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
            ((System.ComponentModel.ISupportInitialize)(this.txtIDONo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtIssueQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtProjectNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrRemark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNumOfTime.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtIssueQty;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit txtProjectNo;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.TextEdit txtIDONo;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit xrRemark;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.DateEdit dateEdit1;
        private ELWFilteringMachineDetailListForm elwFilteringMachineDetailListForm1;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.TextEdit txtNumOfTime;
        private DevExpress.XtraEditors.LabelControl labelControl7;
    }
}