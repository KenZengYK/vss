namespace PH.LWPM.UI.WF.Report
{
    partial class Report_GSD
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
            this.T_factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.bt_ok = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.T_factory.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // T_factory
            // 
            this.T_factory.EnterMoveNextControl = true;
            this.T_factory.Location = new System.Drawing.Point(91, 32);
            this.T_factory.Name = "T_factory";
            this.T_factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.T_factory.Size = new System.Drawing.Size(140, 21);
            this.T_factory.TabIndex = 119;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(39, 35);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(41, 14);
            this.labelControl1.TabIndex = 118;
            this.labelControl1.Text = "Region:";
            // 
            // bt_ok
            // 
            this.bt_ok.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.bt_ok.Location = new System.Drawing.Point(91, 89);
            this.bt_ok.Name = "bt_ok";
            this.bt_ok.Size = new System.Drawing.Size(75, 23);
            this.bt_ok.TabIndex = 120;
            this.bt_ok.Text = "OK";
            this.bt_ok.Click += new System.EventHandler(this.bt_ok_Click);
            // 
            // Report_GSD
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.T_factory);
            this.Controls.Add(this.bt_ok);
            this.Name = "Report_GSD";
            this.Size = new System.Drawing.Size(533, 291);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.Report_GSD_Load);
            ((System.ComponentModel.ISupportInitialize)(this.T_factory.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public DevExpress.XtraEditors.ComboBoxEdit T_factory;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SimpleButton bt_ok;
    }
}
