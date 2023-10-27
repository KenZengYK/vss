namespace PH.FabricInspection.UI
{
    partial class FrmLotIdFromToInputter
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

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.teFromLotId = new DevExpress.XtraEditors.TextEdit();
            this.pnlFuncButtons = new DevExpress.XtraEditors.PanelControl();
            this.sbCancel = new DevExpress.XtraEditors.SimpleButton();
            this.sbOk = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.teToLotId = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.teCompanyNo = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.teFromLotId.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).BeginInit();
            this.pnlFuncButtons.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teToLotId.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teCompanyNo.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(59, 72);
            this.labelControl2.Margin = new System.Windows.Forms.Padding(2);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(68, 14);
            this.labelControl2.TabIndex = 76;
            this.labelControl2.Text = "From Lot Id:";
            // 
            // teFromLotId
            // 
            this.teFromLotId.EditValue = "";
            this.teFromLotId.Location = new System.Drawing.Point(143, 66);
            this.teFromLotId.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.teFromLotId.Name = "teFromLotId";
            this.teFromLotId.Properties.AutoHeight = false;
            this.teFromLotId.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teFromLotId.Size = new System.Drawing.Size(113, 30);
            this.teFromLotId.TabIndex = 75;
            // 
            // pnlFuncButtons
            // 
            this.pnlFuncButtons.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlFuncButtons.Controls.Add(this.sbCancel);
            this.pnlFuncButtons.Controls.Add(this.sbOk);
            this.pnlFuncButtons.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlFuncButtons.Location = new System.Drawing.Point(0, 175);
            this.pnlFuncButtons.Margin = new System.Windows.Forms.Padding(2);
            this.pnlFuncButtons.Name = "pnlFuncButtons";
            this.pnlFuncButtons.Size = new System.Drawing.Size(314, 71);
            this.pnlFuncButtons.TabIndex = 77;
            // 
            // sbCancel
            // 
            this.sbCancel.Location = new System.Drawing.Point(164, 6);
            this.sbCancel.Margin = new System.Windows.Forms.Padding(2);
            this.sbCancel.Name = "sbCancel";
            this.sbCancel.Size = new System.Drawing.Size(100, 55);
            this.sbCancel.TabIndex = 66;
            this.sbCancel.Text = "Cancel";
            this.sbCancel.Click += new System.EventHandler(this.sbCancel_Click);
            // 
            // sbOk
            // 
            this.sbOk.Location = new System.Drawing.Point(29, 6);
            this.sbOk.Margin = new System.Windows.Forms.Padding(2);
            this.sbOk.Name = "sbOk";
            this.sbOk.Size = new System.Drawing.Size(100, 55);
            this.sbOk.TabIndex = 68;
            this.sbOk.Text = "Ok";
            this.sbOk.Click += new System.EventHandler(this.sbOk_Click);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(59, 118);
            this.labelControl1.Margin = new System.Windows.Forms.Padding(2);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(56, 14);
            this.labelControl1.TabIndex = 79;
            this.labelControl1.Text = "To Lot Id:";
            // 
            // teToLotId
            // 
            this.teToLotId.EditValue = "";
            this.teToLotId.Location = new System.Drawing.Point(143, 112);
            this.teToLotId.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.teToLotId.Name = "teToLotId";
            this.teToLotId.Properties.AutoHeight = false;
            this.teToLotId.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teToLotId.Size = new System.Drawing.Size(113, 30);
            this.teToLotId.TabIndex = 78;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(59, 26);
            this.labelControl3.Margin = new System.Windows.Forms.Padding(2);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(73, 14);
            this.labelControl3.TabIndex = 81;
            this.labelControl3.Text = "Company No:";
            // 
            // teCompanyNo
            // 
            this.teCompanyNo.EditValue = "";
            this.teCompanyNo.Location = new System.Drawing.Point(143, 20);
            this.teCompanyNo.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.teCompanyNo.Name = "teCompanyNo";
            this.teCompanyNo.Properties.AutoHeight = false;
            this.teCompanyNo.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teCompanyNo.Size = new System.Drawing.Size(113, 30);
            this.teCompanyNo.TabIndex = 80;
            // 
            // FrmLotIdFromToInputter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(314, 246);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.teCompanyNo);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.teToLotId);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.teFromLotId);
            this.Controls.Add(this.pnlFuncButtons);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmLotIdFromToInputter";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "LotId Input";
            ((System.ComponentModel.ISupportInitialize)(this.teFromLotId.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlFuncButtons)).EndInit();
            this.pnlFuncButtons.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.teToLotId.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teCompanyNo.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit teFromLotId;
        private DevExpress.XtraEditors.PanelControl pnlFuncButtons;
        private DevExpress.XtraEditors.SimpleButton sbCancel;
        private DevExpress.XtraEditors.SimpleButton sbOk;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit teToLotId;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit teCompanyNo;
    }
}