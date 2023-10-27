namespace PH.SPC.UI
{
    partial class StyleSizeDetailForm
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
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            this.ColorIDLabel = new DevExpress.XtraEditors.LabelControl();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.CupLabel = new DevExpress.XtraEditors.LabelControl();
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.SizeIDLabel = new DevExpress.XtraEditors.LabelControl();
            this.lbKeepQty = new DevExpress.XtraEditors.LabelControl();
            this.QtyLabel = new DevExpress.XtraEditors.LabelControl();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtChildSampleOrderSuffixShow = new DevExpress.XtraEditors.TextEdit();
            this.txtSampleTypeShow = new DevExpress.XtraEditors.TextEdit();
            this.SortIDLabel = new DevExpress.XtraEditors.LabelControl();
            this.txtPHStyleNoShow = new DevExpress.XtraEditors.TextEdit();
            this.SampleOrderIDLabel = new DevExpress.XtraEditors.LabelControl();
            this.txtSampleOrderNoShow = new DevExpress.XtraEditors.TextEdit();
            this.txtSTVersionShow = new DevExpress.XtraEditors.TextEdit();
            this.ShowEditionIDLabel = new DevExpress.XtraEditors.LabelControl();
            this.StyleIDLabel = new DevExpress.XtraEditors.LabelControl();
            this.txtColorName = new DevExpress.XtraEditors.TextEdit();
            this.lbColorName = new DevExpress.XtraEditors.LabelControl();
            this.txtKeepQty = new DevExpress.XtraEditors.SpinEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtChildSampleOrderSuffixShow.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSampleTypeShow.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPHStyleNoShow.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSampleOrderNoShow.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSTVersionShow.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColorName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtKeepQty.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.SPC.BO.StyleSize);
            // 
            // ColorIDLabel
            // 
            this.ColorIDLabel.Appearance.Options.UseTextOptions = true;
            this.ColorIDLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.ColorIDLabel.Location = new System.Drawing.Point(254, 45);
            this.ColorIDLabel.Name = "ColorIDLabel";
            this.ColorIDLabel.Size = new System.Drawing.Size(59, 14);
            this.ColorIDLabel.TabIndex = 4;
            this.ColorIDLabel.Text = "Color Code";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ColorID", true));
            this.textEdit1.Location = new System.Drawing.Point(370, 42);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit1.Size = new System.Drawing.Size(110, 21);
            this.textEdit1.TabIndex = 5;
            this.textEdit1.Tag = "ColorID";
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "請錄入顔色";
            conditionValidatonRule1.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Information;
            this.dxValidationProvider.SetValidationRule(this.textEdit1, conditionValidatonRule1);
            // 
            // textEdit2
            // 
            this.textEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Cup", true));
            this.textEdit2.Location = new System.Drawing.Point(370, 72);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit2.Size = new System.Drawing.Size(110, 21);
            this.textEdit2.TabIndex = 7;
            this.textEdit2.Tag = "Cup";
            // 
            // CupLabel
            // 
            this.CupLabel.Appearance.Options.UseTextOptions = true;
            this.CupLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.CupLabel.Location = new System.Drawing.Point(254, 75);
            this.CupLabel.Name = "CupLabel";
            this.CupLabel.Size = new System.Drawing.Size(21, 14);
            this.CupLabel.TabIndex = 6;
            this.CupLabel.Text = "Cup";
            // 
            // textEdit3
            // 
            this.textEdit3.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "SizeID", true));
            this.textEdit3.Location = new System.Drawing.Point(370, 102);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit3.Size = new System.Drawing.Size(110, 21);
            this.textEdit3.TabIndex = 9;
            this.textEdit3.Tag = "SizeID";
            // 
            // SizeIDLabel
            // 
            this.SizeIDLabel.Appearance.Options.UseTextOptions = true;
            this.SizeIDLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.SizeIDLabel.Location = new System.Drawing.Point(254, 106);
            this.SizeIDLabel.Name = "SizeIDLabel";
            this.SizeIDLabel.Size = new System.Drawing.Size(40, 14);
            this.SizeIDLabel.TabIndex = 8;
            this.SizeIDLabel.Text = "Cust Sz";
            // 
            // lbKeepQty
            // 
            this.lbKeepQty.Appearance.Options.UseTextOptions = true;
            this.lbKeepQty.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.lbKeepQty.Location = new System.Drawing.Point(254, 164);
            this.lbKeepQty.Name = "lbKeepQty";
            this.lbKeepQty.Size = new System.Drawing.Size(86, 14);
            this.lbKeepQty.TabIndex = 10;
            this.lbKeepQty.Text = "SKU\'s Keep Qty";
            // 
            // QtyLabel
            // 
            this.QtyLabel.Appearance.Options.UseTextOptions = true;
            this.QtyLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.QtyLabel.Location = new System.Drawing.Point(254, 135);
            this.QtyLabel.Name = "QtyLabel";
            this.QtyLabel.Size = new System.Drawing.Size(109, 14);
            this.QtyLabel.TabIndex = 12;
            this.QtyLabel.Text = "SKU\'s Despatch Qty";
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Qty", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Location = new System.Drawing.Point(370, 132);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Size = new System.Drawing.Size(110, 21);
            this.spinEdit1.TabIndex = 14;
            this.spinEdit1.Tag = "Qty";
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.Location = new System.Drawing.Point(33, 75);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(39, 14);
            this.labelControl1.TabIndex = 90;
            this.labelControl1.Text = "Suffix#";
            // 
            // txtChildSampleOrderSuffixShow
            // 
            this.txtChildSampleOrderSuffixShow.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ChildSampleOrderSuffixShow", true));
            this.txtChildSampleOrderSuffixShow.Enabled = false;
            this.txtChildSampleOrderSuffixShow.Location = new System.Drawing.Point(108, 72);
            this.txtChildSampleOrderSuffixShow.Name = "txtChildSampleOrderSuffixShow";
            this.txtChildSampleOrderSuffixShow.Properties.ReadOnly = true;
            this.txtChildSampleOrderSuffixShow.Size = new System.Drawing.Size(110, 21);
            this.txtChildSampleOrderSuffixShow.TabIndex = 91;
            this.txtChildSampleOrderSuffixShow.Tag = "";
            // 
            // txtSampleTypeShow
            // 
            this.txtSampleTypeShow.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SampleTypeShow", true));
            this.txtSampleTypeShow.Enabled = false;
            this.txtSampleTypeShow.Location = new System.Drawing.Point(108, 132);
            this.txtSampleTypeShow.Name = "txtSampleTypeShow";
            this.txtSampleTypeShow.Properties.ReadOnly = true;
            this.txtSampleTypeShow.Size = new System.Drawing.Size(110, 21);
            this.txtSampleTypeShow.TabIndex = 89;
            this.txtSampleTypeShow.Tag = "";
            // 
            // SortIDLabel
            // 
            this.SortIDLabel.Appearance.Options.UseTextOptions = true;
            this.SortIDLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.SortIDLabel.Location = new System.Drawing.Point(33, 135);
            this.SortIDLabel.Name = "SortIDLabel";
            this.SortIDLabel.Size = new System.Drawing.Size(58, 14);
            this.SortIDLabel.TabIndex = 88;
            this.SortIDLabel.Text = "Smpl Type";
            // 
            // txtPHStyleNoShow
            // 
            this.txtPHStyleNoShow.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PHStyleNoShow", true));
            this.txtPHStyleNoShow.Enabled = false;
            this.txtPHStyleNoShow.Location = new System.Drawing.Point(108, 102);
            this.txtPHStyleNoShow.Name = "txtPHStyleNoShow";
            this.txtPHStyleNoShow.Properties.ReadOnly = true;
            this.txtPHStyleNoShow.Size = new System.Drawing.Size(110, 21);
            this.txtPHStyleNoShow.TabIndex = 87;
            this.txtPHStyleNoShow.Tag = "";
            // 
            // SampleOrderIDLabel
            // 
            this.SampleOrderIDLabel.Appearance.Options.UseTextOptions = true;
            this.SampleOrderIDLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.SampleOrderIDLabel.Location = new System.Drawing.Point(33, 45);
            this.SampleOrderIDLabel.Name = "SampleOrderIDLabel";
            this.SampleOrderIDLabel.Size = new System.Drawing.Size(34, 14);
            this.SampleOrderIDLabel.TabIndex = 85;
            this.SampleOrderIDLabel.Text = "SplO#";
            // 
            // txtSampleOrderNoShow
            // 
            this.txtSampleOrderNoShow.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SampleOrderNoShow", true));
            this.txtSampleOrderNoShow.Enabled = false;
            this.txtSampleOrderNoShow.Location = new System.Drawing.Point(108, 42);
            this.txtSampleOrderNoShow.Name = "txtSampleOrderNoShow";
            this.txtSampleOrderNoShow.Properties.ReadOnly = true;
            this.txtSampleOrderNoShow.Size = new System.Drawing.Size(110, 21);
            this.txtSampleOrderNoShow.TabIndex = 86;
            this.txtSampleOrderNoShow.Tag = "";
            // 
            // txtSTVersionShow
            // 
            this.txtSTVersionShow.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "STVersionShow", true));
            this.txtSTVersionShow.Enabled = false;
            this.txtSTVersionShow.Location = new System.Drawing.Point(108, 162);
            this.txtSTVersionShow.Name = "txtSTVersionShow";
            this.txtSTVersionShow.Properties.ReadOnly = true;
            this.txtSTVersionShow.Size = new System.Drawing.Size(110, 21);
            this.txtSTVersionShow.TabIndex = 83;
            this.txtSTVersionShow.Tag = "";
            // 
            // ShowEditionIDLabel
            // 
            this.ShowEditionIDLabel.Appearance.Options.UseTextOptions = true;
            this.ShowEditionIDLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.ShowEditionIDLabel.Location = new System.Drawing.Point(33, 164);
            this.ShowEditionIDLabel.Name = "ShowEditionIDLabel";
            this.ShowEditionIDLabel.Size = new System.Drawing.Size(59, 14);
            this.ShowEditionIDLabel.TabIndex = 84;
            this.ShowEditionIDLabel.Text = "ST Version";
            // 
            // StyleIDLabel
            // 
            this.StyleIDLabel.Appearance.Options.UseTextOptions = true;
            this.StyleIDLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.StyleIDLabel.Location = new System.Drawing.Point(33, 106);
            this.StyleIDLabel.Name = "StyleIDLabel";
            this.StyleIDLabel.Size = new System.Drawing.Size(55, 14);
            this.StyleIDLabel.TabIndex = 92;
            this.StyleIDLabel.Text = "PH Style#";
            // 
            // txtColorName
            // 
            this.txtColorName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ColorName", true));
            this.txtColorName.Location = new System.Drawing.Point(533, 42);
            this.txtColorName.Name = "txtColorName";
            this.txtColorName.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtColorName.Size = new System.Drawing.Size(128, 21);
            this.txtColorName.TabIndex = 94;
            this.txtColorName.Tag = "ColorName";
            conditionValidatonRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule2.ErrorText = "請錄入顔色";
            conditionValidatonRule2.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Information;
            this.dxValidationProvider.SetValidationRule(this.txtColorName, conditionValidatonRule2);
            // 
            // lbColorName
            // 
            this.lbColorName.Appearance.Options.UseTextOptions = true;
            this.lbColorName.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.lbColorName.Location = new System.Drawing.Point(500, 45);
            this.lbColorName.Name = "lbColorName";
            this.lbColorName.Size = new System.Drawing.Size(27, 14);
            this.lbColorName.TabIndex = 93;
            this.lbColorName.Text = "Color";
            // 
            // txtKeepQty
            // 
            this.txtKeepQty.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "KeepQty", true));
            this.txtKeepQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.txtKeepQty.Location = new System.Drawing.Point(370, 162);
            this.txtKeepQty.Name = "txtKeepQty";
            this.txtKeepQty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtKeepQty.Size = new System.Drawing.Size(110, 21);
            this.txtKeepQty.TabIndex = 95;
            this.txtKeepQty.Tag = "Qty";
            // 
            // StyleSizeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtKeepQty);
            this.Controls.Add(this.txtColorName);
            this.Controls.Add(this.lbColorName);
            this.Controls.Add(this.StyleIDLabel);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.txtChildSampleOrderSuffixShow);
            this.Controls.Add(this.txtSampleTypeShow);
            this.Controls.Add(this.SortIDLabel);
            this.Controls.Add(this.txtPHStyleNoShow);
            this.Controls.Add(this.SampleOrderIDLabel);
            this.Controls.Add(this.txtSampleOrderNoShow);
            this.Controls.Add(this.txtSTVersionShow);
            this.Controls.Add(this.ShowEditionIDLabel);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(this.QtyLabel);
            this.Controls.Add(this.lbKeepQty);
            this.Controls.Add(this.textEdit3);
            this.Controls.Add(this.SizeIDLabel);
            this.Controls.Add(this.textEdit2);
            this.Controls.Add(this.CupLabel);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.ColorIDLabel);
            this.Name = "StyleSizeDetailForm";
            this.Size = new System.Drawing.Size(818, 362);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.ColorIDLabel, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.CupLabel, 0);
            this.Controls.SetChildIndex(this.textEdit2, 0);
            this.Controls.SetChildIndex(this.SizeIDLabel, 0);
            this.Controls.SetChildIndex(this.textEdit3, 0);
            this.Controls.SetChildIndex(this.lbKeepQty, 0);
            this.Controls.SetChildIndex(this.QtyLabel, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(this.ShowEditionIDLabel, 0);
            this.Controls.SetChildIndex(this.txtSTVersionShow, 0);
            this.Controls.SetChildIndex(this.txtSampleOrderNoShow, 0);
            this.Controls.SetChildIndex(this.SampleOrderIDLabel, 0);
            this.Controls.SetChildIndex(this.txtPHStyleNoShow, 0);
            this.Controls.SetChildIndex(this.SortIDLabel, 0);
            this.Controls.SetChildIndex(this.txtSampleTypeShow, 0);
            this.Controls.SetChildIndex(this.txtChildSampleOrderSuffixShow, 0);
            this.Controls.SetChildIndex(this.labelControl1, 0);
            this.Controls.SetChildIndex(this.StyleIDLabel, 0);
            this.Controls.SetChildIndex(this.lbColorName, 0);
            this.Controls.SetChildIndex(this.txtColorName, 0);
            this.Controls.SetChildIndex(this.txtKeepQty, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtChildSampleOrderSuffixShow.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSampleTypeShow.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPHStyleNoShow.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSampleOrderNoShow.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSTVersionShow.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColorName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtKeepQty.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl ColorIDLabel;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit2;
        private DevExpress.XtraEditors.LabelControl CupLabel;
        private DevExpress.XtraEditors.TextEdit textEdit3;
        private DevExpress.XtraEditors.LabelControl SizeIDLabel;
        private DevExpress.XtraEditors.LabelControl lbKeepQty;
        private DevExpress.XtraEditors.LabelControl QtyLabel;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtChildSampleOrderSuffixShow;
        private DevExpress.XtraEditors.TextEdit txtSampleTypeShow;
        private DevExpress.XtraEditors.LabelControl SortIDLabel;
        private DevExpress.XtraEditors.TextEdit txtPHStyleNoShow;
        private DevExpress.XtraEditors.LabelControl SampleOrderIDLabel;
        private DevExpress.XtraEditors.TextEdit txtSampleOrderNoShow;
        private DevExpress.XtraEditors.TextEdit txtSTVersionShow;
        private DevExpress.XtraEditors.LabelControl ShowEditionIDLabel;
        private DevExpress.XtraEditors.LabelControl StyleIDLabel;
        private DevExpress.XtraEditors.TextEdit txtColorName;
        private DevExpress.XtraEditors.LabelControl lbColorName;
        private DevExpress.XtraEditors.SpinEdit txtKeepQty;
    }
}
