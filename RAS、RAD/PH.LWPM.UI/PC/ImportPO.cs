using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;
using PH.Platform.BO;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.LWPM.UI.PC
{
    public partial class ImportPOForm : DevExpress.XtraEditors.XtraForm
    {

        public GridView SelectGridView
        {
            get { return this.gridSelect; }
        }

        public ImportPOForm()
        {
            InitializeComponent();

            string SqlStr = "select convert(bit, 0) as CheckFlag, PONO, AmendNo, IssueDate, PaymentTerm, Incoterms, TransitMode from POHeader order by IssueDate desc";
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.gridMachine.DataSource = db.ExecuteDataTable(SqlStr, "dtImport");
        }
    }
}