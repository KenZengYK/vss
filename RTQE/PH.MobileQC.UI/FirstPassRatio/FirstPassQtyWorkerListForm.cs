using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.MobileQC.UI.FirstPassRatio
{
    public partial class FirstPassQtyWorkerListForm : DevExpress.XtraEditors.XtraForm
    {
        public FirstPassQtyWorkerListForm(DataSet WorkerSource, string Date, string Line)
        {
            InitializeComponent();
            labdate.Text = "Date : " + Date;
            labLine.Text = "Line Location : " + Line;
            this.bindingSource1.DataSource = MobileQC.BO.MobileQCDataContext.FirstDetailWorker(WorkerSource);
            this.bandedGridView1.BestFitColumns();
        }

        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            GridView gridView = sender as GridView;

            string MasterID1 = gridView.GetRowCellValue(e.RowHandle1, "MasterID").ToString();
            string MasterID2 = gridView.GetRowCellValue(e.RowHandle2, "MasterID").ToString();
            //string UpdateTime1 = gridView.GetRowCellValue(e.RowHandle1, "UpdateTimeShow").ToString();
            //string UpdateTime2 = gridView.GetRowCellValue(e.RowHandle2, "UpdateTimeShow").ToString();
            string DefectCode1 = gridView.GetRowCellValue(e.RowHandle1, "DefectCode").ToString();
            string DefectCode2 = gridView.GetRowCellValue(e.RowHandle2, "DefectCode").ToString();


            //string POD1 = gridView.GetRowCellValue(e.RowHandle1, "PODCode").ToString();
            //string POD2 = gridView.GetRowCellValue(e.RowHandle2, "PODCode").ToString();



            switch (e.Column.FieldName)
            {
                case "AcceptLimit":
                case "QN":
                case "QNQty":
                case "DefectPieceQty":
                case "PODCodeCount":
                case "DefectCodeCount":
                case "ReportNr":
                case "CustStyle":
                case "Color":
                case "Class":
                case "ProductQty":
                case "SampleQty":
                case "SizeQty":
                case "Time":
                case "Lt":
                case "PF":
                case "Worker":
                case "MajorAQL":
                case "MajorLevel":
                case "MajorSinglePiece":
                case "MajorCountNr":
                case "MajorNonCountNr":
                case "MajorTotal":
                case "MinorAQL":
                case "MinorLevel":
                case "MinorSinglePiece":
                case "MinorCountNr":
                case "MinorNonCountNr":
                case "MinorTotal":
                    e.Merge = MasterID1 == MasterID2;
                    e.Handled = true;
                    break;

                case "DefectCode":
                case "DefectName_EN":
                case "DefectName_CN":
                case "SingleDefectQty":
                case "WorkerSum":
                    //case "DefectCodeCount":
                    e.Merge = MasterID1 == MasterID2 && DefectCode1 == DefectCode2;
                    e.Handled = true;
                    break;


                case "Workshop":
                case "Line":
                case "Date":
                    e.Merge = true;
                    e.Handled = false;
                    break;

                case "PODCode":
                case "PODName_EN":
                case "PODName_CN":
                case "SinglePODQty":
                    //case "PODCodeCount":
                    e.Merge = false;
                    e.Handled = true;
                    break;

            }
        }

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            DevExpress.Utils.AppearanceDefault appRedColor = new DevExpress.Utils.AppearanceDefault(Color.Black, Color.Red, Color.Red, Color.Red);

            string strTemp = bandedGridView1.GetRowCellValue(e.RowHandle, "PF").ToString().Trim();

            if (e.Column.FieldName == "PF")
            {
                if (strTemp != "P")
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Green;
                }
            }
        }
    }
}