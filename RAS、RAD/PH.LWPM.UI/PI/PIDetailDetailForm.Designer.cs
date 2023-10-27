namespace PH.LWPM.UI.PI
{
    partial class PIDetailDetailForm
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
            System.Windows.Forms.Label itemLabel;
            System.Windows.Forms.Label lbSortID;
            System.Windows.Forms.Label brandLabel;
            System.Windows.Forms.Label modelNoLabel;
            System.Windows.Forms.Label nameLabel;
            System.Windows.Forms.Label hSCodeLabel;
            System.Windows.Forms.Label qtyLabel;
            System.Windows.Forms.Label unitPriceLabel;
            System.Windows.Forms.Label label1;
            this.itemSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.txtSortID = new DevExpress.XtraEditors.SpinEdit();
            this.brandTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.modelNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.hSCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.qtySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.unitPriceSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            itemLabel = new System.Windows.Forms.Label();
            lbSortID = new System.Windows.Forms.Label();
            brandLabel = new System.Windows.Forms.Label();
            modelNoLabel = new System.Windows.Forms.Label();
            nameLabel = new System.Windows.Forms.Label();
            hSCodeLabel = new System.Windows.Forms.Label();
            qtyLabel = new System.Windows.Forms.Label();
            unitPriceLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSortID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.brandTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.modelNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hSCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.unitPriceSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PIDetail);
            // 
            // itemLabel
            // 
            itemLabel.AutoSize = true;
            itemLabel.Location = new System.Drawing.Point(46, 66);
            itemLabel.Name = "itemLabel";
            itemLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(itemLabel, null);
            itemLabel.TabIndex = 4;
            itemLabel.Text = "Item:";
            // 
            // lbSortID
            // 
            lbSortID.AutoSize = true;
            lbSortID.Location = new System.Drawing.Point(46, 97);
            lbSortID.Name = "lbSortID";
            lbSortID.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(lbSortID, null);
            lbSortID.TabIndex = 6;
            lbSortID.Text = "Sort ID:";
            // 
            // brandLabel
            // 
            brandLabel.AutoSize = true;
            brandLabel.Location = new System.Drawing.Point(46, 130);
            brandLabel.Name = "brandLabel";
            brandLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(brandLabel, null);
            brandLabel.TabIndex = 8;
            brandLabel.Text = "Brand:";
            // 
            // modelNoLabel
            // 
            modelNoLabel.AutoSize = true;
            modelNoLabel.Location = new System.Drawing.Point(46, 164);
            modelNoLabel.Name = "modelNoLabel";
            modelNoLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(modelNoLabel, null);
            modelNoLabel.TabIndex = 10;
            modelNoLabel.Text = "Model No:";
            // 
            // nameLabel
            // 
            nameLabel.AutoSize = true;
            nameLabel.Location = new System.Drawing.Point(46, 196);
            nameLabel.Name = "nameLabel";
            nameLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(nameLabel, null);
            nameLabel.TabIndex = 12;
            nameLabel.Text = "Name:";
            // 
            // hSCodeLabel
            // 
            hSCodeLabel.AutoSize = true;
            hSCodeLabel.Location = new System.Drawing.Point(46, 226);
            hSCodeLabel.Name = "hSCodeLabel";
            hSCodeLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(hSCodeLabel, null);
            hSCodeLabel.TabIndex = 14;
            hSCodeLabel.Text = "HSCode:";
            // 
            // qtyLabel
            // 
            qtyLabel.AutoSize = true;
            qtyLabel.Location = new System.Drawing.Point(46, 254);
            qtyLabel.Name = "qtyLabel";
            qtyLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(qtyLabel, null);
            qtyLabel.TabIndex = 16;
            qtyLabel.Text = "Qty:";
            // 
            // unitPriceLabel
            // 
            unitPriceLabel.AutoSize = true;
            unitPriceLabel.Location = new System.Drawing.Point(46, 287);
            unitPriceLabel.Name = "unitPriceLabel";
            unitPriceLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(unitPriceLabel, null);
            unitPriceLabel.TabIndex = 18;
            unitPriceLabel.Text = "Unit Price:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(457, 64);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 20;
            label1.Text = "Description:";
            // 
            // itemSpinEdit
            // 
            this.itemSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Item", true));
            this.itemSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.itemSpinEdit.Location = new System.Drawing.Point(123, 61);
            this.itemSpinEdit.Name = "itemSpinEdit";
            this.itemSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.itemSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.itemSpinEdit.TabIndex = 5;
            // 
            // txtSortID
            // 
            this.txtSortID.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.txtSortID.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.txtSortID.Location = new System.Drawing.Point(123, 94);
            this.txtSortID.Name = "txtSortID";
            this.txtSortID.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtSortID.Size = new System.Drawing.Size(100, 21);
            this.txtSortID.TabIndex = 7;
            // 
            // brandTextEdit
            // 
            this.brandTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Brand", true));
            this.brandTextEdit.Location = new System.Drawing.Point(123, 127);
            this.brandTextEdit.Name = "brandTextEdit";
            this.brandTextEdit.Size = new System.Drawing.Size(300, 21);
            this.brandTextEdit.TabIndex = 9;
            // 
            // modelNoTextEdit
            // 
            this.modelNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ModelNo", true));
            this.modelNoTextEdit.Location = new System.Drawing.Point(123, 161);
            this.modelNoTextEdit.Name = "modelNoTextEdit";
            this.modelNoTextEdit.Size = new System.Drawing.Size(300, 21);
            this.modelNoTextEdit.TabIndex = 11;
            // 
            // nameTextEdit
            // 
            this.nameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name", true));
            this.nameTextEdit.Location = new System.Drawing.Point(123, 193);
            this.nameTextEdit.Name = "nameTextEdit";
            this.nameTextEdit.Size = new System.Drawing.Size(300, 21);
            this.nameTextEdit.TabIndex = 13;
            // 
            // hSCodeTextEdit
            // 
            this.hSCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSCode", true));
            this.hSCodeTextEdit.Location = new System.Drawing.Point(123, 223);
            this.hSCodeTextEdit.Name = "hSCodeTextEdit";
            this.hSCodeTextEdit.Size = new System.Drawing.Size(300, 21);
            this.hSCodeTextEdit.TabIndex = 15;
            // 
            // qtySpinEdit
            // 
            this.qtySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Qty", true));
            this.qtySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.qtySpinEdit.Location = new System.Drawing.Point(123, 254);
            this.qtySpinEdit.Name = "qtySpinEdit";
            this.qtySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.qtySpinEdit.Size = new System.Drawing.Size(100, 21);
            this.qtySpinEdit.TabIndex = 17;
            // 
            // unitPriceSpinEdit
            // 
            this.unitPriceSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UnitPrice", true));
            this.unitPriceSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.unitPriceSpinEdit.Location = new System.Drawing.Point(123, 284);
            this.unitPriceSpinEdit.Name = "unitPriceSpinEdit";
            this.unitPriceSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.unitPriceSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.unitPriceSpinEdit.TabIndex = 19;
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.memoEdit1.Location = new System.Drawing.Point(540, 61);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(454, 244);
            this.memoEdit1.TabIndex = 21;
            // 
            // PIDetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(label1);
            this.Controls.Add(unitPriceLabel);
            this.Controls.Add(this.unitPriceSpinEdit);
            this.Controls.Add(qtyLabel);
            this.Controls.Add(this.qtySpinEdit);
            this.Controls.Add(hSCodeLabel);
            this.Controls.Add(this.hSCodeTextEdit);
            this.Controls.Add(nameLabel);
            this.Controls.Add(this.nameTextEdit);
            this.Controls.Add(modelNoLabel);
            this.Controls.Add(this.modelNoTextEdit);
            this.Controls.Add(brandLabel);
            this.Controls.Add(this.brandTextEdit);
            this.Controls.Add(lbSortID);
            this.Controls.Add(this.txtSortID);
            this.Controls.Add(itemLabel);
            this.Controls.Add(this.itemSpinEdit);
            this.Name = "PIDetailDetailForm";
            this.Size = new System.Drawing.Size(1085, 403);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.itemSpinEdit, 0);
            this.Controls.SetChildIndex(itemLabel, 0);
            this.Controls.SetChildIndex(this.txtSortID, 0);
            this.Controls.SetChildIndex(lbSortID, 0);
            this.Controls.SetChildIndex(this.brandTextEdit, 0);
            this.Controls.SetChildIndex(brandLabel, 0);
            this.Controls.SetChildIndex(this.modelNoTextEdit, 0);
            this.Controls.SetChildIndex(modelNoLabel, 0);
            this.Controls.SetChildIndex(this.nameTextEdit, 0);
            this.Controls.SetChildIndex(nameLabel, 0);
            this.Controls.SetChildIndex(this.hSCodeTextEdit, 0);
            this.Controls.SetChildIndex(hSCodeLabel, 0);
            this.Controls.SetChildIndex(this.qtySpinEdit, 0);
            this.Controls.SetChildIndex(qtyLabel, 0);
            this.Controls.SetChildIndex(this.unitPriceSpinEdit, 0);
            this.Controls.SetChildIndex(unitPriceLabel, 0);
            this.Controls.SetChildIndex(label1, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSortID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.brandTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.modelNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hSCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.unitPriceSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit itemSpinEdit;
        private DevExpress.XtraEditors.SpinEdit txtSortID;
        private DevExpress.XtraEditors.TextEdit brandTextEdit;
        private DevExpress.XtraEditors.TextEdit modelNoTextEdit;
        private DevExpress.XtraEditors.TextEdit nameTextEdit;
        private DevExpress.XtraEditors.TextEdit hSCodeTextEdit;
        private DevExpress.XtraEditors.SpinEdit qtySpinEdit;
        private DevExpress.XtraEditors.SpinEdit unitPriceSpinEdit;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
    }
}
