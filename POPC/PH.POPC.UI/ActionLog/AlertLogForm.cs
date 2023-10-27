using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using System.Linq;
using PH.Platform.Common;
using PH.Platform.Misc.BO.ErrorMessages;
using PH.POPC.BO;
using DevExpress.Utils.Drawing;

namespace PH.POPC.UI.ActionLog
{
    public partial class AlertLogForm : DevExpress.XtraEditors.XtraForm
    {
        POPCDataContext _db;
        //object _StartActionLogForm;
        //string _ActionLogNO;
        ActionLogProcessModes _ProcessMode;
        string _CompleteReason;

        //POPCLevel1Form _POPCLevel1Form = null;
        POPCLevel2Form _POPCLevel2Form = null;


        POPCLevel2SummaryForm _POPCLevel2SummaryForm = null;
        ActionLogWorkModes _ActionLogWorkMode;
        string _ActionLogID = "";
        int? _SeqNo1 = null;
        int? _SeqNo2 = null;

        //public long ActionLogOID
        //{
        //    get
        //    {
        //        return (this.bsActionLogHeader.Current as ActionLogHeader).OID;
        //    }
        //}

        public ActionLogHeader CurrentActionLogHeader { get { return this.bsActionLogHeader.Current as ActionLogHeader; } }
        public IEnumerable<ActionLogHeader> ActionLogHeaderList { get { return bsActionLogHeader.List as IEnumerable<ActionLogHeader>; } }

        List<POChangesMonitor> POChangesMonitorList = new List<POChangesMonitor>();

        public AlertLogForm()
        {
            InitializeComponent();
            simpleButton1.Visible = SysParamHelper.Instance.UserID.ToUpper() == "DAVID";
        }

        //此方法用于L3 Summary Form调用
        //public AlertLogForm(POPCDataContext ADB, DevExpress.XtraGrid.Views.BandedGrid.BandedGridView ABandedGridView, POPCLevel2SummaryForm APOPCLevel2SummaryForm)
        public AlertLogForm(List<L3ActionLogSelectResult> ASelectRow, POPCLevel2SummaryForm APOPCLevel2SummaryForm)
            : this()
        {
            _POPCLevel2SummaryForm = APOPCLevel2SummaryForm;
            _ActionLogWorkMode = ActionLogWorkModes.AddNew;

            //this.txtSupp.Text = string.Join("/", ASelectRow.Select(p => p.SuppCode).Distinct().OrderBy(p => p).ToArray());
            //this.txtPO.Text = string.Join("/", ASelectRow.Select(p => p.PONO).Distinct().OrderBy(p => p).ToArray());
            //this.txtSuppRef.Text = string.Join("/", ASelectRow.Select(p => p.SuppRef).OrderBy(p => p).ToArray());
            //this.txtGroup.Text = "Y";

            _db = ContextBuilder.CreateContext<POPCDataContext>();

            DateTime StartDate = DateTime.Now;
            string ActionLogType = ASelectRow.Count() > 1 ? "G" : "S";
            foreach (var item in ASelectRow)
            {
                ActionLogHeader obj = this.bsActionLogHeader.AddNew() as ActionLogHeader;
                obj.StartDate = StartDate;
                obj.CreateMan = SysParamHelper.Instance.UserID;
                obj.PONO = item.PONO;
                obj.OrderLine = item.OrderLine;
                obj.ColorCode = item.ColorCode;
                obj.SplitNo = item.SplitNo;
                obj.TotalSplit = item.TotalSplit;
                obj.ProjectNo = item.ProjectNo;
                obj.WOFWStartDate = item.WOFWStartDate;
                obj.SuppCode = item.SuppCode;
                obj.SuppRef = item.SuppRef;
                obj.Factory = item.Factory;
                obj.ItemCode = item.ItemCode;
                obj.StageSeqNo = 1;
                obj.RWO_DaysDiff = item.RWO_DaysDiff;
                obj.PrdnSite = item.PrdnSite;

                obj.ActionLogType = ActionLogType;

                _db.ActionLogHeaders.InsertOnSubmit(obj);
            }

            this.btnSendEmail.Enabled = false;
            ControlEditState(_ActionLogWorkMode);

            GetHeaderShowInfo();

        }

        //Level 3 Follow up Action Log时调用
        public AlertLogForm(string AActionLogID, POPCLevel2SummaryForm APOPCLevel2SummaryForm, bool AAutoGenerateSplitRecord)
            : this()
        {
            _ActionLogID = AActionLogID;
            _POPCLevel2SummaryForm = APOPCLevel2SummaryForm;
            _ActionLogWorkMode = ActionLogWorkModes.Edit;
            _db = ContextBuilder.CreateContext<POPCDataContext>();
            this.bsActionLogHeader.DataSource = _db.ActionLogHeaders.Where(p => p.ActionLogID == _ActionLogID)
                .OrderBy(p => p.ActionLogSeqNo).ThenBy(p => p.PONO).ThenBy(p => p.OrderLine).ThenBy(p => p.ColorCode).ThenBy(p => p.SplitNo);

            _SeqNo1 = CurrentActionLogHeader.SeqNo1;
            _SeqNo2 = CurrentActionLogHeader.SeqNo2;

            GetHeaderShowInfo();
            GetIMQEActionLogInfo();

            //AAutoGenerateSplitRecord = false;

            if (AAutoGenerateSplitRecord) //需要处理分水的情况
            {
                //处理生成Action Log后，又分水的情况，Action Log需要自动将新分水的记录增加到Action Log中，并且更新总的水号

                // 1.从ActionLogHeader中取得有哪些 PONo + OrderLine + Color Code
                List<string> PONOList = ActionLogHeaderList.Select(p => p.PONO).Distinct().ToList();
                List<int?> OrderLineList = ActionLogHeaderList.Select(p => p.OrderLine).Distinct().ToList();
                List<string> ColorCodeList = ActionLogHeaderList.Select(p => p.ColorCode).Distinct().ToList();
                //List<int?> SplitNoList = ActionLogHeaderList.Select(p => p.SplitNo).Distinct().ToList();

                // 2.从L3中取得对应PONo + OrderLine + Color Code 的信息
                var L3List = _db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) &&
                    PONOList.Contains(p.PONO) && OrderLineList.Contains(p.OrderLine) && ColorCodeList.Contains(p.POColorSizeDetail.ColorCode));

