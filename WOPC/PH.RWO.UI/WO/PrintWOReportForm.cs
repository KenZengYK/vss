using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.RWO.BO;
using DevExpress.XtraBars;
using DevExpress.XtraGrid;
using PH.Platform.ExtendLibrary;
using PH.Platform.AuthMgr.BO;
using PH.Platform.Misc.BO;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.Data;
using System.Diagnostics;

namespace PH.RWO.UI.WO
{
    public partial class PrintWOReportForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PrintWOReportForm()
        {
            InitializeComponent();
        }

        string _Param;
        public PrintWOReportForm(string AParam)
            : this()
        {
            _Param = AParam;
        }


        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();

            if (_Param == "Incomplete")
            {
                var lists = (this.DataContext as RWOSOPCDataContext).WorkOrders.Where(p =>
                    p.WOCreateDate >= DateTime.Now.AddYears(-1) && p.WOStatus != "-1" && p.WOStatus != "8" && p.HeaderConfirm != "" && !p.Project.ProjectNo.EndsWith("S"));

                this.BindingSource.DataSource = lists;
            }
            else if (_Param == "Completed")
            {
                var lists = (this.DataContext as RWOSOPCDataContext).WorkOrders.Where(p =>
                    p.WOCreateDate >= DateTime.Now.AddYears(-1) && p.WOStatus == "8" && !p.Project.ProjectNo.EndsWith("S"));

                this.BindingSource.DataSource = lists;
            }
            else if (_Param == "NonIssued")
            {
                var lists = (this.DataContext as RWOSOPCDataContext).WorkOrders.Where(p =>
                    (!p.WOCreateDate.HasValue || p.WOCreateDate >= DateTime.Now.AddYears(-1)) && p.LCLExFtyShipCompleted > DateTime.Now.Date &&
                    p.WOStatus != "-1" && p.WOStatus != "8" && !p.WorkOrderNo.StartsWith("W") &&
                    !p.Project.ProjectNo.EndsWith("S") && p.Project.Status != "C" && p.Project.Status != "X");

                this.BindingSource.DataSource = lists;
            }
            //else if (_Param == "PrintOut")
            //{
            //    var lists = (this.DataContext as RWOSOPCDataContext).WorkOrders.Where(p =>
            //        p.Project.SoIssueDate >= DateTime.Now.AddYears(-2) && p.WOStatus != "-1" && p.WOStatus != "8" && p.HeaderConfirm != "" && !p.Project.ProjectNo.EndsWith("S"));

            //    this.BindingSource.DataSource = lists;
            //}

            //bandedGridView1.OptionsBehavior.Editable = _Param == "Incomplete";
            //gridBandIncompleteWO.Visible = gridBandNotFinished.Visible = _Param != "Completed";
            //btnPrint.Visibility = _Param == "PrintOut" ? BarItemVisibility.Always : BarItemVisibility.Never;

            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnOpen.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
            barBtnSave.Visibility = BarItemVisibility.Never;

            btnReCalculation.Caption = "     "; //Kenny提出这个Button显示为空白 2022-01-06

