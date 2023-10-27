using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.POPC.BO;

namespace PH.POPC.UI
{
    public partial class SelectPoFormat : DevExpress.XtraEditors.XtraForm
    {
        public SelectPoFormat()
        {
            InitializeComponent();
        }
        public POFormat CustFormat;
        private void but_Ok_Click(object sender, EventArgs e)
        {
            if (this.gridView1.RowCount > 0)
            {
                this.CustFormat = this.gridView1.GetRow(this.gridView1.FocusedRowHandle) as POFormat;
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
        }

        private void but_Close_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void SelectPoFormat_Load(object sender, EventArgs e)
        {
            POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<POPCDataContext>();
            context.CommandTimeout = 1000;
            this.gridControl1.DataSource = context.POFormats;

        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            but_Ok_Click(null, null);
        }
    }
}
