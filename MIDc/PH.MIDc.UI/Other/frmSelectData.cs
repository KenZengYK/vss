using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.MIDc.UI
{
    public partial class frmSelectData : DevExpress.XtraEditors.XtraForm
    {
        #region 

        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        protected DevExpress.XtraGrid.GridControl gcSimple;
        protected DevExpress.XtraGrid.Views.Grid.GridView gvSimple;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private System.ComponentModel.IContainer components = null;        
        private List<ColumnSetting> columnSettings;      
        public BindingSource bingdingSource;
        #endregion

        public frmSelectData(BindingSource datasource, string caption, List<ColumnSetting> columnSettings)
        {
            this.columnSettings = columnSettings;
            this.bingdingSource = datasource;
            //CreateWaitDialog();
            try
            {
                InitializeComponent();
                this.Text = caption;
                SetStyle(ControlStyles.SupportsTransparentBackColor, true);
                InitData();
                gcSimple.ForceInitialize();
            }
            catch (Exception err)
            { MessageBox.Show(err.Message, err.Source, MessageBoxButtons.OK, MessageBoxIcon.Error); }
        }
      
        private void InitData()
        {
            //this.bingdingSource = new BindingSource();
            //this.bingdingSource.DataSource = this.dtSimple;
            this.gcSimple.DataSource = null;
            this.gvSimple.Columns.Clear();
            this.gcSimple.DataSource = this.bingdingSource;
            //this.gcSimple.MainView.PopulateColumns();
            this.gvSimple.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            InitGridColumn();
        }

        private void InitGridColumn()
        {
            int iwidth = 10 + 6 + 4;
            DevExpress.XtraGrid.Columns.GridColumn col;
            foreach (ColumnSetting colset in columnSettings)
            {
                col = new DevExpress.XtraGrid.Columns.GridColumn();
                this.gvSimple.Columns.Add(col);
                col.FieldName = colset.FieldName;
                col.Caption = colset.Caption;
                col.Visible = colset.Visible;
                col.Width = colset.Width;
                col.SortOrder = colset.SortOrder;

                iwidth += colset.Width + 2;
            }
            this.gcSimple.Size = new Size(iwidth, this.gcSimple.Size.Height);
            this.Size = new Size(iwidth + 10 * 3 + 10, this.Size.Height);
        }      

        private void gcSimple_DoubleClick(object sender, EventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitInfo hi =
                gvSimple.CalcHitInfo((sender as Control).PointToClient(Control.MousePosition));

            if (hi.RowHandle >= 0)
                this.DialogResult = DialogResult.OK;
        }  
        
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
            this.panelControl1.Controls.Add(this.btnOK);
            this.panelControl1.Controls.Add(this.btnCancel);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(5, 274);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(347, 40);
            this.panelControl1.TabIndex = 4;
            // 
            // frmSelectData
            // 
            this.ClientSize = new System.Drawing.Size(357, 319);
            this.Controls.Add(this.gcSimple);
            this.Controls.Add(this.panelControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmSelectData";
            this.Padding = new System.Windows.Forms.Padding(5);
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmSelectData";
            ((System.ComponentModel.ISupportInitialize)(this.gcSimple)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSimple)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

    }
}