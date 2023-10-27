using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LineBalanceII.BO;

namespace PH.LineBalanceII.UI
{
    public partial class TestForm : Form
    {
        public TestForm(string AKHKH, string APHKH, int AEdition, string AZH)
        {
            InitializeComponent();

            LineBalanceIIDataContext db = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
            List<OpsSpecSheetMaster> lists = db.GetOpsSpecSheetMasterList(AKHKH, APHKH, AEdition, AZH);
            this.bindingSource1.DataSource = lists;
            this.gridControl2.DataSource = (this.bindingSource1.Current as OpsSpecSheetMaster).OpsSpecSheetOperationDetailList.OrderBy(p => p.OperationSeqNo).ToList();

        }

        private void bindingSource1_CurrentChanged(object sender, EventArgs e)
        {
            this.gridControl2.DataSource = (this.bindingSource1.Current as OpsSpecSheetMaster).OpsSpecSheetOperationDetailList.OrderBy(p=>p.OperationSeqNo).ToList();

        }
    }
}
