namespace PH.RWO.UI.Amend
{
    partial class EmailDetail
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
            this.lblType = new DevExpress.XtraEditors.LabelControl();
            this.lblAddress = new DevExpress.XtraEditors.LabelControl();
            this.edtAddress = new DevExpress.XtraEditors.TextEdit();
            this.chkCC = new DevExpress.XtraEditors.CheckEdit();
            this.chkEmailTo = new DevExpress.XtraEditors.CheckEdit();
            this.radioGroup1 = new DevExpress.XtraEditors.RadioGroup();
            this.lblDesc = new DevExpress.XtraEditors.LabelControl();
            this.edtRemark = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtAddress.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkCC.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkEmailTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtRemark.Properties)).BeginInit();
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
            // lblType
            // 
            this.lblType.Location = new System.Drawing.Point(89, 82);
            this.lblType.Name = "lblType";
            this.lblType.Size = new System.Drawing.Size(72, 14);
            this.lblType.TabIndex = 19;
            this.lblType.Text = "郵件發送類型";
            // 
            // lblAddress
            // 
            this.lblAddress.Location = new System.Drawing.Point(113, 146);
            this.lblAddress.Name = "lblAddress";
            this.lblAddress.Size = new System.Drawing.Size(48, 14);
            this.lblAddress.TabIndex = 18;
            this.lblAddress.Text = "郵箱地址";
            // 
            // edtAddress
            // 
            this.edtAddress.Location = new System.Drawing.Point(173, 143);
            this.edtAddress.Name = "edtAddress";
            this.edtAddress.Size = new System.Drawing.Size(375, 21);
            this.edtAddress.TabIndex = 16;
            // 
            // chkCC
            // 
            this.chkCC.Location = new System.Drawing.Point(292, 79);
            this.chkCC.Name = "chkCC";
            this.chkCC.Properties.Caption = "Email CC";
            this.chkCC.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.chkCC.Properties.RadioGroupIndex = 0;
            this.chkCC.Size = new System.Drawing.Size(75, 19);
            this.chkCC.TabIndex = 14;
            this.chkCC.TabStop = false;
            // 
            // chkEmailTo
            // 
            this.chkEmailTo.Location = new System.Drawing.Point(180, 80);
            this.chkEmailTo.Name = "chkEmailTo";
            this.chkEmailTo.Properties.Caption = "Email To";
            this.chkEmailTo.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.chkEmailTo.Properties.RadioGroupIndex = 0;
            this.chkEmailTo.Size = new System.Drawing.Size(75, 19);
            this.chkEmailTo.TabIndex = 13;
            this.chkEmailTo.TabStop = false;
            // 
            // radioGroup1
            // 
            this.radioGroup1.Location = new System.Drawing.Point(173, 71);
            this.radioGroup1.Name = "radioGroup1";
            this.radioGroup1.Size = new System.Drawing.Size(311, 35);
            this.radioGroup1.TabIndex = 12;
            // 
            // lblDesc
            // 
            this.lblDesc.Location = new System.Drawing.Point(137, 198);
            this.lblDesc.Name = "lblDesc";
            this.lblDesc.Size = new System.Drawing.Size(24, 14);
            this.lblDesc.TabIndex = 20;
            this.lblDesc.Text = "備注";
            // 
            // edtRemark
            // 
            this.edtRemark.Location = new System.Drawing.Point(173, 195);
            this.edtRemark.Name = "edtRemark";
            this.edtRemark.Size = new System.Drawing.Size(375, 21);
            this.edtRemark.TabIndex = 21;
            // 
            // EmailDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.edtRemark);
            this.Controls.Add(this.lblDesc);
            this.Controls.Add(this.lblType);
            this.Controls.Add(this.lblAddress);
            this.Controls.Add(this.edtAddress);
            this.Controls.Add(this.chkCC);
            this.Controls.Add(this.chkEmailTo);
            this.Controls.Add(this.radioGroup1);
            this.Name = "EmailDetail";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.radioGroup1, 0);
            this.Controls.SetChildIndex(this.chkEmailTo, 0);
            this.Controls.SetChildIndex(this.chkCC, 0);
            this.Controls.SetChildIndex(this.edtAddress, 0);
            this.Controls.SetChildIndex(this.lblAddress, 0);
            this.Controls.SetChildIndex(this.lblType, 0);
            this.Controls.SetChildIndex(this.lblDesc, 0);
            this.Controls.SetChildIndex(this.edtRemark, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtAddress.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkCC.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkEmailTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtRemark.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl lblType;
        private DevExpress.XtraEditors.LabelControl lblAddress;
        private DevExpress.XtraEditors.TextEdit edtAddress;
        private DevExpress.XtraEditors.CheckEdit chkCC;
        private DevExpress.XtraEditors.CheckEdit chkEmailTo;
        private DevExpress.XtraEditors.RadioGroup radioGroup1;
        private DevExpress.XtraEditors.LabelControl lblDesc;
        private DevExpress.XtraEditors.TextEdit edtRemark;
    }
}
