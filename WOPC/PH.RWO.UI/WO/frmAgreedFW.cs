using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.RWO.UI.WO
{
    public partial class frmAgreedFW : DevExpress.XtraEditors.XtraForm
    {
        int _opt;
        object _datasource;
        DateTime? _opt2FW;
        public frmAgreedFW(int opt, object datasource, DateTime? opt2FW)
        {
            InitializeComponent();
            _opt = opt;
            _datasource = datasource;
            _opt2FW = opt2FW;

            colFWOpt2.Visible = (_opt == 2);
            colFWOpt4.Visible = (_opt == 4);

            this.Text = string.Format("Agreed FW - Option {0}", _opt);
            //this.lbTips.Text = "Please input Option 2's FW Start Date:";

            this.workOrderColorBindingSource.DataSource = _datasource;
        }

        public DateTime FW
        {
            get
            {
                DateTime dt = DateTime.MaxValue; ;
                IEnumerable<PH.RWO.BO.WorkOrderColor> list = this.workOrderColorBindingSource.DataSource as IEnumerable<PH.RWO.BO.WorkOrderColor>;
                foreach (var item in list)
                {
                    if (_opt == 2)
                    {
                        if (dt > (item.FWOpt2 ?? DateTime.MinValue))
                            dt = (item.FWOpt2 ?? DateTime.MinValue);
                    }
                    else if (_opt == 4)
                    {
                        if (dt > (item.FWOpt4 ?? DateTime.MinValue))
                            dt = (item.FWOpt4 ?? DateTime.MinValue);
                    }
                }

                return dt;
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (this.FW == DateTime.MinValue)
            {
                MessageBox.Show("FW Start date cannot be empty!");
                return;
            }
            if (_opt == 4)
                if (_opt2FW.HasValue)
                {
                    //if (FW <= _opt2FW.Value)
                    if (FW < _opt2FW.Value)
                    {
                        MessageBox.Show(string.Format("Option 4's FW Start date [{0:yyyy/MM/dd}]  must later than or same as Option 2 [{1:yyyy/MM/dd}] .", FW, _opt2FW));
                        return;
                    }
                }
            this.DialogResult = DialogResult.OK;
        }
    }
}