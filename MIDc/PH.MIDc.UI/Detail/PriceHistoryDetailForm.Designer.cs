namespace PH.MIDc.UI
{
    partial class PriceHistoryDetailForm
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
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.priceHistoryBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dateEdit1 = new DevExpress.XtraEditors.DateEdit();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.RemarksLabel = new System.Windows.Forms.Label();
            this.PriceLabel = new System.Windows.Forms.Label();
            this.HistoryDateLabel = new System.Windows.Forms.Label();
            this.SuppRefLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.priceHistoryBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.PriceHistory);
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.textEdit1.Location = new System.Drawing.Point(157, 50);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(100, 21);
            this.textEdit1.TabIndex = 9;
            this.textEdit1.Tag = "SuppRef";
            // 
            // priceHistoryBindingSource
            // 
            this.priceHistoryBindingSource.DataSource = typeof(PH.MIDc.BO.PriceHistory);
            // 
            // dateEdit1
            // 
            this.dateEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HistoryDate", true));
            this.dateEdit1.EditValue = null;
            this.dateEdit1.Location = new System.Drawing.Point(157, 89);
            this.dateEdit1.Name = "dateEdit1";
            this.dateEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit1.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit1.Size = new System.Drawing.Size(100, 21);
            this.dateEdit1.TabIndex = 12;
            this.dateEdit1.Tag = "HistoryDate";
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Price", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Location = new System.Drawing.Point(157, 122);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Size = new System.Drawing.Size(100, 21);
            this.spinEdit1.TabIndex = 13;
            this.spinEdit1.Tag = "Price";
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remarks", true));
            this.memoEdit1.Location = new System.Drawing.Point(157, 153);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(185, 96);
            this.memoEdit1.TabIndex = 14;
            this.memoEdit1.Tag = "Remarks";
            // 
            // RemarksLabel
            // 
            this.RemarksLabel.Location = new System.Drawing.Point(15, 154);
            this.RemarksLabel.Name = "RemarksLabel";
            this.RemarksLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.RemarksLabel, null);
            this.RemarksLabel.TabIndex = 19;
            this.RemarksLabel.Text = "Remarks";
            this.RemarksLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // PriceLabel
            // 
            this.PriceLabel.Location = new System.Drawing.Point(15, 122);
            this.PriceLabel.Name = "PriceLabel";
            this.PriceLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.PriceLabel, null);
            this.PriceLabel.TabIndex = 18;
            this.PriceLabel.Text = "Price";
            this.PriceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // HistoryDateLabel
            // 
            this.HistoryDateLabel.Location = new System.Drawing.Point(15, 92);
            this.HistoryDateLabel.Name = "HistoryDateLabel";
            this.HistoryDateLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.HistoryDateLabel, null);
            this.HistoryDateLabel.TabIndex = 17;
            this.HistoryDateLabel.Text = "History Date";
            this.HistoryDateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SuppRefLabel
            // 
            this.SuppRefLabel.Location = new System.Drawing.Point(15, 53);
            this.SuppRefLabel.Name = "SuppRefLabel";
            this.SuppRefLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SuppRefLabel, null);
            this.SuppRefLabel.TabIndex = 16;
            this.SuppRefLabel.Text = "Supp Ref";
            this.SuppRefLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // PriceHistoryDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.RemarksLabel);
            this.Controls.Add(this.PriceLabel);
            this.Controls.Add(this.HistoryDateLabel);
            this.Controls.Add(this.SuppRefLabel);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(this.dateEdit1);
            this.Controls.Add(this.textEdit1);
            this.Name = "PriceHistoryDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.dateEdit1, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.SuppRefLabel, 0);
            this.Controls.SetChildIndex(this.HistoryDateLabel, 0);
            this.Controls.SetChildIndex(this.PriceLabel, 0);
            this.Controls.SetChildIndex(this.RemarksLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.priceHistoryBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.DateEdit dateEdit1;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private System.Windows.Forms.BindingSource priceHistoryBindingSource;
        private System.Windows.Forms.Label RemarksLabel;
        private System.Windows.Forms.Label PriceLabel;
        private System.Windows.Forms.Label HistoryDateLabel;
        private System.Windows.Forms.Label SuppRefLabel;
    }
}
