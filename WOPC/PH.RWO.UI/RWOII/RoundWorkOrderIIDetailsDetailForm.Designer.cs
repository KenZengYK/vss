namespace PH.RWO.UI
{
    partial class RoundWorkOrderIIDetailsDetailForm
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label ratioLabel;
            this.txt_BulkQty = new DevExpress.XtraEditors.TextEdit();
            this.lable_BulkQty = new System.Windows.Forms.Label();
            this.txt_Size = new DevExpress.XtraEditors.TextEdit();
            this.lable_Size = new System.Windows.Forms.Label();
            this.txt_Cup = new DevExpress.XtraEditors.TextEdit();
            this.lable_Cup = new System.Windows.Forms.Label();
            this.txt_ColorCode = new DevExpress.XtraEditors.TextEdit();
            this.lable_ColorCode = new System.Windows.Forms.Label();
            this.roundWorkOrderDetailBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.ratioSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            ratioLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_BulkQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Size.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Cup.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_ColorCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.roundWorkOrderDetailBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ratioSpinEdit.Properties)).BeginInit();
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
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // ratioLabel
            // 
            ratioLabel.AutoSize = true;
            ratioLabel.Location = new System.Drawing.Point(87, 140);
            ratioLabel.Name = "ratioLabel";
            ratioLabel.Size = new System.Drawing.Size(33, 12);
            this.PlatetoolTipController.SetSuperTip(ratioLabel, null);
            ratioLabel.TabIndex = 108;
            ratioLabel.Text = "Ratio:";
            // 
            // txt_BulkQty
            // 
            this.txt_BulkQty.Location = new System.Drawing.Point(150, 171);
            this.txt_BulkQty.Name = "txt_BulkQty";
            this.txt_BulkQty.Properties.ReadOnly = true;
            this.txt_BulkQty.Size = new System.Drawing.Size(146, 21);
            this.txt_BulkQty.TabIndex = 108;
            this.txt_BulkQty.Tag = "BulkQty";
            // 
            // lable_BulkQty
            // 
            this.lable_BulkQty.AutoSize = true;
            this.lable_BulkQty.Location = new System.Drawing.Point(69, 174);
            this.lable_BulkQty.Name = "lable_BulkQty";
            this.lable_BulkQty.Size = new System.Drawing.Size(51, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_BulkQty, null);
            this.lable_BulkQty.TabIndex = 97;
            this.lable_BulkQty.Text = "Bulk Qty:";
            // 
            // txt_Size
            // 
            this.txt_Size.Location = new System.Drawing.Point(150, 106);
            this.txt_Size.Name = "txt_Size";
            this.txt_Size.Size = new System.Drawing.Size(148, 21);
            this.txt_Size.TabIndex = 107;
            this.txt_Size.Tag = "Size";
            // 
            // lable_Size
            // 
            this.lable_Size.AutoSize = true;
            this.lable_Size.Location = new System.Drawing.Point(93, 109);
            this.lable_Size.Name = "lable_Size";
            this.lable_Size.Size = new System.Drawing.Size(27, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_Size, null);
            this.lable_Size.TabIndex = 96;
            this.lable_Size.Text = "Size:";
            // 
            // txt_Cup
            // 
            this.txt_Cup.Location = new System.Drawing.Point(150, 79);
            this.txt_Cup.Name = "txt_Cup";
            this.txt_Cup.Size = new System.Drawing.Size(148, 21);
            this.txt_Cup.TabIndex = 106;
            this.txt_Cup.Tag = "Cup";
            // 
            // lable_Cup
            // 
            this.lable_Cup.AutoSize = true;
            this.lable_Cup.Location = new System.Drawing.Point(92, 82);
            this.lable_Cup.Name = "lable_Cup";
            this.lable_Cup.Size = new System.Drawing.Size(28, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_Cup, null);
            this.lable_Cup.TabIndex = 95;
            this.lable_Cup.Text = "Cup:";
            // 
            // txt_ColorCode
            // 
            this.txt_ColorCode.Location = new System.Drawing.Point(150, 52);
            this.txt_ColorCode.Name = "txt_ColorCode";
            this.txt_ColorCode.Size = new System.Drawing.Size(148, 21);
            this.txt_ColorCode.TabIndex = 105;
            this.txt_ColorCode.Tag = "ColorCode";
            // 
            // lable_ColorCode
            // 
            this.lable_ColorCode.AutoSize = true;
            this.lable_ColorCode.Location = new System.Drawing.Point(33, 55);
            this.lable_ColorCode.Name = "lable_ColorCode";
            this.lable_ColorCode.Size = new System.Drawing.Size(87, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_ColorCode, null);
            this.lable_ColorCode.TabIndex = 94;
            this.lable_ColorCode.Text = "ERP Color Code:";
            // 
            // roundWorkOrderDetailBindingSource
            // 
            this.roundWorkOrderDetailBindingSource.DataSource = typeof(PH.RWO.BO.RoundWorkOrderDetail);
            // 
            // ratioSpinEdit
            // 
            this.ratioSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.roundWorkOrderDetailBindingSource, "Ratio", true));
            this.ratioSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.ratioSpinEdit.Location = new System.Drawing.Point(150, 135);
            this.ratioSpinEdit.Name = "ratioSpinEdit";
            this.ratioSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.ratioSpinEdit.Size = new System.Drawing.Size(146, 21);
            this.ratioSpinEdit.TabIndex = 109;
            // 
            // RoundWorkOrderIIDetailsDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(ratioLabel);
            this.Controls.Add(this.ratioSpinEdit);
            this.Controls.Add(this.txt_BulkQty);
            this.Controls.Add(this.lable_BulkQty);
            this.Controls.Add(this.txt_Size);
            this.Controls.Add(this.lable_Size);
            this.Controls.Add(this.txt_Cup);
            this.Controls.Add(this.lable_Cup);
            this.Controls.Add(this.txt_ColorCode);
            this.Controls.Add(this.lable_ColorCode);
            this.Name = "RoundWorkOrderIIDetailsDetailForm";
            this.Size = new System.Drawing.Size(1055, 505);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.lable_ColorCode, 0);
            this.Controls.SetChildIndex(this.txt_ColorCode, 0);
            this.Controls.SetChildIndex(this.lable_Cup, 0);
            this.Controls.SetChildIndex(this.txt_Cup, 0);
            this.Controls.SetChildIndex(this.lable_Size, 0);
            this.Controls.SetChildIndex(this.txt_Size, 0);
            this.Controls.SetChildIndex(this.lable_BulkQty, 0);
            this.Controls.SetChildIndex(this.txt_BulkQty, 0);
            this.Controls.SetChildIndex(this.ratioSpinEdit, 0);
            this.Controls.SetChildIndex(ratioLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_BulkQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Size.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Cup.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_ColorCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.roundWorkOrderDetailBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ratioSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit txt_BulkQty;
        private System.Windows.Forms.Label lable_BulkQty;
        private DevExpress.XtraEditors.TextEdit txt_Size;
        private System.Windows.Forms.Label lable_Size;
        private DevExpress.XtraEditors.TextEdit txt_Cup;
        private System.Windows.Forms.Label lable_Cup;
        private DevExpress.XtraEditors.TextEdit txt_ColorCode;
        private System.Windows.Forms.Label lable_ColorCode;
        private System.Windows.Forms.BindingSource roundWorkOrderDetailBindingSource;
        private DevExpress.XtraEditors.SpinEdit ratioSpinEdit;


    }
}
