namespace PH.LineBalanceII.BO
{
    partial class frmDismantle
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
            this.btnDismantle = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.txtNew2 = new DevExpress.XtraEditors.TextEdit();
            this.txtNew1 = new DevExpress.XtraEditors.TextEdit();
            this.txtOld = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.txtNew2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNew1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOld.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnDismantle
            // 
            this.btnDismantle.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnDismantle.Location = new System.Drawing.Point(64, 153);
            this.btnDismantle.Name = "btnDismantle";
            this.btnDismantle.Size = new System.Drawing.Size(75, 25);
            this.btnDismantle.TabIndex = 13;
            this.btnDismantle.Text = "OK";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(145, 153);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 25);
            this.btnCancel.TabIndex = 12;
            this.btnCancel.Text = "Cancel";
            // 
            // txtNew2
            // 
            this.txtNew2.EditValue = 0;
            this.txtNew2.EnterMoveNextControl = true;
            this.txtNew2.Location = new System.Drawing.Point(64, 104);
            this.txtNew2.Name = "txtNew2";
            this.txtNew2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.txtNew2.Size = new System.Drawing.Size(132, 20);
            this.txtNew2.TabIndex = 11;
            this.txtNew2.Validated += new System.EventHandler(this.txtNew2_Validated);
            // 
            // txtNew1
            // 
            this.txtNew1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.txtNew1.EnterMoveNextControl = true;
            this.txtNew1.Location = new System.Drawing.Point(64, 64);
            this.txtNew1.Name = "txtNew1";
            this.txtNew1.Size = new System.Drawing.Size(132, 20);
            this.txtNew1.TabIndex = 10;
            this.txtNew1.Validated += new System.EventHandler(this.txtNew1_Validated);
            // 
            // txtOld
            // 
            this.txtOld.EditValue = 0;
            this.txtOld.Location = new System.Drawing.Point(64, 24);
            this.txtOld.Name = "txtOld";
            this.txtOld.Properties.Appearance.Options.UseTextOptions = true;
            this.txtOld.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.txtOld.Size = new System.Drawing.Size(132, 20);
            this.txtOld.TabIndex = 9;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(202, 29);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(31, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "²ðžé";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(41, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(19, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "Œ¢";
            // 
            // frmDismantle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(265, 198);
            this.Controls.Add(this.btnDismantle);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.txtNew2);
            this.Controls.Add(this.txtNew1);
            this.Controls.Add(this.txtOld);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmDismantle";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "²ð²Ù×÷";
            ((System.ComponentModel.ISupportInitialize)(this.txtNew2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNew1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOld.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnDismantle;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.TextEdit txtNew2;
        private DevExpress.XtraEditors.TextEdit txtNew1;
        private DevExpress.XtraEditors.TextEdit txtOld;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}