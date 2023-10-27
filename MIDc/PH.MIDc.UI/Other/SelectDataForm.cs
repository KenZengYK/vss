using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class SelectDataForm : DevExpress.XtraEditors.XtraForm
    {
        #region fields

        private List<ColumnSetting> columnSettings;

        public BindingSource bingdingSource;
        
        #endregion

        public SelectDataForm(BindingSource datasource, string caption, List<ColumnSetting> columnSettings)
        {
            this.columnSettings = columnSettings;
            this.bingdingSource = datasource;

            try
            {
                InitializeComponent();
                this.Text = caption;
                SetStyle(ControlStyles.SupportsTransparentBackColor, true);
                InitData();
                gcSimple.ForceInitialize();
            }
            catch (Exception err)
            { 
                MessageBox.Show(err.Message, err.Source, MessageBoxButtons.OK, MessageBoxIcon.Error); 
            }
        }

        #region Init
        private void InitData()
        {
            this.gvSimple.Columns.Clear();
            this.gcSimple.DataSource = this.bingdingSource;
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
        #endregion

        private void gcSimple_DoubleClick(object sender, EventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitInfo hi =
                gvSimple.CalcHitInfo((sender as Control).PointToClient(Control.MousePosition));

            if (hi.RowHandle >= 0)
                this.DialogResult = DialogResult.OK;
        }

    }
}
