namespace PH.FabricInspection.UI.Main.ActionLog
{
    partial class ActionLogCompleteReasonDetailForm
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtReqNo = new System.Windows.Forms.Label();
            this.txtRemark = new System.Windows.Forms.Label();
            this.seqNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.remarkTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.txtRemarkCN = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.txtRemarkBD = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRemarkCN.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRemarkBD.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.ActionLogCompleteReason);
            // 
            // txtReqNo
            // 
            this.txtReqNo.AutoSize = true;
            this.txtReqNo.Location = new System.Drawing.Point(24, 57);
            this.txtReqNo.Name = "txtReqNo";
            this.txtReqNo.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.txtReqNo, null);
            this.txtReqNo.TabIndex = 4;
            this.txtReqNo.Text = "Code:";
            // 
            // txtRemark
            // 
            this.txtRemark.AutoSize = true;
            this.txtRemark.Location = new System.Drawing.Point(24, 85);
            this.txtRemark.Name = "txtRemark";
            this.txtRemark.Size = new System.Drawing.Size(203, 12);
            this.PlatetoolTipController.SetSuperTip(this.txtRemark, null);
            this.txtRemark.TabIndex = 6;
            this.txtRemark.Text = "Action log completed reason (EN):";
            // 
            // seqNoTextEdit
            // 
            this.seqNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SeqNo", true));
            this.seqNoTextEdit.Location = new System.Drawing.Point(235, 53);
            this.seqNoTextEdit.Name = "seqNoTextEdit";
            this.seqNoTextEdit.Size = new System.Drawing.Size(228, 21);
            this.seqNoTextEdit.TabIndex = 5;
            // 
            // remarkTextEdit
            // 
            this.remarkTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkTextEdit.Location = new System.Drawing.Point(235, 82);
            this.remarkTextEdit.Name = "remarkTextEdit";
            this.remarkTextEdit.Size = new System.Drawing.Size(484, 21);
            this.remarkTextEdit.TabIndex = 7;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(24, 118);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(203, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 8;
            this.label1.Text = "Action log completed reason (CN):";
            // 
            // txtRemarkCN
            // 
            this.txtRemarkCN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RemarkCN", true));
            this.txtRemarkCN.Location = new System.Drawing.Point(235, 115);
            this.txtRemarkCN.Name = "txtRemarkCN";
            this.txtRemarkCN.Size = new System.Drawing.Size(484, 21);
            this.txtRemarkCN.TabIndex = 9;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(24, 152);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(203, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 10;
            this.label2.Text = "Action log completed reason (BD):";
            // 
            // txtRemarkBD
            // 
            this.txtRemarkBD.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RemarkBD", true));
            this.txtRemarkBD.Location = new System.Drawing.Point(235, 149);
            this.txtRemarkBD.Name = "txtRemarkBD";
            this.txtRemarkBD.Properties.Appearance.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F);
            this.txtRemarkBD.Properties.Appearance.Options.UseFont = true;
            this.txtRemarkBD.Size = new System.Drawing.Size(484, 21);
            this.txtRemarkBD.TabIndex = 11;
            // 
            // ActionLogCompleteReasonDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtRemarkBD);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtRemarkCN);
            this.Controls.Add(this.txtRemark);
            this.Controls.Add(this.remarkTextEdit);
            this.Controls.Add(this.txtReqNo);
            this.Controls.Add(this.seqNoTextEdit);
            this.Name = "ActionLogCompleteReasonDetailForm";
            this.Size = new System.Drawing.Size(1000, 274);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.seqNoTextEdit, 0);
            this.Controls.SetChildIndex(this.txtReqNo, 0);
            this.Controls.SetChildIndex(this.remarkTextEdit, 0);
            this.Controls.SetChildIndex(this.txtRemark, 0);
            this.Controls.SetChildIndex(this.txtRemarkCN, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.txtRemarkBD, 0);
            this.Controls.SetChildIndex(this.label2, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRemarkCN.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRemarkBD.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit seqNoTextEdit;
        private DevExpress.XtraEditors.TextEdit remarkTextEdit;
        private System.Windows.Forms.Label txtReqNo;
        private System.Windows.Forms.Label txtRemark;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.TextEdit txtRemarkCN;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.TextEdit txtRemarkBD;
    }
}
