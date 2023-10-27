namespace PH.LWPM.UI.MC
{
    partial class MaintainChild
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
            this.lblFactory = new System.Windows.Forms.Label();
            this.cobFactory = new System.Windows.Forms.ComboBox();
            this.lblLine = new System.Windows.Forms.Label();
            this.txtLine = new System.Windows.Forms.TextBox();
            this.lblDes = new System.Windows.Forms.Label();
            this.txtDes = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.FactoryLines);
            // 
            // lblFactory
            // 
            this.lblFactory.Location = new System.Drawing.Point(22, 50);
            this.lblFactory.Name = "lblFactory";
            this.lblFactory.Size = new System.Drawing.Size(116, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblFactory, null);
            this.lblFactory.TabIndex = 6;
            this.lblFactory.Text = "Factory:";
            this.lblFactory.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // cobFactory
            // 
            this.cobFactory.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Factory", true));
            this.cobFactory.FormattingEnabled = true;
            this.cobFactory.Items.AddRange(new object[] {
            "SL",
            "FJ",
            "GG"});
            this.cobFactory.Location = new System.Drawing.Point(149, 50);
            this.cobFactory.Name = "cobFactory";
            this.cobFactory.Size = new System.Drawing.Size(121, 20);
            this.PlatetoolTipController.SetSuperTip(this.cobFactory, null);
            this.cobFactory.TabIndex = 7;
            // 
            // lblLine
            // 
            this.lblLine.Location = new System.Drawing.Point(20, 85);
            this.lblLine.Name = "lblLine";
            this.lblLine.Size = new System.Drawing.Size(116, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblLine, null);
            this.lblLine.TabIndex = 8;
            this.lblLine.Text = "Line:";
            this.lblLine.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // txtLine
            // 
            this.txtLine.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Line", true));
            this.txtLine.Location = new System.Drawing.Point(149, 85);
            this.txtLine.Name = "txtLine";
            this.txtLine.Size = new System.Drawing.Size(121, 22);
            this.PlatetoolTipController.SetSuperTip(this.txtLine, null);
            this.txtLine.TabIndex = 9;
            // 
            // lblDes
            // 
            this.lblDes.Location = new System.Drawing.Point(22, 122);
            this.lblDes.Name = "lblDes";
            this.lblDes.Size = new System.Drawing.Size(114, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblDes, null);
            this.lblDes.TabIndex = 12;
            this.lblDes.Text = "Description:";
            this.lblDes.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // txtDes
            // 
            this.txtDes.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Description", true));
            this.txtDes.Location = new System.Drawing.Point(149, 122);
            this.txtDes.Multiline = true;
            this.txtDes.Name = "txtDes";
            this.txtDes.Size = new System.Drawing.Size(269, 44);
            this.PlatetoolTipController.SetSuperTip(this.txtDes, null);
            this.txtDes.TabIndex = 13;
            // 
            // MaintainChild
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtDes);
            this.Controls.Add(this.lblDes);
            this.Controls.Add(this.txtLine);
            this.Controls.Add(this.lblLine);
            this.Controls.Add(this.cobFactory);
            this.Controls.Add(this.lblFactory);
            this.Name = "MaintainChild";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.MaintainChild_Load);
            this.Controls.SetChildIndex(this.lblFactory, 0);
            this.Controls.SetChildIndex(this.cobFactory, 0);
            this.Controls.SetChildIndex(this.lblLine, 0);
            this.Controls.SetChildIndex(this.txtLine, 0);
            this.Controls.SetChildIndex(this.lblDes, 0);
            this.Controls.SetChildIndex(this.txtDes, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblFactory;
        private System.Windows.Forms.ComboBox cobFactory;
        private System.Windows.Forms.Label lblLine;
        private System.Windows.Forms.TextBox txtLine;
        private System.Windows.Forms.Label lblDes;
        private System.Windows.Forms.TextBox txtDes;
    }
}
