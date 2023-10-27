namespace PH.BasicInfo.UI.DestinationPHKey
{
    partial class FrameListEditFrm
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
            this.pHFactoryLabel = new System.Windows.Forms.Label();
            this.pHFactoryTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.timeFrameLabel = new System.Windows.Forms.Label();
            this.timeFrameSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.remarkLabel = new System.Windows.Forms.Label();
            this.remarkMemoExEdit = new DevExpress.XtraEditors.MemoExEdit();
            this.lbTransitMode = new DevExpress.XtraEditors.LabelControl();
            this.cbTransitMode = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lbEndPoint = new System.Windows.Forms.Label();
            this.txtEndPoint = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHFactoryTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeFrameSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoExEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbTransitMode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEndPoint.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.EndPointFactoryFrame);
            // 
            // pHFactoryLabel
            // 
            this.pHFactoryLabel.Location = new System.Drawing.Point(128, 63);
            this.pHFactoryLabel.Name = "pHFactoryLabel";
            this.pHFactoryLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHFactoryLabel, null);
            this.pHFactoryLabel.TabIndex = 4;
            this.pHFactoryLabel.Text = "PHFactory:";
            this.pHFactoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // pHFactoryTextEdit
            // 
            this.pHFactoryTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PHFactory", true));
            this.pHFactoryTextEdit.Location = new System.Drawing.Point(214, 60);
            this.pHFactoryTextEdit.Name = "pHFactoryTextEdit";
            this.pHFactoryTextEdit.Size = new System.Drawing.Size(162, 21);
            this.pHFactoryTextEdit.TabIndex = 5;
            // 
            // timeFrameLabel
            // 
            this.timeFrameLabel.Location = new System.Drawing.Point(128, 158);
            this.timeFrameLabel.Name = "timeFrameLabel";
            this.timeFrameLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.timeFrameLabel, null);
            this.timeFrameLabel.TabIndex = 6;
            this.timeFrameLabel.Text = "Time Frame:";
            this.timeFrameLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // timeFrameSpinEdit
            // 
            this.timeFrameSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TimeFrame", true));
            this.timeFrameSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.timeFrameSpinEdit.Location = new System.Drawing.Point(214, 155);
            this.timeFrameSpinEdit.Name = "timeFrameSpinEdit";
            this.timeFrameSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.timeFrameSpinEdit.Size = new System.Drawing.Size(162, 21);
            this.timeFrameSpinEdit.TabIndex = 7;
            // 
            // remarkLabel
            // 
            this.remarkLabel.Location = new System.Drawing.Point(128, 190);
            this.remarkLabel.Name = "remarkLabel";
            this.remarkLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.remarkLabel, null);
            this.remarkLabel.TabIndex = 8;
            this.remarkLabel.Text = "Remark:";
            this.remarkLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // remarkMemoExEdit
            // 
            this.remarkMemoExEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoExEdit.Location = new System.Drawing.Point(214, 187);
            this.remarkMemoExEdit.Name = "remarkMemoExEdit";
            this.remarkMemoExEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.remarkMemoExEdit.Size = new System.Drawing.Size(162, 21);
            this.remarkMemoExEdit.TabIndex = 9;
            // 
            // lbTransitMode
            // 
            this.lbTransitMode.Appearance.Font = new System.Drawing.Font("SimSun", 9F);
            this.lbTransitMode.Appearance.Options.UseFont = true;
            this.lbTransitMode.Location = new System.Drawing.Point(127, 127);
            this.lbTransitMode.Name = "lbTransitMode";
            this.lbTransitMode.Size = new System.Drawing.Size(78, 12);
            this.lbTransitMode.TabIndex = 10;
            this.lbTransitMode.Text = "Transit Mode:";
            // 
            // cbTransitMode
            // 
            this.cbTransitMode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TransitMode", true));
            this.cbTransitMode.Location = new System.Drawing.Point(214, 122);
            this.cbTransitMode.Name = "cbTransitMode";
            this.cbTransitMode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbTransitMode.Size = new System.Drawing.Size(162, 21);
            this.cbTransitMode.TabIndex = 11;
            // 
            // lbEndPoint
            // 
            this.lbEndPoint.Location = new System.Drawing.Point(128, 94);
            this.lbEndPoint.Name = "lbEndPoint";
            this.lbEndPoint.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbEndPoint, null);
            this.lbEndPoint.TabIndex = 12;
            this.lbEndPoint.Text = "End Point:";
            this.lbEndPoint.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtEndPoint
            // 
            this.txtEndPoint.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EndPoint", true));
            this.txtEndPoint.Location = new System.Drawing.Point(214, 91);
            this.txtEndPoint.Name = "txtEndPoint";
            this.txtEndPoint.Size = new System.Drawing.Size(162, 21);
            this.txtEndPoint.TabIndex = 13;
            // 
            // FrameListEditFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lbEndPoint);
            this.Controls.Add(this.txtEndPoint);
            this.Controls.Add(this.cbTransitMode);
            this.Controls.Add(this.lbTransitMode);
            this.Controls.Add(this.remarkLabel);
            this.Controls.Add(this.remarkMemoExEdit);
            this.Controls.Add(this.timeFrameLabel);
            this.Controls.Add(this.timeFrameSpinEdit);
            this.Controls.Add(this.pHFactoryLabel);
            this.Controls.Add(this.pHFactoryTextEdit);
            this.Name = "FrameListEditFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.pHFactoryTextEdit, 0);
            this.Controls.SetChildIndex(this.pHFactoryLabel, 0);
            this.Controls.SetChildIndex(this.timeFrameSpinEdit, 0);
            this.Controls.SetChildIndex(this.timeFrameLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoExEdit, 0);
            this.Controls.SetChildIndex(this.remarkLabel, 0);
            this.Controls.SetChildIndex(this.lbTransitMode, 0);
            this.Controls.SetChildIndex(this.cbTransitMode, 0);
            this.Controls.SetChildIndex(this.txtEndPoint, 0);
            this.Controls.SetChildIndex(this.lbEndPoint, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHFactoryTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeFrameSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoExEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbTransitMode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEndPoint.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label pHFactoryLabel;
        private DevExpress.XtraEditors.TextEdit pHFactoryTextEdit;
        private System.Windows.Forms.Label timeFrameLabel;
        private DevExpress.XtraEditors.SpinEdit timeFrameSpinEdit;
        private System.Windows.Forms.Label remarkLabel;
        private DevExpress.XtraEditors.MemoExEdit remarkMemoExEdit;
        private DevExpress.XtraEditors.LabelControl lbTransitMode;
        private DevExpress.XtraEditors.ComboBoxEdit cbTransitMode;
        private System.Windows.Forms.Label lbEndPoint;
        private DevExpress.XtraEditors.TextEdit txtEndPoint;
    }
}
