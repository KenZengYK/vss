namespace PH.RWO.UI.WOc
{
    partial class SampleQueryForm
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
            this.teSO = new DevExpress.XtraEditors.TextEdit();
            this.teProject = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.label4 = new System.Windows.Forms.Label();
            this.cbCustomer = new DevExpress.XtraEditors.ComboBoxEdit();
            this.memoEdit_WONO = new DevExpress.XtraEditors.MemoEdit();
            ((System.ComponentModel.ISupportInitialize)(this.teSO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit_WONO.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(58, 78);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(92, 14);
            this.label1.TabIndex = 0;
            this.label1.Text = "Sales Order No.";
            // 
            // teSO
            // 
            this.teSO.Location = new System.Drawing.Point(156, 75);
            this.teSO.Name = "teSO";
            this.teSO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teSO.Properties.MaxLength = 7;
            this.teSO.Size = new System.Drawing.Size(171, 21);
            this.teSO.TabIndex = 1;
            // 
            // teProject
            // 
            this.teProject.Location = new System.Drawing.Point(156, 114);
            this.teProject.Name = "teProject";
            this.teProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.teProject.Size = new System.Drawing.Size(171, 21);
            this.teProject.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(58, 117);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 14);
            this.label2.TabIndex = 2;
            this.label2.Text = "Project No.";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(58, 159);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(51, 14);
            this.label3.TabIndex = 4;
            this.label3.Text = "WO No.";
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(137, 257);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(99, 38);
            this.btnOK.TabIndex = 6;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(58, 39);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(59, 14);
            this.label4.TabIndex = 7;
            this.label4.Text = "Customer";
            this.label4.Visible = false;
            // 
            // cbCustomer
            // 
            this.cbCustomer.Location = new System.Drawing.Point(156, 36);
            this.cbCustomer.Name = "cbCustomer";
            this.cbCustomer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbCustomer.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.cbCustomer.Size = new System.Drawing.Size(171, 21);
            this.cbCustomer.TabIndex = 8;
            this.cbCustomer.Visible = false;
            // 
            // memoEdit_WONO
            // 
            this.memoEdit_WONO.Location = new System.Drawing.Point(156, 159);
            this.memoEdit_WONO.Name = "memoEdit_WONO";
            this.memoEdit_WONO.Size = new System.Drawing.Size(171, 78);
            this.memoEdit_WONO.TabIndex = 9;
            // 
            // SampleQueryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(353, 307);
            this.Controls.Add(this.memoEdit_WONO);
            this.Controls.Add(this.cbCustomer);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.teProject);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.teSO);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SampleQueryForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Sample Query Form";
            ((System.ComponentModel.ISupportInitialize)(this.teSO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit_WONO.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.TextEdit teSO;
        private DevExpress.XtraEditors.TextEdit teProject;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.Label label4;
        private DevExpress.XtraEditors.ComboBoxEdit cbCustomer;
        private DevExpress.XtraEditors.MemoEdit memoEdit_WONO;
    }
}