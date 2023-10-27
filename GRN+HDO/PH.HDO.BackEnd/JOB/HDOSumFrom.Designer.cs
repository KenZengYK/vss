namespace PH.HDO.BackEnd.JOB
{
    partial class HDOSumFrom
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
            this.lblcompany = new System.Windows.Forms.Label();
            this.hdotxtcompany = new System.Windows.Forms.TextBox();
            this.lblhdofrom = new System.Windows.Forms.Label();
            this.hdotxtfrom = new System.Windows.Forms.TextBox();
            this.lblhdoto = new System.Windows.Forms.Label();
            this.hdotxtto = new System.Windows.Forms.TextBox();
            this.rdoones = new System.Windows.Forms.RadioButton();
            this.rdotwos = new System.Windows.Forms.RadioButton();
            this.rdotree = new System.Windows.Forms.RadioButton();
            this.SuspendLayout();
            // 
            // lblcompany
            // 
            this.lblcompany.AutoSize = true;
            this.lblcompany.Location = new System.Drawing.Point(36, 27);
            this.lblcompany.Name = "lblcompany";
            this.lblcompany.Size = new System.Drawing.Size(63, 12);
            this.lblcompany.TabIndex = 0;
            this.lblcompany.Text = "Company  : ";
            // 
            // hdotxtcompany
            // 
            this.hdotxtcompany.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.hdotxtcompany.Location = new System.Drawing.Point(110, 24);
            this.hdotxtcompany.Name = "hdotxtcompany";
            this.hdotxtcompany.Size = new System.Drawing.Size(100, 22);
            this.hdotxtcompany.TabIndex = 1;
            this.hdotxtcompany.Text = "P1";
            // 
            // lblhdofrom
            // 
            this.lblhdofrom.AutoSize = true;
            this.lblhdofrom.Location = new System.Drawing.Point(27, 70);
            this.lblhdofrom.Name = "lblhdofrom";
            this.lblhdofrom.Size = new System.Drawing.Size(72, 12);
            this.lblhdofrom.TabIndex = 0;
            this.lblhdofrom.Text = "HDO  From  : ";
            // 
            // hdotxtfrom
            // 
            this.hdotxtfrom.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.hdotxtfrom.Location = new System.Drawing.Point(110, 65);
            this.hdotxtfrom.Name = "hdotxtfrom";
            this.hdotxtfrom.Size = new System.Drawing.Size(100, 22);
            this.hdotxtfrom.TabIndex = 1;
            // 
            // lblhdoto
            // 
            this.lblhdoto.AutoSize = true;
            this.lblhdoto.Location = new System.Drawing.Point(39, 114);
            this.lblhdoto.Name = "lblhdoto";
            this.lblhdoto.Size = new System.Drawing.Size(60, 12);
            this.lblhdoto.TabIndex = 0;
            this.lblhdoto.Text = "HDO  To  : ";
            // 
            // hdotxtto
            // 
            this.hdotxtto.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.hdotxtto.Location = new System.Drawing.Point(110, 104);
            this.hdotxtto.Name = "hdotxtto";
            this.hdotxtto.Size = new System.Drawing.Size(100, 22);
            this.hdotxtto.TabIndex = 1;
            // 
            // rdoones
            // 
            this.rdoones.AutoSize = true;
            this.rdoones.Checked = true;
            this.rdoones.Location = new System.Drawing.Point(110, 158);
            this.rdoones.Name = "rdoones";
            this.rdoones.Size = new System.Drawing.Size(100, 16);
            this.rdoones.TabIndex = 2;
            this.rdoones.TabStop = true;
            this.rdoones.Text = "Sort By Material";
            this.rdoones.UseVisualStyleBackColor = true;
            // 
            // rdotwos
            // 
            this.rdotwos.AutoSize = true;
            this.rdotwos.Location = new System.Drawing.Point(110, 190);
            this.rdotwos.Name = "rdotwos";
            this.rdotwos.Size = new System.Drawing.Size(135, 16);
            this.rdotwos.TabIndex = 3;
            this.rdotwos.Text = "Sort By Project,Material";
            this.rdotwos.UseVisualStyleBackColor = true;
            // 
            // rdotree
            // 
            this.rdotree.AutoSize = true;
            this.rdotree.Location = new System.Drawing.Point(110, 224);
            this.rdotree.Name = "rdotree";
            this.rdotree.Size = new System.Drawing.Size(133, 16);
            this.rdotree.TabIndex = 4;
            this.rdotree.Text = "Sort By Material Group";
            this.rdotree.UseVisualStyleBackColor = true;
            // 
            // HDOSumFrom
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.rdotree);
            this.Controls.Add(this.rdotwos);
            this.Controls.Add(this.rdoones);
            this.Controls.Add(this.hdotxtto);
            this.Controls.Add(this.lblhdoto);
            this.Controls.Add(this.hdotxtfrom);
            this.Controls.Add(this.lblhdofrom);
            this.Controls.Add(this.hdotxtcompany);
            this.Controls.Add(this.lblcompany);
            this.Name = "HDOSumFrom";
            this.Size = new System.Drawing.Size(325, 255);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblcompany;
        private System.Windows.Forms.TextBox hdotxtcompany;
        private System.Windows.Forms.Label lblhdofrom;
        private System.Windows.Forms.TextBox hdotxtfrom;
        private System.Windows.Forms.Label lblhdoto;
        private System.Windows.Forms.TextBox hdotxtto;
        private System.Windows.Forms.RadioButton rdoones;
        private System.Windows.Forms.RadioButton rdotwos;
        private System.Windows.Forms.RadioButton rdotree;
    }
}
