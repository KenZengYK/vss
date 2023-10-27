namespace PH.MobileQC.UI.FullInspection
{
    partial class WeeklyDefectPointsComparisonQueryFormNew
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
            this.comFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labFactory = new DevExpress.XtraEditors.LabelControl();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.ucDateChoice = new PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl();
            ((System.ComponentModel.ISupportInitialize)(this.comFactory.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // comFactory
            // 
            this.comFactory.Location = new System.Drawing.Point(116, 26);
            this.comFactory.Name = "comFactory";
            this.comFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comFactory.Properties.Items.AddRange(new object[] {
            "CN",
            "SL",
            "RX",
            "CL"});
            this.comFactory.Size = new System.Drawing.Size(110, 21);
            this.comFactory.TabIndex = 0;
            // 
            // labFactory
            // 
            this.labFactory.Location = new System.Drawing.Point(59, 29);
            this.labFactory.Name = "labFactory";
            this.labFactory.Size = new System.Drawing.Size(48, 14);
            this.labFactory.TabIndex = 1;
            this.labFactory.Text = "Factory :";
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(116, 209);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(45, 23);
            this.simpleButton1.TabIndex = 6;
            this.simpleButton1.Text = "OK";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // simpleButton2
            // 
            this.simpleButton2.Location = new System.Drawing.Point(184, 209);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(45, 23);
            this.simpleButton2.TabIndex = 7;
            this.simpleButton2.Text = "Cancel";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // ucDateChoice
            // 
            this.ucDateChoice.FromDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Location = new System.Drawing.Point(3, 49);
            this.ucDateChoice.Month = 0;
            this.ucDateChoice.Name = "ucDateChoice";
            this.ucDateChoice.Size = new System.Drawing.Size(407, 152);
            this.ucDateChoice.TabIndex = 8;
            this.ucDateChoice.ToDate = new System.DateTime(((long)(0)));
            this.ucDateChoice.Week = 0;
            // 
            // WeeklyDefectPointsComparisonQueryFormNew
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(412, 276);
            this.Controls.Add(this.ucDateChoice);
            this.Controls.Add(this.simpleButton2);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.labFactory);
            this.Controls.Add(this.comFactory);
            this.Name = "WeeklyDefectPointsComparisonQueryFormNew";
            this.Text = "Query Form";
            ((System.ComponentModel.ISupportInitialize)(this.comFactory.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit comFactory;
        private DevExpress.XtraEditors.LabelControl labFactory;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private PH.MobileQC.UI.UserControllibrary.MultipleDateChoiceUserControl ucDateChoice;
    }
}