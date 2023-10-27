using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using DevExpress.XtraGrid.Views.Grid;
using System.Diagnostics;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;

namespace PH.MobileQC.UI.FirstPassRatio
{
    public partial class FirstPassQtyDefectListForm : DevExpress.XtraEditors.XtraForm
    {

        public string Date2;
        public string Line2;
        public DataSet WorkerSource;
        public FirstPassQtyDefectListForm(List<FirstPassDetail> tb, DataSet WorkerSource, string Date, string Line)
        {
            InitializeComponent();
            this.gridControl1.DataSource = tb;
            labdate.Text = "Date : " + Date;
            labLine.Text = "Line Location : " + Line;
            this.bandedGridView1.BestFitColumns();
            this.WorkerSource = WorkerSource;

            this.toolTipController2.ShowHint(WorkerSource.Tables[2].Rows[0]["Worker"].ToString());
            this.toolTipController2.ShowHint("");

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
                case "DefectName_BD":
                case "SingleDefectQty":
                case "WorkerSumShow":
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
                case "PODName_BD":
                case "SinglePODQty":
                    //case "PODCodeCount":
                    e.Merge = false;
                    e.Handled = true;
                    break;

            }
        }

        private void simpleButton1_Click(object sender, EventArgs e)
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

        private void bandedGridView1_MouseMove(object sender, MouseEventArgs e)
        {
            GridHitInfo hitInfo = this.bandedGridView1.CalcHitInfo(new Point(e.X, e.Y));
            if (hitInfo.RowHandle < 0) return;
            //DataRow dr = this.gridView1.GetDataRow(hitInfo.RowHandle);

            FirstPassDetail obj = this.bandedGridView1.GetRow(hitInfo.RowHandle) as FirstPassDetail;
            if (obj == null || string.IsNullOrEmpty(obj.Worker))
            {
                toolTipController1.HideHint();
                return;
            }

            string ShowText = obj.Worker;
            toolTipController1.ShowHint(ShowText);

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

        private void FirstPassQtyDefectListForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.toolTipController1.HideHint();
        }

        private void FirstPassQtyDefectListForm_LocationChanged(object sender, EventArgs e)
        {
            if (this.WindowState == System.Windows.Forms.FormWindowState.Minimized)
                this.toolTipController1.HideHint();
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            FirstPassQtyWorkerListForm Fdetail = new FirstPassQtyWorkerListForm(WorkerSource, Date2, Line2);
            Fdetail.StartPosition = FormStartPosition.CenterParent;
            DialogResult dlg = Fdetail.ShowDialog();
        }

        List<int> MaxWidth = new List<int>();
        private void toolTipController1_CalcSize(object sender, DevExpress.Utils.ToolTipControllerCalcSizeEventArgs e)
        {
            e.Size = new Size(MaxWidth.Max(), e.Size.Height);
        }

        private void toolTipController2_CalcSize(object sender, DevExpress.Utils.ToolTipControllerCalcSizeEventArgs e)
        {
            int i = e.Size.Width;
            MaxWidth.Add(i);
        }

        private void bandedGridView1_DoubleClick(object sender, EventArgs e)
        {
            FirstPassDetail obj = bandedGridView1.GetFocusedRow() as FirstPassDetail;
            if (obj == null || obj.WorkerSum == "0" || string.IsNullOrEmpty(obj.ImgUrl))
            {
                MessageBox.Show("No images.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            ShowImageForm frmShowImage = new ShowImageForm(obj.ImgUrl);
            frmShowImage.ShowDialog();

        }






    }
}
