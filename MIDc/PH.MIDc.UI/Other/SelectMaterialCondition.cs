using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public class SelectMaterialCondition : DevExpress.XtraEditors.XtraForm
    {
        #region
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Button but_Ok;
        private System.Windows.Forms.Button but_Cancel;

        #endregion

        #region

        public string MaterialType { get; set; }
        public string SuppRef { get; set; }

        #endregion

        public SelectMaterialCondition()
        {
            InitializeComponent();

        }

        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.but_Ok = new System.Windows.Forms.Button();
            this.but_Cancel = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(23, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 14);
            this.label1.TabIndex = 0;
            this.label1.Text = "Materail Type:";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(124, 32);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 22);
            this.textBox1.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(50, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 14);
            this.label2.TabIndex = 0;
            this.label2.Text = "SuppRef:";
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(124, 64);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(100, 22);
            this.textBox2.TabIndex = 2;
            // 
            // but_Ok
            // 
            this.but_Ok.Location = new System.Drawing.Point(43, 100);
            this.but_Ok.Name = "but_Ok";
            this.but_Ok.Size = new System.Drawing.Size(75, 23);
            this.but_Ok.TabIndex = 3;
            this.but_Ok.Text = "OK";
            this.but_Ok.UseVisualStyleBackColor = true;
            this.but_Ok.Click += new System.EventHandler(this.but_Ok_Click);
            // 
            // but_Cancel
            // 
            this.but_Cancel.Location = new System.Drawing.Point(149, 100);
            this.but_Cancel.Name = "but_Cancel";
            this.but_Cancel.Size = new System.Drawing.Size(75, 23);
            this.but_Cancel.TabIndex = 4;
            this.but_Cancel.Text = "Cancel";
            this.but_Cancel.UseVisualStyleBackColor = true;
            this.but_Cancel.Click += new System.EventHandler(this.but_Cancel_Click);
            // 
            // SelectMaterialCondition
            // 
            this.ClientSize = new System.Drawing.Size(285, 135);
            this.Controls.Add(this.but_Cancel);
            this.Controls.Add(this.but_Ok);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "SelectMaterialCondition";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "請輸入打印條件";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void but_Ok_Click(object sender, EventArgs e)
        {
            this.MaterialType = this.textBox1.Text;
            this.SuppRef = this.textBox2.Text;
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void but_Cancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();

        }
    }
}
