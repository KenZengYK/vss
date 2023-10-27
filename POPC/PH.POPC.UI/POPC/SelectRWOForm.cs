using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class SelectRWOForm : DevExpress.XtraEditors.XtraForm
    {

        public SelectRWOForm(string projctNo)
        {
            InitializeComponent();
            this.ProjectNo = projctNo;
            InitValue();
        }
        private string _projectNo;
        public string ProjectNo
        {
            get { return _projectNo; }
            set
            {
                _projectNo = value;
                if (!string.IsNullOrEmpty(_projectNo) && _projectNo.StartsWith("EX-"))
                {
                    _projectNo = _projectNo.Substring(3);
                }
            }
        }
        private void InitValue()
        {
            PH.RWO.BO.RoundWorkOrderList list = new PH.RWO.BO.RoundWorkOrderList();
            this.roundWorkOrderBindingSource.DataSource = list.GetRoundWorkOrdersByProject(this._projectNo);
        }

        public PH.RWO.BO.RoundWorkOrder RWO
        {
            get
            {
                return this.roundWorkOrderBindingSource.Current as PH.RWO.BO.RoundWorkOrder;
            }
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }


    }
}



