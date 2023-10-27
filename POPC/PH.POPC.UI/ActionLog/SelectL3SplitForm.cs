using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Linq;
using PH.POPC.BO;
using PH.Platform.BO;

namespace PH.POPC.UI.ActionLog
{
    public partial class SelectL3SplitForm : DevExpress.XtraEditors.XtraForm
    {
        IEnumerable<ActionLogHeader> _ActionLogHeaderList;

        public SelectL3SplitForm(IEnumerable<ActionLogHeader> ActionLogHeaderList)
        {
            InitializeComponent();
            _ActionLogHeaderList = ActionLogHeaderList;
            PrepareData();
        }

        void PrepareData()
        {
            POPCDataContext db = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            db.CommandTimeout = 1000;
            db.Connection.Open();
            db.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

            //List<string> PONOList = _ActionLogHeaderList.Select(p => p.PONO).Distinct().ToList();
            //List<int?> OrderLineList = _ActionLogHeaderList.Select(p => p.OrderLine).Distinct().ToList();
            //List<string> ColorCodeList = _ActionLogHeaderList.Select(p => p.ColorCode).Distinct().ToList();
            ////List<int?> SplitNoList = ActionLogHeaderList.Select(p => p.SplitNo).Distinct().ToList();

            //var list = db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) &&
            //    PONOList.Contains(p.PONO) && OrderLineList.Contains(p.OrderLine) && ColorCodeList.Contains(p.POColorSizeDetail.ColorCode));


            List<POChangesMonitor> list = new List<POChangesMonitor>();
            foreach (var o in _ActionLogHeaderList)
            {
                list.AddRange(db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) && p.PONO == o.PONO && p.OrderLine == o.OrderLine && p.POColorSizeDetail.ColorCode == o.ColorCode).ToList());
            }

            //因为按TF2's Recv'g End Pt(Mat'l Standby) as at这个条件查询时，有可能将同一张Order Line，同一水，但因为Time Frame 2回料到工厂的日期不同，
            //而被过滤掉，所以计算水数的时候，需要取原始取出集合的数据来计算, 由David增加 2022-06-09
            List<TempPOChangesMonitorClass> OriginalList = list.Select(p => new TempPOChangesMonitorClass { PONO = p.PONO, OrderLine = p.OrderLine, ColorCode = p.ColorCode, SplitNo = p.SplitNo }).ToList();

            //得到按PONO + Order Line + Color汇总的数据
            var AllDataList = list.ToList();

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

                TotalHowManyLot = OriginalList.Where(p => p.PONO == g.Key.PONO && p.OrderLine == g.Key.OrderLine && p.ColorCode == g.Key.ColorCode).Max(p => p.SplitNo) == 1 ? "--" :
                     string.Format("{0}/{1}", g.Key.SplitNo,
                       OriginalList.Where(p => p.PONO == g.Key.PONO && p.OrderLine == g.Key.OrderLine && p.ColorCode == g.Key.ColorCode).Max(p => p.SplitNo))
            }).ToList();

            this.bsPOChangesMonitorSummary.DataSource = SummaryList;

            List<POChangesMonitorSummary> ResultList = new List<POChangesMonitorSummary>();
            foreach (var o in SummaryList)
            {
                POChangesMonitorSummary obj = new POChangesMonitorSummary();
                var SourceObj = AllDataList.FirstOrDefault(p => p.PONO == o.PONO && p.OrderLine == o.OrderLine && p.ColorCode == o.ColorCode && p.SplitNo == o.SplitNo);
                CopyProperties<POChangesMonitor, POChangesMonitorSummary>(SourceObj, obj);

                obj.PONO = o.PONO;
                obj.OrderLine = o.OrderLine;
                obj.ColorCode = o.ColorCode;
                obj.TotalHowManyLot = o.TotalHowManyLot;
                ResultList.Add(obj);
            }

            this.bsPOChangesMonitorSummary.DataSource = ResultList;
        }

        public List<POChangesMonitorSummary> GetSelectedList()
        {
            List<POChangesMonitorSummary> lists = new List<POChangesMonitorSummary>();
            for (int i = 0; i < this.gridView1.RowCount; i++)
            {
                POChangesMonitorSummary obj = this.gridView1.GetRow(i) as POChangesMonitorSummary;

                if (obj != null && obj.CheckFlag)
                {
                    lists.Add(obj);
                }
            }
            return lists;
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
    }
}