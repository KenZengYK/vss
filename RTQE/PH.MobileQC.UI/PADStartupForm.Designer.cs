namespace PH.MobileQC.UI
{
    partial class PADStartupForm
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
            this.btnStartup = new DevExpress.XtraEditors.SimpleButton();
            this.btnInitial = new DevExpress.XtraEditors.SimpleButton();
            this.btnUpload = new DevExpress.XtraEditors.SimpleButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.progressBar1 = new System.Windows.Forms.ProgressBar();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnStartup
            // 
            this.btnStartup.Appearance.Font = new System.Drawing.Font("Tahoma", 15.75F);
            this.btnStartup.Appearance.Options.UseFont = true;
            this.btnStartup.Location = new System.Drawing.Point(31, 78);
            this.btnStartup.Name = "btnStartup";
            this.btnStartup.Size = new System.Drawing.Size(236, 53);
            this.btnStartup.TabIndex = 0;
            this.btnStartup.Text = "Startup Mobile QC";
            this.btnStartup.Click += new System.EventHandler(this.btnStartup_Click);
            // 
            // btnInitial
            // 
            this.btnInitial.Appearance.Font = new System.Drawing.Font("Tahoma", 15.75F);
            this.btnInitial.Appearance.Options.UseFont = true;
            this.btnInitial.Location = new System.Drawing.Point(31, 137);
            this.btnInitial.Name = "btnInitial";
            this.btnInitial.Size = new System.Drawing.Size(236, 53);
            this.btnInitial.TabIndex = 1;
            this.btnInitial.Text = "Offline Work Initialize";
            this.btnInitial.Visible = false;
            this.btnInitial.Click += new System.EventHandler(this.btnInitial_Click);
            // 
            // btnUpload
            // 
            this.btnUpload.Appearance.Font = new System.Drawing.Font("Tahoma", 15.75F);
            this.btnUpload.Appearance.Options.UseFont = true;
            this.btnUpload.Location = new System.Drawing.Point(31, 196);
            this.btnUpload.Name = "btnUpload";
            this.btnUpload.Size = new System.Drawing.Size(236, 53);
            this.btnUpload.TabIndex = 2;
            this.btnUpload.Text = "Upload Offline Data";
            this.btnUpload.Visible = false;
            this.btnUpload.Click += new System.EventHandler(this.btnUpload_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.radioButton2);
            this.groupBox1.Controls.Add(this.radioButton1);
            this.groupBox1.Location = new System.Drawing.Point(41, 13);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(214, 41);
            this.PlatetoolTipController.SetSuperTip(this.groupBox1, null);
            this.groupBox1.TabIndex = 3;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Work Status";
            this.groupBox1.Visible = false;
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Location = new System.Drawing.Point(116, 19);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(65, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioButton2, null);
            this.radioButton2.TabIndex = 1;
            this.radioButton2.Text = "Offline";
            this.radioButton2.UseVisualStyleBackColor = true;
            this.radioButton2.Visible = false;
            this.radioButton2.CheckedChanged += new System.EventHandler(this.WorkStatuChanged);
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Checked = true;
            this.radioButton1.Location = new System.Drawing.Point(48, 19);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(65, 16);
            this.PlatetoolTipController.SetSuperTip(this.radioButton1, null);
            this.radioButton1.TabIndex = 0;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "On line";
            this.radioButton1.UseVisualStyleBackColor = true;
            this.radioButton1.Visible = false;
            this.radioButton1.CheckedChanged += new System.EventHandler(this.WorkStatuChanged);
            // 
            // progressBar1
            // 
            this.progressBar1.Location = new System.Drawing.Point(46, 265);
            this.progressBar1.Name = "progressBar1";
            this.progressBar1.Size = new System.Drawing.Size(174, 23);
            this.PlatetoolTipController.SetSuperTip(this.progressBar1, null);
            this.progressBar1.TabIndex = 5;
            this.progressBar1.Visible = false;
            // 
            // PADStartupForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.progressBar1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnUpload);
            this.Controls.Add(this.btnInitial);
            this.Controls.Add(this.btnStartup);
            this.Name = "PADStartupForm";
            this.Size = new System.Drawing.Size(317, 305);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnStartup;
        private DevExpress.XtraEditors.SimpleButton btnInitial;
        private DevExpress.XtraEditors.SimpleButton btnUpload;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.ProgressBar progressBar1;
    }
}
