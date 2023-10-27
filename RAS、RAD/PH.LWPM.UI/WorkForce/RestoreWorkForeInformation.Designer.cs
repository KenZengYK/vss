namespace PH.LWPM.UI.WorkForce
{
    partial class RestoreWorkForeInformation
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
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.cbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtWorkerID = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkerID.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(154, 101);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 0;
            this.simpleButton1.Text = "Restore ";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(59, 30);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(52, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Factory : ";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(87, 64);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(24, 14);
            this.labelControl2.TabIndex = 2;
            this.labelControl2.Text = "ID : ";
            // 
            // cbFactory
            // 
            this.cbFactory.Location = new System.Drawing.Point(116, 27);
            this.cbFactory.Name = "cbFactory";
            this.cbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbFactory.Properties.Items.AddRange(new object[] {
            "CL",
            "GG",
            "HK",
            "RX",
            "SL"});
            this.cbFactory.Size = new System.Drawing.Size(155, 21);
            this.cbFactory.TabIndex = 3;
            // 
            // txtWorkerID
            // 
            this.txtWorkerID.Location = new System.Drawing.Point(117, 61);
            this.txtWorkerID.Name = "txtWorkerID";
            this.txtWorkerID.Size = new System.Drawing.Size(155, 21);
            this.txtWorkerID.TabIndex = 4;
            // 
            // RestoreWorkForeInformation
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtWorkerID);
            this.Controls.Add(this.cbFactory);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.simpleButton1);
            this.Name = "RestoreWorkForeInformation";
            this.Size = new System.Drawing.Size(532, 458);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkerID.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.ComboBoxEdit cbFactory;
        private DevExpress.XtraEditors.TextEdit txtWorkerID;

    }
}
