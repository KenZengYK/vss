namespace PH.LineBalanceII.UI.BondingSpect
{
    partial class McTypeDetailForm
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
            this.radioGroup1 = new DevExpress.XtraEditors.RadioGroup();
            this.chkNf = new DevExpress.XtraEditors.CheckEdit();
            this.chkYt = new DevExpress.XtraEditors.CheckEdit();
            this.edtCode = new DevExpress.XtraEditors.TextEdit();
            this.edtDesc = new DevExpress.XtraEditors.TextEdit();
            this.lblCode = new DevExpress.XtraEditors.LabelControl();
            this.lblName = new DevExpress.XtraEditors.LabelControl();
            this.lblType = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkNf.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkYt.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDesc.Properties)).BeginInit();
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
            // radioGroup1
            // 
            this.radioGroup1.Location = new System.Drawing.Point(132, 70);
            this.radioGroup1.Name = "radioGroup1";
            this.radioGroup1.Size = new System.Drawing.Size(311, 35);
            this.radioGroup1.TabIndex = 4;
            // 
            // chkNf
            // 
            this.chkNf.Location = new System.Drawing.Point(139, 79);
            this.chkNf.Name = "chkNf";
            this.chkNf.Properties.Caption = "粘縫機";
            this.chkNf.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.chkNf.Properties.RadioGroupIndex = 0;
            this.chkNf.Size = new System.Drawing.Size(75, 19);
            this.chkNf.TabIndex = 5;
            this.chkNf.TabStop = false;
            // 
            // chkYt
            // 
            this.chkYt.Location = new System.Drawing.Point(251, 78);
            this.chkYt.Name = "chkYt";
            this.chkYt.Properties.Caption = "壓燙機";
            this.chkYt.Properties.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Radio;
            this.chkYt.Properties.RadioGroupIndex = 0;
            this.chkYt.Size = new System.Drawing.Size(75, 19);
            this.chkYt.TabIndex = 6;
            this.chkYt.TabStop = false;
            // 
            // edtCode
            // 
            this.edtCode.Location = new System.Drawing.Point(132, 130);
            this.edtCode.Name = "edtCode";
            this.edtCode.Size = new System.Drawing.Size(100, 21);
            this.edtCode.TabIndex = 7;
            // 
            // edtDesc
            // 
            this.edtDesc.Location = new System.Drawing.Point(132, 185);
            this.edtDesc.Name = "edtDesc";
            this.edtDesc.Size = new System.Drawing.Size(375, 21);
            this.edtDesc.TabIndex = 8;
            // 
            // lblCode
            // 
            this.lblCode.Location = new System.Drawing.Point(56, 133);
            this.lblCode.Name = "lblCode";
            this.lblCode.Size = new System.Drawing.Size(64, 14);
            this.lblCode.TabIndex = 9;
            this.lblCode.Text = "編號(Seq#)";
            // 
            // lblName
            // 
            this.lblName.Location = new System.Drawing.Point(72, 188);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(48, 14);
            this.lblName.TabIndex = 10;
            this.lblName.Text = "機類名稱";
            // 
            // lblType
            // 
            this.lblType.Location = new System.Drawing.Point(72, 81);
            this.lblType.Name = "lblType";
            this.lblType.Size = new System.Drawing.Size(48, 14);
            this.lblType.TabIndex = 11;
            this.lblType.Text = "機械分類";
            // 
            // McTypeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lblType);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.lblCode);
            this.Controls.Add(this.edtDesc);
            this.Controls.Add(this.edtCode);
            this.Controls.Add(this.chkYt);
            this.Controls.Add(this.chkNf);
            this.Controls.Add(this.radioGroup1);
            this.Name = "McTypeDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.radioGroup1, 0);
            this.Controls.SetChildIndex(this.chkNf, 0);
            this.Controls.SetChildIndex(this.chkYt, 0);
            this.Controls.SetChildIndex(this.edtCode, 0);
            this.Controls.SetChildIndex(this.edtDesc, 0);
            this.Controls.SetChildIndex(this.lblCode, 0);
            this.Controls.SetChildIndex(this.lblName, 0);
            this.Controls.SetChildIndex(this.lblType, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkNf.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkYt.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDesc.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.RadioGroup radioGroup1;
        private DevExpress.XtraEditors.CheckEdit chkNf;
        private DevExpress.XtraEditors.CheckEdit chkYt;
        private DevExpress.XtraEditors.TextEdit edtCode;
        private DevExpress.XtraEditors.TextEdit edtDesc;
        private DevExpress.XtraEditors.LabelControl lblCode;
        private DevExpress.XtraEditors.LabelControl lblName;
        private DevExpress.XtraEditors.LabelControl lblType;
    }
}
