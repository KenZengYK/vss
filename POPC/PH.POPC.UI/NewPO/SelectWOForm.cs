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
    public partial class SelectWOForm : DevExpress.XtraEditors.XtraForm
    {

        public SelectWOForm(string projctNo)
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
            this.Text = string.Format("Choose WO No. for {0}", this._projectNo);
            PH.RWO.BO.WorkOrderList list = new PH.RWO.BO.WorkOrderList();
            this.roundWorkOrderBindingSource.DataSource = list.GetWorkOrdersByProject(this._projectNo);
        }

        public PH.RWO.BO.WorkOrder WO
        {
            get
            {
                return this.roundWorkOrderBindingSource.Current as PH.RWO.BO.WorkOrder;
            }
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }


    }
}



