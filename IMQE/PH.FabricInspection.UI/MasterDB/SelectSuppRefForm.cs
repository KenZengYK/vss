using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.MasterDB
{
    public partial class SelectSuppRefForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectSuppRefForm()
        {
            InitializeComponent();
            PrepareData();
        }

        void PrepareData()
        {
            string SqlStr = "select SuppRef, MaterialGroup, Status from [PH.MIDc]..Detail where Status  = 'Run-Gen' and MaterialGroup = 'C'";
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            bindingSource.DataSource = db.ExecuteDataTable(SqlStr, "dtSuppRef");
        }

        public string GetSelectedSuppRef()
        {
            return (bindingSource.Current as DataRowView).Row["SuppRef"].ToString();
        }
    }
}