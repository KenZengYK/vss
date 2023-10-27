namespace PH.MIDc.UI
{
    partial class RatioPriceDetailForm
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
            this.ratioPriceBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.spinEdit2 = new DevExpress.XtraEditors.SpinEdit();
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.RemarksLabel = new System.Windows.Forms.Label();
            this.PriceLabel = new System.Windows.Forms.Label();
            this.HistoryDateLabel = new System.Windows.Forms.Label();
            this.SuppRefLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ratioPriceBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.RatioPrice);
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.textEdit1.Location = new System.Drawing.Point(169, 42);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(100, 21);
            this.textEdit1.TabIndex = 10;
            this.textEdit1.Tag = "SuppRef";
            // 
            // ratioPriceBindingSource
            // 
            this.ratioPriceBindingSource.DataSource = typeof(PH.MIDc.BO.RatioPrice);
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Price", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.EnterMoveNextControl = true;
            this.spinEdit1.Location = new System.Drawing.Point(169, 100);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Size = new System.Drawing.Size(100, 21);
            this.spinEdit1.TabIndex = 13;
            this.spinEdit1.Tag = "Price";
            // 
            // spinEdit2
            // 
            this.spinEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Ratio", true));
            this.spinEdit2.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit2.Location = new System.Drawing.Point(169, 128);
            this.spinEdit2.Name = "spinEdit2";
            this.spinEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit2.Size = new System.Drawing.Size(100, 21);
            this.spinEdit2.TabIndex = 14;
            this.spinEdit2.Tag = "Ratio";
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ColorCategory", true));
            this.comboBoxEdit1.Location = new System.Drawing.Point(169, 73);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Properties.Items.AddRange(new object[] {
            "ALL",
            "WHITE",
            "BLACK",
            "PASTEL",
            "MEDIUM",
            "DARK",
            "2TONE",
            "PRINT",
            "GOLD",
            "SILVER",
            "CLEAR",
            "STDC"});
            this.comboBoxEdit1.Size = new System.Drawing.Size(100, 21);
            this.comboBoxEdit1.TabIndex = 189;
            this.comboBoxEdit1.Tag = "ColorCategory";
            // 
            // RemarksLabel
            // 
            this.RemarksLabel.Location = new System.Drawing.Point(17, 131);
            this.RemarksLabel.Name = "RemarksLabel";
            this.RemarksLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.RemarksLabel, null);
            this.RemarksLabel.TabIndex = 194;
            this.RemarksLabel.Text = "Remarks";
            this.RemarksLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // PriceLabel
            // 
            this.PriceLabel.Location = new System.Drawing.Point(17, 103);
            this.PriceLabel.Name = "PriceLabel";
            this.PriceLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.PriceLabel, null);
            this.PriceLabel.TabIndex = 193;
            this.PriceLabel.Text = "Price";
            this.PriceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // HistoryDateLabel
            // 
            this.HistoryDateLabel.Location = new System.Drawing.Point(17, 73);
            this.HistoryDateLabel.Name = "HistoryDateLabel";
            this.HistoryDateLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.HistoryDateLabel, null);
            this.HistoryDateLabel.TabIndex = 192;
            this.HistoryDateLabel.Text = "History Date";
            this.HistoryDateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SuppRefLabel
            // 
            this.SuppRefLabel.Location = new System.Drawing.Point(17, 45);
            this.SuppRefLabel.Name = "SuppRefLabel";
            this.SuppRefLabel.Size = new System.Drawing.Size(136, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SuppRefLabel, null);
            this.SuppRefLabel.TabIndex = 191;
            this.SuppRefLabel.Text = "Supp Ref";
            this.SuppRefLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // RatioPriceDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.RemarksLabel);
            this.Controls.Add(this.PriceLabel);
            this.Controls.Add(this.HistoryDateLabel);
            this.Controls.Add(this.SuppRefLabel);
            this.Controls.Add(this.comboBoxEdit1);
            this.Controls.Add(this.spinEdit2);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(this.textEdit1);
            this.Name = "RatioPriceDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.RatioPriceDetailForm_Load);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(this.spinEdit2, 0);
            this.Controls.SetChildIndex(this.comboBoxEdit1, 0);
            this.Controls.SetChildIndex(this.SuppRefLabel, 0);
            this.Controls.SetChildIndex(this.HistoryDateLabel, 0);
            this.Controls.SetChildIndex(this.PriceLabel, 0);
            this.Controls.SetChildIndex(this.RemarksLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ratioPriceBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
        private DevExpress.XtraEditors.SpinEdit spinEdit2;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
        private System.Windows.Forms.BindingSource ratioPriceBindingSource;
        private System.Windows.Forms.Label RemarksLabel;
        private System.Windows.Forms.Label PriceLabel;
        private System.Windows.Forms.Label HistoryDateLabel;
        private System.Windows.Forms.Label SuppRefLabel;
    }
}
