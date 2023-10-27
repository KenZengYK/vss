namespace PH.MobileQC.UI.FinalAuditPlan
{
    partial class AQLAuditorDetailForm
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
            System.Windows.Forms.Label auditorLabel;
            System.Windows.Forms.Label label1;
            System.Windows.Forms.Label label2;
            this.ftyLabel = new System.Windows.Forms.Label();
            this.wsLabel = new System.Windows.Forms.Label();
            this.txtFty = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtWs = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lineLabel = new System.Windows.Forms.Label();
            this.txtLine = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtAuditor = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtAuditorByCust = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtCust = new DevExpress.XtraEditors.ComboBoxEdit();
            auditorLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWs.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditor.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditorByCust.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCust.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.AQLAuditor);
            // 
            // auditorLabel
            // 
            auditorLabel.AutoSize = true;
            auditorLabel.Location = new System.Drawing.Point(58, 154);
            auditorLabel.Name = "auditorLabel";
            auditorLabel.Size = new System.Drawing.Size(44, 12);
            this.PlatetoolTipController.SetSuperTip(auditorLabel, null);
            auditorLabel.TabIndex = 10;
            auditorLabel.Text = "Auditor:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(58, 221);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(79, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 12;
            label1.Text = "AuditorByCust:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(59, 187);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(label2, null);
            label2.TabIndex = 14;
            label2.Text = "Cust:";
            // 
            // ftyLabel
            // 
            this.ftyLabel.AutoSize = true;
            this.ftyLabel.Font = new System.Drawing.Font("宋体", 9F);
            this.ftyLabel.Location = new System.Drawing.Point(58, 54);
            this.ftyLabel.Name = "ftyLabel";
            this.ftyLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.ftyLabel, null);
            this.ftyLabel.TabIndex = 4;
            this.ftyLabel.Text = "Fty:";
            // 
            // wsLabel
            // 
            this.wsLabel.AutoSize = true;
            this.wsLabel.Font = new System.Drawing.Font("宋体", 9F);
            this.wsLabel.ForeColor = System.Drawing.SystemColors.ControlText;
            this.wsLabel.Location = new System.Drawing.Point(58, 85);
            this.wsLabel.Name = "wsLabel";
            this.wsLabel.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.wsLabel, null);
            this.wsLabel.TabIndex = 6;
            this.wsLabel.Text = "Ws:";
            // 
            // txtFty
            // 
            this.txtFty.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Fty", true));
            this.txtFty.Location = new System.Drawing.Point(144, 49);
            this.txtFty.Name = "txtFty";
            this.txtFty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtFty.Size = new System.Drawing.Size(100, 21);
            this.txtFty.TabIndex = 5;
            this.txtFty.SelectedValueChanged += new System.EventHandler(this.txtFty_SelectedValueChanged);
            // 
            // txtWs
            // 
            this.txtWs.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Ws", true));
            this.txtWs.Location = new System.Drawing.Point(144, 80);
            this.txtWs.Name = "txtWs";
            this.txtWs.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtWs.Size = new System.Drawing.Size(100, 21);
            this.txtWs.TabIndex = 7;
            this.txtWs.SelectedValueChanged += new System.EventHandler(this.txtWs_SelectedValueChanged);
            // 
            // lineLabel
            // 
            this.lineLabel.AutoSize = true;
            this.lineLabel.Font = new System.Drawing.Font("宋体", 9F);
            this.lineLabel.Location = new System.Drawing.Point(58, 117);
            this.lineLabel.Name = "lineLabel";
            this.lineLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.lineLabel, null);
            this.lineLabel.TabIndex = 8;
            this.lineLabel.Text = "Line:";
            // 
            // txtLine
            // 
            this.txtLine.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Line", true));
            this.txtLine.Location = new System.Drawing.Point(144, 112);
            this.txtLine.Name = "txtLine";
            this.txtLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtLine.Size = new System.Drawing.Size(100, 21);
            this.txtLine.TabIndex = 9;
            // 
            // txtAuditor
            // 
            this.txtAuditor.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Auditor", true));
            this.txtAuditor.Location = new System.Drawing.Point(143, 149);
            this.txtAuditor.Name = "txtAuditor";
            this.txtAuditor.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtAuditor.Size = new System.Drawing.Size(100, 21);
            this.txtAuditor.TabIndex = 11;
            // 
            // txtAuditorByCust
            // 
            this.txtAuditorByCust.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AuditorByCust", true));
            this.txtAuditorByCust.Location = new System.Drawing.Point(143, 216);
            this.txtAuditorByCust.Name = "txtAuditorByCust";
            this.txtAuditorByCust.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtAuditorByCust.Size = new System.Drawing.Size(100, 21);
            this.txtAuditorByCust.TabIndex = 13;
            // 
            // txtCust
            // 
            this.txtCust.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Cust", true));
            this.txtCust.Location = new System.Drawing.Point(144, 182);
            this.txtCust.Name = "txtCust";
            this.txtCust.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtCust.Size = new System.Drawing.Size(100, 21);
            this.txtCust.TabIndex = 15;
            // 
            // AQLAuditorDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(label2);
            this.Controls.Add(this.txtCust);
            this.Controls.Add(label1);
            this.Controls.Add(this.txtAuditorByCust);
            this.Controls.Add(auditorLabel);
            this.Controls.Add(this.txtAuditor);
            this.Controls.Add(this.lineLabel);
            this.Controls.Add(this.txtLine);
            this.Controls.Add(this.wsLabel);
            this.Controls.Add(this.txtWs);
            this.Controls.Add(this.ftyLabel);
            this.Controls.Add(this.txtFty);
            this.Name = "AQLAuditorDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.txtFty, 0);
            this.Controls.SetChildIndex(this.ftyLabel, 0);
            this.Controls.SetChildIndex(this.txtWs, 0);
            this.Controls.SetChildIndex(this.wsLabel, 0);
            this.Controls.SetChildIndex(this.txtLine, 0);
            this.Controls.SetChildIndex(this.lineLabel, 0);
            this.Controls.SetChildIndex(this.txtAuditor, 0);
            this.Controls.SetChildIndex(auditorLabel, 0);
            this.Controls.SetChildIndex(this.txtAuditorByCust, 0);
            this.Controls.SetChildIndex(label1, 0);
            this.Controls.SetChildIndex(this.txtCust, 0);
            this.Controls.SetChildIndex(label2, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWs.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditor.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditorByCust.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCust.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit txtFty;
        private DevExpress.XtraEditors.ComboBoxEdit txtWs;
        private System.Windows.Forms.Label ftyLabel;
        private System.Windows.Forms.Label wsLabel;
        private System.Windows.Forms.Label lineLabel;
        private DevExpress.XtraEditors.ComboBoxEdit txtLine;
        private DevExpress.XtraEditors.ComboBoxEdit txtAuditor;
        private DevExpress.XtraEditors.ComboBoxEdit txtAuditorByCust;
        private DevExpress.XtraEditors.ComboBoxEdit txtCust;
    }
}
