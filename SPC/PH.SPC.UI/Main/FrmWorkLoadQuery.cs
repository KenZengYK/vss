using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;

namespace PH.SPC.UI.Main
{
    public partial class FrmWorkLoadQuery : Form
    {

        public SPCDataContext CurContext;
        public MonthWorkLoadListForm MWForm;
        public FrmWorkLoadQuery()
        {
            InitializeComponent();
            string[] _yearmonth =GetYYMM();
            cbStart.Properties.Items.AddRange(_yearmonth);
            cbEnd.Properties.Items.AddRange(_yearmonth);            
        }


        public string[] GetYYMM()
        {
            string[] yearmonth = new string[240];

            int _startyear = 2011;
            int _idx = 0;
            for (int i = 0; i < 20; i++)
            {
                for (int j = 1; j <=12; j++)
                {
                    if (j < 10)
                        yearmonth[_idx] = _startyear.ToString() + "0" + j.ToString();
                    else
                        yearmonth[_idx] = _startyear.ToString() +j.ToString();
                    _idx++;
                }
                _startyear++;
                
            }
            return yearmonth;

        }

        private void btnQuery_Click(object sender, EventArgs e)
        {

            //if (string.IsNullOrEmpty(cbStart.Text) || string.IsNullOrEmpty(cbEnd.Text))
            //{
            //    MessageBox.Show("Start month or end month can not null!");
            //    return;
            //}

            if (int.Parse(cbEnd.SelectedText) < int.Parse(cbStart.SelectedText))
            {
                MessageBox.Show("Start month must before end month !");
                return;               
            }
            
            CurContext.CommandTimeout = 8000;

            string _start = this.cbStart.SelectedText.Trim();
            string _end = this.cbEnd.SelectedText.Trim();
            string _startdate = _start.Substring(0,4) + "/" + _start.Substring(4, 2) + "/01";
            DateTime _dt = DateTime.Parse(_end.Substring(0, 4) + "-" + _end.Substring(4, 2) + "-01").AddDays(-1).AddMonths(1); //取結束月份最后一天

            string sql = string.Format("exec [Proc_MonthlyWorkload] '{0}','{1}'", _startdate,_dt.ToShortDateString());

            MWForm.IsSummary = ckSummary.Checked;
            IEnumerable<WorkLoad> q = CurContext.ExecuteQuery<WorkLoad>(sql);
            if (q!=null)
                MWForm.QueryResult = q.ToList(); // CurContext.ExecuteQuery<WorkLoad>(sql).ToList();

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
