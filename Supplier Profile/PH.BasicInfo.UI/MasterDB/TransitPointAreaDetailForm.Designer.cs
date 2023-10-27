namespace PH.BasicInfo.UI.MasterDB
{
    partial class TransitPointAreaDetailForm
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
            System.Windows.Forms.Label seqNoLabel;
            System.Windows.Forms.Label transitPoint_AreaLabel;
            System.Windows.Forms.Label cargoReceivingLabel;
            System.Windows.Forms.Label transitModeLabel;
            System.Windows.Forms.Label timeFrameLabel;
            System.Windows.Forms.Label areaNoLabel;
            this.seqNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.transitPoint_AreaTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.timeFrameSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.cargoReceivingTextEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.transitModeTextEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.areaNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            seqNoLabel = new System.Windows.Forms.Label();
            transitPoint_AreaLabel = new System.Windows.Forms.Label();
            cargoReceivingLabel = new System.Windows.Forms.Label();
            transitModeLabel = new System.Windows.Forms.Label();
            timeFrameLabel = new System.Windows.Forms.Label();
            areaNoLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitPoint_AreaTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeFrameSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cargoReceivingTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitModeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.areaNoTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.TransitPointArea);
            // 
            // seqNoLabel
            // 
            seqNoLabel.AutoSize = true;
            seqNoLabel.Location = new System.Drawing.Point(186, 56);
            seqNoLabel.Name = "seqNoLabel";
            seqNoLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(seqNoLabel, null);
            seqNoLabel.TabIndex = 4;
            seqNoLabel.Text = "Seq No:";
            // 
            // transitPoint_AreaLabel
            // 
            transitPoint_AreaLabel.AutoSize = true;
            transitPoint_AreaLabel.Location = new System.Drawing.Point(114, 87);
            transitPoint_AreaLabel.Name = "transitPoint_AreaLabel";
            transitPoint_AreaLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(transitPoint_AreaLabel, null);
            transitPoint_AreaLabel.TabIndex = 6;
            transitPoint_AreaLabel.Text = "Transit Point Area:";
            // 
            // cargoReceivingLabel
            // 
            cargoReceivingLabel.AutoSize = true;
            cargoReceivingLabel.Location = new System.Drawing.Point(36, 143);
            cargoReceivingLabel.Name = "cargoReceivingLabel";
            cargoReceivingLabel.Size = new System.Drawing.Size(197, 12);
            this.PlatetoolTipController.SetSuperTip(cargoReceivingLabel, null);
            cargoReceivingLabel.TabIndex = 10;
            cargoReceivingLabel.Text = "Cargo Receiving && Consolidation:";
            // 
            // transitModeLabel
            // 
            transitModeLabel.AutoSize = true;
            transitModeLabel.Location = new System.Drawing.Point(150, 173);
            transitModeLabel.Name = "transitModeLabel";
            transitModeLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(transitModeLabel, null);
            transitModeLabel.TabIndex = 12;
            transitModeLabel.Text = "Transit Mode:";
            // 
            // timeFrameLabel
            // 
            timeFrameLabel.AutoSize = true;
            timeFrameLabel.Location = new System.Drawing.Point(162, 205);
            timeFrameLabel.Name = "timeFrameLabel";
            timeFrameLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(timeFrameLabel, null);
            timeFrameLabel.TabIndex = 14;
            timeFrameLabel.Text = "Time Frame:";
            // 
            // seqNoTextEdit
            // 
            this.seqNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SeqNo", true));
            this.seqNoTextEdit.Location = new System.Drawing.Point(244, 53);
            this.seqNoTextEdit.Name = "seqNoTextEdit";
            this.seqNoTextEdit.Size = new System.Drawing.Size(205, 21);
            this.seqNoTextEdit.TabIndex = 5;
            // 
            // transitPoint_AreaTextEdit
            // 
            this.transitPoint_AreaTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TransitPoint_Area", true));
            this.transitPoint_AreaTextEdit.Location = new System.Drawing.Point(244, 82);
            this.transitPoint_AreaTextEdit.Name = "transitPoint_AreaTextEdit";
            this.transitPoint_AreaTextEdit.Size = new System.Drawing.Size(205, 21);
            this.transitPoint_AreaTextEdit.TabIndex = 7;
            // 
            // timeFrameSpinEdit
            // 
            this.timeFrameSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TimeFrame", true));
            this.timeFrameSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.timeFrameSpinEdit.Location = new System.Drawing.Point(244, 201);
            this.timeFrameSpinEdit.Name = "timeFrameSpinEdit";
            this.timeFrameSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.timeFrameSpinEdit.Size = new System.Drawing.Size(205, 21);
            this.timeFrameSpinEdit.TabIndex = 15;
            // 
            // cargoReceivingTextEdit
            // 
            this.cargoReceivingTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CargoReceiving", true));
            this.cargoReceivingTextEdit.Location = new System.Drawing.Point(244, 139);
            this.cargoReceivingTextEdit.Name = "cargoReceivingTextEdit";
            this.cargoReceivingTextEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cargoReceivingTextEdit.Properties.Items.AddRange(new object[] {
            "HK",
            "SL",
            "CL"});
            this.cargoReceivingTextEdit.Size = new System.Drawing.Size(205, 21);
            this.cargoReceivingTextEdit.TabIndex = 16;
            // 
            // transitModeTextEdit
            // 
            this.transitModeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TransitMode", true));
            this.transitModeTextEdit.Location = new System.Drawing.Point(244, 169);
            this.transitModeTextEdit.Name = "transitModeTextEdit";
            this.transitModeTextEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.transitModeTextEdit.Size = new System.Drawing.Size(205, 21);
            this.transitModeTextEdit.TabIndex = 17;
            // 
            // areaNoLabel
            // 
            areaNoLabel.AutoSize = true;
            areaNoLabel.Location = new System.Drawing.Point(180, 116);
            areaNoLabel.Name = "areaNoLabel";
            areaNoLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(areaNoLabel, null);
            areaNoLabel.TabIndex = 17;
            areaNoLabel.Text = "Area No:";
            // 
            // areaNoTextEdit
            // 
            this.areaNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AreaNo", true));
            this.areaNoTextEdit.Location = new System.Drawing.Point(244, 110);
            this.areaNoTextEdit.Name = "areaNoTextEdit";
            this.areaNoTextEdit.Size = new System.Drawing.Size(205, 21);
            this.areaNoTextEdit.TabIndex = 18;
            // 
            // TransitPointAreaDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(areaNoLabel);
            this.Controls.Add(this.areaNoTextEdit);
            this.Controls.Add(this.transitModeTextEdit);
            this.Controls.Add(this.cargoReceivingTextEdit);
            this.Controls.Add(timeFrameLabel);
            this.Controls.Add(this.timeFrameSpinEdit);
            this.Controls.Add(transitModeLabel);
            this.Controls.Add(cargoReceivingLabel);
            this.Controls.Add(transitPoint_AreaLabel);
            this.Controls.Add(this.transitPoint_AreaTextEdit);
            this.Controls.Add(seqNoLabel);
            this.Controls.Add(this.seqNoTextEdit);
            this.Name = "TransitPointAreaDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.seqNoTextEdit, 0);
            this.Controls.SetChildIndex(seqNoLabel, 0);
            this.Controls.SetChildIndex(this.transitPoint_AreaTextEdit, 0);
            this.Controls.SetChildIndex(transitPoint_AreaLabel, 0);
            this.Controls.SetChildIndex(cargoReceivingLabel, 0);
            this.Controls.SetChildIndex(transitModeLabel, 0);
            this.Controls.SetChildIndex(this.timeFrameSpinEdit, 0);
            this.Controls.SetChildIndex(timeFrameLabel, 0);
            this.Controls.SetChildIndex(this.cargoReceivingTextEdit, 0);
            this.Controls.SetChildIndex(this.transitModeTextEdit, 0);
            this.Controls.SetChildIndex(this.areaNoTextEdit, 0);
            this.Controls.SetChildIndex(areaNoLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitPoint_AreaTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeFrameSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cargoReceivingTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitModeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.areaNoTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit seqNoTextEdit;
        private DevExpress.XtraEditors.TextEdit transitPoint_AreaTextEdit;
        private DevExpress.XtraEditors.SpinEdit timeFrameSpinEdit;
        private DevExpress.XtraEditors.ComboBoxEdit cargoReceivingTextEdit;
        private DevExpress.XtraEditors.ComboBoxEdit transitModeTextEdit;
        private DevExpress.XtraEditors.TextEdit areaNoTextEdit;
    }
}
