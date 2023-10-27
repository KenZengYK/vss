namespace PH.RWO.BackEnd
{
    partial class AutoExprotBackEnd
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
            System.Windows.Forms.Label outPutPath;
            this.txtOutPutPath = new DevExpress.XtraEditors.TextEdit();
            this.txtCondition = new DevExpress.XtraEditors.TextEdit();
            this.Condition = new System.Windows.Forms.Label();
            outPutPath = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.txtOutPutPath.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCondition.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // outPutPath
            // 
            outPutPath.AutoSize = true;
            outPutPath.Location = new System.Drawing.Point(44, 71);
            outPutPath.Name = "outPutPath";
            outPutPath.Size = new System.Drawing.Size(66, 12);
            outPutPath.TabIndex = 325;
            outPutPath.Text = "Output Path :";
            // 
            // txtOutPutPath
            // 
            this.txtOutPutPath.EditValue = "\\\\10.2.1.2\\test\\test.csv";
            this.txtOutPutPath.Location = new System.Drawing.Point(127, 66);
            this.txtOutPutPath.Name = "txtOutPutPath";
            this.txtOutPutPath.Size = new System.Drawing.Size(217, 21);
            this.txtOutPutPath.TabIndex = 326;
            this.txtOutPutPath.Tag = "Customers";
            // 
            // txtCondition
            // 
            this.txtCondition.Location = new System.Drawing.Point(127, 104);
            this.txtCondition.Name = "txtCondition";
            this.txtCondition.Size = new System.Drawing.Size(217, 21);
            this.txtCondition.TabIndex = 324;
            this.txtCondition.Tag = "Factory";
            // 
            // Condition
            // 
            this.Condition.AutoSize = true;
            this.Condition.Location = new System.Drawing.Point(55, 109);
            this.Condition.Name = "Condition";
            this.Condition.Size = new System.Drawing.Size(55, 12);
            this.Condition.TabIndex = 320;
            this.Condition.Text = "Condition:";
            // 
            // AutoExprotBackEnd
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtOutPutPath);
            this.Controls.Add(outPutPath);
            this.Controls.Add(this.txtCondition);
            this.Controls.Add(this.Condition);
            this.Name = "AutoExprotBackEnd";
            this.Size = new System.Drawing.Size(483, 339);
            ((System.ComponentModel.ISupportInitialize)(this.txtOutPutPath.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCondition.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit txtOutPutPath;
        private DevExpress.XtraEditors.TextEdit txtCondition;
        private System.Windows.Forms.Label Condition;

    }
}
