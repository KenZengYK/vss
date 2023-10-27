using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.POPC.BO;
using System.Linq;
using System.Data;
using DevExpress.XtraPrinting;

namespace PH.POPC.UI.ActionLog
{
    public partial class L3ActionLogIncompleteReport : DevExpress.XtraReports.UI.XtraReport
    {
        List<object> _DataList;
        public L3ActionLogIncompleteReport(List<object> ADataList)
        {
            InitializeComponent();
            _DataList = ADataList;
            PrepareData();
        }

        void PrepareData()
        {
            var lists = _DataList.Cast<POChangesMonitorSummary>();
            List<POChangesMonitorSummary> ResultList = new List<POChangesMonitorSummary>();

            string SaveActionLogSeqNo = "-19";

            foreach (var o in lists)
            {
                bool IsSameGroup = true;
                if (o.ActionLogSeqNo != SaveActionLogSeqNo)
                {
                    SaveActionLogSeqNo = o.ActionLogSeqNo;
                    IsSameGroup = false;
                    o.IsGroupFirstRow = true;
                }

                var SourceObj = lists.FirstOrDefault(p => p.PONO == o.PONO && p.OrderLine == o.OrderLine && p.ColorCode == o.ColorCode && p.SplitNo == o.SplitNo);
                if (o.ActionLogHeader.ActionLogDetails.Count() == 0)
                {
                    POChangesMonitorSummary obj = new POChangesMonitorSummary();
                    CopyProperties<POChangesMonitor, POChangesMonitorSummary>(SourceObj, obj);
                    obj.IsGroupFirstRow = true;
                    obj.IsGroupLastRow = true;
                    ResultList.Add(obj);
                }
                else
                {
                    var ActionLogDetailList = o.ActionLogHeader.ActionLogDetails.OrderBy(p => p.FollowCount);
                    foreach (var d in ActionLogDetailList)
                    {
                        POChangesMonitorSummary obj = new POChangesMonitorSummary();
                        CopyProperties<POChangesMonitor, POChangesMonitorSummary>(SourceObj, obj);

                        obj.ActionLogDetail_StartFollowDate = d.StartFollowDate;
                        obj.ActionLogDetail_FollowCount = d.FollowCount;
                        obj.ActionLogDetail_Sender = d.Sender;
                        obj.ActionLogDetail_FollowSummary = d.FollowSummary;
                        obj.ActionLogHeader_TargetDate = obj.ActionLogCompletionStage_Target;

                        ResultList.Add(obj);

                        if (IsSameGroup)
                        {
                            obj.ActionLogDetail_StartFollowDate = null;
                            obj.ActionLogDetail_FollowCount = null;
                            obj.ActionLogDetail_Sender = null;
                            obj.ActionLogDetail_FollowSummary = null;
                            //obj.ActionLogHeader_TargetDate = null;
                            break;
                        }

                    }
                }

            }

            this.bindingSource.DataSource = ResultList;
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

        private void xrTableRow_Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string PreviousPONO = this.GetPreviousColumnValue("PONO") == null ? "" : this.GetPreviousColumnValue("PONO").ToString();
            int PreviousOrderLine = this.GetPreviousColumnValue("OrderLine") == null ? -19 : Convert.ToInt32(this.GetPreviousColumnValue("OrderLine").ToString());
            string PreviousColorCode = this.GetPreviousColumnValue("ColorCode") == null ? "" : this.GetPreviousColumnValue("ColorCode").ToString();
            int PreviousSplitNo = this.GetPreviousColumnValue("SplitNo") == null ? -19 : Convert.ToInt32(this.GetPreviousColumnValue("SplitNo"));
            string PreviousActionLogSeqNo = this.GetPreviousColumnValue("ActionLogSeqNoShow") == null ? "-19" : this.GetPreviousColumnValue("ActionLogSeqNoShow").ToString();

            string CurrentPONO = this.GetCurrentColumnValue("PONO") == null ? "" : this.GetCurrentColumnValue("PONO").ToString();
            int CurrentOrderLine = this.GetCurrentColumnValue("OrderLine") == null ? -19 : Convert.ToInt32(this.GetCurrentColumnValue("OrderLine").ToString());
            string CurrentColorCode = this.GetCurrentColumnValue("ColorCode") == null ? "" : this.GetCurrentColumnValue("ColorCode").ToString();
            int CurrentSplitNo = this.GetCurrentColumnValue("SplitNo") == null ? -19 : Convert.ToInt32(this.GetCurrentColumnValue("SplitNo"));
            string CurrentActionLogSeqNo = this.GetCurrentColumnValue("ActionLogSeqNoShow") == null ? "-19" : this.GetCurrentColumnValue("ActionLogSeqNoShow").ToString();

            string NextPONO = this.GetNextColumnValue("PONO") == null ? "" : this.GetNextColumnValue("PONO").ToString();
            int NextOrderLine = this.GetNextColumnValue("OrderLine") == null ? -19 : Convert.ToInt32(this.GetNextColumnValue("OrderLine").ToString());
            string NextColorCode = this.GetNextColumnValue("ColorCode") == null ? "" : this.GetNextColumnValue("ColorCode").ToString();
            int NextSplitNo = this.GetNextColumnValue("SplitNo") == null ? -19 : Convert.ToInt32(this.GetNextColumnValue("SplitNo"));

            if (this.CurrentRowIndex == 0) //第一行
            {
                PreviousPONO = "";
                PreviousOrderLine = -19;
                PreviousColorCode = "";
                PreviousSplitNo = -19;
            }
            if (this.CurrentRowIndex == this.RowCount - 1) //最后一行
            {
                NextPONO = "ZZ";
                NextOrderLine = 999;
                NextColorCode = "ZZ";
                NextSplitNo = 999;
            }

            bool CurrentEqualNext = (CurrentPONO == NextPONO && CurrentOrderLine == NextOrderLine && CurrentColorCode == NextColorCode && CurrentSplitNo == NextSplitNo);
            bool CurrentEqualPrevious = (CurrentPONO == PreviousPONO && CurrentOrderLine == PreviousOrderLine && CurrentColorCode == PreviousColorCode && CurrentSplitNo == PreviousSplitNo);


            if (!CurrentEqualPrevious) //一组的第一行
            {
                if (CurrentEqualNext)
                {
                    xrTableCell31.Borders = BorderSide.Top | BorderSide.Left | BorderSide.Right;
                    xrTableCell46.Borders = BorderSide.All;
                }
                else
                {
                    xrTableCell31.Borders = BorderSide.All;
                    xrTableCell46.Borders = BorderSide.All;
                }
            }
            else
            {
                xrTableCell31.Text = xrTableCell32.Text = xrTableCell33.Text = xrTableCell34.Text = xrTableCell35.Text = xrTableCell36.Text = xrTableCell37.Text = xrTableCell38.Text =
                xrTableCell39.Text = xrTableCell40.Text = xrTableCell41.Text = xrTableCell42.Text = xrTableCell43.Text = xrTableCell44.Text = xrTableCell45.Text = "";

                if (CurrentEqualNext)
                {
                    xrTableCell31.Borders = BorderSide.Left | BorderSide.Right;
                }
                else
                {
                    xrTableCell31.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                }
                xrTableCell46.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;

            }

            xrTableCell32.Borders = xrTableCell33.Borders = xrTableCell34.Borders = xrTableCell35.Borders = xrTableCell36.Borders = xrTableCell37.Borders = xrTableCell38.Borders =
            xrTableCell39.Borders = xrTableCell40.Borders = xrTableCell41.Borders = xrTableCell42.Borders = xrTableCell43.Borders = xrTableCell44.Borders = xrTableCell45.Borders = xrTableCell31.Borders;

            xrTableCell47.Borders = xrTableCell49.Borders = xrTableCell50.Borders = xrTableCell46.Borders;


        }


    }
}
