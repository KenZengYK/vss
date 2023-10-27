namespace PH.RWO.UI
{
    partial class DateRangeForm
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
            this.label1 = new System.Windows.Forms.Label();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.label4 = new System.Windows.Forms.Label();
            this.cbCustomer = new DevExpress.XtraEditors.ComboBoxEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.deWOCompletedTo = new DevExpress.XtraEditors.DateEdit();
            this.deWOCompletedFrom = new DevExpress.XtraEditors.DateEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.rgStatusGroupBy = new DevExpress.XtraEditors.RadioGroup();
            this.label3 = new System.Windows.Forms.Label();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.deDeliveyDateTo = new DevExpress.XtraEditors.DateEdit();
            this.deDeliveyDateFrom = new DevExpress.XtraEditors.DateEdit();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deWOCompletedTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deWOCompletedTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deWOCompletedFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deWOCompletedFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgStatusGroupBy.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveyDateTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveyDateTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveyDateFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveyDateFrom.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(32, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(34, 14);
            this.label1.TabIndex = 0;
            this.label1.Text = "From";
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(279, 246);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(99, 38);
            this.btnOK.TabIndex = 6;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(53, 43);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(59, 14);
            this.label4.TabIndex = 7;
            this.label4.Text = "Customer";
            // 
            // cbCustomer
            // 
            this.cbCustomer.Location = new System.Drawing.Point(118, 40);
            this.cbCustomer.Name = "cbCustomer";
            this.cbCustomer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbCustomer.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.cbCustomer.Size = new System.Drawing.Size(122, 21);
            this.cbCustomer.TabIndex = 8;
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.deWOCompletedTo);
            this.groupControl1.Controls.Add(this.deWOCompletedFrom);
            this.groupControl1.Controls.Add(this.label2);
            this.groupControl1.Controls.Add(this.label1);
            this.groupControl1.Location = new System.Drawing.Point(279, 25);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(233, 90);
            this.groupControl1.TabIndex = 9;
            this.groupControl1.Text = "Recent WO Completed Date";
            // 
            // deWOCompletedTo
            // 
            this.deWOCompletedTo.EditValue = null;
            this.deWOCompletedTo.Location = new System.Drawing.Point(86, 57);
            this.deWOCompletedTo.Name = "deWOCompletedTo";
            this.deWOCompletedTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deWOCompletedTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deWOCompletedTo.Size = new System.Drawing.Size(122, 21);
            this.deWOCompletedTo.TabIndex = 3;
            // 
            // deWOCompletedFrom
            // 
            this.deWOCompletedFrom.EditValue = null;
            this.deWOCompletedFrom.Location = new System.Drawing.Point(86, 30);
            this.deWOCompletedFrom.Name = "deWOCompletedFrom";
            this.deWOCompletedFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deWOCompletedFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deWOCompletedFrom.Size = new System.Drawing.Size(122, 21);
            this.deWOCompletedFrom.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(32, 60);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(22, 14);
            this.label2.TabIndex = 1;
            this.label2.Text = "To";
            // 
            // rgStatusGroupBy
            // 
            this.rgStatusGroupBy.EditValue = 1;
            this.rgStatusGroupBy.Location = new System.Drawing.Point(118, 103);
            this.rgStatusGroupBy.Name = "rgStatusGroupBy";
            this.rgStatusGroupBy.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "OutStanding"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "Completed")});
            this.rgStatusGroupBy.Size = new System.Drawing.Size(122, 108);
            this.rgStatusGroupBy.TabIndex = 10;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(27, 103);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(85, 14);
            this.label3.TabIndex = 11;
            this.label3.Text = "Project Status";
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.deDeliveyDateTo);
            this.groupControl2.Controls.Add(this.deDeliveyDateFrom);
            this.groupControl2.Controls.Add(this.label5);
            this.groupControl2.Controls.Add(this.label6);
            this.groupControl2.Location = new System.Drawing.Point(279, 121);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(233, 90);
            this.groupControl2.TabIndex = 12;
            this.groupControl2.Text = "SO Delivery Date";
            // 
            // deDeliveyDateTo
            // 
            this.deDeliveyDateTo.EditValue = null;
            this.deDeliveyDateTo.Location = new System.Drawing.Point(86, 57);
            this.deDeliveyDateTo.Name = "deDeliveyDateTo";
            this.deDeliveyDateTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deDeliveyDateTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deDeliveyDateTo.Size = new System.Drawing.Size(122, 21);
            this.deDeliveyDateTo.TabIndex = 3;
            // 
            // deDeliveyDateFrom
            // 
            this.deDeliveyDateFrom.EditValue = null;
            this.deDeliveyDateFrom.Location = new System.Drawing.Point(86, 30);
            this.deDeliveyDateFrom.Name = "deDeliveyDateFrom";
            this.deDeliveyDateFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deDeliveyDateFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deDeliveyDateFrom.Size = new System.Drawing.Size(122, 21);
            this.deDeliveyDateFrom.TabIndex = 2;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(32, 60);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(22, 14);
            this.label5.TabIndex = 1;
            this.label5.Text = "To";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(32, 33);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(34, 14);
            this.label6.TabIndex = 0;
            this.label6.Text = "From";
            // 
            // DateRangeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(569, 313);
            this.Controls.Add(this.groupControl2);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.rgStatusGroupBy);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.cbCustomer);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnOK);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "DateRangeForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Query Form";
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deWOCompletedTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deWOCompletedTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deWOCompletedFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deWOCompletedFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgStatusGroupBy.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            this.groupControl2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveyDateTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveyDateTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveyDateFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deDeliveyDateFrom.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.Label label4;
        private DevExpress.XtraEditors.ComboBoxEdit cbCustomer;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.DateEdit deWOCompletedTo;
        private DevExpress.XtraEditors.DateEdit deWOCompletedFrom;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.RadioGroup rgStatusGroupBy;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.DateEdit deDeliveyDateTo;
        private DevExpress.XtraEditors.DateEdit deDeliveyDateFrom;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
    }
}