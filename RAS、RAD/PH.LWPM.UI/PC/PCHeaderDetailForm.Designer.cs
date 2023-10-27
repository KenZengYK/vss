namespace PH.LWPM.UI.PC
{
    partial class PCHeaderDetailForm
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
            System.Windows.Forms.Label createDateLabel;
            System.Windows.Forms.Label pCNOLabel;
            System.Windows.Forms.Label goodsDescriptionLabel;
            System.Windows.Forms.Label label1;
            System.Windows.Forms.Label shipmentModeLabel;
            System.Windows.Forms.Label incotermsLabel;
            System.Windows.Forms.Label loadingPortLabel;
            System.Windows.Forms.Label destinationLabel;
            System.Windows.Forms.Label paymentTermsLabel;
            System.Windows.Forms.Label originsCountryLabel;
            this.createDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.pCNOTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.goodsDescriptionMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.txtVendorCode = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.pcDetailListForm1 = new PH.LWPM.UI.PC.PCDetailListForm();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.shipmentModeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.incotermsTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.loadingPortTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.destinationTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.paymentTermsTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.originsCountryTextEdit = new DevExpress.XtraEditors.TextEdit();
            createDateLabel = new System.Windows.Forms.Label();
            pCNOLabel = new System.Windows.Forms.Label();
            goodsDescriptionLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            shipmentModeLabel = new System.Windows.Forms.Label();
            incotermsLabel = new System.Windows.Forms.Label();
            loadingPortLabel = new System.Windows.Forms.Label();
            destinationLabel = new System.Windows.Forms.Label();
            paymentTermsLabel = new System.Windows.Forms.Label();
            originsCountryLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pCNOTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.goodsDescriptionMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtVendorCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.shipmentModeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.incotermsTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.loadingPortTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.destinationTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.paymentTermsTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.originsCountryTextEdit.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 288);
            this.splitterControl1.Size = new System.Drawing.Size(2338, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(originsCountryLabel);
            this.headerTitleBar.Controls.Add(this.originsCountryTextEdit);
            this.headerTitleBar.Controls.Add(paymentTermsLabel);
            this.headerTitleBar.Controls.Add(this.paymentTermsTextEdit);
            this.headerTitleBar.Controls.Add(destinationLabel);
            this.headerTitleBar.Controls.Add(this.destinationTextEdit);
            this.headerTitleBar.Controls.Add(loadingPortLabel);
            this.headerTitleBar.Controls.Add(this.loadingPortTextEdit);
            this.headerTitleBar.Controls.Add(incotermsLabel);
            this.headerTitleBar.Controls.Add(this.incotermsTextEdit);
            this.headerTitleBar.Controls.Add(shipmentModeLabel);
            this.headerTitleBar.Controls.Add(this.shipmentModeTextEdit);
            this.headerTitleBar.Controls.Add(label1);
            this.headerTitleBar.Controls.Add(this.textEdit1);
            this.headerTitleBar.Controls.Add(this.txtVendorCode);
            this.headerTitleBar.Controls.Add(this.labelControl1);
            this.headerTitleBar.Controls.Add(goodsDescriptionLabel);
            this.headerTitleBar.Controls.Add(this.goodsDescriptionMemoEdit);
            this.headerTitleBar.Controls.Add(pCNOLabel);
            this.headerTitleBar.Controls.Add(this.pCNOTextEdit);
            this.headerTitleBar.Controls.Add(createDateLabel);
            this.headerTitleBar.Controls.Add(this.createDateDateEdit);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(2338, 261);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.createDateDateEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(createDateLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.pCNOTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(pCNOLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.goodsDescriptionMemoEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(goodsDescriptionLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtVendorCode, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit1, 0);
            this.headerTitleBar.Controls.SetChildIndex(label1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.shipmentModeTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(shipmentModeLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.incotermsTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(incotermsLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.loadingPortTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(loadingPortLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.destinationTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(destinationLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.paymentTermsTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(paymentTermsLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.originsCountryTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(originsCountryLabel, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 294);
            this.panelControl1.Size = new System.Drawing.Size(2338, 351);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.pcDetailListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(2325, 315);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(2334, 347);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PCHeader);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(2500, 0);
            // 
            // createDateLabel
            // 
            createDateLabel.AutoSize = true;
            createDateLabel.Location = new System.Drawing.Point(415, 55);
            createDateLabel.Name = "createDateLabel";
            createDateLabel.Size = new System.Drawing.Size(143, 12);
            this.PlatetoolTipController.SetSuperTip(createDateLabel, null);
            createDateLabel.TabIndex = 1;
            createDateLabel.Text = "Purchase Contract Date:";
            // 
            // pCNOLabel
            // 
            pCNOLabel.AutoSize = true;
            pCNOLabel.Location = new System.Drawing.Point(421, 30);
            pCNOLabel.Name = "pCNOLabel";
            pCNOLabel.Size = new System.Drawing.Size(137, 12);
            this.PlatetoolTipController.SetSuperTip(pCNOLabel, null);
            pCNOLabel.TabIndex = 3;
            pCNOLabel.Text = "Purchase Contract No.:";
            // 
            // goodsDescriptionLabel
            // 
            goodsDescriptionLabel.AutoSize = true;
            goodsDescriptionLabel.Location = new System.Drawing.Point(31, 84);
            goodsDescriptionLabel.Name = "goodsDescriptionLabel";
            goodsDescriptionLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(goodsDescriptionLabel, null);
            goodsDescriptionLabel.TabIndex = 5;
            goodsDescriptionLabel.Text = "Goods Description:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(37, 200);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 11;
            label1.Text = "Partial Shipment:";
            // 
            // createDateDateEdit
            // 
            this.createDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateDate", true));
            this.createDateDateEdit.EditValue = null;
            this.createDateDateEdit.Location = new System.Drawing.Point(564, 52);
            this.createDateDateEdit.Name = "createDateDateEdit";
            this.createDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.createDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.createDateDateEdit.Size = new System.Drawing.Size(184, 21);
            this.createDateDateEdit.TabIndex = 2;
            // 
            // pCNOTextEdit
            // 
            this.pCNOTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PCNO", true));
            this.pCNOTextEdit.Location = new System.Drawing.Point(564, 25);
            this.pCNOTextEdit.Name = "pCNOTextEdit";
            this.pCNOTextEdit.Size = new System.Drawing.Size(184, 21);
            this.pCNOTextEdit.TabIndex = 4;
            // 
            // goodsDescriptionMemoEdit
            // 
            this.goodsDescriptionMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "GoodsDescription", true));
            this.goodsDescriptionMemoEdit.Location = new System.Drawing.Point(154, 79);
            this.goodsDescriptionMemoEdit.Name = "goodsDescriptionMemoEdit";
            this.goodsDescriptionMemoEdit.Size = new System.Drawing.Size(594, 56);
            this.goodsDescriptionMemoEdit.TabIndex = 6;
            // 
            // txtVendorCode
            // 
            this.txtVendorCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "VendorCode", true));
            this.txtVendorCode.Location = new System.Drawing.Point(96, 25);
            this.txtVendorCode.Name = "txtVendorCode";
            this.txtVendorCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtVendorCode.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Code", "Code", 60),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name_EN", "Name", 160)});
            this.txtVendorCode.Properties.DropDownRows = 12;
            this.txtVendorCode.Properties.NullText = "";
            this.txtVendorCode.Properties.PopupWidth = 360;
            this.txtVendorCode.Size = new System.Drawing.Size(208, 21);
            this.txtVendorCode.TabIndex = 10;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(36, 28);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(43, 14);
            this.labelControl1.TabIndex = 9;
            this.labelControl1.Text = "Messrs.:";
            // 
            // pcDetailListForm1
            // 
            this.pcDetailListForm1.AllowAddRow = true;
            this.pcDetailListForm1.AutoOpenDetailForm = false;
            this.pcDetailListForm1.DataContext = null;
            this.pcDetailListForm1.DataSource = null;
            this.pcDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pcDetailListForm1.EditorTypeName = null;
            this.pcDetailListForm1.FileID = null;
            this.pcDetailListForm1.FirstForm = null;
            this.pcDetailListForm1.FormName = "PCDetailListForm";
            this.pcDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.pcDetailListForm1.FormTitle = "PH.LWPM.UI.PC.PCDetailListForm";
            this.pcDetailListForm1.IsCancelList = false;
            this.pcDetailListForm1.IsShowPivotTable = false;
            this.pcDetailListForm1.LayoutData = null;
            this.pcDetailListForm1.LayoutName = null;
            this.pcDetailListForm1.ListForm = null;
            this.pcDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.pcDetailListForm1.MenuID = ((long)(0));
            this.pcDetailListForm1.Name = "pcDetailListForm1";
            this.pcDetailListForm1.NeedCheckPermission = true;
            this.pcDetailListForm1.NextForm = null;
            this.pcDetailListForm1.ParentForm = null;
            this.pcDetailListForm1.PrevForm = null;
            this.pcDetailListForm1.RowChangeAutoSave = true;
            this.pcDetailListForm1.ShowMultiCheck = false;
            this.pcDetailListForm1.SideProgramID = null;
            this.pcDetailListForm1.Size = new System.Drawing.Size(2325, 315);
            this.PlatetoolTipController.SetSuperTip(this.pcDetailListForm1, null);
            this.pcDetailListForm1.TabControls = null;
            this.pcDetailListForm1.TabIndex = 0;
            this.pcDetailListForm1.TabPage = null;
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PartialShipment", true));
            this.textEdit1.Location = new System.Drawing.Point(154, 196);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(247, 21);
            this.textEdit1.TabIndex = 12;
            // 
            // shipmentModeLabel
            // 
            shipmentModeLabel.AutoSize = true;
            shipmentModeLabel.Location = new System.Drawing.Point(37, 144);
            shipmentModeLabel.Name = "shipmentModeLabel";
            shipmentModeLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(shipmentModeLabel, null);
            shipmentModeLabel.TabIndex = 12;
            shipmentModeLabel.Text = "Mode of Shipment:";
            // 
            // shipmentModeTextEdit
            // 
            this.shipmentModeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ShipmentMode", true));
            this.shipmentModeTextEdit.Location = new System.Drawing.Point(154, 142);
            this.shipmentModeTextEdit.Name = "shipmentModeTextEdit";
            this.shipmentModeTextEdit.Size = new System.Drawing.Size(250, 21);
            this.shipmentModeTextEdit.TabIndex = 13;
            // 
            // incotermsLabel
            // 
            incotermsLabel.AutoSize = true;
            incotermsLabel.Location = new System.Drawing.Point(426, 144);
            incotermsLabel.Name = "incotermsLabel";
            incotermsLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(incotermsLabel, null);
            incotermsLabel.TabIndex = 13;
            incotermsLabel.Text = "Incoterms:";
            // 
            // incotermsTextEdit
            // 
            this.incotermsTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Incoterms", true));
            this.incotermsTextEdit.Location = new System.Drawing.Point(498, 139);
            this.incotermsTextEdit.Name = "incotermsTextEdit";
            this.incotermsTextEdit.Size = new System.Drawing.Size(250, 21);
            this.incotermsTextEdit.TabIndex = 14;
            // 
            // loadingPortLabel
            // 
            loadingPortLabel.AutoSize = true;
            loadingPortLabel.Location = new System.Drawing.Point(43, 173);
            loadingPortLabel.Name = "loadingPortLabel";
            loadingPortLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(loadingPortLabel, null);
            loadingPortLabel.TabIndex = 15;
            loadingPortLabel.Text = "Port of Loading:";
            // 
            // loadingPortTextEdit
            // 
            this.loadingPortTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LoadingPort", true));
            this.loadingPortTextEdit.Location = new System.Drawing.Point(154, 169);
            this.loadingPortTextEdit.Name = "loadingPortTextEdit";
            this.loadingPortTextEdit.Size = new System.Drawing.Size(250, 21);
            this.loadingPortTextEdit.TabIndex = 16;
            // 
            // destinationLabel
            // 
            destinationLabel.AutoSize = true;
            destinationLabel.Location = new System.Drawing.Point(414, 169);
            destinationLabel.Name = "destinationLabel";
            destinationLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(destinationLabel, null);
            destinationLabel.TabIndex = 17;
            destinationLabel.Text = "Destination:";
            // 
            // destinationTextEdit
            // 
            this.destinationTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Destination", true));
            this.destinationTextEdit.Location = new System.Drawing.Point(498, 166);
            this.destinationTextEdit.Name = "destinationTextEdit";
            this.destinationTextEdit.Size = new System.Drawing.Size(250, 21);
            this.destinationTextEdit.TabIndex = 18;
            // 
            // paymentTermsLabel
            // 
            paymentTermsLabel.AutoSize = true;
            paymentTermsLabel.Location = new System.Drawing.Point(55, 231);
            paymentTermsLabel.Name = "paymentTermsLabel";
            paymentTermsLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(paymentTermsLabel, null);
            paymentTermsLabel.TabIndex = 19;
            paymentTermsLabel.Text = "Payment Terms:";
            // 
            // paymentTermsTextEdit
            // 
            this.paymentTermsTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PaymentTerms", true));
            this.paymentTermsTextEdit.Location = new System.Drawing.Point(154, 225);
            this.paymentTermsTextEdit.Name = "paymentTermsTextEdit";
            this.paymentTermsTextEdit.Size = new System.Drawing.Size(594, 21);
            this.paymentTermsTextEdit.TabIndex = 20;
            // 
            // originsCountryLabel
            // 
            originsCountryLabel.AutoSize = true;
            originsCountryLabel.Location = new System.Drawing.Point(407, 200);
            originsCountryLabel.Name = "originsCountryLabel";
            originsCountryLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(originsCountryLabel, null);
            originsCountryLabel.TabIndex = 21;
            originsCountryLabel.Text = "Origins Country:";
            // 
            // originsCountryTextEdit
            // 
            this.originsCountryTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OriginsCountry", true));
            this.originsCountryTextEdit.Location = new System.Drawing.Point(514, 196);
            this.originsCountryTextEdit.Name = "originsCountryTextEdit";
            this.originsCountryTextEdit.Size = new System.Drawing.Size(234, 21);
            this.originsCountryTextEdit.TabIndex = 22;
            // 
            // PCHeaderDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PCHeaderDetailForm";
            this.Size = new System.Drawing.Size(2338, 645);
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
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pCNOTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.goodsDescriptionMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtVendorCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.shipmentModeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.incotermsTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.loadingPortTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.destinationTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.paymentTermsTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.originsCountryTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit createDateDateEdit;
        private DevExpress.XtraEditors.TextEdit pCNOTextEdit;
        private DevExpress.XtraEditors.MemoEdit goodsDescriptionMemoEdit;
        private DevExpress.XtraEditors.LookUpEdit txtVendorCode;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private PCDetailListForm pcDetailListForm1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.TextEdit shipmentModeTextEdit;
        private DevExpress.XtraEditors.TextEdit incotermsTextEdit;
        private DevExpress.XtraEditors.TextEdit loadingPortTextEdit;
        private DevExpress.XtraEditors.TextEdit destinationTextEdit;
        private DevExpress.XtraEditors.TextEdit paymentTermsTextEdit;
        private DevExpress.XtraEditors.TextEdit originsCountryTextEdit;
    }
}
