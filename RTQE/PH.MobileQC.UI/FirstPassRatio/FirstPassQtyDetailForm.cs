using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.Data;
using DevExpress.XtraGrid;
using System.Diagnostics;
using System.Linq;

namespace PH.MobileQC.UI.FirstPassRatio
{
    public partial class FirstPassQtyDetailForm : DevExpress.XtraEditors.XtraForm
    {
        public List<FirstPassDetail> list;
        public string Date2;
        public string Line2;
        public DataSet WorkerSource;
        public FirstPassQtyDetailForm(DataSet tb, string Date, string WorkShop, string Language)
        {
            InitializeComponent();
            list = MobileQCDataContext.FirstDetail(tb);
            this.gridControl1.DataSource = list;
            this.labDate.Text = "Date : " + Date;
            WorkerSource = tb;
            this.labWorkShop.Text = "Line Location : " + WorkShop;
            this.ClPODName_EN.Caption = string.Format("Desc.\r\n({0})", Language);
            this.ClDefectCodeName_En.Caption = this.ClPODName_EN.Caption;

            Date2 = Date;
            Line2 = WorkShop;
            this.bandedGridView1.BestFitColumns();
        }

        private void gridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            //DevExpress.Utils.AppearanceDefault appRedColor = new DevExpress.Utils.AppearanceDefault(Color.Black, Color.Red, Color.Red, Color.Red);

            //string strTemp = bandedGridView1.GetRowCellValue(e.RowHandle, "AuditResult").ToString().Trim();

            //if (e.Column.FieldName == "Qn" && strTemp != "P")
            //{

            //    e.Appearance.ForeColor = System.Drawing.Color.Red;
            //    //DevExpress.Utils.AppearanceHelper.Apply(e.Appearance, appRedColor);
            //}

            //string strTemp1 = gridView1.GetRowCellValue(e.RowHandle, "Worker").ToString().Trim();
            //if (e.Column.FieldName == "WorkShop" && !string.IsNullOrEmpty(strTemp1))
            //{

            //    e.Appearance.ForeColor = System.Drawing.Color.Green;
            //    //DevExpress.Utils.AppearanceHelper.Apply(e.Appearance, appRedColor);
            //}


        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            //string RowText = this.gridView1.GetFocusedRowCellValue(gridView1.Columns[9]).ToString();
            //if (string.IsNullOrEmpty(RowText))
            //{
            //    toolTipController1.ShowHint("");
            //}
            //else
            //{
            //    toolTipController1.ShowHint(RowText);
            //}

            //toolTipController1.ShowHint(RowText,System.Windows.Forms.Control.MousePosition as Point);
            //toolTipController1.SetToolTip(this.gridControl1, RowText);
            //toolTipController1.ShowHint(RowText, "Worker and operation information");

        }

