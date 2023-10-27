using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using DevExpress.XtraBars;
using PH.POPC.BO;

namespace PH.POPC.UI.ActionLog
{
    public partial class ActionLogIncompleteListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ActionLogIncompleteListForm()
        {
            InitializeComponent();

            POLevelDraw d = new POLevelDraw(this.bandedGridView1);
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawBandHeader1);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawColumnHeader1);
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<POPCDataContext>();
            PrepareData();

            this.bandedGridView1.OptionsBehavior.Editable = true;
            InitFormNavigator();
        }

        private void PrepareData()
        {
            List<POChangesMonitor> AllDataList;
            POPCDataContext db = DataContext as POPCDataContext;
            db = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            db.CommandTimeout = 1000;
            db.Connection.Open();
            db.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

            var list = db.POChangesMonitors.Where(p =>
                (p.POColorSizeDetail.VersionFlag ?? false) &&
                (p.POColorSizeDetail.PODetail.POHeader.Status != "-1") &&  //Cancel的PO不显示出来
                (p.POColorSizeDetail.PODetail.POHeader.Flag == null || p.POColorSizeDetail.PODetail.POHeader.Flag == "") &&
                (p.POColorSizeDetail.PODetail.Flag == null || p.POColorSizeDetail.PODetail.Flag == "") &&
                (p.ActionLogOID.HasValue && !p.ActionLogHeader.CompletedDate.HasValue));


            //得到按PONO + Order Line + Color汇总的数据
            AllDataList = list.ToList();

            //由于计算WO FW Start Date和WO Ex-fty Date放在BO中太慢，所以改为在取数时直接计算出来，2022-05-23 由 David 修改
            foreach (var obj in AllDataList)
            {
                if (!obj.WOSeqNo.HasValue)
                {
                    obj.WOSeqNo = 1;
                }

                string SqlStr = string.Format("exec sp_GetOurWOInfo '{0}', {1}", obj.POColorSizeDetail.PODetail.ProjectNo, (obj.WOSeqNo ?? 1));
                DataTable dt = (DataContext as POPCDataContext).ExecuteDataTable(SqlStr, "dt");
                if (dt.Rows.Count > 0)
                {
                    obj.WOFWStartDate = dt.Rows[0]["WOFWStartDate"] == null ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOFWStartDate"]);
                    obj.WOExftyDate = dt.Rows[0]["WOExftyDate"] == null ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOExftyDate"]);
                    obj.TotalWO = Convert.ToInt32(dt.Rows[0]["TotalWO"]);
                    obj.ChosenWO = dt.Rows[0]["ChosenWO"].ToString();
                }
            }

            var SummaryList = AllDataList.GroupBy(p => new
            {
                PONO = p.PONO,
                OrderLine = p.OrderLine,
                ColorCode = p.ColorCode,
                SplitNo = p.SplitNo
            })
            .Select(g => new
            {
                PONO = g.Key.PONO,
                OrderLine = g.Key.OrderLine,
                ColorCode = g.Key.ColorCode,
                SplitNo = g.Key.SplitNo,

                TotalSupplierPOQty = g.Sum(q => (q.SupplierPOQty ?? 0)),
                TotalSupplierOutstandingQty = g.Sum(q => q.SupplierOutstandingQty),
                TotalPOBalancePercent = g.Sum(q => q.SupplierPOQty) == 0 ? 0 : (g.Sum(q => q.SupplierOutstandingQty) / g.Sum(q => q.SupplierPOQty)),

                TotalSplitQty = g.Sum(q => q.SplitQty ?? 0),
                TotalGRNQty = g.Sum(q => q.GRNQty ?? 0),
                TotalRCQty = g.Sum(q => q.RCQty ?? 0),
                TotalStockInQty = g.Sum(q => q.StockInQty ?? 0),
                TotalReceivedQty = g.Sum(q => q.ReceivedQty ?? 0),

                TotalSizeCode = g.Select(s => s.SizeCode).Distinct().Count(),
                TotalSizeDesc = g.Select(s => s.SizeDesc).Distinct().Count(),
                TotalFitCode = g.Select(s => s.FitCode).Distinct().Count(),
                TotalFitDesc = g.Select(s => s.FitDesc).Distinct().Count(),

                //处理 Action Log
                ActionLogList = AllDataList
                  .Where(p => p.PONO == g.Key.PONO && p.OrderLine == g.Key.OrderLine && p.ColorCode == g.Key.ColorCode && p.SplitNo == g.Key.SplitNo && p.ActionLogOID.HasValue)
                  .OrderBy(p => p.ActionLogOID)
                  .Select(p => new TempActionLogClass
                  {
                      OID = p.ActionLogOID,
                      SeqNoShow = Convert.ToString(p.ActionLogSeqNo).Substring(4, 4),
                      Group = p.ActionLogGroup,
                      TargetDate = p.ActionLogCompletionStage_Target,
                      RevisedDate = p.ActionLogCompletionStage_Revised,
                      CmplDate = p.ActionLogCompletionStage_Cmpl
                  }).Distinct(new GroupActionLogComparer()).ToList()

            }).ToList();

            List<POChangesMonitorSummary> ResultList = new List<POChangesMonitorSummary>();
            foreach (var o in SummaryList)
            {
                POChangesMonitorSummary obj = new POChangesMonitorSummary();

                var SourceObj = AllDataList.FirstOrDefault(p => p.PONO == o.PONO && p.OrderLine == o.OrderLine && p.ColorCode == o.ColorCode && p.SplitNo == o.SplitNo);
                CopyProperties<POChangesMonitor, POChangesMonitorSummary>(SourceObj, obj);

                obj.PONO = o.PONO;
                obj.OrderLine = o.OrderLine;
                obj.ColorCode = o.ColorCode;

                obj.TotalSupplierPOQty = o.TotalSupplierPOQty;
                obj.TotalSupplierOutstandingQty = o.TotalSupplierOutstandingQty;
                obj.TotalPOBalancePercent = o.TotalPOBalancePercent;

                obj.TotalSplitQty = o.TotalSplitQty;   // - o.TotalRCQty;
                obj.TotalGRNQty = o.TotalGRNQty;
                obj.TotalRCQty = o.TotalRCQty;
                obj.TotalStockInQty = o.TotalStockInQty;
                obj.TotalReceivedQty = o.TotalReceivedQty;
                obj.TotalCummQty = SummaryList.Where(p => p.PONO == o.PONO && p.OrderLine == o.OrderLine && p.ColorCode == o.ColorCode && p.SplitNo <= o.SplitNo).Sum(p => p.TotalSplitQty);

                obj.TotalSizeCode = o.TotalSizeCode;
                obj.TotalSizeDesc = o.TotalSizeDesc;
                obj.TotalFitCode = o.TotalFitCode;
                obj.TotalFitDesc = o.TotalFitDesc;

                //obj.ActionLogList = o.ActionLogList;

                ResultList.Add(obj);
            }

            this.BindingSource.DataSource = ResultList;
        }

        public override void InitFormNavigator()
        {
            base.InitFormNavigator();
            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
        }

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }

        public void CopyProperties<Source, Dest>(Source source, Dest dest)
        {
            var sourceProps = typeof(Source).GetProperties().Where(x => x.CanRead).ToList();
            var destProps = typeof(Dest).GetProperties()
                    .Where(x => x.CanWrite)
                    .ToList();

            foreach (var sourceProp in sourceProps)
            {
                if (destProps.Any(x => x.Name == sourceProp.Name))
                {
                    var p = destProps.First(x => x.Name == sourceProp.Name);
                    if (p.CanWrite)
                    {
                        p.SetValue(dest, sourceProp.GetValue(source, null), null);
                    }
                }
            }
        }

        private void barButtonItem_ReviewActionLog_ItemClick(object sender, ItemClickEventArgs e)
        {
            POChangesMonitorSummary obj = this.BindingSource.Current as POChangesMonitorSummary;
            if (obj != null)
            {
                long?[] ActionLogOIDs = obj.ActionLogOIDs;
                if (ActionLogOIDs.Count() == 0) return;

                //PH.POPC.UI.ActionLog.AlertLogForm frmAlertLog = new PH.POPC.UI.ActionLog.AlertLogForm(obj, ActionLogOIDs);
                PH.POPC.UI.ActionLog.AlertLogForm frmAlertLog = new PH.POPC.UI.ActionLog.AlertLogForm(obj.ActionLogID, null);
                frmAlertLog.ShowDialog();
            }
        }

        private void bandedGridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.Column.FieldName == "RWO_DaysDiff")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, "RWO_DaysDiff") == null) return;
                object RWO_DaysDiff = bandedGridView1.GetRowCellValue(e.RowHandle, "RWO_DaysDiff");
                object ChosenWO = bandedGridView1.GetRowCellValue(e.RowHandle, "ChosenWO");

                if (RWO_DaysDiff == null) return;

                int iRWO_DaysDiff = Convert.ToInt32(RWO_DaysDiff);
                string sChosenWO = ChosenWO == null ? "" : ChosenWO.ToString();
                if (sChosenWO.StartsWith("W") && iRWO_DaysDiff < 1)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            string SavelActionLogSeqNo = "0";
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                POChangesMonitorSummary obj = bandedGridView1.GetRow(i) as POChangesMonitorSummary;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SavelActionLogSeqNo = obj.TotalActionLogSeqNoShow;
                }
                else
                {
                    if (obj.PONO == SavelActionLogSeqNo)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SavelActionLogSeqNo = obj.PONO;
                    }
                }
            }
        }

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            CalOddEvenRowFlag();
        }
    }
}
