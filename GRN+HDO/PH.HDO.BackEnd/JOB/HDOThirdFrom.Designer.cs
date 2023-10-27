namespace PH.HDO.BackEnd.JOB
{
    partial class HDOThirdFrom
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
            this.hdotlblcompany = new System.Windows.Forms.Label();
            this.hdottxtcompany = new System.Windows.Forms.TextBox();
            this.hdotlblfrom = new System.Windows.Forms.Label();
            this.hdottxtfrom = new System.Windows.Forms.TextBox();
            this.hdotlblto = new System.Windows.Forms.Label();
            this.hdottxtto = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // hdotlblcompany
            // 
            this.hdotlblcompany.AutoSize = true;
            this.hdotlblcompany.Location = new System.Drawing.Point(40, 33);
            this.hdotlblcompany.Name = "hdotlblcompany";
            this.hdotlblcompany.Size = new System.Drawing.Size(69, 14);
            this.hdotlblcompany.TabIndex = 0;
            this.hdotlblcompany.Text = "Company : ";
            // 
            // hdottxtcompany
            // 
            this.hdottxtcompany.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.hdottxtcompany.Location = new System.Drawing.Point(114, 30);
            this.hdottxtcompany.Name = "hdottxtcompany";
            this.hdottxtcompany.Size = new System.Drawing.Size(100, 22);
            this.hdottxtcompany.TabIndex = 1;
            this.hdottxtcompany.Text = "P1";
            // 
            // hdotlblfrom
            // 
            this.hdotlblfrom.AutoSize = true;
            this.hdotlblfrom.Location = new System.Drawing.Point(38, 68);
            this.hdotlblfrom.Name = "hdotlblfrom";
            this.hdotlblfrom.Size = new System.Drawing.Size(71, 14);
            this.hdotlblfrom.TabIndex = 0;
            this.hdotlblfrom.Text = "HDOFrom : ";
            // 
            // hdottxtfrom
            // 
            this.hdottxtfrom.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.hdottxtfrom.Location = new System.Drawing.Point(114, 65);
            this.hdottxtfrom.Name = "hdottxtfrom";
            this.hdottxtfrom.Size = new System.Drawing.Size(100, 22);
            this.hdottxtfrom.TabIndex = 1;
            // 
            // hdotlblto
            // 
            this.hdotlblto.AutoSize = true;
            this.hdotlblto.Location = new System.Drawing.Point(50, 108);
            this.hdotlblto.Name = "hdotlblto";
            this.hdotlblto.Size = new System.Drawing.Size(59, 14);
            this.hdotlblto.TabIndex = 0;
            this.hdotlblto.Text = "HDOTo : ";
            // 
            // hdottxtto
            // 
            this.hdottxtto.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.hdottxtto.Location = new System.Drawing.Point(114, 105);
            this.hdottxtto.Name = "hdottxtto";
            this.hdottxtto.Size = new System.Drawing.Size(100, 22);
            this.hdottxtto.TabIndex = 1;
            // 
            // HDOThirdFrom
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.hdottxtto);
            this.Controls.Add(this.hdotlblto);
            this.Controls.Add(this.hdottxtfrom);
            this.Controls.Add(this.hdotlblfrom);
            this.Controls.Add(this.hdottxtcompany);
            this.Controls.Add(this.hdotlblcompany);
            this.Name = "HDOThirdFrom";
            this.Size = new System.Drawing.Size(274, 167);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label hdotlblcompany;
        private System.Windows.Forms.TextBox hdottxtcompany;
        private System.Windows.Forms.Label hdotlblfrom;
        private System.Windows.Forms.TextBox hdottxtfrom;
        private System.Windows.Forms.Label hdotlblto;
        private System.Windows.Forms.TextBox hdottxtto;
    }
}
