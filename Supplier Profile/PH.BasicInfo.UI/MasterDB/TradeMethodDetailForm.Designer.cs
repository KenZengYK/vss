namespace PH.BasicInfo.UI.MasterDB
{
    partial class TradeMethodDetailForm
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
            System.Windows.Forms.Label prdnSiteLabel;
            System.Windows.Forms.Label ftyBusinessModelLabel;
            System.Windows.Forms.Label tradeMethodENLabel;
            System.Windows.Forms.Label tradeMethodCNLabel;
            System.Windows.Forms.Label tradeCodeLabel;
            System.Windows.Forms.Label paymentMethodENLabel;
            System.Windows.Forms.Label paymentMethodCNLabel;
            System.Windows.Forms.Label purchaseMethodENLabel;
            System.Windows.Forms.Label purchaseMethodCNLabel;
            this.prdnSiteTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.ftyBusinessModelTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.tradeMethodENTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.tradeMethodCNTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.tradeCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.paymentMethodENTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.paymentMethodCNTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.purchaseMethodENTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.purchaseMethodCNTextEdit = new DevExpress.XtraEditors.TextEdit();
            prdnSiteLabel = new System.Windows.Forms.Label();
            ftyBusinessModelLabel = new System.Windows.Forms.Label();
            tradeMethodENLabel = new System.Windows.Forms.Label();
            tradeMethodCNLabel = new System.Windows.Forms.Label();
            tradeCodeLabel = new System.Windows.Forms.Label();
            paymentMethodENLabel = new System.Windows.Forms.Label();
            paymentMethodCNLabel = new System.Windows.Forms.Label();
            purchaseMethodENLabel = new System.Windows.Forms.Label();
            purchaseMethodCNLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.prdnSiteTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ftyBusinessModelTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tradeMethodENTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tradeMethodCNTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tradeCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.paymentMethodENTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.paymentMethodCNTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.purchaseMethodENTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.purchaseMethodCNTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.TradeMethod);
            // 
            // prdnSiteLabel
            // 
            prdnSiteLabel.AutoSize = true;
            prdnSiteLabel.Location = new System.Drawing.Point(32, 47);
            prdnSiteLabel.Name = "prdnSiteLabel";
            prdnSiteLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(prdnSiteLabel, null);
            prdnSiteLabel.TabIndex = 4;
            prdnSiteLabel.Text = "Prdn Site:";
            // 
            // prdnSiteTextEdit
            // 
            this.prdnSiteTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PrdnSite", true));
            this.prdnSiteTextEdit.Location = new System.Drawing.Point(194, 44);
            this.prdnSiteTextEdit.Name = "prdnSiteTextEdit";
            this.prdnSiteTextEdit.Size = new System.Drawing.Size(287, 21);
            this.prdnSiteTextEdit.TabIndex = 5;
            // 
            // ftyBusinessModelLabel
            // 
            ftyBusinessModelLabel.AutoSize = true;
            ftyBusinessModelLabel.Location = new System.Drawing.Point(32, 71);
            ftyBusinessModelLabel.Name = "ftyBusinessModelLabel";
            ftyBusinessModelLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(ftyBusinessModelLabel, null);
            ftyBusinessModelLabel.TabIndex = 6;
            ftyBusinessModelLabel.Text = "Business Model:";
            // 
            // ftyBusinessModelTextEdit
            // 
            this.ftyBusinessModelTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "FtyBusinessModel", true));
            this.ftyBusinessModelTextEdit.Location = new System.Drawing.Point(194, 72);
            this.ftyBusinessModelTextEdit.Name = "ftyBusinessModelTextEdit";
            this.ftyBusinessModelTextEdit.Size = new System.Drawing.Size(287, 21);
            this.ftyBusinessModelTextEdit.TabIndex = 7;
            // 
            // tradeMethodENLabel
            // 
            tradeMethodENLabel.AutoSize = true;
            tradeMethodENLabel.Location = new System.Drawing.Point(32, 114);
            tradeMethodENLabel.Name = "tradeMethodENLabel";
            tradeMethodENLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(tradeMethodENLabel, null);
            tradeMethodENLabel.TabIndex = 8;
            tradeMethodENLabel.Text = "Trade Method (EN):";
            // 
            // tradeMethodENTextEdit
            // 
            this.tradeMethodENTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TradeMethodEN", true));
            this.tradeMethodENTextEdit.Location = new System.Drawing.Point(194, 106);
            this.tradeMethodENTextEdit.Name = "tradeMethodENTextEdit";
            this.tradeMethodENTextEdit.Size = new System.Drawing.Size(287, 21);
            this.tradeMethodENTextEdit.TabIndex = 9;
            // 
            // tradeMethodCNLabel
            // 
            tradeMethodCNLabel.AutoSize = true;
            tradeMethodCNLabel.Location = new System.Drawing.Point(32, 138);
            tradeMethodCNLabel.Name = "tradeMethodCNLabel";
            tradeMethodCNLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(tradeMethodCNLabel, null);
            tradeMethodCNLabel.TabIndex = 10;
            tradeMethodCNLabel.Text = "Trade Method (CN):";
            // 
            // tradeMethodCNTextEdit
            // 
            this.tradeMethodCNTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TradeMethodCN", true));
            this.tradeMethodCNTextEdit.Location = new System.Drawing.Point(194, 133);
            this.tradeMethodCNTextEdit.Name = "tradeMethodCNTextEdit";
            this.tradeMethodCNTextEdit.Size = new System.Drawing.Size(287, 21);
            this.tradeMethodCNTextEdit.TabIndex = 11;
            // 
            // tradeCodeLabel
            // 
            tradeCodeLabel.AutoSize = true;
            tradeCodeLabel.Location = new System.Drawing.Point(32, 177);
            tradeCodeLabel.Name = "tradeCodeLabel";
            tradeCodeLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(tradeCodeLabel, null);
            tradeCodeLabel.TabIndex = 12;
            tradeCodeLabel.Text = "Trade Cde:";
            // 
            // tradeCodeTextEdit
            // 
            this.tradeCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TradeCode", true));
            this.tradeCodeTextEdit.Location = new System.Drawing.Point(194, 171);
            this.tradeCodeTextEdit.Name = "tradeCodeTextEdit";
            this.tradeCodeTextEdit.Size = new System.Drawing.Size(287, 21);
            this.tradeCodeTextEdit.TabIndex = 13;
            // 
            // paymentMethodENLabel
            // 
            paymentMethodENLabel.AutoSize = true;
            paymentMethodENLabel.Location = new System.Drawing.Point(32, 214);
            paymentMethodENLabel.Name = "paymentMethodENLabel";
            paymentMethodENLabel.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(paymentMethodENLabel, null);
            paymentMethodENLabel.TabIndex = 14;
            paymentMethodENLabel.Text = "Payment Method (EN):";
            // 
            // paymentMethodENTextEdit
            // 
            this.paymentMethodENTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PaymentMethodEN", true));
            this.paymentMethodENTextEdit.Location = new System.Drawing.Point(194, 208);
            this.paymentMethodENTextEdit.Name = "paymentMethodENTextEdit";
            this.paymentMethodENTextEdit.Size = new System.Drawing.Size(287, 21);
            this.paymentMethodENTextEdit.TabIndex = 15;
            // 
            // paymentMethodCNLabel
            // 
            paymentMethodCNLabel.AutoSize = true;
            paymentMethodCNLabel.Location = new System.Drawing.Point(32, 238);
            paymentMethodCNLabel.Name = "paymentMethodCNLabel";
            paymentMethodCNLabel.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(paymentMethodCNLabel, null);
            paymentMethodCNLabel.TabIndex = 16;
            paymentMethodCNLabel.Text = "Payment Method (CN):";
            // 
            // paymentMethodCNTextEdit
            // 
            this.paymentMethodCNTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PaymentMethodCN", true));
            this.paymentMethodCNTextEdit.Location = new System.Drawing.Point(194, 235);
            this.paymentMethodCNTextEdit.Name = "paymentMethodCNTextEdit";
            this.paymentMethodCNTextEdit.Size = new System.Drawing.Size(287, 21);
            this.paymentMethodCNTextEdit.TabIndex = 17;
            // 
            // purchaseMethodENLabel
            // 
            purchaseMethodENLabel.AutoSize = true;
            purchaseMethodENLabel.Location = new System.Drawing.Point(32, 273);
            purchaseMethodENLabel.Name = "purchaseMethodENLabel";
            purchaseMethodENLabel.Size = new System.Drawing.Size(137, 24);
            this.PlatetoolTipController.SetSuperTip(purchaseMethodENLabel, null);
            purchaseMethodENLabel.TabIndex = 18;
            purchaseMethodENLabel.Text = "Purchasing of raw \r\nmaterials method (EN):";
            // 
            // purchaseMethodENTextEdit
            // 
            this.purchaseMethodENTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PurchaseMethodEN", true));
            this.purchaseMethodENTextEdit.Location = new System.Drawing.Point(194, 276);
            this.purchaseMethodENTextEdit.Name = "purchaseMethodENTextEdit";
            this.purchaseMethodENTextEdit.Size = new System.Drawing.Size(614, 21);
            this.purchaseMethodENTextEdit.TabIndex = 19;
            // 
            // purchaseMethodCNLabel
            // 
            purchaseMethodCNLabel.AutoSize = true;
            purchaseMethodCNLabel.Location = new System.Drawing.Point(32, 307);
            purchaseMethodCNLabel.Name = "purchaseMethodCNLabel";
            purchaseMethodCNLabel.Size = new System.Drawing.Size(137, 24);
            this.PlatetoolTipController.SetSuperTip(purchaseMethodCNLabel, null);
            purchaseMethodCNLabel.TabIndex = 20;
            purchaseMethodCNLabel.Text = "Purchasing of raw \r\nmaterials method (CN):";
            // 
            // purchaseMethodCNTextEdit
            // 
            this.purchaseMethodCNTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PurchaseMethodCN", true));
            this.purchaseMethodCNTextEdit.Location = new System.Drawing.Point(194, 307);
            this.purchaseMethodCNTextEdit.Name = "purchaseMethodCNTextEdit";
            this.purchaseMethodCNTextEdit.Size = new System.Drawing.Size(614, 21);
            this.purchaseMethodCNTextEdit.TabIndex = 21;
            // 
            // TradeMethodDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(purchaseMethodCNLabel);
            this.Controls.Add(this.purchaseMethodCNTextEdit);
            this.Controls.Add(purchaseMethodENLabel);
            this.Controls.Add(this.purchaseMethodENTextEdit);
            this.Controls.Add(paymentMethodCNLabel);
            this.Controls.Add(this.paymentMethodCNTextEdit);
            this.Controls.Add(paymentMethodENLabel);
            this.Controls.Add(this.paymentMethodENTextEdit);
            this.Controls.Add(tradeCodeLabel);
            this.Controls.Add(this.tradeCodeTextEdit);
            this.Controls.Add(tradeMethodCNLabel);
            this.Controls.Add(this.tradeMethodCNTextEdit);
            this.Controls.Add(tradeMethodENLabel);
            this.Controls.Add(this.tradeMethodENTextEdit);
            this.Controls.Add(ftyBusinessModelLabel);
            this.Controls.Add(this.ftyBusinessModelTextEdit);
            this.Controls.Add(prdnSiteLabel);
            this.Controls.Add(this.prdnSiteTextEdit);
            this.Name = "TradeMethodDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.prdnSiteTextEdit, 0);
            this.Controls.SetChildIndex(prdnSiteLabel, 0);
            this.Controls.SetChildIndex(this.ftyBusinessModelTextEdit, 0);
            this.Controls.SetChildIndex(ftyBusinessModelLabel, 0);
            this.Controls.SetChildIndex(this.tradeMethodENTextEdit, 0);
            this.Controls.SetChildIndex(tradeMethodENLabel, 0);
            this.Controls.SetChildIndex(this.tradeMethodCNTextEdit, 0);
            this.Controls.SetChildIndex(tradeMethodCNLabel, 0);
            this.Controls.SetChildIndex(this.tradeCodeTextEdit, 0);
            this.Controls.SetChildIndex(tradeCodeLabel, 0);
            this.Controls.SetChildIndex(this.paymentMethodENTextEdit, 0);
            this.Controls.SetChildIndex(paymentMethodENLabel, 0);
            this.Controls.SetChildIndex(this.paymentMethodCNTextEdit, 0);
            this.Controls.SetChildIndex(paymentMethodCNLabel, 0);
            this.Controls.SetChildIndex(this.purchaseMethodENTextEdit, 0);
            this.Controls.SetChildIndex(purchaseMethodENLabel, 0);
            this.Controls.SetChildIndex(this.purchaseMethodCNTextEdit, 0);
            this.Controls.SetChildIndex(purchaseMethodCNLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.prdnSiteTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ftyBusinessModelTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tradeMethodENTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tradeMethodCNTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tradeCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.paymentMethodENTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.paymentMethodCNTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.purchaseMethodENTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.purchaseMethodCNTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit prdnSiteTextEdit;
        private DevExpress.XtraEditors.TextEdit ftyBusinessModelTextEdit;
        private DevExpress.XtraEditors.TextEdit tradeMethodENTextEdit;
        private DevExpress.XtraEditors.TextEdit tradeMethodCNTextEdit;
        private DevExpress.XtraEditors.TextEdit tradeCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit paymentMethodENTextEdit;
        private DevExpress.XtraEditors.TextEdit paymentMethodCNTextEdit;
        private DevExpress.XtraEditors.TextEdit purchaseMethodENTextEdit;
        private DevExpress.XtraEditors.TextEdit purchaseMethodCNTextEdit;
    }
}
