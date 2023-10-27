namespace PH.MobileQC.UI
{
    partial class AlertEmailDetailForm
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
            this.tOLabel = new System.Windows.Forms.Label();
            this.bCCLabel = new System.Windows.Forms.Label();
            this.cCLabel = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.edtAlertSwitch = new DevExpress.XtraEditors.SpinEdit();
            this.lblFactory = new DevExpress.XtraEditors.LabelControl();
            this.edtFac = new DevExpress.XtraEditors.TextEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.memoEdit2 = new DevExpress.XtraEditors.MemoEdit();
            this.memoEdit3 = new DevExpress.XtraEditors.MemoEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtAlertSwitch.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFac.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit3.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_AlertEmail);
            // 
            // tOLabel
            // 
            this.tOLabel.AutoSize = true;
            this.tOLabel.Location = new System.Drawing.Point(157, 120);
            this.tOLabel.Name = "tOLabel";
            this.tOLabel.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.tOLabel, null);
            this.tOLabel.TabIndex = 4;
            this.tOLabel.Text = "TO:";
            this.tOLabel.Click += new System.EventHandler(this.tOLabel_Click);
            // 
            // bCCLabel
            // 
            this.bCCLabel.AutoSize = true;
            this.bCCLabel.Location = new System.Drawing.Point(157, 315);
            this.bCCLabel.Name = "bCCLabel";
            this.bCCLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.bCCLabel, null);
            this.bCCLabel.TabIndex = 6;
            this.bCCLabel.Text = "BCC:";
            // 
            // cCLabel
            // 
            this.cCLabel.AutoSize = true;
            this.cCLabel.Location = new System.Drawing.Point(157, 204);
            this.cCLabel.Name = "cCLabel";
            this.cCLabel.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.cCLabel, null);
            this.cCLabel.TabIndex = 8;
            this.cCLabel.Text = "CC:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(43, 430);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(143, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 16;
            this.label1.Text = "Alert Threshold Values:";
            // 
            // edtAlertSwitch
            // 
            this.edtAlertSwitch.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AlertSwitch", true));
            this.edtAlertSwitch.EditValue = new decimal(new int[] {
            2,
            0,
            0,
            0});
            this.edtAlertSwitch.Location = new System.Drawing.Point(192, 427);
            this.edtAlertSwitch.Name = "edtAlertSwitch";
            this.edtAlertSwitch.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtAlertSwitch.Properties.IsFloatValue = false;
            this.edtAlertSwitch.Properties.Mask.EditMask = "N00";
            this.edtAlertSwitch.Properties.MaxValue = new decimal(new int[] {
            100,
            0,
            0,
            0});
            this.edtAlertSwitch.Properties.MinValue = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.edtAlertSwitch.Size = new System.Drawing.Size(100, 21);
            this.edtAlertSwitch.TabIndex = 18;
            // 
            // lblFactory
            // 
            this.lblFactory.Location = new System.Drawing.Point(140, 58);
            this.lblFactory.Name = "lblFactory";
            this.lblFactory.Size = new System.Drawing.Size(40, 14);
            this.lblFactory.TabIndex = 19;
            this.lblFactory.Text = "Factory";
            // 
            // edtFac
            // 
            this.edtFac.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Factory", true));
            this.edtFac.Location = new System.Drawing.Point(192, 55);
            this.edtFac.Name = "edtFac";
            this.edtFac.Size = new System.Drawing.Size(100, 21);
            this.edtFac.TabIndex = 20;
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TO", true));
            this.memoEdit1.Location = new System.Drawing.Point(192, 101);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(400, 92);
            this.memoEdit1.TabIndex = 21;
            // 
            // memoEdit2
            // 
            this.memoEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CC", true));
            this.memoEdit2.Location = new System.Drawing.Point(192, 202);
            this.memoEdit2.Name = "memoEdit2";
            this.memoEdit2.Size = new System.Drawing.Size(400, 89);
            this.memoEdit2.TabIndex = 22;
            // 
            // memoEdit3
            // 
            this.memoEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "BCC", true));
            this.memoEdit3.Location = new System.Drawing.Point(192, 297);
            this.memoEdit3.Name = "memoEdit3";
            this.memoEdit3.Size = new System.Drawing.Size(400, 96);
            this.memoEdit3.TabIndex = 23;
            // 
            // AlertEmailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.memoEdit3);
            this.Controls.Add(this.memoEdit2);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.edtFac);
            this.Controls.Add(this.lblFactory);
            this.Controls.Add(this.edtAlertSwitch);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cCLabel);
            this.Controls.Add(this.bCCLabel);
            this.Controls.Add(this.tOLabel);
            this.Name = "AlertEmailDetailForm";
            this.Size = new System.Drawing.Size(1000, 472);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.AlertEmailDetailForm_Load);
            this.Controls.SetChildIndex(this.tOLabel, 0);
            this.Controls.SetChildIndex(this.bCCLabel, 0);
            this.Controls.SetChildIndex(this.cCLabel, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.edtAlertSwitch, 0);
            this.Controls.SetChildIndex(this.lblFactory, 0);
            this.Controls.SetChildIndex(this.edtFac, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.memoEdit2, 0);
            this.Controls.SetChildIndex(this.memoEdit3, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtAlertSwitch.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFac.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit3.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label tOLabel;
        private System.Windows.Forms.Label bCCLabel;
        private System.Windows.Forms.Label cCLabel;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.SpinEdit edtAlertSwitch;
        private DevExpress.XtraEditors.LabelControl lblFactory;
        private DevExpress.XtraEditors.TextEdit edtFac;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private DevExpress.XtraEditors.MemoEdit memoEdit2;
        private DevExpress.XtraEditors.MemoEdit memoEdit3;
    }
}
