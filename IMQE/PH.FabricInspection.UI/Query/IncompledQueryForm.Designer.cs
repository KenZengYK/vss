namespace PH.FabricInspection.UI.Query
{
    partial class IncompledQueryForm
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
            this.txtCategory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.btnQuery = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.txtCategory.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // txtCategory
            // 
            this.txtCategory.Location = new System.Drawing.Point(116, 26);
            this.txtCategory.Name = "txtCategory";
            this.txtCategory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtCategory.Properties.Items.AddRange(new object[] {
            "",
            "RM",
            "RT"});
            this.txtCategory.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtCategory.Size = new System.Drawing.Size(136, 21);
            this.txtCategory.TabIndex = 13;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(55, 30);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(53, 14);
            this.labelControl2.TabIndex = 12;
            this.labelControl2.Text = "Category:";
            // 
            // btnQuery
            // 
            this.btnQuery.Location = new System.Drawing.Point(116, 80);
            this.btnQuery.Name = "btnQuery";
            this.btnQuery.Size = new System.Drawing.Size(136, 23);
            this.btnQuery.TabIndex = 14;
            this.btnQuery.Text = "Action log incomplete";
            this.btnQuery.Click += new System.EventHandler(this.btnQuery_Click);
            // 
            // IncompledQueryForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnQuery);
            this.Controls.Add(this.txtCategory);
            this.Controls.Add(this.labelControl2);
            this.Name = "IncompledQueryForm";
            this.Size = new System.Drawing.Size(443, 292);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.txtCategory.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit txtCategory;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.SimpleButton btnQuery;
    }
}
