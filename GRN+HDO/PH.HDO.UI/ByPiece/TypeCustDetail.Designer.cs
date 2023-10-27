namespace PH.HDO.UI.ByPiece
{
    partial class TypeCustDetail
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
            System.Windows.Forms.Label typeDetail_IdLabel;
            System.Windows.Forms.Label projCodeLabel;
            System.Windows.Forms.Label responsiblerLabel;
            System.Windows.Forms.Label remarkLabel;
            System.Windows.Forms.Label label1;
            this.edtRecId = new DevExpress.XtraEditors.TextEdit();
            this.remarkTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.lueEmp = new DevExpress.XtraEditors.LookUpEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.CustomerCode = new System.Windows.Forms.ComboBox();
            typeDetail_IdLabel = new System.Windows.Forms.Label();
            projCodeLabel = new System.Windows.Forms.Label();
            responsiblerLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtRecId.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueEmp.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.TypeDetail);
            // 
            // typeDetail_IdLabel
            // 
            typeDetail_IdLabel.AutoSize = true;
            typeDetail_IdLabel.Location = new System.Drawing.Point(73, 73);
            typeDetail_IdLabel.Name = "typeDetail_IdLabel";
            typeDetail_IdLabel.Size = new System.Drawing.Size(44, 12);
            this.PlatetoolTipController.SetSuperTip(typeDetail_IdLabel, null);
            typeDetail_IdLabel.TabIndex = 4;
            typeDetail_IdLabel.Text = "記錄ID:";
            // 
            // projCodeLabel
            // 
            projCodeLabel.AutoSize = true;
            projCodeLabel.Location = new System.Drawing.Point(61, 110);
            projCodeLabel.Name = "projCodeLabel";
            projCodeLabel.Size = new System.Drawing.Size(56, 12);
            this.PlatetoolTipController.SetSuperTip(projCodeLabel, null);
            projCodeLabel.TabIndex = 6;
            projCodeLabel.Text = "客人編號:";
            // 
            // responsiblerLabel
            // 
            responsiblerLabel.AutoSize = true;
            responsiblerLabel.Location = new System.Drawing.Point(61, 145);
            responsiblerLabel.Name = "responsiblerLabel";
            responsiblerLabel.Size = new System.Drawing.Size(56, 12);
            this.PlatetoolTipController.SetSuperTip(responsiblerLabel, null);
            responsiblerLabel.TabIndex = 8;
            responsiblerLabel.Text = "負責人ID:";
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(85, 226);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(32, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 10;
            remarkLabel.Text = "備註:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(49, 187);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(68, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 13;
            label1.Text = "負責人姓名:";
            // 
            // edtRecId
            // 
            this.edtRecId.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TypeDetail_Id", true));
            this.edtRecId.Location = new System.Drawing.Point(126, 68);
            this.edtRecId.Name = "edtRecId";
            this.edtRecId.Size = new System.Drawing.Size(157, 21);
            this.edtRecId.TabIndex = 5;
            // 
            // remarkTextEdit
            // 
            this.remarkTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkTextEdit.Location = new System.Drawing.Point(126, 221);
            this.remarkTextEdit.Name = "remarkTextEdit";
            this.remarkTextEdit.Size = new System.Drawing.Size(157, 21);
            this.remarkTextEdit.TabIndex = 11;
            // 
            // lueEmp
            // 
            this.lueEmp.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Responsibler", true));
            this.lueEmp.Location = new System.Drawing.Point(126, 142);
            this.lueEmp.Name = "lueEmp";
            this.lueEmp.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueEmp.Properties.NullText = "";
            this.lueEmp.Size = new System.Drawing.Size(157, 21);
            this.lueEmp.TabIndex = 12;
            this.lueEmp.EditValueChanged += new System.EventHandler(this.lueEmp_EditValueChanged);
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ResponsiblerName", true));
            this.textEdit1.Location = new System.Drawing.Point(126, 182);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(157, 21);
            this.textEdit1.TabIndex = 14;
            // 
            // CustomerCode
            // 
            this.CustomerCode.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ProjCode", true));
            this.CustomerCode.FormattingEnabled = true;
            this.CustomerCode.Location = new System.Drawing.Point(126, 107);
            this.CustomerCode.Name = "CustomerCode";
            this.CustomerCode.Size = new System.Drawing.Size(157, 20);
            this.PlatetoolTipController.SetSuperTip(this.CustomerCode, null);
            this.CustomerCode.TabIndex = 15;
            // 
            // TypeCustDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.CustomerCode);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(label1);
            this.Controls.Add(this.lueEmp);
            this.Controls.Add(remarkLabel);
            this.Controls.Add(this.remarkTextEdit);
            this.Controls.Add(responsiblerLabel);
            this.Controls.Add(projCodeLabel);
            this.Controls.Add(typeDetail_IdLabel);
            this.Controls.Add(this.edtRecId);
            this.Name = "TypeCustDetail";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.edtRecId, 0);
            this.Controls.SetChildIndex(typeDetail_IdLabel, 0);
            this.Controls.SetChildIndex(projCodeLabel, 0);
            this.Controls.SetChildIndex(responsiblerLabel, 0);
            this.Controls.SetChildIndex(this.remarkTextEdit, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            this.Controls.SetChildIndex(this.lueEmp, 0);
            this.Controls.SetChildIndex(label1, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.CustomerCode, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtRecId.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueEmp.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit edtRecId;
        private DevExpress.XtraEditors.TextEdit remarkTextEdit;
        private DevExpress.XtraEditors.LookUpEdit lueEmp;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private System.Windows.Forms.ComboBox CustomerCode;
    }
}
