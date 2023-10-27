namespace PH.BasicInfo.UI.TimeElement
{
    partial class ShipmentLeadtimeDetailForm
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
            System.Windows.Forms.Label materialGroupLabel;
            System.Windows.Forms.Label shipModeLabel;
            System.Windows.Forms.Label factoryLabel;
            System.Windows.Forms.Label leadtimeLabel;
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.lookUpEdit1 = new DevExpress.XtraEditors.LookUpEdit();
            this.lookUpEdit2 = new DevExpress.XtraEditors.LookUpEdit();
            this.lookUpEdit3 = new DevExpress.XtraEditors.LookUpEdit();
            materialGroupLabel = new System.Windows.Forms.Label();
            shipModeLabel = new System.Windows.Forms.Label();
            factoryLabel = new System.Windows.Forms.Label();
            leadtimeLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit3.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.ShipmentLeadtime);
            // 
            // materialGroupLabel
            // 
            materialGroupLabel.Location = new System.Drawing.Point(70, 66);
            materialGroupLabel.Name = "materialGroupLabel";
            materialGroupLabel.Size = new System.Drawing.Size(118, 12);
            this.PlatetoolTipController.SetSuperTip(materialGroupLabel, null);
            materialGroupLabel.TabIndex = 16;
            materialGroupLabel.Text = "Material Group:";
            materialGroupLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // shipModeLabel
            // 
            shipModeLabel.Location = new System.Drawing.Point(70, 95);
            shipModeLabel.Name = "shipModeLabel";
            shipModeLabel.Size = new System.Drawing.Size(118, 12);
            this.PlatetoolTipController.SetSuperTip(shipModeLabel, null);
            shipModeLabel.TabIndex = 18;
            shipModeLabel.Text = "Transit Mode:";
            shipModeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // factoryLabel
            // 
            factoryLabel.Location = new System.Drawing.Point(70, 125);
            factoryLabel.Name = "factoryLabel";
            factoryLabel.Size = new System.Drawing.Size(118, 12);
            this.PlatetoolTipController.SetSuperTip(factoryLabel, null);
            factoryLabel.TabIndex = 20;
            factoryLabel.Text = "Buyer Production Site:";
            factoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // leadtimeLabel
            // 
            leadtimeLabel.Location = new System.Drawing.Point(70, 155);
            leadtimeLabel.Name = "leadtimeLabel";
            leadtimeLabel.Size = new System.Drawing.Size(118, 16);
            this.PlatetoolTipController.SetSuperTip(leadtimeLabel, null);
            leadtimeLabel.TabIndex = 22;
            leadtimeLabel.Text = "Leadtime:";
            leadtimeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Leadtime", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.EnterMoveNextControl = true;
            this.spinEdit1.Location = new System.Drawing.Point(194, 150);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Size = new System.Drawing.Size(100, 21);
            this.spinEdit1.TabIndex = 4;
            this.spinEdit1.Tag = "";
            // 
            // lookUpEdit1
            // 
            this.lookUpEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MaterialGroup", true));
            this.lookUpEdit1.EnterMoveNextControl = true;
            this.lookUpEdit1.Location = new System.Drawing.Point(194, 61);
            this.lookUpEdit1.Name = "lookUpEdit1";
            this.lookUpEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit1.Properties.NullText = "";
            this.lookUpEdit1.Size = new System.Drawing.Size(100, 21);
            this.lookUpEdit1.TabIndex = 1;
            this.lookUpEdit1.Tag = "";
            // 
            // lookUpEdit2
            // 
            this.lookUpEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ShipMode", true));
            this.lookUpEdit2.EnterMoveNextControl = true;
            this.lookUpEdit2.Location = new System.Drawing.Point(194, 90);
            this.lookUpEdit2.Name = "lookUpEdit2";
            this.lookUpEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit2.Properties.NullText = "";
            this.lookUpEdit2.Size = new System.Drawing.Size(100, 21);
            this.lookUpEdit2.TabIndex = 2;
            this.lookUpEdit2.Tag = "";
            // 
            // lookUpEdit3
            // 
            this.lookUpEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Factory", true));
            this.lookUpEdit3.EnterMoveNextControl = true;
            this.lookUpEdit3.Location = new System.Drawing.Point(194, 120);
            this.lookUpEdit3.Name = "lookUpEdit3";
            this.lookUpEdit3.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit3.Properties.NullText = "";
            this.lookUpEdit3.Size = new System.Drawing.Size(100, 21);
            this.lookUpEdit3.TabIndex = 3;
            this.lookUpEdit3.Tag = "";
            // 
            // ShipmentLeadtimeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(leadtimeLabel);
            this.Controls.Add(factoryLabel);
            this.Controls.Add(shipModeLabel);
            this.Controls.Add(materialGroupLabel);
            this.Controls.Add(this.lookUpEdit3);
            this.Controls.Add(this.lookUpEdit2);
            this.Controls.Add(this.lookUpEdit1);
            this.Controls.Add(this.spinEdit1);
            this.Name = "ShipmentLeadtimeDetailForm";
            this.Size = new System.Drawing.Size(657, 322);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.MIDc_ShipmentLeadtimeDetailForm_Load);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(this.lookUpEdit1, 0);
            this.Controls.SetChildIndex(this.lookUpEdit2, 0);
            this.Controls.SetChildIndex(this.lookUpEdit3, 0);
            this.Controls.SetChildIndex(materialGroupLabel, 0);
            this.Controls.SetChildIndex(shipModeLabel, 0);
            this.Controls.SetChildIndex(factoryLabel, 0);
            this.Controls.SetChildIndex(leadtimeLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit3.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit spinEdit1;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit1;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit2;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit3;
    }
}
