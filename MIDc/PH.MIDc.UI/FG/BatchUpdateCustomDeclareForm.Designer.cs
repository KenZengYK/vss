namespace PH.MIDc.UI
{
    partial class BatchUpdateCustomDeclareForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gcElement = new DevExpress.XtraEditors.GroupControl();
            this.chkElement = new DevExpress.XtraEditors.CheckEdit();
            this.radElement = new DevExpress.XtraEditors.RadioGroup();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.chkBrand = new DevExpress.XtraEditors.CheckEdit();
            this.radBrand = new DevExpress.XtraEditors.RadioGroup();
            this.groupControl3 = new DevExpress.XtraEditors.GroupControl();
            this.chkGoodsNo = new DevExpress.XtraEditors.CheckEdit();
            this.radGoodsNo = new DevExpress.XtraEditors.RadioGroup();
            this.btnUpdate = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gcElement)).BeginInit();
            this.gcElement.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkElement.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radElement.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkBrand.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radBrand.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).BeginInit();
            this.groupControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkGoodsNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radGoodsNo.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gcElement
            // 
            this.gcElement.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.gcElement.Controls.Add(this.chkElement);
            this.gcElement.Controls.Add(this.radElement);
            this.gcElement.Location = new System.Drawing.Point(56, 19);
            this.gcElement.Name = "gcElement";
            this.gcElement.Size = new System.Drawing.Size(300, 79);
            this.gcElement.TabIndex = 0;
            this.gcElement.Text = "    更新成份含量(000001)";
            // 
            // chkElement
            // 
            this.chkElement.EditValue = true;
            this.chkElement.Location = new System.Drawing.Point(-1, 2);
            this.chkElement.Name = "chkElement";
            this.chkElement.Properties.Caption = "checkEdit1";
            this.chkElement.Size = new System.Drawing.Size(21, 19);
            this.chkElement.TabIndex = 5;
            this.chkElement.CheckedChanged += new System.EventHandler(this.chkElement_CheckedChanged);
            // 
            // radElement
            // 
            this.radElement.Location = new System.Drawing.Point(20, 31);
            this.radElement.Name = "radElement";
            this.radElement.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "當前行"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "所有空行"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "所有行")});
            this.radElement.Size = new System.Drawing.Size(263, 35);
            this.radElement.TabIndex = 0;
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.chkBrand);
            this.groupControl2.Controls.Add(this.radBrand);
            this.groupControl2.Location = new System.Drawing.Point(56, 114);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(300, 79);
            this.groupControl2.TabIndex = 1;
            this.groupControl2.Text = "    更新品牌(000003)";
            // 
            // chkBrand
            // 
            this.chkBrand.EditValue = true;
            this.chkBrand.Location = new System.Drawing.Point(-1, 2);
            this.chkBrand.Name = "chkBrand";
            this.chkBrand.Properties.Caption = "checkEdit1";
            this.chkBrand.Size = new System.Drawing.Size(21, 19);
            this.chkBrand.TabIndex = 6;
            this.chkBrand.CheckedChanged += new System.EventHandler(this.chkBrand_CheckedChanged);
            // 
            // radBrand
            // 
            this.radBrand.Location = new System.Drawing.Point(20, 31);
            this.radBrand.Name = "radBrand";
            this.radBrand.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "當前行"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "所有空行"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "所有行")});
            this.radBrand.Size = new System.Drawing.Size(263, 35);
            this.radBrand.TabIndex = 0;
            // 
            // groupControl3
            // 
            this.groupControl3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl3.Controls.Add(this.chkGoodsNo);
            this.groupControl3.Controls.Add(this.radGoodsNo);
            this.groupControl3.Location = new System.Drawing.Point(56, 210);
            this.groupControl3.Name = "groupControl3";
            this.groupControl3.Size = new System.Drawing.Size(300, 79);
            this.groupControl3.TabIndex = 2;
            this.groupControl3.Text = "    更新貨號(000020)";
            // 
            // chkGoodsNo
            // 
            this.chkGoodsNo.EditValue = true;
            this.chkGoodsNo.Location = new System.Drawing.Point(-1, 1);
            this.chkGoodsNo.Name = "chkGoodsNo";
            this.chkGoodsNo.Properties.Caption = "checkEdit1";
            this.chkGoodsNo.Size = new System.Drawing.Size(21, 19);
            this.chkGoodsNo.TabIndex = 6;
            this.chkGoodsNo.CheckedChanged += new System.EventHandler(this.chkGoodsNo_CheckedChanged);
            // 
            // radGoodsNo
            // 
            this.radGoodsNo.Location = new System.Drawing.Point(20, 31);
            this.radGoodsNo.Name = "radGoodsNo";
            this.radGoodsNo.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "當前行"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "所有空行"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "所有行")});
            this.radGoodsNo.Size = new System.Drawing.Size(263, 35);
            this.radGoodsNo.TabIndex = 0;
            // 
            // btnUpdate
            // 
            this.btnUpdate.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnUpdate.Location = new System.Drawing.Point(153, 311);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(75, 23);
            this.btnUpdate.TabIndex = 3;
            this.btnUpdate.Text = "更新";
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(245, 311);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 4;
            this.btnCancel.Text = "取消";
            // 
            // BatchUpdateCustomDeclareForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(420, 353);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnUpdate);
            this.Controls.Add(this.groupControl3);
            this.Controls.Add(this.groupControl2);
            this.Controls.Add(this.gcElement);
            this.Name = "BatchUpdateCustomDeclareForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "批量更新海關申報要素";
            ((System.ComponentModel.ISupportInitialize)(this.gcElement)).EndInit();
            this.gcElement.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chkElement.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radElement.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chkBrand.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radBrand.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).EndInit();
            this.groupControl3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chkGoodsNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radGoodsNo.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.GroupControl gcElement;
        private DevExpress.XtraEditors.RadioGroup radElement;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.RadioGroup radBrand;
        private DevExpress.XtraEditors.GroupControl groupControl3;
        private DevExpress.XtraEditors.RadioGroup radGoodsNo;
        private DevExpress.XtraEditors.SimpleButton btnUpdate;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.CheckEdit chkElement;
        private DevExpress.XtraEditors.CheckEdit chkBrand;
        private DevExpress.XtraEditors.CheckEdit chkGoodsNo;
    }
}