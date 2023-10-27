using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using DevExpress.XtraGrid.Views.Grid;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Trans
{
    public partial class ChoiceImproveActionPlanForm : DevExpress.XtraEditors.XtraForm
    {
        public GridView SelectGridView 
        { 
            get { return this.gridSelect; } 
        }

        public ChoiceImproveActionPlanForm()
        {
            InitializeComponent();

            string SqlStr = "select SeqNo, NameCN, NameEN, convert(bit, 0) as CheckFlag " +
                            "from QC_ImproveActionPlan";

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.grid.DataSource = db.ExecuteDataTable(SqlStr, "dtImport");
        }
    }
}