namespace PH.RWO.BackEnd.ReportJob
{
    partial class JobRWOReport
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
            this.label1 = new System.Windows.Forms.Label();
            this.editWO = new DevExpress.XtraEditors.TextEdit();
            this.editColor = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.editRound = new DevExpress.XtraEditors.SpinEdit();
            ((System.ComponentModel.ISupportInitialize)(this.editWO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editColor.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editRound.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(24, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(71, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "Work Order:";
            // 
            // editWO
            // 
            this.editWO.Location = new System.Drawing.Point(107, 18);
            this.editWO.Name = "editWO";
            this.editWO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editWO.Properties.MaxLength = 7;
            this.editWO.Size = new System.Drawing.Size(127, 21);
            this.editWO.TabIndex = 1;
            // 
            // editColor
            // 
            this.editColor.Location = new System.Drawing.Point(107, 45);
            this.editColor.Name = "editColor";
            this.editColor.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editColor.Properties.MaxLength = 3;
            this.editColor.Size = new System.Drawing.Size(84, 21);
            this.editColor.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(24, 50);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 12);
            this.label2.TabIndex = 2;
            this.label2.Text = "Style Color:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(24, 77);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(59, 12);
            this.label3.TabIndex = 4;
            this.label3.Text = "Round No:";
            // 
            // editRound
            // 
            this.editRound.EditValue = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.editRound.Location = new System.Drawing.Point(107, 73);
            this.editRound.Name = "editRound";
            this.editRound.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.editRound.Properties.IsFloatValue = false;
            this.editRound.Properties.Mask.EditMask = "N00";
            this.editRound.Size = new System.Drawing.Size(84, 21);
            this.editRound.TabIndex = 5;
            // 
            // JobRWOReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.editRound);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.editColor);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.editWO);
            this.Controls.Add(this.label1);
            this.Name = "JobRWOReport";
            this.Size = new System.Drawing.Size(256, 117);
            ((System.ComponentModel.ISupportInitialize)(this.editWO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editColor.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editRound.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.TextEdit editWO;
        private DevExpress.XtraEditors.TextEdit editColor;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.SpinEdit editRound;
    }
}
