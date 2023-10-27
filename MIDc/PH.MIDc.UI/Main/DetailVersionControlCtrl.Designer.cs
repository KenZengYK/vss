namespace PH.MIDc.UI
{
    partial class DetailVersionControlCtrl
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
            this.sBtn_RiseUpVersion = new DevExpress.XtraEditors.SimpleButton();
            this.spinEdit_Version = new DevExpress.XtraEditors.SpinEdit();
            this.labelControl35 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl34 = new DevExpress.XtraEditors.LabelControl();
            this.checkedComboBoxEdit_VersionRiseReasion = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit_Version.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEdit_VersionRiseReasion.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // sBtn_RiseUpVersion
            // 
            this.sBtn_RiseUpVersion.Location = new System.Drawing.Point(197, 39);
            this.sBtn_RiseUpVersion.Name = "sBtn_RiseUpVersion";
            this.sBtn_RiseUpVersion.Size = new System.Drawing.Size(43, 23);
            this.sBtn_RiseUpVersion.TabIndex = 128;
            this.sBtn_RiseUpVersion.Text = "Rise";
            this.sBtn_RiseUpVersion.Click += new System.EventHandler(this.sBtn_RiseUpVersion_Click);
            // 
            // spinEdit_Version
            // 
            this.spinEdit_Version.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit_Version.Location = new System.Drawing.Point(87, 40);
            this.spinEdit_Version.Name = "spinEdit_Version";
            this.spinEdit_Version.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit_Version.Properties.ReadOnly = true;
            this.spinEdit_Version.Size = new System.Drawing.Size(109, 21);
            this.spinEdit_Version.TabIndex = 126;
            // 
            // labelControl35
            // 
            this.labelControl35.Location = new System.Drawing.Point(13, 84);
            this.labelControl35.Name = "labelControl35";
            this.labelControl35.Size = new System.Drawing.Size(68, 14);
            this.labelControl35.TabIndex = 124;
            this.labelControl35.Text = "Rise Reason:";
            // 
            // labelControl34
            // 
            this.labelControl34.Location = new System.Drawing.Point(37, 43);
            this.labelControl34.Name = "labelControl34";
            this.labelControl34.Size = new System.Drawing.Size(44, 14);
            this.labelControl34.TabIndex = 125;
            this.labelControl34.Text = "Version:";
            // 
            // checkedComboBoxEdit_VersionRiseReasion
            // 
            this.checkedComboBoxEdit_VersionRiseReasion.Location = new System.Drawing.Point(88, 84);
            this.checkedComboBoxEdit_VersionRiseReasion.Name = "checkedComboBoxEdit_VersionRiseReasion";
            this.checkedComboBoxEdit_VersionRiseReasion.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkedComboBoxEdit_VersionRiseReasion.Size = new System.Drawing.Size(225, 21);
            this.checkedComboBoxEdit_VersionRiseReasion.TabIndex = 129;
            this.checkedComboBoxEdit_VersionRiseReasion.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(this.checkedComboBoxEdit_VersionRiseReasion_EditValueChanging);
            // 
            // DetailVersionControlCtrl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.checkedComboBoxEdit_VersionRiseReasion);
            this.Controls.Add(this.sBtn_RiseUpVersion);
            this.Controls.Add(this.spinEdit_Version);
            this.Controls.Add(this.labelControl35);
            this.Controls.Add(this.labelControl34);
            this.Name = "DetailVersionControlCtrl";
            this.Size = new System.Drawing.Size(349, 144);
            this.Load += new System.EventHandler(this.DetailVersionControlCtrl_Load);
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit_Version.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEdit_VersionRiseReasion.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton sBtn_RiseUpVersion;
        private DevExpress.XtraEditors.SpinEdit spinEdit_Version;
        private DevExpress.XtraEditors.LabelControl labelControl35;
        private DevExpress.XtraEditors.LabelControl labelControl34;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkedComboBoxEdit_VersionRiseReasion;
    }
}
