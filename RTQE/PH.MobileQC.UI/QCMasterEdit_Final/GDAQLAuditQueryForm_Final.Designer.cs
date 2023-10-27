namespace PH.MobileQC.UI.QCMasterEdit_Final
{
    partial class GDAQLAuditQueryForm_Final
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
            this.StartdateEdit = new DevExpress.XtraEditors.DateEdit();
            this.comFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.DuedateEdit = new DevExpress.XtraEditors.DateEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.comWorkShop = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.StartdateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.StartdateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DuedateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DuedateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comWorkShop.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // StartdateEdit
            // 
            this.StartdateEdit.EditValue = null;
            this.StartdateEdit.Location = new System.Drawing.Point(121, 98);
            this.StartdateEdit.Name = "StartdateEdit";
            this.StartdateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.StartdateEdit.Properties.DisplayFormat.FormatString = "yyyy-MM";
            this.StartdateEdit.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.StartdateEdit.Properties.EditFormat.FormatString = "yyyy-MM";
            this.StartdateEdit.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.StartdateEdit.Properties.Mask.EditMask = "yyyy-MM";
            this.StartdateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.StartdateEdit.Size = new System.Drawing.Size(152, 21);
            this.StartdateEdit.TabIndex = 9;
            // 
            // comFactory
            // 
            this.comFactory.Location = new System.Drawing.Point(121, 54);
            this.comFactory.Name = "comFactory";
            this.comFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comFactory.Properties.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.comFactory.Size = new System.Drawing.Size(152, 21);
            this.comFactory.TabIndex = 8;
            this.comFactory.EditValueChanged += new System.EventHandler(this.comFactory_EditValueChanged);
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(148, 227);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 7;
            this.simpleButton1.Text = "Preview";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(32, 101);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(83, 14);
            this.labelControl2.TabIndex = 6;
            this.labelControl2.Text = "Start Month(*)";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(58, 57);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(57, 14);
            this.labelControl1.TabIndex = 5;
            this.labelControl1.Text = "Factory(*)";
            // 
            // DuedateEdit
            // 
            this.DuedateEdit.EditValue = null;
            this.DuedateEdit.Location = new System.Drawing.Point(121, 141);
            this.DuedateEdit.Name = "DuedateEdit";
            this.DuedateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.DuedateEdit.Properties.DisplayFormat.FormatString = "yyyy-MM";
            this.DuedateEdit.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.DuedateEdit.Properties.EditFormat.FormatString = "yyyy-MM";
            this.DuedateEdit.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.DuedateEdit.Properties.Mask.EditMask = "yyyy-MM";
            this.DuedateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.DuedateEdit.Size = new System.Drawing.Size(152, 21);
            this.DuedateEdit.TabIndex = 11;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(37, 141);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(78, 14);
            this.labelControl3.TabIndex = 10;
            this.labelControl3.Text = "Due Month(*)";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(58, 182);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(57, 14);
            this.labelControl4.TabIndex = 12;
            this.labelControl4.Text = "WorkShop";
            // 
            // comWorkShop
            // 
            this.comWorkShop.Location = new System.Drawing.Point(121, 179);
            this.comWorkShop.Name = "comWorkShop";
            this.comWorkShop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comWorkShop.Size = new System.Drawing.Size(152, 21);
            this.comWorkShop.TabIndex = 15;
            // 
            // GDAQLAuditQueryForm_Final
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.comWorkShop);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.DuedateEdit);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.StartdateEdit);
            this.Controls.Add(this.comFactory);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Name = "GDAQLAuditQueryForm_Final";
            this.Size = new System.Drawing.Size(397, 336);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.StartdateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.StartdateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DuedateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DuedateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comWorkShop.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit StartdateEdit;
        private DevExpress.XtraEditors.ComboBoxEdit comFactory;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.DateEdit DuedateEdit;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.ComboBoxEdit comWorkShop;
    }
}