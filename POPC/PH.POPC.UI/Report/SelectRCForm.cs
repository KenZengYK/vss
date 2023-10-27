using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.POPC.BO;

namespace PH.POPC.UI.Report
{
    public partial class SelectRCForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectRCForm()
        {
            InitializeComponent();
            this.PrepareData();
        }

        void PrepareData()
        {
            POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
            this.bindingSource.DataSource = db.ExecuteDataTable("exec sp_ChooseRC", "dtRC");
        }

        public string GetChooseRCNo()
        {
            DataRow dr = this.gridView.GetDataRow(this.gridView.FocusedRowHandle);
            return dr["RCNO92"].ToString();
        }

    }
}