                // 3.处理ActionLog, 如果有新分水的，生成一个新的ActonLogSeq#, 并更新之前对应的总分水号
                List<ActionLogHeader> AddActionLogList = new List<ActionLogHeader>();
                DateTime StartDate = DateTime.Now;
                string ActionLogType = L3List.Count() > 1 ? "G" : "S";
                foreach (var item in L3List)
                {
                    var ExistsActionLogList = ActionLogHeaderList.Where(p => p.PONO == item.PONO && p.OrderLine == item.OrderLine && p.ColorCode == item.ColorCode && p.SplitNo == item.SplitNo);
                    if (ExistsActionLogList.Count() > 0) //ActionLog中找得到的水号
                    {
                        //刷新WO FW Start Date (有可能L3中重新选了WO Seq.或是因为WO本身的FW Start Date有改变
                        string SqlStr = string.Format("exec sp_GetOurWOInfo '{0}', {1}", item.ProjectNo, (item.WOSeqNo ?? 1));
                        DataTable dt = _db.ExecuteDataTable(SqlStr, "dt");

                        foreach (var o in ExistsActionLogList)
                        {
                            o.TotalSplit = item.Lots; //更新总水数

                            if (dt != null && dt.Rows.Count > 0)
                            {
                                o.WOFWStartDate = dt.Rows[0]["WOFWStartDate"] == DBNull.Value ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOFWStartDate"]);
                            }
                        }
                    }
                    //else
                    //{
                    //ActionLogHeader obj = this.bsActionLogHeader.AddNew() as ActionLogHeader;
                    //obj.StartDate = StartDate;
                    //obj.CreateMan = SysParamHelper.Instance.UserID;
                    //obj.PONO = item.PONO;
                    //obj.OrderLine = item.OrderLine;
                    //obj.ColorCode = item.ColorCode;
                    //obj.SplitNo = item.SplitNo;
                    //obj.TotalSplit = item.Lots;
                    //obj.ProjectNo = item.ProjectNo;
                    //obj.SuppCode = item.Supplier;
                    //obj.SuppRef = item.SupplierReference;
                    //obj.Factory = item.Factory;
                    //obj.ItemCode = item.ItemCode;
                    //obj.ActionLogType = ActionLogType;

                    //obj.ActionLogID = _ActionLogID;
                    //obj.SeqNo1 = _SeqNo1;
                    //obj.SeqNo2 = _SeqNo2;

                    ////生成一个新的Action Log Seq# (Add Stage)
                    //string MaxActionLogSeqNo = ActionLogHeaderList.Max(p => p.ActionLogSeqNo);
                    //string NewActionLogSeqNo;
                    //int NewStageSeqNo;
                    //if (MaxActionLogSeqNo == _ActionLogID)
                    //{
                    //    NewStageSeqNo = 2;
                    //    NewActionLogSeqNo = _ActionLogID + "+";
                    //}
                    //else if (MaxActionLogSeqNo == _ActionLogID + "+")
                    //{
                    //    NewStageSeqNo = 3;
                    //    NewActionLogSeqNo = _ActionLogID + "++";
                    //}
                    //else if (MaxActionLogSeqNo == _ActionLogID + "++")
                    //{
                    //    NewStageSeqNo = 4;
                    //    NewActionLogSeqNo = _ActionLogID + "+3";
                    //}
                    //else
                    //{
                    //    NewStageSeqNo = Convert.ToInt32(MaxActionLogSeqNo.Substring(9)) + 1;
                    //    NewActionLogSeqNo = _ActionLogID + "+" + NewStageSeqNo.ToString();
                    //}

                    //obj.StageSeqNo = NewStageSeqNo;
                    //obj.ActionLogSeqNo = NewActionLogSeqNo;

                    //_db.ActionLogHeaders.InsertOnSubmit(obj);
                    //}
                }

                SaveActionLog(false);
                SaveActionLogToL3();
                _db.SubmitChanges();
            }

