namespace PH.BasicInfo.UI
{
    partial class CurrencyDetailForm
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
            this.spinEdit3 = new DevExpress.XtraEditors.SpinEdit();
            this.spinEdit4 = new DevExpress.XtraEditors.SpinEdit();
            this.spinEdit2 = new DevExpress.XtraEditors.SpinEdit();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.CurrSellRateLabel = new System.Windows.Forms.Label();
            this.StdSellRateLabel = new System.Windows.Forms.Label();
            this.CurrBuyRateLabel = new System.Windows.Forms.Label();
            this.StdBuyRateLabel = new System.Windows.Forms.Label();
            this.DescriptionLabel = new System.Windows.Forms.Label();
            this.CurrencyLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit4.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.Currency);
            // 
            // spinEdit3
            // 
            this.spinEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CurrSellRate", true));
            this.spinEdit3.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit3.EnterMoveNextControl = true;
            this.spinEdit3.Location = new System.Drawing.Point(164, 218);
            this.spinEdit3.Name = "spinEdit3";
            this.spinEdit3.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spinEdit3.Size = new System.Drawing.Size(117, 21);
            this.spinEdit3.TabIndex = 24;
            this.spinEdit3.Tag = "";
            // 
            // spinEdit4
            // 
            this.spinEdit4.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "StdSellRate", true));
            this.spinEdit4.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit4.EnterMoveNextControl = true;
            this.spinEdit4.Location = new System.Drawing.Point(164, 192);
            this.spinEdit4.Name = "spinEdit4";
            this.spinEdit4.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spinEdit4.Size = new System.Drawing.Size(117, 21);
            this.spinEdit4.TabIndex = 22;
            this.spinEdit4.Tag = "";
            // 
            // spinEdit2
            // 
            this.spinEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CurrBuyRate", true));
            this.spinEdit2.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit2.EnterMoveNextControl = true;
            this.spinEdit2.Location = new System.Drawing.Point(164, 167);
            this.spinEdit2.Name = "spinEdit2";
            this.spinEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spinEdit2.Size = new System.Drawing.Size(117, 21);
            this.spinEdit2.TabIndex = 20;
            this.spinEdit2.Tag = "";
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "StdBuyRate", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.EnterMoveNextControl = true;
            this.spinEdit1.Location = new System.Drawing.Point(164, 141);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spinEdit1.Size = new System.Drawing.Size(117, 21);
            this.spinEdit1.TabIndex = 18;
            this.spinEdit1.Tag = "";
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.memoEdit1.Location = new System.Drawing.Point(164, 76);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(293, 59);
            this.memoEdit1.TabIndex = 16;
            this.memoEdit1.Tag = "";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Currency1", true));
            this.textEdit1.EnterMoveNextControl = true;
            this.textEdit1.Location = new System.Drawing.Point(164, 50);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit1.Size = new System.Drawing.Size(117, 21);
            this.textEdit1.TabIndex = 15;
            this.textEdit1.Tag = "";
            // 
            // CurrSellRateLabel
            // 
            this.CurrSellRateLabel.Location = new System.Drawing.Point(22, 218);
            this.CurrSellRateLabel.Name = "CurrSellRateLabel";
            this.CurrSellRateLabel.Size = new System.Drawing.Size(136, 21);
            this.PlatetoolTipController.SetSuperTip(this.CurrSellRateLabel, null);
            this.CurrSellRateLabel.TabIndex = 30;
            this.CurrSellRateLabel.Text = "Curr Sell Rate";
            this.CurrSellRateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // StdSellRateLabel
            // 
            this.StdSellRateLabel.Location = new System.Drawing.Point(22, 188);
            this.StdSellRateLabel.Name = "StdSellRateLabel";
            this.StdSellRateLabel.Size = new System.Drawing.Size(136, 21);
            this.PlatetoolTipController.SetSuperTip(this.StdSellRateLabel, null);
            this.StdSellRateLabel.TabIndex = 29;
            this.StdSellRateLabel.Text = "Std Sell Rate";
            this.StdSellRateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // CurrBuyRateLabel
            // 
            this.CurrBuyRateLabel.Location = new System.Drawing.Point(22, 167);
            this.CurrBuyRateLabel.Name = "CurrBuyRateLabel";
            this.CurrBuyRateLabel.Size = new System.Drawing.Size(136, 21);
            this.PlatetoolTipController.SetSuperTip(this.CurrBuyRateLabel, null);
            this.CurrBuyRateLabel.TabIndex = 28;
            this.CurrBuyRateLabel.Text = "Curr Buy Rate";
            this.CurrBuyRateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // StdBuyRateLabel
            // 
            this.StdBuyRateLabel.Location = new System.Drawing.Point(22, 144);
            this.StdBuyRateLabel.Name = "StdBuyRateLabel";
            this.StdBuyRateLabel.Size = new System.Drawing.Size(136, 21);
            this.PlatetoolTipController.SetSuperTip(this.StdBuyRateLabel, null);
            this.StdBuyRateLabel.TabIndex = 27;
            this.StdBuyRateLabel.Text = "Std Buy Rate";
            this.StdBuyRateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // DescriptionLabel
            // 
            this.DescriptionLabel.Location = new System.Drawing.Point(22, 78);
            this.DescriptionLabel.Name = "DescriptionLabel";
            this.DescriptionLabel.Size = new System.Drawing.Size(136, 21);
            this.PlatetoolTipController.SetSuperTip(this.DescriptionLabel, null);
            this.DescriptionLabel.TabIndex = 26;
            this.DescriptionLabel.Text = "Description";
            this.DescriptionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // CurrencyLabel
            // 
            this.CurrencyLabel.Location = new System.Drawing.Point(22, 48);
            this.CurrencyLabel.Name = "CurrencyLabel";
            this.CurrencyLabel.Size = new System.Drawing.Size(136, 21);
            this.PlatetoolTipController.SetSuperTip(this.CurrencyLabel, null);
            this.CurrencyLabel.TabIndex = 25;
            this.CurrencyLabel.Text = "Currency";
            this.CurrencyLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // CurrencyDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.CurrSellRateLabel);
            this.Controls.Add(this.StdSellRateLabel);
            this.Controls.Add(this.CurrBuyRateLabel);
            this.Controls.Add(this.StdBuyRateLabel);
            this.Controls.Add(this.DescriptionLabel);
            this.Controls.Add(this.CurrencyLabel);
            this.Controls.Add(this.spinEdit3);
            this.Controls.Add(this.spinEdit4);
            this.Controls.Add(this.spinEdit2);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.textEdit1);
            this.Name = "CurrencyDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(this.spinEdit2, 0);
            this.Controls.SetChildIndex(this.spinEdit4, 0);
            this.Controls.SetChildIndex(this.spinEdit3, 0);
            this.Controls.SetChildIndex(this.CurrencyLabel, 0);
            this.Controls.SetChildIndex(this.DescriptionLabel, 0);
            this.Controls.SetChildIndex(this.StdBuyRateLabel, 0);
            this.Controls.SetChildIndex(this.CurrBuyRateLabel, 0);
            this.Controls.SetChildIndex(this.StdSellRateLabel, 0);
            this.Controls.SetChildIndex(this.CurrSellRateLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit4.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit spinEdit3;
        private DevExpress.XtraEditors.SpinEdit spinEdit4;
        private DevExpress.XtraEditors.SpinEdit spinEdit2;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private System.Windows.Forms.Label CurrSellRateLabel;
        private System.Windows.Forms.Label StdSellRateLabel;
        private System.Windows.Forms.Label CurrBuyRateLabel;
        private System.Windows.Forms.Label StdBuyRateLabel;
        private System.Windows.Forms.Label DescriptionLabel;
        private System.Windows.Forms.Label CurrencyLabel;
    }
}
