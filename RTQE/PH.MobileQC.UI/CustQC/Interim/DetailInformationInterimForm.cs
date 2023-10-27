using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MobileQC.BO;
using DevExpress.XtraGrid.Views.BandedGrid;

namespace PH.MobileQC.UI.CustQC
{
    public partial class DetailInformationInterimForm : Form
    {
        public DetailInformationInterimForm(string AQCLocation, DateTime AStartDate, DateTime ADueDate)
        {
            InitializeComponent();

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            string SqlStr = string.Format("exec sp_CustQCDetailInterimReport '{0}', '{1}', '{2}', 1", AQCLocation, AStartDate, ADueDate);
            this.bindingSource.DataSource = db.ExecuteQuery<sp_CustQCDetailInterimReportResult>(SqlStr);
        }

        private void gridView1_MasterRowGetRelationName(object sender, DevExpress.XtraGrid.Views.Grid.MasterRowGetRelationNameEventArgs e)
        {
            if (e.RowHandle == 0 && e.RelationIndex == 0)
                e.RelationName = "Detail";
        }

        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            BandedGridView gridView = sender as BandedGridView;
            string OID1 = gridView.GetRowCellValue(e.RowHandle1, "OID").ToString();
            string OID2 = gridView.GetRowCellValue(e.RowHandle2, "OID").ToString();

            switch (e.Column.FieldName)
            {
                case "OID":
                case "ResponsibleDept":
                case "ProjectNO":
                case "CustStyle":
                case "Color":
                case "Customer":
                case "QCLocation":
                case "MfgLocation":
                case "CatLogNO":
                case "ItemCN":
                case "ItemEN":
                    e.Merge = OID1 == OID2;
                    e.Handled = true;
                    break;

                default:  //默認按QN合并
                    e.Merge = false;
                    e.Handled = true;
                    break;
            }

        }
    }
}
