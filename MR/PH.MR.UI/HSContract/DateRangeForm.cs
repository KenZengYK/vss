using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;
//using DevExpress.XtraReports.Native;

namespace PH.MR.UI.HSContract
{
    public partial class DateRangeForm : Form
    {
        HSContractReciveListForm Parent;
        public DateRangeForm(HSContractReciveListForm parent)
        {
            InitializeComponent();
            Parent = parent;
        }

        public void btnQuery_Click(object sender, EventArgs e)
        {
            PH.MR.BO.ReportHelper helper = new ReportHelper();
            string _now =DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff");
            string _d1 = deStart.DateTime.ToString("yyyy-MM-dd HH:mm:ss.fff");
            string _d2 = deEnd.DateTime.ToString("yyyy-MM-dd HH:mm:ss.fff");
          
           // DataTable db = helper.GetReciveDataList(_now, _d1, _d2);
            DataSet ds = helper.GetReciveData(_now, _d1, _d2);
            Parent.DbRecive = ds.Tables[0];
            Parent.DbDetail = ds.Tables[1];
            Parent.DateRange = _d1.Substring(0, 10) + " ~ " + _d2.Substring(0,10);
        }
    }
}