            ControlEditState(_ActionLogWorkMode);
        }

        private void btnSendEmail_Click(object sender, EventArgs e)
        {
            SaveActionLogDetailData();

            if (!this.gridActionLogDetail.IsLastVisibleRow)
            {
                MessageBox.Show("Pls choose the last follow up seq. to send email\r\n請選擇最後一行再發郵件.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                {
                    return;
                }
            }

            ActionLogDetail detail = this.gridActionLogDetail.GetRow(this.gridActionLogDetail.FocusedRowHandle) as ActionLogDetail;

            if (detail == null)
            {
                return;
            }

            ActionLogHeader obj = this.bsActionLogHeader.Current as ActionLogHeader;

            if (!obj.PlanEndDate.HasValue)
            {
                string Str = "【Target agreed dd】 is not input,\r\nAre you sure send email?";
                if (MessageBox.Show(Str, "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                {
                    return;
                }
            }


            //if (!obj.PlanEndDate.HasValue || !obj.LastStageTargetCompleteDate.HasValue)
            //{
            //    string Str = "【1st stage target agreed dd】 or 【Last stage target complete dd】 no input,\r\nAre you sure send email?";
            //    if (MessageBox.Show(Str, "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            //    {
            //        return;
            //    }
            //}

            IEnumerable<ActionLogHeader> ActionLogHeaderList = bsActionLogHeader.DataSource as IEnumerable<ActionLogHeader>;
            IEnumerable<ActionLogDetail> ActionLogDetailList = bsActionLogDetail.DataSource as IEnumerable<ActionLogDetail>;
            //SendEmailForm frmSendEMail = new SendEmailForm(_ProcessMode, _db, ActionLogHeaderList, obj, ActionLogDetailList, detail, obj.NeedActionLogSendCompletedEmail, _CompleteReason, txtSupp.Text, txtPO.Text);
            SendEmailForm frmSendEMail = new SendEmailForm(_ProcessMode, _db, ActionLogHeaderList, obj, ActionLogDetailList, detail, obj.NeedActionLogSendCompletedEmail, _CompleteReason);
            frmSendEMail.ShowDialog();
        }

        private void btnAddAlertLog_Click(object sender, EventArgs e)
        {
            SelectL3SplitForm frmSelectL3Split = new SelectL3SplitForm(ActionLogHeaderList);
            if (frmSelectL3Split.ShowDialog() == DialogResult.OK)
            {
                //計算新的Action Log Seq# (Add Stage)
                string MaxActionLogSeqNo = ActionLogHeaderList.Max(p => p.ActionLogSeqNo);
                string NewActionLogSeqNo;
                int NewStageSeqNo;
                if ((MaxActionLogSeqNo == _ActionLogID) || (MaxActionLogSeqNo == _ActionLogID + "*"))
                {
                    NewStageSeqNo = 2;
                    NewActionLogSeqNo = _ActionLogID + "+";
                }
                else if ((MaxActionLogSeqNo == _ActionLogID + "+") || (MaxActionLogSeqNo == _ActionLogID + "+*"))
                {
                    NewStageSeqNo = 3;
                    NewActionLogSeqNo = _ActionLogID + "++";
                }
                else if ((MaxActionLogSeqNo == _ActionLogID + "++") || (MaxActionLogSeqNo == _ActionLogID + "++*"))
                {
                    NewStageSeqNo = 4;
                    NewActionLogSeqNo = _ActionLogID + "+3";
                }
                else
                {
                    NewStageSeqNo = Convert.ToInt32(MaxActionLogSeqNo.Substring(9)) + 1;
                    NewActionLogSeqNo = _ActionLogID + "+" + NewStageSeqNo.ToString();
                }

                int? SeqNo1 = CurrentActionLogHeader.SeqNo1;
                int? SeqNo2 = CurrentActionLogHeader.SeqNo2;

                DateTime StartDate = DateTime.Now;
                var AddList = frmSelectL3Split.GetSelectedList();
                string ActionLogType = AddList.GroupBy(p => new { p.PONO, p.OrderLine, p.ColorCode, p.SplitNo }).Count() > 0 ? "G" : "S";
                foreach (POChangesMonitorSummary item in AddList)
                {
                    ActionLogHeader obj = new ActionLogHeader();
                    obj.ActionLogID = _ActionLogID;
                    obj.ActionLogSeqNo = NewActionLogSeqNo;
                    obj.StageSeqNo = NewStageSeqNo;
                    obj.SeqNo1 = SeqNo1;
                    obj.SeqNo2 = SeqNo2;
                    obj.StartDate = StartDate;
                    obj.CreateMan = SysParamHelper.Instance.UserID;
                    obj.ItemNo = null;
                    obj.ItemSubject = null;
                    obj.ItemSubjectCN = null;

                    obj.PONO = item.PONO;
                    obj.WOFWStartDate = item.WOFWStartDate;
                    obj.OrderLine = item.OrderLine;
                    obj.ColorCode = item.ColorCode;
                    obj.SplitNo = item.SplitNo;
                    obj.TotalSplit = item.Lots;
                    obj.ProjectNo = item.ProjectNo;
                    obj.SuppCode = item.Supplier;
                    obj.SuppRef = item.SupplierReference;
                    obj.Factory = item.Factory;
                    obj.ItemCode = item.ItemCode;
                    obj.ActionLogType = ActionLogType;

                    bsActionLogHeader.Add(obj);
                }
                bsActionLogHeader.MoveLast();
            }
            ReCalculateGroupFlag();

            ////計算新的Action Log Seq# (Add Stage)
            //string MaxActionLogSeqNo = ActionLogHeaderList.Max(p => p.ActionLogSeqNo);
            //string NewActionLogSeqNo;
            //int NewStageSeqNo;
            //if (MaxActionLogSeqNo == _ActionLogID)
            //{
            //    NewStageSeqNo = 2;
            //    NewActionLogSeqNo = _ActionLogID + "+";
            //}
            //else if (MaxActionLogSeqNo == _ActionLogID + "+")
            //{
            //    NewStageSeqNo = 3;
            //    NewActionLogSeqNo = _ActionLogID + "++";
            //}
            //else if (MaxActionLogSeqNo == _ActionLogID + "++")
            //{
            //    NewStageSeqNo = 4;
            //    NewActionLogSeqNo = _ActionLogID + "+3";
            //}
            //else
            //{
            //    NewStageSeqNo = Convert.ToInt32(MaxActionLogSeqNo.Substring(9)) + 1;
            //    NewActionLogSeqNo = _ActionLogID + "+" + NewStageSeqNo.ToString();
            //}

            //DateTime StartDate = DateTime.Now;
            //foreach (int i in this.bandedGridView1.GetSelectedRows())
            //{
            //    var ActionLogHeaderSelectedRow = this.bandedGridView1.GetRow(i) as ActionLogHeader;

            //    ActionLogHeader obj = new ActionLogHeader();
            //    obj.ActionLogID = _ActionLogID;
            //    obj.ActionLogSeqNo = NewActionLogSeqNo;
            //    obj.StageSeqNo = NewStageSeqNo;
            //    obj.SeqNo1 = ActionLogHeaderSelectedRow.SeqNo1;
            //    obj.SeqNo2 = ActionLogHeaderSelectedRow.SeqNo2;
            //    obj.StartDate = StartDate;
            //    obj.CreateMan = SysParamHelper.Instance.UserID;
            //    obj.ItemNo = ActionLogHeaderSelectedRow.ItemNo;
            //    obj.ItemSubject = ActionLogHeaderSelectedRow.ItemSubject;
            //    obj.ItemSubjectCN = ActionLogHeaderSelectedRow.ItemSubjectCN;

            //    obj.PONO = ActionLogHeaderSelectedRow.PONO;
            //    obj.OrderLine = ActionLogHeaderSelectedRow.OrderLine;
            //    obj.ColorCode = ActionLogHeaderSelectedRow.ColorCode;
            //    obj.SplitNo = ActionLogHeaderSelectedRow.SplitNo;
            //    obj.TotalSplit = ActionLogHeaderSelectedRow.TotalSplit;
            //    obj.ProjectNo = ActionLogHeaderSelectedRow.ProjectNo;
            //    obj.SuppCode = ActionLogHeaderSelectedRow.SuppCode;
            //    obj.SuppRef = ActionLogHeaderSelectedRow.SuppRef;
            //    obj.Factory = ActionLogHeaderSelectedRow.Factory;
            //    obj.ItemCode = ActionLogHeaderSelectedRow.ItemCode;
            //    obj.ActionLogType = ActionLogHeaderSelectedRow.ActionLogType;

            //    bsActionLogHeader.Add(obj);
            //}
            //bsActionLogHeader.MoveLast();
        }

        //string Str = DateTime.Now.ToString("yyMM-");
        //string GetNewActinID()
        //{
        //    try
        //    {
        //        string MaxID = _db.ActionLogHeaders.Where(p => p.AcitonID.StartsWith(Str)).Select(p => p.AcitonID).Max();
        //        int NewActionID = int.Parse(MaxID.Replace(Str, "")) + 1;
        //        return Str + NewActionID.ToString().PadLeft(3, '0');
        //    }
        //    catch
        //    {
        //        return Str + "001";
        //    }
        //}


        private void btnSaveAlertLog_Click(object sender, EventArgs e)
        {
            SaveActionLog(true);
            SaveActionLogToL3();
            _db.SubmitChanges();

            ControlEditState(_ActionLogWorkMode);

            GetHeaderShowInfo();
        }

        /// <summary>
        /// 保存Action Log信息
        /// </summary>
        /// <param name="AShowProcessMessageHint">是否显示保存成功的提示信息</param>
        //void SaveActionLog(bool AShowProcessMessageHint, string ADeleteActionLogSeqNo)
        void SaveActionLog(bool AShowProcessMessageHint)
        {
            ActionLogHeader ActionLogHeaderObj = bsActionLogHeader.Current as ActionLogHeader;
            if (ActionLogHeaderObj == null) return;

            this.bandedGridView1.PostEditor();
            this.gridActionLogDetail.PostEditor();

            this.bsActionLogHeader.EndEdit();
            this.bsActionLogDetail.EndEdit();

            try
            {
                this.Cursor = Cursors.WaitCursor;

                if (_ActionLogWorkMode == ActionLogWorkModes.AddNew)
                {
                    //王生要求的统一Action Log No.格式为：2209-001 (年月 + 三位流水号)
                    POPCDataContext NewDB = ContextBuilder.CreateContext<POPCDataContext>();
                    int SeqNo1 = Convert.ToInt32(DateTime.Now.ToString("yyMM"));
                    int? MaxSeqNo2 = NewDB.ActionLogHeaders.Where(p => p.SeqNo1 == SeqNo1).Max(p => p.SeqNo2);
                    int SeqNo2 = (MaxSeqNo2 ?? 0) + 1;
                    _ActionLogID = SeqNo1.ToString() + "-" + SeqNo2.ToString().PadLeft(3, '0');

                    foreach (var obj in ActionLogHeaderList)
                    {
                        obj.ActionLogID = _ActionLogID;
                        obj.ActionLogSeqNo = _ActionLogID;
                        obj.SeqNo1 = SeqNo1;
                        obj.SeqNo2 = SeqNo2;
                        obj.StageSeqNo = 1;
                    }
                }

                ReCalculateGroupFlag();

                if (_POPCLevel2SummaryForm != null) //需要刷新L3 Summary中Ation Log的相关栏位
                {
                    //_POPCLevel2SummaryForm.RefreshActionLogInfo(_ActionLogWorkMode, _ActionLogID, ActionLogHeaderList, ADeleteActionLogSeqNo);
                    _POPCLevel2SummaryForm.RefreshActionLogInfo(_ActionLogWorkMode, _ActionLogID, ActionLogHeaderList);
                }

                SaveIMQEActionLogInfo();

                //ProcessActionLogSendCompletedEmail();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Save failed:" + ex.Message, "Tips", MessageBoxButtons.OK, MessageBoxIcon.Error);
                this.DialogResult = DialogResult.Cancel;

            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

            this.btnSendEmail.Enabled = true;

            if (AShowProcessMessageHint)
            {
                MessageBox.Show("Save success.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            ControlEditState(_ActionLogWorkMode);
        }

        // 保存Action Log信息动Level3
        // 只要有修改ActionLog的信息，就需要回写到L3中，所以独立写一个方法，供L3中、InComplete中调用
        //void SaveActionLogToL3(string ADeleteActionLogSeqNo)
        void SaveActionLogToL3()
        {
            //if (ActionLogHeaderList.Count() == 0) //所有的Action Log Stage都删除了，相当于Recall了这个AtionLogID的情况
            //{
            //    var L3List = _db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) && p.ActionLogID == _ActionLogID);

            //    foreach (var o in L3List)
            //    {
            //        o.ActionLogID = null;
            //        o.ActionLogSeqNo = null;
            //        o.ActionLogGroup = null;
            //        o.ActionLogTaking = null;
            //        o.ActionLogTargetDate = null;
            //        o.ActionLogRevisedDate = null;
            //        o.ActionLogCmplDate = null;
            //        o.ActionLogCategory = null;
            //        o.RelatedShptPercent = null;
            //    }
            //}
            //else
            //{


            //var L3ListByActionLogID = _db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) &&
            //    PONOList.Contains(p.PONO) && OrderLineList.Contains(p.OrderLine) && ColorCodeList.Contains(p.POColorSizeDetail.ColorCode) && SplitNoList.Contains(p.SplitNo));


            var L3ListByActionLogID = _db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) && p.ActionLogID == _ActionLogID);

            //先清掉这个ActionLogID中所有与Ation Log相关的信息，因为有可能删除的Action Log Stage
            foreach (var o in L3ListByActionLogID)
            {
                o.ActionLogID = null;
                o.ActionLogSeqNo = null;
                o.ActionLogGroup = null;
                o.ActionLogTaking = null;
                o.ActionLogTargetDate = null;
                o.ActionLogRevisedDate = null;
                o.ActionLogCmplDate = null;
                o.ActionLogCategory = null;
                o.RelatedShptPercent = null;
                o.ActionLogCmpl = null;
            }

            List<POChangesMonitor> L3List = new List<POChangesMonitor>();
            foreach (var o in ActionLogHeaderList)
            {
                L3List.AddRange(_db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) &&
                    p.PONO == o.PONO && p.OrderLine == o.OrderLine && p.POColorSizeDetail.ColorCode == o.ColorCode && p.SplitNo == o.SplitNo).AsEnumerable());
            }


            ////将ActionLogID和ActionLogSeqNo保存到L3
            //List<string> PONOList = ActionLogHeaderList.Select(p => p.PONO).Distinct().ToList();
            //List<int?> OrderLineList = ActionLogHeaderList.Select(p => p.OrderLine).Distinct().ToList();
            //List<string> ColorCodeList = ActionLogHeaderList.Select(p => p.ColorCode).Distinct().ToList();
            //List<int?> SplitNoList = ActionLogHeaderList.Select(p => p.SplitNo).Distinct().ToList();

            //var L3List = _db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) &&
            //    PONOList.Contains(p.PONO) && OrderLineList.Contains(p.OrderLine) && ColorCodeList.Contains(p.POColorSizeDetail.ColorCode) && SplitNoList.Contains(p.SplitNo));

            string ActionLogCmpl = ActionLogHeaderList.Any(p => !p.CompletedDate.HasValue) ? "N" : "Y";
            foreach (var o in L3List)
            {
                o.ActionLogID = _ActionLogID;

                //从Action Log中计算出每一行(PONO + OrderLine + ColrCode + SplitNo)对应的Action Log Seq# (最多三个)
                var BySplitList = ActionLogHeaderList.Where(p => p.PONO == o.PONO && p.OrderLine == o.OrderLine && p.ColorCode == o.ColorCode && p.SplitNo == o.SplitNo && p.TotalSplit == o.Lots);
                string ActionLogSeqNos = string.Join(",", BySplitList.Select(p => p.ActionLogSeqNoShow).OrderBy(p => p).Take(3).ToArray());
                o.ActionLogSeqNo = ActionLogSeqNos;

                o.ActionLogGroup = ActionLogHeaderList.FirstOrDefault().ActionLogType;
                o.ActionLogTaking = "Y";
                o.ActionLogTargetDate = BySplitList.Max(p => p.PlanEndDate);
                o.ActionLogRevisedDate = BySplitList.Max(p => p.RevisedDate);
                o.ActionLogCmplDate = BySplitList.Max(p => p.CompletedDate);
                o.ActionLogCategory = string.Join(",", BySplitList.Where(p => p.ItemNo != null && p.ItemNo != "").Select(p => p.ItemNo).OrderBy(p => p).Take(3).ToArray());
                o.RelatedShptPercent = BySplitList.Max(p => p.RelatedShptPercent);
                o.ActionLogCmpl = ActionLogCmpl;


                ////如果有删除最后一个Action Log Seq#
                //if (!string.IsNullOrEmpty(ADeleteActionLogSeqNo))
                //{
                //    var L3DeleteActionLogList = _db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) && p.ActionLogID == _ActionLogID && p.ActionLogSeqNo == ADeleteActionLogSeqNo);

                //    foreach (var o in L3DeleteActionLogList)
                //    {
                //        o.ActionLogID = null;
                //        o.ActionLogSeqNo = null;
                //        o.ActionLogGroup = null;
                //        o.ActionLogTaking = null;
                //        o.ActionLogTargetDate = null;
                //        o.ActionLogRevisedDate = null;
                //        o.ActionLogCmplDate = null;
                //        o.ActionLogCategory = null;
                //        o.RelatedShptPercent = null;
                //    }
                //}
            }
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (this.bsActionLogHeader.Current == null)
            {
                return;
            }

            this.gridActionLogDetail.AddNewRow();
            this.gridActionLogDetail.UpdateCurrentRow();

            ActionLogDetail detail = this.gridActionLogDetail.GetRow(this.gridActionLogDetail.FocusedRowHandle) as ActionLogDetail;
            detail.ActionLogID = CurrentActionLogHeader.ActionLogID;
            detail.ActionLogSeqNo = CurrentActionLogHeader.ActionLogSeqNo;

            detail.Sender = SysParamHelper.Instance.UserID;
            detail.StartFollowDate = DateTime.Now;

            int? MaxFollowCount = _db.ActionLogDetails.Where(p => p.ActionLogID == CurrentActionLogHeader.ActionLogID && p.ActionLogSeqNo == CurrentActionLogHeader.ActionLogSeqNo).Select(p => p.FollowCount).Max();
            detail.FollowCount = (MaxFollowCount ?? 0) + 1;

            SaveActionLogDetailData();

            //detail.FollowCount = ((this.bsActionLogHeader.Current as ActionLogHeader).ActionLogDetails.Select(p => p.FollowCount).Max() ?? 0) + 1;
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (ErrorMessageManager.ShowMessage("P000232", "00000000010105", "Platform", "msgDeleteconfirm", SysParamHelper.Instance.LangID, "msgDeleteconfirm") == DialogResult.Yes)
            {
                this.gridActionLogDetail.DeleteRow(this.gridActionLogDetail.FocusedRowHandle);
                //_db.SubmitChanges();
            }
        }

        private void gridActionLogDetail_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            if (e.FocusedRowHandle < 0) return;

            object CreateMan = this.gridActionLogDetail.GetFocusedRowCellValue("Sender");
            if (CreateMan == null) return;

            ActionLogHeader header = bsActionLogHeader.Current as ActionLogHeader;
            if (header == null || header.CompletedDate.HasValue)
            {
                return;
            }

            this.btnDelete.Enabled = CreateMan.ToString().ToUpper() == SysParamHelper.Instance.UserID.ToUpper();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            SaveActionLogDetailData();
            MessageBox.Show("Save success.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.None);
        }

        void SaveActionLogDetailData()
        {
            this.bsActionLogHeader.EndEdit();
            this.bandedGridView1.PostEditor();
            this.gridActionLogDetail.PostEditor();
            _db.SubmitChanges();
        }

        private void repositoryItemButtonEdit_ItemNo_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            ActionLogCategoryChoiceForm frmChoiceItem = new ActionLogCategoryChoiceForm(_db);
            if (frmChoiceItem.ShowDialog() == DialogResult.OK)
            {
                ActionLogHeader obj = this.bsActionLogHeader.Current as ActionLogHeader;
                obj.ItemNo = frmChoiceItem.SelectItem.Code;
                obj.ItemSubject = frmChoiceItem.SelectItem.Description_EN;
                obj.ItemSubjectCN = frmChoiceItem.SelectItem.Description;
                this.bandedGridView1.HideEditor();

                ProcessSameActionLogInfo(); //by Action Log Seq#修改相关栏位
            }
        }

        // by Action Log Seq#修改相关栏位
        void ProcessSameActionLogInfo()
        {
            IEnumerable<ActionLogHeader> AllDataList = bsActionLogHeader.List as IEnumerable<ActionLogHeader>;
            IEnumerable<ActionLogHeader> SameActionLogSeqNoList;
            if (CurrentActionLogHeader.ActionLogSeqNo == null)
            {
                SameActionLogSeqNoList = AllDataList.Where(p => p.ActionLogSeqNo == null).ToList();
            }
            else
            {
                SameActionLogSeqNoList = AllDataList.Where(p => p.ActionLogSeqNo == CurrentActionLogHeader.ActionLogSeqNo).ToList();
            }

            foreach (var obj in SameActionLogSeqNoList)
            {
                obj.ItemNo = CurrentActionLogHeader.ItemNo;
                obj.ItemSubject = CurrentActionLogHeader.ItemSubject;
                obj.ItemSubjectCN = CurrentActionLogHeader.ItemSubjectCN;
                obj.PrdnSite = CurrentActionLogHeader.PrdnSite;

                //obj.PlanEndDate = CurrentActionLogHeader.PlanEndDate;
                //obj.RevisedDate = CurrentActionLogHeader.RevisedDate;
                //obj.IsCompleted = CurrentActionLogHeader.IsCompleted;
                //obj.CompletedDate = CurrentActionLogHeader.CompletedDate;

                if (!string.IsNullOrEmpty(obj.ActionLogSeqNo))
                {
                    if (obj.CompletedDate.HasValue)
                    {
                        obj.ActionLogSeqNo = obj.ActionLogSeqNo + "*";
                    }
                    else
                    {
                        obj.ActionLogSeqNo = obj.ActionLogSeqNo.TrimEnd('*');
                    }
                }

            }
        }

        private void repositoryItemCheckEdit_IteCompleted_CheckedChanged(object sender, EventArgs e)
        {
            this.bandedGridView1.PostEditor();
            this.bsActionLogHeader.EndEdit();
            ControlEditState(_ActionLogWorkMode);
        }

        private void btn1stStageComplete_Click(object sender, EventArgs e)
        {
            CurrentActionLogHeader.IsCompleted = null;
            CurrentActionLogHeader.CompletedDate = null;
            bsActionLogHeader.EndEdit();

            ProcessActionLogSeqNoComplateStatus();

            SaveActionLog(false);
            SaveActionLogToL3();
            _db.SubmitChanges();
            ControlEditState(_ActionLogWorkMode);
        }

        private void repositoryItemButtonEdit_OpenDetail_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            ActionLogDetail obj = bsActionLogDetail.Current as ActionLogDetail;
            if (obj == null) return;
            FollowupSummaryForm frmFollowupSummary = new FollowupSummaryForm(obj);
            if (frmFollowupSummary.ShowDialog() == DialogResult.OK)
            {
                obj.FollowSummary = frmFollowupSummary.FollowUpSummary;
                bsActionLogDetail.EndEdit();
                gridActionLogDetail.RefreshData();
            }
        }

        private void bandedGridView1_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (e.Column.FieldName == "IsCompleted")
            {
                ProcessActionLogSeqNoComplateStatus();
            }
            else
            {
                ProcessSameActionLogInfo(); //by Action Log Seq#修改相关栏位
            }

            SaveActionLog(false);
            SaveActionLogToL3();
            _db.SubmitChanges();

            ControlEditState(_ActionLogWorkMode);
        }

        //同一个ActionLogSeq#中，如果所有行的都输入了Cmpl Date，即把这个ActionLogSeq#加上*号，如果有一行没有输入Cmpl Date，则不加*号
        void ProcessActionLogSeqNoComplateStatus()
        {
            IEnumerable<ActionLogHeader> AllDataList = bsActionLogHeader.List as IEnumerable<ActionLogHeader>;
            string CurrentActionLogID = CurrentActionLogHeader.ActionLogID;
            string CurrentActionLogSeqNo = CurrentActionLogHeader.ActionLogSeqNo;

            //同一个Action Log Seq#中还存在没有输入Complete Date的记录
            bool ExistsInComplete = AllDataList.Any(p => p.ActionLogSeqNo == CurrentActionLogHeader.ActionLogSeqNo && !p.CompletedDate.HasValue);

            var lists = AllDataList.Where(p => p.ActionLogSeqNo == CurrentActionLogSeqNo).ToList();
            foreach (var obj in lists)
            {
                obj.ActionLogSeqNo = ExistsInComplete ? CurrentActionLogSeqNo.TrimEnd('*') : (CurrentActionLogSeqNo + "*");
            }

            //更新Action Log Detail表
            var NeedUpdateActionLogDetailList = _db.ActionLogDetails.Where(p => p.ActionLogID == CurrentActionLogID && p.ActionLogSeqNo == CurrentActionLogSeqNo).ToList();
            foreach (var obj in NeedUpdateActionLogDetailList)
            {
                obj.ActionLogSeqNo = ExistsInComplete ? CurrentActionLogSeqNo.TrimEnd('*') : (CurrentActionLogSeqNo + "*");
            }
        }

        private void bandedGridView1_FocusedColumnChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedColumnChangedEventArgs e)
        {
            ControlEditState(_ActionLogWorkMode);
        }

        void ControlEditState(ActionLogWorkModes AActionLogWorkMode)
        {
            //bool IsCreator = CurrentActionLogHeader.CreateMan.ToUpper() == SysParamHelper.Instance.UserID.ToUpper();

            if (CurrentActionLogHeader.CompletedDate.HasValue)
            {
                AActionLogWorkMode = ActionLogWorkModes.Complete;
            }

            bool IsCreator;
            if (string.IsNullOrEmpty(CurrentActionLogHeader.CreateMan)) //以前的记录有些没有创建人，这些记录所有人都可以点Completed
            {
                IsCreator = true;
            }
            else
            {
                IsCreator = CurrentActionLogHeader.CreateMan.ToUpper() == SysParamHelper.Instance.UserID.ToUpper();
            }

            //this.colCompletedDate.OptionsColumn.AllowEdit = IsCreator;
            this.colIsCompleted.OptionsColumn.AllowEdit = IsCreator;
            this.btn1stStageComplete.Visible = (CurrentActionLogHeader.CompletedDate.HasValue) && IsCreator;


            btnSaveAlertLog.Enabled = AActionLogWorkMode != ActionLogWorkModes.Complete;
            btnAddStage.Enabled = AActionLogWorkMode != ActionLogWorkModes.AddNew;

            btnAdd.Enabled = AActionLogWorkMode == ActionLogWorkModes.Edit;
            btnDelete.Enabled = btnAdd.Enabled;
            btnSave.Enabled = btnAdd.Enabled;
            btnSendEmail.Enabled = btnAdd.Enabled;
            btnDeleteStage.Enabled = AActionLogWorkMode == ActionLogWorkModes.Edit && IsCreator && CurrentActionLogHeader.StageSeqNo == ActionLogHeaderList.Max(p => (p.StageSeqNo ?? 0));

            bandedGridView1.OptionsBehavior.Editable = AActionLogWorkMode != ActionLogWorkModes.Complete;
            //gridActionLogDetail.OptionsBehavior.Editable = AActionLogWorkMode != ActionLogWorkModes.Complete;

        }

        private void gridActionLogDetail_ShowingEditor(object sender, CancelEventArgs e)
        {
            if (_ActionLogWorkMode == ActionLogWorkModes.Complete && gridActionLogDetail.FocusedColumn != colOpenDetail)
            {
                e.Cancel = true;
            }
        }


        private void bandedGridView1_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            this.bsActionLogHeader.EndEdit();
            SaveActionLog(false);
            SaveActionLogToL3();
            _db.SubmitChanges();
        }

        private void gridActionLogDetail_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            this.bsActionLogDetail.EndEdit();
            SaveActionLog(false);
            SaveActionLogToL3();
            _db.SubmitChanges();
        }

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            string SaveActionLogSeqNo = "";
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                ActionLogHeader obj = bandedGridView1.GetRow(i) as ActionLogHeader;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SaveActionLogSeqNo = obj.ActionLogSeqNo;
                }
                else
                {
                    if (obj.ActionLogSeqNo == SaveActionLogSeqNo)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SaveActionLogSeqNo = obj.ActionLogSeqNo;
                    }
                }
            }
        }

        private void gridControl1_Load(object sender, EventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void gridControl1_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void btnDeleteStage_Click(object sender, EventArgs e)
        {
            //if (ActionLogHeaderList.Any(p => p.StageSeqNo > CurrentActionLogHeader.StageSeqNo))
            //{
            //    MessageBox.Show("Only the last stage action log seq# can be deleted", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            string ActionLogID = CurrentActionLogHeader.ActionLogID;
            string ActionLogSeqNo = CurrentActionLogHeader.ActionLogSeqNo;             //ActionLogHeader中的ActionLogSeq#: 2209-020
            string DeleteActionLogSeqNo = CurrentActionLogHeader.ActionLogSeqNoShow;   //L3中保存的ActionLogSeq#: 09-020

            if (MessageBox.Show("Confirm delete the acton log seq#: " + ActionLogSeqNo, "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                var NeedDeleteList = ActionLogHeaderList.Where(p => p.ActionLogID == ActionLogID && p.ActionLogSeqNo == ActionLogSeqNo).ToList();
                for (int i = 0; i < NeedDeleteList.Count(); i++)
                {
                    bsActionLogHeader.Remove(NeedDeleteList[i]);
                }

                var NeedDeleteActionLogDetailList = _db.ActionLogDetails.Where(p => p.ActionLogID == ActionLogID && p.ActionLogSeqNo == ActionLogSeqNo);
                _db.ActionLogDetails.DeleteAllOnSubmit(NeedDeleteActionLogDetailList);

                SaveActionLog(false);
                SaveActionLogToL3();

                //SaveActionLog(false, DeleteActionLogSeqNo);
                //SaveActionLogToL3(DeleteActionLogSeqNo);
                _db.SubmitChanges();

                GetHeaderShowInfo();
            }
        }

        private void bandedGridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            if (CurrentActionLogHeader == null) return;

            if (_ActionLogWorkMode != ActionLogWorkModes.AddNew) //不是新增状态时，判断是编辑状态还是Last Stage已经完成状态
            {
                if (CurrentActionLogHeader.CompletedDate.HasValue)
                    _ActionLogWorkMode = ActionLogWorkModes.Complete; //Action Log已經完成，不允許再修改
                else
                    _ActionLogWorkMode = ActionLogWorkModes.Edit;
            }

            lbActionLogSeqNo.Text = string.Format("[{0}]", CurrentActionLogHeader.ActionLogSeqNoShow);
            ControlEditState(_ActionLogWorkMode);
        }

        private void bsActionLogHeader_CurrentChanged(object sender, EventArgs e)
        {
            if (CurrentActionLogHeader == null) return;

            //根据 Action Log Seq# 取得发邮件的内容 (Action Log Detail表)
            var DetailList = _db.ActionLogDetails.Where(p => p.ActionLogID == _ActionLogID && p.ActionLogSeqNo == CurrentActionLogHeader.ActionLogSeqNo);
            bsActionLogDetail.DataSource = DetailList;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            //POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
            //ActionLogHeader obj = this.bsActionLogHeader.Current as ActionLogHeader;
            //var item = db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) && p.ActionLogID == _ActionLogID).FirstOrDefault();

            //obj.PONO = item.PONO;
            //obj.OrderLine = item.OrderLine;
            //obj.ColorCode = item.ColorCode;
            //obj.SplitNo = item.SplitNo;
            //obj.TotalSplit = item.Lots;
            //obj.ProjectNo = item.ProjectNo;
            //obj.SuppCode = item.Supplier;
            //obj.SuppRef = item.SupplierReference;
            ////obj.ActionLogType = "G";
            //obj.Factory = item.Factory;
            //obj.ItemCode = item.ItemCode;


            //string SqlStr = string.Format("exec sp_GetOurWOInfo '{0}', {1}", item.ProjectNo, (item.WOSeqNo ?? 1));
            //DataTable dt = _db.ExecuteDataTable(SqlStr, "dt");
            //if (dt.Rows.Count > 0)
            //{
            //    obj.WOFWStartDate = dt.Rows[0]["WOFWStartDate"] == DBNull.Value ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOFWStartDate"]);
            //}

            ////POChangesMonitor L3Obj = db.POChangesMonitors.FirstOrDefault(p => (p.POColorSizeDetail.VersionFlag ?? false) && p.PONO == obj.PONO && p.OrderLine == obj.OrderLine &&
            ////   p.POColorSizeDetail.ColorCode == obj.ColorCode && p.SplitNo == obj.SplitNo);
            ////L3Obj.WOFWStartDate = obj.WOFWStartDate;

            ////obj.RWO_DaysDiff = L3Obj.RWO_DaysDiff;


            //_db.SubmitChanges();
        }

        private void repositoryItemCheckEdit_IsCompleted_CheckedChanged(object sender, EventArgs e)
        {
            this.bandedGridView1.PostEditor();
            this.bandedGridView1.RefreshData();
        }

        void GetHeaderShowInfo()
        {
            ActionLogHeader obj = bsActionLogHeader.Current as ActionLogHeader;
            if (obj != null)
            {
                txtSupp.Text = obj.SuppCode;
                txtItemCode.Text = obj.ItemCode;
                txtCreator.Text = obj.CreateMan;

                var lists = bsActionLogHeader.DataSource as IEnumerable<ActionLogHeader>;
                if (lists != null)
                {
                    txtActionLogStageTotal.Text = lists.Select(p => p.ActionLogSeqNoShow).Distinct().Count().ToString();
                }
            }
        }

        void GetIMQEActionLogInfo()
        {
            var obj = _db.ActionLogIMQEs.FirstOrDefault(p => p.ActionLogID == _ActionLogID);
            if (obj == null)
            {
                txtDataCrossTransferredFlag.Text = "N";
                return;
            }

            txtIMQE_ActionLogSeqNo.Text = obj.IMQEActionLogSeqNo;
            txtDataCrossTransferredFlag.Text = obj.DataCrossTransferredFlag;
            txtDataCrossTransferredDate.EditValue = obj.DataCrossTransferredDate;


            //txtIMQE_AuditNo.Text = obj.IMQEAuditNo;
            //txtIMQE_CategoryCode.Text = obj.IMQECategoryNo;
            //txtCreator.Text = obj.IMQECreator;
        }

        void SaveIMQEActionLogInfo()
        {
            if (string.IsNullOrEmpty(txtIMQE_ActionLogSeqNo.Text))
            {
                //有可能用户先输入了Data Cross Transferred Action Log Seq#, 然后又删除掉了
                ActionLogIMQE obj = _db.ActionLogIMQEs.FirstOrDefault(p => p.ActionLogID == _ActionLogID);
                if (obj != null)
                {
                    _db.ActionLogIMQEs.DeleteOnSubmit(obj);
                }
                return;
            }
            else
            {
                ActionLogIMQE obj = _db.ActionLogIMQEs.FirstOrDefault(p => p.ActionLogID == _ActionLogID);
                if (obj == null)
                {
                    obj = new ActionLogIMQE();
                    _db.ActionLogIMQEs.InsertOnSubmit(obj);
                }

                obj.ActionLogID = _ActionLogID;
                obj.IMQEActionLogSeqNo = txtIMQE_ActionLogSeqNo.Text;
                obj.DataCrossTransferredFlag = txtDataCrossTransferredFlag.Text;
                if (txtDataCrossTransferredDate.DateTime == DateTime.MinValue)
                {
                    obj.DataCrossTransferredDate = null;
                }
                else
                {
                    obj.DataCrossTransferredDate = txtDataCrossTransferredDate.DateTime;
                }

                //obj.IMQEAuditNo = txtIMQE_AuditNo.Text;
                //obj.IMQECategoryNo = txtIMQE_CategoryCode.Text;
                //obj.IMQECreator = txtCreator.Text;
            }



        }

        private void txtIMQE_ActionLogSeqNo_Validated(object sender, EventArgs e)
        {
            //if (string.IsNullOrEmpty(txtIMQE_ActionLogSeqNo.Text))
            //{
            //    txtDataCrossTransferredFlag.Text = "N";
            //    txtDataCrossTransferredDate.EditValue = null;
            //}
            //else
            //{
            //    txtDataCrossTransferredFlag.Text = "Y";
            //    if (txtDataCrossTransferredDate.EditValue == null)
            //    {
            //        txtDataCrossTransferredDate.EditValue = DateTime.Now.Date;
            //    }
            //}

            if (string.IsNullOrEmpty(txtIMQE_ActionLogSeqNo.Text) || string.IsNullOrEmpty(CurrentActionLogHeader.ItemCode))
            {
                txtDataCrossTransferredFlag.Text = "N";
                return;
            }

            //从IMQE中取得Received date
            string SqlStr = string.Format("exec sp_GetIMQEInfo '{0}', '{1}'", txtIMQE_ActionLogSeqNo.Text.TrimEnd(), CurrentActionLogHeader.ItemCode.Substring(0, 3));
            DataTable dt = _db.ExecuteDataTable(SqlStr, "dtIMQE");
            if (dt != null && dt.Rows.Count > 0)
            {
                txtDataCrossTransferredFlag.Text = "Y";

                if (!string.IsNullOrEmpty(dt.Rows[0]["DataCrossTransferCmplDate"].ToString()))
                {
                    txtDataCrossTransferredDate.EditValue = dt.Rows[0]["DataCrossTransferCmplDate"];
                }

                //txtIMQE_AuditNo.Text = dt.Rows[0]["AuditNo"].ToString();
                //txtIMQE_CategoryCode.Text = dt.Rows[0]["CategoryCode"].ToString();
                //txtCreator.Text = dt.Rows[0]["Creator"].ToString();
            }
        }

        private void bandedGridView1_CustomDrawBandHeader(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null || e.Band.Tag == null) return;

            string sTag = e.Band.Tag.ToString();
            if (string.IsNullOrEmpty(sTag)) return;


            Color colorGray = Color.FromArgb(217, 217, 217);
            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);

            Brush brushGray = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorGray, colorGray, 90);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Rectangle r = e.Bounds;
            ControlPaint.DrawBorder3D(e.Graphics, r, (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? Border3DStyle.SunkenOuter : Border3DStyle.RaisedInner));
            r.Inflate(-1, -1);

            Brush brush;
            switch (sTag)
            {
                case "0":
                    brush = brushGray;
                    break;
                case "1":
                    brush = brushYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    break;
                default:
                    brush = brushYellow;
                    break;
            }

            if (e.Band.Name == "gridBand27")
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Moccasin, Color.Moccasin, 90);
            }

            e.Graphics.FillRectangle(brush, r);
            r.Inflate(-2, 0);
            e.Appearance.DrawString(e.Cache, e.Band.Caption, r);
            e.Handled = true;
        }

        private void bandedGridView1_CustomDrawColumnHeader(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (col.OwnerBand == null) return;

            object obj = GetParentBandTag(col.OwnerBand);

            object objCol = col.Tag;
            if (obj == null && objCol == null) return;

            string sTag = obj == null ? Convert.ToString(objCol) : Convert.ToString(obj);

            if (sTag == "") return;

            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Brush brushPressed = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.WhiteSmoke, Color.Gray, 90);
            Rectangle r = e.Bounds;

            DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo = null;
            Rectangle filterBounds, sortBounds;
            filterBounds = sortBounds = Rectangle.Empty;
            try
            {
                UpdateInnerElements(e, false, ref sortBounds, ref filterBounds, ref filterInfo);
                e.Painter.DrawObject(e.Info);
            }
            finally
            {
                UpdateInnerElements(e, true, ref sortBounds, ref filterBounds, ref filterInfo);
            }

            Brush brush;
            switch (sTag)
            {
                case "1":
                    brush = brushYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    break;
                default:
                    brush = brushYellow;
                    break;
            }

            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);

            e.Graphics.FillRectangle((e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? brushPressed : brush), r);
            r.Inflate(-2, 0);

            e.Appearance.DrawString(e.Cache, e.Column.Caption, r);

            e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
            e.Handled = true;
        }

        void UpdateInnerElements(DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e, bool restore, ref Rectangle sortBounds, ref Rectangle filterBounds, ref ObjectInfoArgs filterInfo)
        {
            foreach (DevExpress.Utils.Drawing.DrawElementInfo item in e.Info.InnerElements)
            {
                if (item.ElementPainter is DevExpress.Utils.Drawing.SortedShapeObjectPainter)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = sortBounds;
                    }
                    else
                    {
                        sortBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
                if (item.ElementInfo is DevExpress.XtraEditors.Drawing.GridFilterButtonInfoArgs)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = filterBounds;
                    }
                    else
                    {
                        filterInfo = item.ElementInfo;
                        filterBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
            }
        }

        private object GetParentBandTag(DevExpress.XtraGrid.Views.BandedGrid.GridBand subBand)
        {
            object obj = subBand.Tag;
            if (obj != null) return obj;

            if (subBand.ParentBand != null)
                return GetParentBandTag(subBand.ParentBand);

            return obj;
        }

        //重算Grpg 栏
        void ReCalculateGroupFlag()
        {
            var ActionLogType = ActionLogHeaderList.GroupBy(p => new { p.PONO, p.OrderLine, p.ColorCode, p.SplitNo }).Count() > 1 ? "G" : "S";
            foreach (var obj in ActionLogHeaderList)
            {
                obj.ActionLogType = ActionLogType;

                //同时计算整个Action Log是否已经完成
                obj.ActionLogCmpl = ActionLogHeaderList.Any(p => !p.CompletedDate.HasValue) ? "N" : "Y";
            }
            bsActionLogHeader.EndEdit();
        }

        private void bandedGridView1_DoubleClick(object sender, EventArgs e)
        {
            //ActionLogHeader obj = bsActionLogHeader.Current as ActionLogHeader;
            //if (obj != null)
            //{
            //    string SqlStr = string.Format("select distinct fty from [phdb]..V_WO_FTY where ProjectNo = '{0}' and fty in ('RX', 'GG')", obj.ProjectNo.Trim());
            //    DataTable dt = _db.ExecuteDataTable(SqlStr, "dt");
            //    if (dt != null && dt.Rows.Count > 0)
            //    {
            //        MessageBox.Show("Need input Extra time to RX dd", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    }
            //    else
            //    {
            //        MessageBox.Show("No Need input Extra time to RX dd", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    }
            //}
        }

        private void bandedGridView1_ShowingEditor(object sender, CancelEventArgs e)
        {
            ActionLogHeader obj = bsActionLogHeader.Current as ActionLogHeader;
            if (obj == null) // || obj.PrdnSite == "BD"
            {
                e.Cancel = true;
                return;
            }

            if (obj.PrdnSite == "CN?" || obj.PrdnSite == "SL" || obj.PrdnSite == "RX*")
            {
                repositoryItemComboBox_PrdnSite.Items.Clear();
                repositoryItemComboBox_PrdnSite.Items.AddRange(new object[] { "", "SL", "RX*" });
            }
            else if (string.IsNullOrEmpty(obj.PrdnSite))
            {
                repositoryItemComboBox_PrdnSite.Items.Clear();
                repositoryItemComboBox_PrdnSite.Items.AddRange(new object[] { "", "CN?", "SL", "RX*", "BD" });
            }
        }

        private void gridControl1_Click(object sender, EventArgs e)
        {

        }


    }

    /// <summary>
    /// Action Log 处理模式
    /// </summary>
    public enum ActionLogProcessModes
    {
        Level2,
        Level3
    }



}