namespace PH.RWO.UI.Setting
{
    partial class AddNewCustomerForm
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.edtNewCustomer = new DevExpress.XtraEditors.TextEdit();
            this.edtOldCustomer = new DevExpress.XtraEditors.ComboBoxEdit();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.cbOldFty = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbNewFty = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.edtNewCustomer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtOldCustomer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbOldFty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbNewFty.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(90, 25);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(108, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "需要新建的客人代號";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(30, 99);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(168, 14);
            this.labelControl2.TabIndex = 1;
            this.labelControl2.Text = "從现有哪个舊客複雜資料到新客";
            // 
            // edtNewCustomer
            // 
            this.edtNewCustomer.Location = new System.Drawing.Point(207, 22);
            this.edtNewCustomer.Name = "edtNewCustomer";
            this.edtNewCustomer.Size = new System.Drawing.Size(141, 21);
            this.edtNewCustomer.TabIndex = 2;
            // 
            // edtOldCustomer
            // 
            this.edtOldCustomer.EditValue = "";
            this.edtOldCustomer.Location = new System.Drawing.Point(207, 96);
            this.edtOldCustomer.Name = "edtOldCustomer";
            this.edtOldCustomer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtOldCustomer.Properties.Items.AddRange(new object[] {
            "CMYR",
            "ETAM",
            "HBI",
            "LARD",
            "SALL",
            "TAMA",
            "WARN",
            "DBHS"});
            this.edtOldCustomer.Size = new System.Drawing.Size(141, 21);
            this.edtOldCustomer.TabIndex = 318;
            this.edtOldCustomer.Tag = "CustomerCode";
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(207, 163);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(126, 23);
            this.btnOK.TabIndex = 319;
            this.btnOK.Text = "生成新客资料";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(78, 52);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(120, 14);
            this.labelControl3.TabIndex = 320;
            this.labelControl3.Text = "新建的客人對應的工廠";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(90, 126);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(108, 14);
            this.labelControl4.TabIndex = 322;
            this.labelControl4.Text = "舊的客人對應的工廠";
            // 
            // cbOldFty
            // 
            this.cbOldFty.EditValue = "";
            this.cbOldFty.Location = new System.Drawing.Point(207, 123);
            this.cbOldFty.Name = "cbOldFty";
            this.cbOldFty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbOldFty.Properties.Items.AddRange(new object[] {
            "SL",
            "CL",
            "RX",
            "GG"});
            this.cbOldFty.Size = new System.Drawing.Size(141, 21);
            this.cbOldFty.TabIndex = 323;
            this.cbOldFty.Tag = "CustomerCode";
            // 
            // cbNewFty
            // 
            this.cbNewFty.EditValue = "";
            this.cbNewFty.Location = new System.Drawing.Point(207, 49);
            this.cbNewFty.Name = "cbNewFty";
            this.cbNewFty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbNewFty.Properties.Items.AddRange(new object[] {
            "SL",
            "CL",
            "RX",
            "GG"});
            this.cbNewFty.Size = new System.Drawing.Size(141, 21);
            this.cbNewFty.TabIndex = 324;
            this.cbNewFty.Tag = "CustomerCode";
            // 
            // AddNewCustomerForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cbNewFty);
            this.Controls.Add(this.cbOldFty);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.edtOldCustomer);
            this.Controls.Add(this.edtNewCustomer);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Name = "AddNewCustomerForm";
            this.Size = new System.Drawing.Size(530, 206);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.edtNewCustomer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtOldCustomer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbOldFty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbNewFty.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit edtNewCustomer;
        private DevExpress.XtraEditors.ComboBoxEdit edtOldCustomer;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.ComboBoxEdit cbOldFty;
        private DevExpress.XtraEditors.ComboBoxEdit cbNewFty;
    }
}
