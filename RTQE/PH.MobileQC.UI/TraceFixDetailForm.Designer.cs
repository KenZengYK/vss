namespace PH.MobileQC.UI
{
    partial class TraceFixDetailForm
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
            this.lblDefCode = new DevExpress.XtraEditors.LabelControl();
            this.lblDefName = new DevExpress.XtraEditors.LabelControl();
            this.edtDesc = new DevExpress.XtraEditors.TextEdit();
            this.lueFixCode = new DevExpress.XtraEditors.LookUpEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDesc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueFixCode.Properties)).BeginInit();
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
            // lblDefCode
            // 
            this.lblDefCode.Location = new System.Drawing.Point(107, 84);
            this.lblDefCode.Name = "lblDefCode";
            this.lblDefCode.Size = new System.Drawing.Size(72, 14);
            this.lblDefCode.TabIndex = 4;
            this.lblDefCode.Text = "固定暇疵編號";
            // 
            // lblDefName
            // 
            this.lblDefName.Location = new System.Drawing.Point(107, 155);
            this.lblDefName.Name = "lblDefName";
            this.lblDefName.Size = new System.Drawing.Size(72, 14);
            this.lblDefName.TabIndex = 5;
            this.lblDefName.Text = "固定暇疵描述";
            // 
            // edtDesc
            // 
            this.edtDesc.Location = new System.Drawing.Point(196, 152);
            this.edtDesc.Name = "edtDesc";
            this.edtDesc.Properties.ReadOnly = true;
            this.edtDesc.Size = new System.Drawing.Size(319, 21);
            this.edtDesc.TabIndex = 7;
            // 
            // lueFixCode
            // 
            this.lueFixCode.Location = new System.Drawing.Point(196, 81);
            this.lueFixCode.Name = "lueFixCode";
            this.lueFixCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueFixCode.Properties.NullText = "";
            this.lueFixCode.Properties.ReadOnly = true;
            this.lueFixCode.Size = new System.Drawing.Size(169, 21);
            this.lueFixCode.TabIndex = 8;
            this.lueFixCode.EditValueChanged += new System.EventHandler(this.lueFixCode_EditValueChanged);
            // 
            // TraceFixDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lueFixCode);
            this.Controls.Add(this.edtDesc);
            this.Controls.Add(this.lblDefName);
            this.Controls.Add(this.lblDefCode);
            this.Name = "TraceFixDetailForm";
            this.Size = new System.Drawing.Size(774, 353);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.lblDefCode, 0);
            this.Controls.SetChildIndex(this.lblDefName, 0);
            this.Controls.SetChildIndex(this.edtDesc, 0);
            this.Controls.SetChildIndex(this.lueFixCode, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDesc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueFixCode.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl lblDefCode;
        private DevExpress.XtraEditors.LabelControl lblDefName;
        private DevExpress.XtraEditors.TextEdit edtDesc;
        private DevExpress.XtraEditors.LookUpEdit lueFixCode;
    }
}
