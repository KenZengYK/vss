namespace PH.MIDc.UI
{
    partial class SelectDataForm
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
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.gcSimple = new DevExpress.XtraGrid.GridControl();
            this.gvSimple = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            ((System.ComponentModel.ISupportInitialize)(this.gcSimple)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSimple)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnOK
            // 
            this.btnOK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(184, 11);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(72, 28);
            this.btnOK.TabIndex = 1;
            this.btnOK.Text = "OK";
            // 
            // btnCancel
            // 
            this.btnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(262, 12);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(72, 28);
            this.btnCancel.TabIndex = 2;
            this.btnCancel.Text = "Cancel";
            // 
            // gcSimple
            // 
            this.gcSimple.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcSimple.EmbeddedNavigator.Name = "";
            this.gcSimple.Location = new System.Drawing.Point(5, 5);
            this.gcSimple.MainView = this.gvSimple;
            this.gcSimple.Name = "gcSimple";
            this.gcSimple.Size = new System.Drawing.Size(347, 269);
            this.gcSimple.TabIndex = 3;
            this.gcSimple.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvSimple});
            this.gcSimple.DoubleClick += new System.EventHandler(this.gcSimple_DoubleClick);
            // 
            // gvSimple
            // 
            this.gvSimple.Appearance.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(128)))));
            this.gvSimple.Appearance.EvenRow.BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.gvSimple.Appearance.EvenRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            this.gvSimple.Appearance.EvenRow.Options.UseBackColor = true;
            this.gvSimple.GridControl = this.gcSimple;
            this.gvSimple.IndicatorWidth = 10;
            this.gvSimple.Name = "gvSimple";
            this.gvSimple.OptionsBehavior.AutoPopulateColumns = false;
            this.gvSimple.OptionsBehavior.Editable = false;
            this.gvSimple.OptionsDetail.EnableMasterViewMode = false;
            this.gvSimple.OptionsPrint.AutoWidth = false;
            this.gvSimple.OptionsPrint.PrintDetails = true;
            this.gvSimple.OptionsPrint.UsePrintStyles = true;
            this.gvSimple.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gvSimple.OptionsView.ColumnAutoWidth = false;
            this.gvSimple.OptionsView.EnableAppearanceEvenRow = true;
            this.gvSimple.OptionsView.ShowGroupPanel = false;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.btnOK);
            this.panelControl1.Controls.Add(this.btnCancel);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(5, 274);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(347, 40);
            this.panelControl1.TabIndex = 4;
            // 
            // SelectDataForm
            // 
            this.ClientSize = new System.Drawing.Size(357, 319);
            this.Controls.Add(this.gcSimple);
            this.Controls.Add(this.panelControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectDataForm";
            this.Padding = new System.Windows.Forms.Padding(5);
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmSelectDataFrom";
            ((System.ComponentModel.ISupportInitialize)(this.gcSimple)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSimple)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        protected DevExpress.XtraGrid.GridControl gcSimple;
        protected DevExpress.XtraGrid.Views.Grid.GridView gvSimple;
        private DevExpress.XtraEditors.PanelControl panelControl1;
    }
}