        private void FirstPassQtyDetailForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.toolTipController1.HideHint();
        }



        private void FirstPassQtyDetailForm_LocationChanged(object sender, EventArgs e)
        {
            if (this.WindowState == System.Windows.Forms.FormWindowState.Minimized)
                this.toolTipController1.HideHint();
        }

        private void gridView1_Click(object sender, EventArgs e)
        {
            //string RowText = this.gridView1.GetFocusedRowCellValue(gridView1.Columns[9]).ToString();
            //if (string.IsNullOrEmpty(RowText))
            //{
            //    toolTipController1.ShowHint("");
            //}
            //else
            //{
            //    toolTipController1.ShowHint(RowText);
            //}
        }

        private void gridView1_MouseMove(object sender, MouseEventArgs e)
        {

            //string RowText = this.gridView1.GetFocusedRowCellValue(gridView1.Columns[9]).ToString();
            //if (string.IsNullOrEmpty(RowText))
            //{
            //    toolTipController1.ShowHint("");
            //}
            //else
            //{
            //    toolTipController1.ShowHint(RowText);
            //}
            //GridHitInfo hitInfo = this.bandedGridView1.CalcHitInfo(new Point(e.X, e.Y));
            //if (hitInfo.RowHandle < 0) return;
            ////DataRow dr = this.gridView1.GetDataRow(hitInfo.RowHandle);

            //FirstPassDetail obj = this.bandedGridView1.GetRow(hitInfo.RowHandle) as FirstPassDetail;
            //if (obj == null || string.IsNullOrEmpty(obj.Worker))
            //{
            //    toolTipController1.HideHint();
            //    return;
            //}

            //string ShowText = obj.Worker;
            //toolTipController1.ShowHint(ShowText);

        }

        private void gridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {

        }

        private void gridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            //e.
        }

        private void bandedGridView1_CellMerge(object sender, CellMergeEventArgs e)
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
                case "Customer":
                case "Line":
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

        private void bandedGridView1_MouseMove(object sender, MouseEventArgs e)
        {
            //GridHitInfo hitInfo = this.bandedGridView1.CalcHitInfo(new Point(e.X, e.Y));
            //if (hitInfo.RowHandle < 0) return;
            ////DataRow dr = this.gridView1.GetDataRow(hitInfo.RowHandle);

            //FirstPassDetail obj = this.bandedGridView1.GetRow(hitInfo.RowHandle) as FirstPassDetail;
            //if (obj == null || string.IsNullOrEmpty(obj.Worker))
            //{
            //    toolTipController1.HideHint();
            //    return;
            //}

            //string ShowText = obj.Worker;
            //toolTipController1.ShowHint(ShowText);
        }

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            DevExpress.Utils.AppearanceDefault appRedColor = new DevExpress.Utils.AppearanceDefault(Color.Black, Color.Red, Color.Red, Color.Red);

            string strTemp = bandedGridView1.GetRowCellValue(e.RowHandle, "PF").ToString().Trim();

            if (e.Column.FieldName == "QN" && strTemp != "P")
            {

                e.Appearance.ForeColor = System.Drawing.Color.Red;
                //DevExpress.Utils.AppearanceHelper.Apply(e.Appearance, appRedColor);
            }
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
        int customSum;
        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            //int summaryID = Convert.ToInt32((e.Item as GridSummaryItem).Tag);
            //GridView gridView = sender as GridView;

            //if (e.SummaryProcess == CustomSummaryProcess.Start)
            //{
            //    customSum = 0;
            //}

            //if (e.SummaryProcess == CustomSummaryProcess.Calculate)
            //{
            //    bool isSelected = (bool)gridView.GetRowCellValue(e.RowHandle, "Line");
            //    switch (summaryID)
            //    {
            //        case 1: // The total summary calculated against the 'CurrentApplyQuantity' column. 
            //            if (isSelected) 
            //                customSum += Convert.ToInt32(e.FieldValue);
            //            break;
            //    }
            //}

            //if (e.SummaryProcess == CustomSummaryProcess.Finalize)
            //{
            //    switch (summaryID)
            //    {
            //        case 1:
            //            e.TotalValue = customSum;
            //            break;
            //    }
            //}    



        }

        private void simprint_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "Excel文件|*.xls";
            saveFileDialog.FileName = "QuatationList" + DateTime.Now.ToString("yyyyMMdd") + ".xls";
            if (saveFileDialog.ShowDialog() == DialogResult.OK)
            {
                //                this.bandedGridView1.ExportToXls(saveFileDialog.FileName);

                DevExpress.XtraPrinting.XlsExportOptions option = new DevExpress.XtraPrinting.XlsExportOptions();
                option.ShowGridLines = true;
                option.UseNativeFormat = true;
                option.SheetName = "FirstPassYield";

                this.bandedGridView1.ExportToXls(saveFileDialog.FileName, option);



                if (MessageBox.Show("導出成功，是否打開?", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    Process.Start(saveFileDialog.FileName);
                }
            }
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {

            FirstPassQtyDefectListForm Fdetail = new FirstPassQtyDefectListForm(list, WorkerSource, Date2, Line2);
            Fdetail.StartPosition = FormStartPosition.CenterParent;
            DialogResult dlg = Fdetail.ShowDialog();
            //Fdetail.Show();
            //var a =(from c in list select  new {c.DefectName_CN,c.DefectName_EN}).Distinct();

            // FirstPassQtyPODListForm Fdetail = new FirstPassQtyPODListForm(, this.objListGridView.FocusedColumn.FieldName.ToString(), RowText, LanguageChose.EditValue.ToString());//.Where(d => d.QCTime == Convert.ToDateTime(ColumnText) && d.WorkShop == RowText).ToList());
            // Fdetail.StartPosition = FormStartPosition.CenterParent;
            // DialogResult dlg = Fdetail.ShowDialog();
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {

            //this.EditorTypeName=typeof(FirstPassQtyDefectListForm).FullName
            //Fdetail.StartPosition = FormStartPosition.CenterParent;
            //DialogResult dlg = Fdetail.ShowDialog();
        }


    }
}