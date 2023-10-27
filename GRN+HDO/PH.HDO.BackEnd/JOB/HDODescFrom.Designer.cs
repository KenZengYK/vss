namespace PH.HDO.BackEnd
{
    partial class HDOFrom : PH.Platform.BackEnd.BO.IServerReport
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        //// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        //protected override void Dispose(bool disposing)
        //{
        //    if (disposing && (components != null))
        //    {
        //        components.Dispose();
        //    }
        //    base.Dispose(disposing);
        //}


        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblcompany = new System.Windows.Forms.Label();
            this.lblFrom = new System.Windows.Forms.Label();
            this.lblto = new System.Windows.Forms.Label();
            this.txtcompany = new System.Windows.Forms.TextBox();
            this.txtto = new System.Windows.Forms.TextBox();
            this.rdoby = new System.Windows.Forms.RadioButton();
            this.rdobys = new System.Windows.Forms.RadioButton();
            this.rdobya = new System.Windows.Forms.RadioButton();
            this.rdoReceived = new System.Windows.Forms.RadioButton();
            this.txtfrom = new DevExpress.XtraEditors.LookUpEdit();
            ((System.ComponentModel.ISupportInitialize)(this.txtfrom.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // lblcompany
            // 
            this.lblcompany.AutoSize = true;
            this.lblcompany.Location = new System.Drawing.Point(54, 20);
            this.lblcompany.Name = "lblcompany";
            this.lblcompany.Size = new System.Drawing.Size(65, 12);
            this.lblcompany.TabIndex = 0;
            this.lblcompany.Text = "Company  :";
            this.lblcompany.Visible = false;
            // 
            // lblFrom
            // 
            this.lblFrom.AutoSize = true;
            this.lblFrom.Location = new System.Drawing.Point(79, 55);
            this.lblFrom.Name = "lblFrom";
            this.lblFrom.Size = new System.Drawing.Size(35, 12);
            this.lblFrom.TabIndex = 0;
            this.lblFrom.Text = "HDO :";
            // 
            // lblto
            // 
            this.lblto.AutoSize = true;
            this.lblto.Location = new System.Drawing.Point(57, 83);
            this.lblto.Name = "lblto";
            this.lblto.Size = new System.Drawing.Size(65, 12);
            this.lblto.TabIndex = 0;
            this.lblto.Text = "HDO  To  :";
            this.lblto.Visible = false;
            // 
            // txtcompany
            // 
            this.txtcompany.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtcompany.Location = new System.Drawing.Point(125, 17);
            this.txtcompany.Name = "txtcompany";
            this.txtcompany.Size = new System.Drawing.Size(100, 21);
            this.txtcompany.TabIndex = 1;
            this.txtcompany.Text = "P1";
            this.txtcompany.Visible = false;
            // 
            // txtto
            // 
            this.txtto.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtto.Location = new System.Drawing.Point(125, 80);
            this.txtto.Name = "txtto";
            this.txtto.Size = new System.Drawing.Size(100, 21);
            this.txtto.TabIndex = 1;
            this.txtto.Visible = false;
            // 
            // rdoby
            // 
            this.rdoby.AutoSize = true;
            this.rdoby.Checked = true;
            this.rdoby.Location = new System.Drawing.Point(125, 123);
            this.rdoby.Name = "rdoby";
            this.rdoby.Size = new System.Drawing.Size(119, 16);
            this.rdoby.TabIndex = 2;
            this.rdoby.TabStop = true;
            this.rdoby.Text = "Sort by Material";
            this.rdoby.UseVisualStyleBackColor = true;
            this.rdoby.Visible = false;
            // 
            // rdobys
            // 
            this.rdobys.AutoSize = true;
            this.rdobys.Location = new System.Drawing.Point(125, 156);
            this.rdobys.Name = "rdobys";
            this.rdobys.Size = new System.Drawing.Size(167, 16);
            this.rdobys.TabIndex = 3;
            this.rdobys.Text = "Sort by Project Material";
            this.rdobys.UseVisualStyleBackColor = true;
            this.rdobys.Visible = false;
            // 
            // rdobya
            // 
            this.rdobya.AutoSize = true;
            this.rdobya.Location = new System.Drawing.Point(125, 189);
            this.rdobya.Name = "rdobya";
            this.rdobya.Size = new System.Drawing.Size(155, 16);
            this.rdobya.TabIndex = 4;
            this.rdobya.Text = "Sort by material Group";
            this.rdobya.UseVisualStyleBackColor = true;
            this.rdobya.Visible = false;
            // 
            // rdoReceived
            // 
            this.rdoReceived.AutoSize = true;
            this.rdoReceived.Location = new System.Drawing.Point(125, 223);
            this.rdoReceived.Name = "rdoReceived";
            this.rdoReceived.Size = new System.Drawing.Size(317, 16);
            this.rdoReceived.TabIndex = 5;
            this.rdoReceived.Text = "Warehouse received report(Sort by material Group)";
            this.rdoReceived.UseVisualStyleBackColor = true;
            this.rdoReceived.Visible = false;
            // 
            // txtfrom
            // 
            this.txtfrom.Location = new System.Drawing.Point(127, 50);
            this.txtfrom.Name = "txtfrom";
            this.txtfrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtfrom.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("HDONo", "HDO No.", 70),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Whse", "Whse", 90),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Status", "Status", 50),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Creator", "Creator", 60),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Createddd", "Planned dd", 60, DevExpress.Utils.FormatType.DateTime, "yyyy/MM/dd", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.txtfrom.Properties.DropDownRows = 15;
            this.txtfrom.Properties.NullText = "";
            this.txtfrom.Properties.PopupWidth = 550;
            this.txtfrom.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.txtfrom.Size = new System.Drawing.Size(100, 21);
            this.txtfrom.TabIndex = 7;
            // 
            // HDOFrom
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtfrom);
            this.Controls.Add(this.rdoReceived);
            this.Controls.Add(this.rdobya);
            this.Controls.Add(this.rdobys);
            this.Controls.Add(this.rdoby);
            this.Controls.Add(this.txtto);
            this.Controls.Add(this.txtcompany);
            this.Controls.Add(this.lblto);
            this.Controls.Add(this.lblFrom);
            this.Controls.Add(this.lblcompany);
            this.Name = "HDOFrom";
            this.Size = new System.Drawing.Size(488, 277);
            ((System.ComponentModel.ISupportInitialize)(this.txtfrom.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblcompany;
        private System.Windows.Forms.Label lblFrom;
        private System.Windows.Forms.Label lblto;
        private System.Windows.Forms.TextBox txtcompany;
        private System.Windows.Forms.TextBox txtto;



        private System.Windows.Forms.RadioButton rdoby;
        private System.Windows.Forms.RadioButton rdobys;
        private System.Windows.Forms.RadioButton rdobya;
        private System.Windows.Forms.RadioButton rdoReceived;
        private DevExpress.XtraEditors.LookUpEdit txtfrom;

    }
}
