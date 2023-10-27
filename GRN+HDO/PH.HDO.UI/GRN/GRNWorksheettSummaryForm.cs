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
    public partial class GRNWorksheettSummaryForm : DevExpress.XtraEditors.XtraForm
    {
        IEnumerable<HDODelivery> _DataList;
        public GRNWorksheettSummaryForm(IEnumerable<HDODelivery> ADataList)
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
                .GroupBy(p => new { HDOStageCode = p.HDO_Status })
                .Select(g => new GRNWorksheetSummary
                {
                    HDOStageCode = g.Key.HDOStageCode,
                    GRN_TransitPoint_HKCCS = g.Where(s => s.AdviceNoteNo.Substring(0, 1) == "H").Select(s => s.GRNNO).Distinct().Count(),
                    GRN_TransitPoint_SLCRS = g.Where(s => s.AdviceNoteNo.Substring(0, 1) == "S").Select(s => s.GRNNO).Distinct().Count(),
                    GRN_TransitPoint_BDCRS = g.Where(s => s.AdviceNoteNo.Substring(0, 1) == "C").Select(s => s.GRNNO).Distinct().Count()

                }).ToList();

         

            //计算Transit Point: A 的 Sub Total的 Total
            int iSubTotalGRNA = ListA.Sum(p => (p.GRN_TransitPoint_HKCCS ?? 0) + (p.GRN_TransitPoint_SLCRS ?? 0) + +(p.GRN_TransitPoint_BDCRS ?? 0));
            foreach (var obj in ListA)
            {
                obj.GRN_SubTotal = iSubTotalGRNA;
                obj.GRN_Total = iSubTotalGRNA;
            }


            //计算Transit Point: B 的 Summary
            var ListB = _DataList.Where(p => p.HDO_Status == "B")
                .GroupBy(p => new { HDOStageCode = p.HDO_Status, HDODate = p.HDODate })
                .Select(g => new GRNWorksheetSummary
                {
                    HDOStageCode = g.Key.HDOStageCode,
                    Date = g.Key.HDODate,

                    GRN_TransitPoint_HKCCS = g.Where(s => s.AdviceNoteNo.Substring(0, 1) == "H" && s.HDODate == g.Key.HDODate).Select(s => s.GRNNO).Distinct().Count(),
                    GRN_TransitPoint_SLCRS = g.Where(s => s.AdviceNoteNo.Substring(0, 1) == "S" && s.HDODate == g.Key.HDODate).Select(s => s.GRNNO).Distinct().Count(),
                    GRN_TransitPoint_BDCRS = g.Where(s => s.AdviceNoteNo.Substring(0, 1) == "C" && s.HDODate == g.Key.HDODate).Select(s => s.GRNNO).Distinct().Count(),

                    HDO_TransitPoint_HKCCS = g.Where(s => s.AdviceNoteNo.Substring(0, 1) == "H" && s.HDODate == g.Key.HDODate).Select(s => s.HDONO).Distinct().Count(),
                    HDO_TransitPoint_SLCRS = g.Where(s => s.AdviceNoteNo.Substring(0, 1) == "S" && s.HDODate == g.Key.HDODate).Select(s => s.HDONO).Distinct().Count(),
                    HDO_TransitPoint_BDCRS = g.Where(s => s.AdviceNoteNo.Substring(0, 1) == "C" && s.HDODate == g.Key.HDODate).Select(s => s.HDONO).Distinct().Count()

                }).ToList();

            //计算Transit Point: B 的 Sub Total
            foreach (var obj in ListB)
            {
                obj.GRN_SubTotal = (obj.GRN_TransitPoint_HKCCS ?? 0) + (obj.GRN_TransitPoint_SLCRS ?? 0) + +(obj.GRN_TransitPoint_BDCRS ?? 0);
                obj.HDO_SubTotal = (obj.HDO_TransitPoint_HKCCS ?? 0) + (obj.HDO_TransitPoint_SLCRS ?? 0) + +(obj.HDO_TransitPoint_BDCRS ?? 0);
            }

            //计算Transit Point: B 的 Total
            int iTotalGRNB = ListB.Sum(p => p.GRN_SubTotal ?? 0);
            int iTotalHDOB = ListB.Sum(p => p.HDO_SubTotal ?? 0);
            foreach (var obj in ListB)
            {
                obj.GRN_Total = iTotalGRNB;
                obj.HDO_Total = iTotalHDOB;
            }


            //计算Grand Total
            GRNWorksheetSummary TotalSummary = new GRNWorksheetSummary();
            TotalSummary.HDOStageCode = "Grand Ttl:";
            TotalSummary.GRN_Total = iSubTotalGRNA + iTotalGRNB;
            TotalSummary.HDO_Total = iTotalHDOB;

            ResultList.AddRange(ListA);
            ResultList.AddRange(ListB);
            ResultList.Add(TotalSummary);

            bindingSource.DataSource = ResultList.OrderBy(p => p.HDOStageCode).ThenBy(p => p.Date);

        }

        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            BandedGridView gridView = sender as BandedGridView;
            string HDOStageCode1 = gridView.GetRowCellValue(e.RowHandle1, "HDOStageCode") == null ? "" : gridView.GetRowCellValue(e.RowHandle1, "HDOStageCode").ToString();
            string HDOStageCode2 = gridView.GetRowCellValue(e.RowHandle2, "HDOStageCode") == null ? "" : gridView.GetRowCellValue(e.RowHandle2, "HDOStageCode").ToString();

            switch (e.Column.FieldName)
            {
                case "HDOStageCode":
                case "GRN_Total":
                case "HDO_Total":
                    e.Merge = HDOStageCode1 == HDOStageCode2;
                    e.Handled = true;
                    break;

                default:
                    e.Merge = false;
                    e.Handled = true;
                    break;
            }
        }

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            string HDOStageCode = bandedGridView1.GetRowCellValue(e.RowHandle, bandedGridView1.Columns["HDOStageCode"]).ToString();
            if (HDOStageCode == "A" && (e.Column.FieldName == "Date" || e.Column.FieldName == "HDO_Total" && e.CellValue == null))
            {
                e.DisplayText = "n.a.";
            }
        }

    }

    public class GRNWorksheetSummary
    {
        public string HDOStageCode { get; set; }
        public DateTime? Date { get; set; }

        public int? GRN_TransitPoint_HKCCS { get; set; }
        public int? GRN_TransitPoint_SLCRS { get; set; }
        public int? GRN_TransitPoint_BDCRS { get; set; }
        public int? GRN_SubTotal { get; set; }
        public int? GRN_Total { get; set; }

        public int? HDO_TransitPoint_HKCCS { get; set; }
        public int? HDO_TransitPoint_SLCRS { get; set; }
        public int? HDO_TransitPoint_BDCRS { get; set; }
        public int? HDO_SubTotal { get; set; }
        public int? HDO_Total { get; set; }
    }

}

