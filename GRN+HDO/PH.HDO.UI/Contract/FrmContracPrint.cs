using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.HDO.UI.Contract
{
    public partial class FrmContracPrint : Form
    {

        ContractFullInfo Parent;
        public FrmContracPrint(ContractFullInfo parent)
        {
            InitializeComponent();
            Parent = parent;
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {

          //   "0001-01-01  00:00"
            Parent.StartTime =string.IsNullOrEmpty(deStart.Text)?"":deStart.DateTime.ToString("yyyy-MM-dd  HH:mm");
            Parent.EndTime = string.IsNullOrEmpty(deEnd.Text) ? "" : deEnd.DateTime.ToString("yyyy-MM-dd  HH:mm");
            Parent.StartContract = edtCont1.Text;
            Parent.EndContract = edtCont2.Text;
            Parent.RptType = rgType.SelectedIndex;
        }
    }
}