            Auth_FunRight ReCalculationRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "ReCalculation");
            btnReCalculation.Visibility = ReCalculationRight == null ? BarItemVisibility.Never : BarItemVisibility.Always;

            //绑定 Incomplete WO Reason Code
            PHPlatformMiscDataContext PlatformMiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var IncompleteWOReasonList = PlatformMiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.WO.IncompleteWOReason").OrderBy(p => p.SortID)
                .Select(p => new { ReasonCode = p.DataCode, NameEN = p.Description, NameCN = p.DataNameCN }).ToList();

            IncompleteWOReasonList.Insert(0, null);
            repositoryItemGridLookUpEdit_IncompleteWOReasonCode.View.ColumnPanelRowHeight = 38;

            repositoryItemGridLookUpEdit_IncompleteWOReasonCode.DataSource = IncompleteWOReasonList;
            repositoryItemGridLookUpEdit_IncompleteWOReasonCode.DisplayMember = "ReasonCode";
            repositoryItemGridLookUpEdit_IncompleteWOReasonCode.ValueMember = "ReasonCode";

            repositoryItemGridLookUpEdit_IncompleteWOReasonCode.View.Columns[0].Caption = "Reason\r\nCode";
            repositoryItemGridLookUpEdit_IncompleteWOReasonCode.View.Columns[1].Caption = "Desc. (EN)";
            repositoryItemGridLookUpEdit_IncompleteWOReasonCode.View.Columns[2].Caption = "Desc. (CN)";

            repositoryItemGridLookUpEdit_IncompleteWOReasonCode.View.Columns[0].Width = 60;
            repositoryItemGridLookUpEdit_IncompleteWOReasonCode.View.Columns[1].Width = 350;
            repositoryItemGridLookUpEdit_IncompleteWOReasonCode.View.Columns[2].Width = 350;

            this.AllowGridEdit = true;
        }

        private void btnPrint_ItemClick(object sender, ItemClickEventArgs e)
        {
            WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) { return; }

            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            bool isSL = langID != "TH";
            PrintWorkOrderReport(wo, isSL);
        }

        private void PrintWorkOrderReport(WorkOrder wo, bool isSL)
        {
            if (wo == null) return;
            string cust = wo.Project.Customer;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            if (isSL)
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWorkOrderReport).FullName;//報表全名
            else
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWorkOrderKBReport).FullName;//報表全名

            data.JobName = string.Format("WO({0}) Report", wo.WorkOrderNo);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1}", wo.WorkOrderNo, cust.Trim()); //執行數據源時候需要使用的參數
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "Chosenvs3")
            {
                //LWNonShipWindow、Chosenvs3
                object Chosenvs3 = objListGridView.GetRowCellValue(e.RowHandle, "Chosenvs3");
                if (Chosenvs3 != null && Convert.ToInt32(Chosenvs3) < 0)
                {
                    // e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<WorkOrder> lists = bandedGridView1.FilteredList().Cast<WorkOrder>();

                switch (item.FieldName)
                {
                    case "BulkQty":
                        e.TotalValue = lists.Select(p => p.BulkQty).Sum();
                        break;
                }
            }
        }


        private void btnReCalculation_ItemClick(object sender, ItemClickEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            try
            {
                IEnumerable<WorkOrder> lists = bandedGridView1.FilteredList().Cast<WorkOrder>();
                foreach (var wo in lists)
                {
                    InitChooseFW(wo);
                    this.DataContext.SubmitChanges();
                }
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        private void InitChooseFW(WorkOrder wo)
        {
            RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
            if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();

            //this.gvChosenFW.OptionsView.ShowColumnHeaders = false;
            //this.gvChosenFW.OptionsBehavior.Editable = false;

            //WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) return;
            wo.GetIEBInfor();

            //this.bsChooseFW.DataSource = wo.WOChooseFWs;

            #region WOChooseFW

            if (wo.WOChooseFWs != null && wo.WOChooseFWs.Count == 0)
            {
                for (int i = 1; i < 5; i++)
                {
                    AddWOChooseFW(wo, i, context);

                }
            }
            else if (wo.WOChooseFWs != null && wo.WOChooseFWs.Count > 0)
            {
                foreach (var cFW in wo.WOChooseFWs)
                {
                    if (cFW.Seq == 1)
                        CheckOptionOneFW(cFW, context);

                    //自動計算Opation 3 由David加入 2020-07-07
                    if (cFW.Seq == 3)
                    {
                        wo.CalcOption3Data();
                    }
                }
            }

            if (wo.WOChooseFWs != null && wo.WOChooseFWs.Count == 3)
            {
                AddWOChooseFW(wo, 4, context);
            }
            this.DataContext.SubmitChanges();
            #endregion

        }

        private void AddWOChooseFW(WorkOrder wo, int seq, RWOSOPCDataContext context)
        {
            WOChooseFW obj = new WOChooseFW(); //this.bsChooseFW.AddNew();
            WOChooseFW cFW = obj as WOChooseFW;
            wo.WOChooseFWs.Add(cFW);


            cFW.WorkOrder = wo;
            cFW.CurrentDataContext = this.DataContext;
            //cFW.CurrentBindingSource = this.bsChooseFW;

            cFW.Company = wo.Company;
            cFW.SalesOrderNo = wo.SalesOrderNo;
            cFW.WorkOrderNo = wo.WorkOrderNo;
            cFW.Seq = seq;
            cFW.Chosen = false;


            if (cFW.Seq == 1)
            {
                DoOptionOneFW(cFW, context);

                //    cFW.FactoryWork = wo.Project.IsShipWindow ? wo.FactoryWorkStartShip : wo.FactoryWorkShipCompleted;
                //    cFW.LineWork = wo.Project.IsShipWindow ? wo.LineWorkStartShip : wo.LineWorkShipCompleted;

                //    DateTime? dtFirst = wo.Project.IsShipWindow ? wo.FirstStationStartShip : wo.FirstStationShipCompleted;
                //    if (!dtFirst.HasValue)
                //    {
                //        dtFirst = context.fn_FirstStationByFW(cFW.FactoryWork, wo.Project.Customer, wo.Factory);
                //    }
                //    cFW.FirstStation = dtFirst;

                //    //assign 1stStation to WO when it no value:
                //    if (!wo.FirstStationStartShip.HasValue)
                //    {
                //        wo.FirstStationStartShip = context.fn_FirstStationByFW(wo.FactoryWorkStartShip, wo.Project.Customer, wo.Factory);
                //    }
                //    if (!wo.FirstStationShipCompleted.HasValue)
                //    {
                //        wo.FirstStationShipCompleted = context.fn_FirstStationByFW(wo.FactoryWorkShipCompleted, wo.Project.Customer, wo.Factory);
                //    }

                //    //cFW.Chosen = true;
            }
            wo.WOChooseFWs.Add(cFW);
        }

        private void DoOptionOneFW(WOChooseFW cFW, RWOSOPCDataContext context)
        {
            WorkOrder wo = cFW.WorkOrder;

            cFW.FactoryWork = wo.IsShipWindow ? wo.FactoryWorkStartShip : wo.FactoryWorkShipCompleted;
            cFW.LineWork = wo.IsShipWindow ? wo.LineWorkStartShip : wo.LineWorkShipCompleted;

            DateTime? dtFirst = wo.IsShipWindow ? wo.FirstStationStartShip : wo.FirstStationShipCompleted;
            if (!dtFirst.HasValue)
            {
                dtFirst = context.fn_FirstStationByFW(cFW.FactoryWork, wo.Project.Customer, wo.Factory, wo.Project.DSEQ);
            }
            cFW.FirstStation = dtFirst;

            //assign 1stStation to WO when it no value:
            if (!wo.FirstStationStartShip.HasValue)
            {
                wo.FirstStationStartShip = context.fn_FirstStationByFW(wo.FactoryWorkStartShip, wo.Project.Customer, wo.Factory, wo.Project.DSEQ);
            }
            if (!wo.FirstStationShipCompleted.HasValue)
            {
                wo.FirstStationShipCompleted = context.fn_FirstStationByFW(wo.FactoryWorkShipCompleted, wo.Project.Customer, wo.Factory, wo.Project.DSEQ);
            }
        }

        private void CheckOptionOneFW(WOChooseFW cFW, RWOSOPCDataContext context)
        {
            if (!cFW.FactoryWork.HasValue)
            {
                DoOptionOneFW(cFW, context);
            }
        }

        private void bandedGridView1_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            WorkOrder obj = this.BindingSource.Current as WorkOrder;
            if (obj != null)
            {
                this.DataContext.SubmitChanges();
            }
        }

        // The variables that will store summary values.
        //int discontinuedProductsCount;
        //decimal customSum;

        int SaveBalaceQty = 0;
        int SaveBulkQty = 0;
        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            //bandedGridView1
            //    DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;

            // Get the summary ID.
            int summaryID = Convert.ToInt32((e.Item as GridSummaryItem).Tag);
            //GridView View = sender as GridView;

            if (e.SummaryProcess == CustomSummaryProcess.Start)
            {
                SaveBalaceQty = 0;
                SaveBulkQty = 0;
            }

            if (e.SummaryProcess == CustomSummaryProcess.Calculate)
            {
                if (summaryID == 2)
                {
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "BalaceShipmetQty") != null)
                    {
                        SaveBalaceQty += (int)bandedGridView1.GetRowCellValue(e.RowHandle, "BalaceShipmetQty");
                    }
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "BulkQty") != null)
                    {
                        SaveBulkQty += (int)bandedGridView1.GetRowCellValue(e.RowHandle, "BulkQty");
                    }
                }
            }

            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == CustomSummaryProcess.Finalize)
            {
                if (summaryID == 2)
                {
                    e.TotalValue = (100.0000 * SaveBalaceQty / SaveBulkQty).ToString("N2");
                    //e.TotalValue = "Group";
                }
                else
                {
                    IEnumerable<WorkOrder> lists = bandedGridView1.FilteredList().Cast<WorkOrder>();

                    var TotalBalaceQty = lists.Select(p => p.BalaceShipmetQty).Sum();
                    var TotalBulkQty = lists.Select(p => p.BulkQty).Sum();
                    e.TotalValue = TotalBulkQty == 0 ? "" : Convert.ToDouble(100.0000 * TotalBalaceQty / TotalBulkQty).ToString("N2");

                }
            }


            //GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            //if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            //{
            //    IEnumerable<WorkOrder> lists = bandedGridView1.FilteredList().Cast<WorkOrder>();

            //    SaveBalaceQty = Convert.ToInt32(bandedGridView1.GetGroupRowValue(e.RowHandle));
            //    SaveBulkQty = Convert.ToInt32(bandedGridView1.GetGroupRowValue(e.RowHandle));


            //    switch (item.FieldName)
            //    {
            //        case "BalaceShipmetQtyPercent":
            //             e.TotalValue = 100.0000 * SaveBalaceQty / SaveBulkQty;
            //            break;

            //        //case "WorkOrderNo":
            //        //    e.TotalValue = lists.Select(p => p.WorkOrderNo).Distinct().Count();
            //        //    break;

            //        //case "BulkQty":
            //        //    e.TotalValue = lists.Select(p => p.BulkQty).Sum();
            //        //    break;

            //        //case "BalaceShipmetQty":
            //        //    e.TotalValue = lists.Select(p => p.BalaceShipmetQty).Sum();
            //        //    break;

            //    }
            //}
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            colWorkOrderNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Count;
            colWorkOrderNo.SummaryItem.DisplayFormat = "{0:N0}";
            colWorkOrderNo.SummaryItem.Tag = 1;

            colBulkQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            colBulkQty.SummaryItem.DisplayFormat = "{0:N0}";
            colBulkQty.SummaryItem.Tag = 1;

            colBalaceShipmetQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            colBalaceShipmetQty.SummaryItem.DisplayFormat = "{0:N0}";
            colBalaceShipmetQty.SummaryItem.Tag = 1;

            colBalaceShipmetQtyPercent.SummaryItem.SummaryType = SummaryItemType.Custom;
            colBalaceShipmetQtyPercent.SummaryItem.DisplayFormat = "{0:N0}";
            colBalaceShipmetQtyPercent.SummaryItem.Tag = 1;
        }

        private void barRecal_ItemClick(object sender, ItemClickEventArgs e)
        {
            AutoCalcWOForm frm = new AutoCalcWOForm();

            frm.Show(this);
            frm.listBoxControl1.Items.Clear();
            DateTime StartDate = DateTime.Now;
            Stopwatch Sw = new Stopwatch();
            Sw.Start();

            this.Cursor = Cursors.WaitCursor;
            try
            {
                var lists = (DataContext as RWOSOPCDataContext).WorkOrders.Where(p =>
                    p.Project.Status != "C" && p.Project.Status != "X" &&
                    p.WOStatus != "-1" && p.WOStatus != "8" && p.DeliveryShipCompleted.Value >= DateTime.Now.AddMonths(-2));

                frm.listBoxControl1.Items.Clear();
                DateTime a = DateTime.Now;
                frm.listBoxControl1.Items.Add("开始时间：" + a);
                frm.listBoxControl1.Items.Add(string.Format("共计算WO: {0} 个", lists.Count()));

                foreach (var wo in lists)
                {

                    try
                    {
                        DateTime BeginTime = DateTime.Now;
                        InitChooseFW(wo);
                        this.DataContext.SubmitChanges();
                        DateTime EndTime = DateTime.Now;

                        var UsedTime = EndTime - BeginTime;
                        frm.listBoxControl1.Items.Add(string.Format("计算WO: {0} 用时：{1}", wo.WorkOrderNo, UsedTime));
                        frm.listBoxControl1.TopIndex = frm.listBoxControl1.Items.Count - 1;
                        Application.DoEvents();

                    }
                    catch (Exception ex)
                    {
                        continue;
                    }

                    //DateTime BeginTime = DateTime.Now;
                    //InitChooseFW(wo);
                    //this.DataContext.SubmitChanges();
                    //DateTime EndTime = DateTime.Now;

                    //var UsedTime = EndTime - BeginTime;
                    //frm.listBoxControl1.Items.Add(string.Format("计算WO: {0} 用时：{1}", wo.WorkOrderNo, UsedTime));
                    //frm.listBoxControl1.TopIndex = frm.listBoxControl1.Items.Count - 1;
                    //Application.DoEvents();
                }

                DateTime b = DateTime.Now;
                frm.listBoxControl1.Items.Add("结束时间：" + b);
                frm.listBoxControl1.Items.Add("总共用时：" + (b - a));

            }
            finally
            {
                this.Cursor = Cursors.Default;
            }


            Sw.Stop();
            string Swtxt = " 耗时：" + Sw.Elapsed.ToString();
            string SqlStr = "insert Test(Code, Remark, Opdate) values('Shulin', '{0}',  '{1}' )";
            SqlStr = string.Format(SqlStr, Swtxt, StartDate);
            PH.RWO.BO.RWOSOPCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            db.ExecuteCommand(SqlStr);

        }



    }
}
