namespace PH.LWPM.UI.LB4
{
    partial class BatchAddForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.cbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbLine = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lineCodeLabel = new System.Windows.Forms.Label();
            this.factoryLabel = new System.Windows.Forms.Label();
            this.bindingSourceLWPM = new System.Windows.Forms.BindingSource(this.components);
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.label1 = new System.Windows.Forms.Label();
            this.edtQNCount = new DevExpress.XtraEditors.SpinEdit();
            this.cbWorkshop = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceLWPM)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQNCount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWorkshop.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // cbFactory
            // 
            this.cbFactory.Location = new System.Drawing.Point(131, 16);
            this.cbFactory.Name = "cbFactory";
            this.cbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbFactory.Size = new System.Drawing.Size(100, 21);
            this.cbFactory.TabIndex = 50;
            this.cbFactory.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.cbFactory_CloseUp);
            // 
            // cbLine
            // 
            this.cbLine.Location = new System.Drawing.Point(131, 87);
            this.cbLine.Name = "cbLine";
            this.cbLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbLine.Properties.ImmediatePopup = true;
            this.cbLine.Size = new System.Drawing.Size(100, 21);
            this.cbLine.TabIndex = 49;
            // 
            // lineCodeLabel
            // 
            this.lineCodeLabel.AutoSize = true;
            this.lineCodeLabel.Location = new System.Drawing.Point(90, 90);
            this.lineCodeLabel.Name = "lineCodeLabel";
            this.lineCodeLabel.Size = new System.Drawing.Size(33, 14);
            this.lineCodeLabel.TabIndex = 48;
            this.lineCodeLabel.Text = "Line:";
            this.lineCodeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // factoryLabel
            // 
            this.factoryLabel.AutoSize = true;
            this.factoryLabel.Location = new System.Drawing.Point(72, 18);
            this.factoryLabel.Name = "factoryLabel";
            this.factoryLabel.Size = new System.Drawing.Size(51, 14);
            this.factoryLabel.TabIndex = 47;
            this.factoryLabel.Text = "Factory:";
            this.factoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(61, 188);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 52;
            this.btnOK.Text = "OK";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(170, 188);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 53;
            this.btnCancel.Text = "Cancel";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(58, 128);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 14);
            this.label1.TabIndex = 54;
            this.label1.Text = "QN Count:";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // edtQNCount
            // 
            this.edtQNCount.EditValue = new decimal(new int[] {
            10,
            0,
            0,
            0});
            this.edtQNCount.Location = new System.Drawing.Point(131, 126);
            this.edtQNCount.Name = "edtQNCount";
            this.edtQNCount.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtQNCount.Properties.IsFloatValue = false;
            this.edtQNCount.Properties.Mask.EditMask = "N00";
            this.edtQNCount.Size = new System.Drawing.Size(67, 21);
            this.edtQNCount.TabIndex = 55;
            // 
            // cbWorkshop
            // 
            this.cbWorkshop.Location = new System.Drawing.Point(131, 50);
            this.cbWorkshop.Name = "cbWorkshop";
            this.cbWorkshop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbWorkshop.Size = new System.Drawing.Size(100, 21);
            this.cbWorkshop.TabIndex = 57;
            this.cbWorkshop.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.cbWorkshop_CloseUp);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(57, 54);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(66, 14);
            this.label2.TabIndex = 58;
            this.label2.Text = "Workshop:";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // BatchAddForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(332, 233);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cbWorkshop);
            this.Controls.Add(this.edtQNCount);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.cbFactory);
            this.Controls.Add(this.cbLine);
            this.Controls.Add(this.lineCodeLabel);
            this.Controls.Add(this.factoryLabel);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "BatchAddForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Batch Add QN";
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceLWPM)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtQNCount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWorkshop.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit cbFactory;
        private DevExpress.XtraEditors.ComboBoxEdit cbLine;
        private System.Windows.Forms.Label lineCodeLabel;
        private System.Windows.Forms.Label factoryLabel;
        private System.Windows.Forms.BindingSource bindingSourceLWPM;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.SpinEdit edtQNCount;
        private DevExpress.XtraEditors.ComboBoxEdit cbWorkshop;
        private System.Windows.Forms.Label label2;
    }
}