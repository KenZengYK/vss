using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.HDO.BO;
using DevExpress.XtraGrid.Views.BandedGrid;

namespace PH.HDO.UI.GRN
{
    public partial class HDODeliveryListSummaryForm : DevExpress.XtraEditors.XtraForm
    {
        IEnumerable<HDODelivery> _DataList;
        public HDODeliveryListSummaryForm(IEnumerable<HDODelivery> ADataList)
        {
            InitializeComponent();
            _DataList = ADataList;
            PrepareData();

            //var a = ADataList.Where(p => p.HDO_Status == "B").Select(p => p.HDONO).Distinct().Count();
        }

        void PrepareData()
        {
            List<GRNWorksheetSummary> ResultList = new List<GRNWorksheetSummary>();

            //计算Transit Point: A 的 Summary
            var ListA = _DataList.Where(p => p.HDO_Status == "A")
                .GroupBy(p => new { HDOStageCode = p.HDO_Status, TransitPoint = p.AdviceNoteNo.Substring(0, 1) })
                .Select(g => new GRNWorksheetSummary
                {
                    HDOStageCode = g.Key.HDOStageCode,
                    TransitPoint = GetTransitPoint(g.Key.TransitPoint),
                    TotalGRN = g.Select(s => s.GRNNO).Distinct().Count()
                }).ToList();

            //计算Transit Point: A 的 Sub Total
            int iTotalGRNA = ListA.Sum(p => p.TotalGRN ?? 0);
            foreach (var obj in ListA)
            {
                obj.SubTotalGRN = iTotalGRNA;
            }


            //计算Transit Point: B 的 Summary
            var ListB = _DataList.Where(p => p.HDO_Status == "B")
                .GroupBy(p => new { HDOStageCode = p.HDO_Status, TransitPoint = p.AdviceNoteNo.Substring(0, 1), HDODate = p.HDODate })
                .Select(g => new GRNWorksheetSummary
                {
                    HDOStageCode = g.Key.HDOStageCode,
                    TransitPoint = GetTransitPoint(g.Key.TransitPoint),
                    Date = g.Key.HDODate,
                    TotalGRN = g.Select(s => s.GRNNO).Distinct().Count(),
                    TotalHDO = g.Select(s => s.HDONO).Distinct().Count()
                }).ToList();

            //计算Transit Point: B 的 Sub Total
            int iTotalGRNB = ListB.Sum(p => p.TotalGRN ?? 0);
            int iTotalHDOB = ListB.Sum(p => p.TotalHDO ?? 0);
            foreach (var obj in ListB)
            {
                obj.SubTotalGRN = iTotalGRNB;
                obj.SubTotalHDO = iTotalHDOB;
            }

            //计算Total
            GRNWorksheetSummary TotalSummary = new GRNWorksheetSummary();
            TotalSummary.HDOStageCode = "Ttl:-";
            TotalSummary.SubTotalGRN = iTotalGRNA + iTotalGRNB;
            TotalSummary.SubTotalHDO = iTotalHDOB;

            ResultList.AddRange(ListA);
            ResultList.AddRange(ListB);
            ResultList.Add(TotalSummary);

            bindingSource.DataSource = ResultList.OrderBy(p => p.HDOStageCode).ThenBy(p => p.TransitPoint).ThenBy(p => p.Date);

        }

        public string GetTransitPoint(string AStr)
        {
            if (AStr.ToUpper() == "C") return "BDCRS";
            else if (AStr.ToUpper() == "S") return "SLCRS";
            else if (AStr.ToUpper() == "H") return "HKCCS";
            else return "";
        }

        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            BandedGridView gridView = sender as BandedGridView;
            string HDOStageCode1 = gridView.GetRowCellValue(e.RowHandle1, "HDOStageCode") == null ? "" : gridView.GetRowCellValue(e.RowHandle1, "HDOStageCode").ToString();
            string HDOStageCode2 = gridView.GetRowCellValue(e.RowHandle2, "HDOStageCode") == null ? "" : gridView.GetRowCellValue(e.RowHandle2, "HDOStageCode").ToString();
            string TransitPoint1 = gridView.GetRowCellValue(e.RowHandle1, "TransitPoint") == null ? "" : gridView.GetRowCellValue(e.RowHandle1, "TransitPoint").ToString();
            string TransitPoint2 = gridView.GetRowCellValue(e.RowHandle2, "TransitPoint") == null ? "" : gridView.GetRowCellValue(e.RowHandle2, "TransitPoint").ToString();


            switch (e.Column.FieldName)
            {
                case "HDOStageCode":
                case "SubTotalGRN":
                case "SubTotalHDO":
                    e.Merge = HDOStageCode1 == HDOStageCode2;
                    e.Handled = true;
                    break;

                case "TransitPoint":
                    e.Merge = TransitPoint1 == TransitPoint2;
                    e.Handled = true;
                    break;


                default:
                    e.Merge = false;
                    e.Handled = true;
                    break;

            }

            if (e.Column.Name == "colCOP")
            {
                e.Merge = false;
                e.Handled = true;
            }
        }

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            string HDOStageCode = bandedGridView1.GetRowCellValue(e.RowHandle, bandedGridView1.Columns["HDOStageCode"]).ToString();
            if (HDOStageCode == "A" && (e.Column.FieldName == "Date" || e.Column.FieldName == "TotalHDO" || e.Column.FieldName == "SubTotalHDO") && e.CellValue == null)
            {
                e.DisplayText = "-";
            }
        }
    }

    public class GRNWorksheetSummary
    {
        public string HDOStageCode { get; set; }
        public string TransitPoint { get; set; }
        public DateTime? Date { get; set; }
        public int? TotalGRN { get; set; }
        public int? TotalHDO { get; set; }
        public int? SubTotalGRN { get; set; }
        public int? SubTotalHDO { get; set; }

    }
}