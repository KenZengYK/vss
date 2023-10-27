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
using DevExpress.Utils.Drawing;
using DevExpress.Utils;
using PH.Platform.ExtendLibrary;
using DevExpress.XtraGrid;

namespace PH.RWO.UI.WO
{
    public partial class WorkOrderIncompleteListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public WorkOrderIncompleteListForm()
        {
            InitializeComponent();
        }

        public string Param;
        public WorkOrderIncompleteListForm(string AParam)
            : this()
        {
            Param = AParam;//
            //NecessityDataFillIn;
        }

        public override void DataBind()
        {
            base.DataBind();

            PH.RWO.UI.BandedGridViewHelper.SetGridViewBackColor(bandedGridView1);

            //設置特別的顏色
            colBulkSampleQty.AppearanceHeader.BackColor = Color.Moccasin;
            colLineWorkShipCompleted_SpecialFactory.AppearanceHeader.BackColor = Color.FromArgb(217, 204, 219);

            //this.AlwaysShowDesignLayout = true;

            this.DataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            var lists = (this.DataContext as RWOSOPCDataContext).WorkOrders.Where(p =>
                (!p.WOCreateDate.HasValue || p.WOCreateDate >= DateTime.Now.AddYears(-1)) &&
                (p.LCLExFtyShipCompleted > DateTime.Now.Date) &&
                (!p.LCLExFtyShipCompleted.HasValue || p.LCLExFtyShipCompleted > DateTime.Now.Date) &&
                p.WOStatus != "-1" && p.WOStatus != "8");

            if (Param == "BulkSampleDespatchNew")
            {
                lists = lists.Where(p => !(p.SampleIsArranged ?? false));

                Tool_Dashboard.Visible = false;
            }
            else if (Param == "BulkSampleDespatchRevision")
            {
                lists = lists.Where(p => (p.SampleIsArranged ?? false));
                bandedGridView1.OptionsBehavior.Editable = true;
                colBulkSampleQty.OptionsColumn.AllowEdit = true;
            }

            foreach (var obj in lists)
            {
                var WorkOrderSampleList = (DataContext as RWOSOPCDataContext).WorkOrderSamples.Where(p => p.WorkOrderNo == obj.WorkOrderNo).ToList();

                //# of Smpl Type
                obj.TotalSampleType = WorkOrderSampleList.Where(p => p.SLevel.ToUpper() == "APPV").Select(p => p.SampleType).Distinct().Count();

                //# of Color
                obj.TotalSampleColor = WorkOrderSampleList.Select(p => p.ColorCode).Distinct().Count();

                //Total Keep Smpl Qty
                obj.TotalKeepQty = WorkOrderSampleList.Sum(p => p.KeepQty);

                // Despatch Lot
                obj.DespatchLot = WorkOrderSampleList.Where(p => p.SLevel.ToUpper() == "APPV").Select(p => p.SampleDespatchDate).Distinct().Count();

                //Req. Despatch dd
                DateTime? MinReqquestDespatchDate = WorkOrderSampleList.Where(p => p.SLevel.ToUpper() == "APPV").Min(p => p.SampleDespatchDate);
                if (MinReqquestDespatchDate.HasValue)
                {
                    WorkOrderSample ReqquestDespatchFirstLotObj = WorkOrderSampleList.FirstOrDefault(p => p.SLevel.ToUpper() == "APPV" && p.SampleDespatchDate == MinReqquestDespatchDate);
                    obj.RequestDespatchDate_FirstLotFirstDate = MinReqquestDespatchDate;
                    obj.RequestDespatchDate_FirstLotNextDate = ReqquestDespatchFirstLotObj.SampleDespatchDate_Next;

                    DateTime? MaxReqquestDespatchDate = WorkOrderSampleList.Where(p => p.SLevel.ToUpper() == "APPV").Max(p => p.SampleDespatchDate);
                    WorkOrderSample ReqquestDespatchLastLotObj = WorkOrderSampleList.FirstOrDefault(p => p.SLevel.ToUpper() == "APPV" && p.SampleDespatchDate == MaxReqquestDespatchDate);

                    if (obj.DespatchLot <= 1) //只有一Lot的情况
                    {
                        obj.RequestDespatchDate_LastLotFirstDate = null;
                        obj.RequestDespatchDate_LastLotNextDate = null;
                    }
                    else
                    {
                        obj.RequestDespatchDate_LastLotFirstDate = MaxReqquestDespatchDate;
                        obj.RequestDespatchDate_LastLotNextDate = ReqquestDespatchLastLotObj.SampleDespatchDate_Next;
                    }
                }

                //Act. Despatch dd
                DateTime? MinActualDespatchDate = WorkOrderSampleList.Where(p => p.SLevel.ToUpper() == "APPV").Min(p => p.ActualSampleDespatchDate);
                if (MinActualDespatchDate.HasValue)
                {
                    WorkOrderSample ActualDespatchFirstLotObj = WorkOrderSampleList.FirstOrDefault(p => p.SLevel.ToUpper() == "APPV" && p.ActualSampleDespatchDate == MinActualDespatchDate);
                    obj.ActualDespatchDate_FirstLotFirstDate = MinActualDespatchDate;
                    obj.ActualDespatchDate_FirstLotNextDate = ActualDespatchFirstLotObj.ActualSampleDespatchDate_Next;
                }

                if (obj.DespatchLot <= 1) //只有一Lot的情况
                {
                    obj.ActualDespatchDate_LastLotFirstDate = null;
                    obj.ActualDespatchDate_LastLotNextDate = null;
                }

                //Actaul Despatch dd存在没有填日期的情况，认为是Last Lot
                else if (WorkOrderSampleList.Where(p => p.SLevel.ToUpper() == "APPV").Any(p => !p.ActualSampleDespatchDate.HasValue))
                {
                    obj.ActualDespatchDate_LastLotFirstDate = null;
                    obj.ActualDespatchDate_LastLotNextDate = null;
                }
                else
                {
                    DateTime? MaxActualDespatchDate = WorkOrderSampleList.Where(p => p.SLevel.ToUpper() == "APPV").Max(p => p.ActualSampleDespatchDate);
                    if (MaxActualDespatchDate.HasValue)
                    {
                        WorkOrderSample ActualDespatchLastLotObj = WorkOrderSampleList.FirstOrDefault(p => p.SLevel.ToUpper() == "APPV" && p.ActualSampleDespatchDate == MaxActualDespatchDate);
                        obj.ActualDespatchDate_LastLotFirstDate = MaxActualDespatchDate;
                        obj.ActualDespatchDate_LastLotNextDate = ActualDespatchLastLotObj.ActualSampleDespatchDate_Next;
                    }
                }

                //Appv. Status
                DateTime? MinApproveDate = WorkOrderSampleList.Where(p => p.SLevel.ToUpper() == "APPV").Min(p => p.ApproveDate);
                if (MinApproveDate.HasValue)
                {
                    WorkOrderSample ApproveFirstLotObj = WorkOrderSampleList.FirstOrDefault(p => p.SLevel.ToUpper() == "APPV" && p.ApproveDate == MinApproveDate);
                    obj.ApprovalStatus_FirstLotFirst = ApproveFirstLotObj.ApproveStatus;
                    obj.ApprovalDate_FirstLotFirstDate = MinApproveDate;
                    obj.ApprovalStatus_FirstLotNext = ApproveFirstLotObj.ApproveStatus_Next;
                    obj.ApprovalDate_FirstLotNextDate = ApproveFirstLotObj.ApproveDate_Next;

                    if (obj.DespatchLot <= 1) //只有一Lot的情况
                    {
                        obj.ApprovalStatus_LastLotFirst = null;
                        obj.ApprovalDate_LastLotFirstDate = null;
                        obj.ApprovalStatus_LastLotNext = null;
                        obj.ApprovalDate_LastLotNextDate = null;
                    }
                    else
                    {
                        DateTime? MaxApproveDate = WorkOrderSampleList.Where(p => p.SLevel.ToUpper() == "APPV").Max(p => p.ApproveDate);
                        WorkOrderSample ApproveLatLotObj = WorkOrderSampleList.FirstOrDefault(p => p.SLevel.ToUpper() == "APPV" && p.ApproveDate == MaxApproveDate);
                        obj.ApprovalStatus_LastLotFirst = ApproveLatLotObj.ApproveStatus;
                        obj.ApprovalDate_LastLotFirstDate = MaxApproveDate;
                        obj.ApprovalStatus_LastLotNext = ApproveLatLotObj.ApproveStatus_Next;
                        obj.ApprovalDate_LastLotNextDate = ApproveFirstLotObj.ApproveDate_Next;
                    }
                }
            }

            this.BindingSource.DataSource = lists.ToList().OrderBy(p => p.Factory).ThenBy(p => p.WorkOrderNo);
            this.EditorTypeName = typeof(WorkOrderDetailForm).FullName;

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.btnPrint.Visibility = BarItemVisibility.Never;
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

        protected override void OnClickDelete()
        {
            base.OnClickDelete();
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            //this.objListGridView.OptionsDetail.EnableMasterViewMode = true;
            objListGridView.OptionsBehavior.Editable = true;

            CalOddEvenRowFlag();
        }

        private void repositoryItemButtonEdit_BulkSample_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            WorkOrder obj = this.BindingSource.Current as WorkOrder;
            if (obj == null) return;

            BulkSampleForm frmBulkSample = new BulkSampleForm(obj.WorkOrderNo);
            frmBulkSample.ShowDialog();
        }

        private void bandedGridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.Column.FieldName == "RequestDespatchDate_FirstLotFirstDate")
            {
                object RequestDespatchDateFirstLotFirstDateRedFlag = bandedGridView1.GetRowCellValue(e.RowHandle, "RequestDespatchDateFirstLotFirstDateRedFlag");
                if (RequestDespatchDateFirstLotFirstDateRedFlag == null) return;

                int iRequestDespatchDateFirstLotFirstDateRedFlag = Convert.ToInt32(RequestDespatchDateFirstLotFirstDateRedFlag);

                if (iRequestDespatchDateFirstLotFirstDateRedFlag == 2)
                {
                    e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (iRequestDespatchDateFirstLotFirstDateRedFlag == 1)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "RequestDespatchDate_FirstLotNextDate")
            {
                object RequestDespatchDateFirstLotNextDateRedFlag = bandedGridView1.GetRowCellValue(e.RowHandle, "RequestDespatchDateFirstLotNextDateRedFlag");
                if (RequestDespatchDateFirstLotNextDateRedFlag == null) return;

                int iRequestDespatchDateFirstLotNextDateRedFlag = Convert.ToInt32(RequestDespatchDateFirstLotNextDateRedFlag);

                if (iRequestDespatchDateFirstLotNextDateRedFlag == 2)
                {
                    e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (iRequestDespatchDateFirstLotNextDateRedFlag == 1)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }

            }
            else if (e.Column.FieldName == "RequestDespatchDate_LastLotFirstDate")
            {
                object RequestDespatchDateLastLotFirstDateRedFlag = bandedGridView1.GetRowCellValue(e.RowHandle, "RequestDespatchDateLastLotFirstDateRedFlag");
                if (RequestDespatchDateLastLotFirstDateRedFlag == null) return;

                int iRequestDespatchDateLastLotFirstDateRedFlag = Convert.ToInt32(RequestDespatchDateLastLotFirstDateRedFlag);

                if (iRequestDespatchDateLastLotFirstDateRedFlag == 2)
                {
                    e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (iRequestDespatchDateLastLotFirstDateRedFlag == 1)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "RequestDespatchDate_LastLotNextDate")
            {
                object RequestDespatchDateLastLotNextDateRedFlag = bandedGridView1.GetRowCellValue(e.RowHandle, "RequestDespatchDateLastLotNextDateRedFlag");
                if (RequestDespatchDateLastLotNextDateRedFlag == null) return;

                int iRequestDespatchDateLastLotNextDateRedFlag = Convert.ToInt32(RequestDespatchDateLastLotNextDateRedFlag);

                if (iRequestDespatchDateLastLotNextDateRedFlag == 2)
                {
                    e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (iRequestDespatchDateLastLotNextDateRedFlag == 1)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "ActualDespatchDate_FirstLotFirstDate")
            {
                object ActualDespatchDate_FirstLotFirstDateRedFlag = bandedGridView1.GetRowCellValue(e.RowHandle, "ActualDespatchDate_FirstLotFirstDateRedFlag");
                if (ActualDespatchDate_FirstLotFirstDateRedFlag == null) return;

                int iActualDespatchDate_FirstLotFirstDateRedFlag = Convert.ToInt32(ActualDespatchDate_FirstLotFirstDateRedFlag);

                if (iActualDespatchDate_FirstLotFirstDateRedFlag == 2)
                {
                    e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (iActualDespatchDate_FirstLotFirstDateRedFlag == 1)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "ActualDespatchDate_FirstLotNextDate")
            {
                object ActualDespatchDate_FirstLotNextDateRedFlag = bandedGridView1.GetRowCellValue(e.RowHandle, "ActualDespatchDate_FirstLotNextDateRedFlag");
                if (ActualDespatchDate_FirstLotNextDateRedFlag == null) return;

                int iActualDespatchDate_FirstLotNextDateRedFlag = Convert.ToInt32(ActualDespatchDate_FirstLotNextDateRedFlag);

                if (iActualDespatchDate_FirstLotNextDateRedFlag == 2)
                {
                    e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (iActualDespatchDate_FirstLotNextDateRedFlag == 1)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "ActualDespatchDate_LastLotFirstDate")
            {
                object ActualDespatchDate_LastLotFirstDateRedFlag = bandedGridView1.GetRowCellValue(e.RowHandle, "ActualDespatchDate_LastLotFirstDateRedFlag");
                if (ActualDespatchDate_LastLotFirstDateRedFlag == null) return;

                int iActualDespatchDate_LastLotFirstDateRedFlag = Convert.ToInt32(ActualDespatchDate_LastLotFirstDateRedFlag);

                if (iActualDespatchDate_LastLotFirstDateRedFlag == 2)
                {
                    e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (iActualDespatchDate_LastLotFirstDateRedFlag == 1)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "ActualDespatchDate_LastLotNextDate")
            {
                object ActualDespatchDate_LastLotNextDateRedFlag = bandedGridView1.GetRowCellValue(e.RowHandle, "ActualDespatchDate_LastLotNextDateRedFlag");
                if (ActualDespatchDate_LastLotNextDateRedFlag == null) return;

                int iActualDespatchDate_LastLotNextDateRedFlag = Convert.ToInt32(ActualDespatchDate_LastLotNextDateRedFlag);

                if (iActualDespatchDate_LastLotNextDateRedFlag == 2)
                {
                    e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (iActualDespatchDate_LastLotNextDateRedFlag == 1)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }



            //else if (e.Column.FieldName == "RequestDespatchDate_FirstLotNextDate")
            //{
            //    ////有Actual Despatch Date不变红
            //    //object ActualDespatchDateEndDate = bandedGridView1.GetRowCellValue(e.RowHandle, "ActualDespatchDateEndDate");
            //    //if (ActualDespatchDateEndDate != null) return;

            //    //if (bandedGridView1.GetRowCellValue(e.RowHandle, "DespatchDateEndDate") == null) return;
            //    //DateTime DespatchDateEndDate = Convert.ToDateTime(bandedGridView1.GetRowCellValue(e.RowHandle, "DespatchDateEndDate"));

            //    //if ((DespatchDateEndDate - DateTime.Now.Date).Days <= 7)
            //    //{
            //    //    e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
            //    //    e.Appearance.ForeColor = System.Drawing.Color.Red;
            //    //}
            //    //else if ((DespatchDateEndDate - DateTime.Now.Date).Days <= 14)
            //    //{
            //    //    e.Appearance.ForeColor = System.Drawing.Color.Red;
            //    //}
            //}
            //else if (e.Column.FieldName == "ActualDespatchDateStartDate")
            //{
            //    //有Approval Start Date不变红
            //    object ApprovalStartDate = bandedGridView1.GetRowCellValue(e.RowHandle, "ApprovalStartDate");
            //    if (ApprovalStartDate != null) return;

            //    if (bandedGridView1.GetRowCellValue(e.RowHandle, "DespatchDateStartDate") == null) return;
            //    DateTime DespatchDateStartDate = Convert.ToDateTime(bandedGridView1.GetRowCellValue(e.RowHandle, "DespatchDateStartDate"));

            //    if ((DateTime.Now.Date - DespatchDateStartDate).Days >= 5 && (DateTime.Now.Date - DespatchDateStartDate).Days < 10)
            //    {
            //        e.Appearance.ForeColor = System.Drawing.Color.Red;
            //    }
            //    else if ((DateTime.Now.Date - DespatchDateStartDate).Days >= 10)
            //    {
            //        e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
            //        e.Appearance.ForeColor = System.Drawing.Color.Red;
            //    }
            //}
            //else if (e.Column.FieldName == "ActualDespatchDateEndDate")
            //{
            //    //有Approval End Date不变红
            //    object ApprovalEndDate = bandedGridView1.GetRowCellValue(e.RowHandle, "ApprovalEndDate");
            //    if (ApprovalEndDate != null) return;

            //    if (bandedGridView1.GetRowCellValue(e.RowHandle, "ActualDespatchDateEndDate") == null) return;
            //    DateTime ActualDespatchDateEndDate = Convert.ToDateTime(bandedGridView1.GetRowCellValue(e.RowHandle, "ActualDespatchDateEndDate"));

            //    if ((DateTime.Now.Date - ActualDespatchDateEndDate).Days >= 5 && (DateTime.Now.Date - ActualDespatchDateEndDate).Days < 10)
            //    {
            //        e.Appearance.ForeColor = System.Drawing.Color.Red;
            //    }
            //    else if ((DateTime.Now.Date - ActualDespatchDateEndDate).Days >= 10)
            //    {
            //        e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
            //        e.Appearance.ForeColor = System.Drawing.Color.Red;
            //    }
            //}

        }

        private void bandedGridView1_CustomDrawColumnHeader(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (col.OwnerBand == null) return;

            object obj = GetParentBandTag(col.OwnerBand);

            object objCol = col.Tag;
            if (obj == null && objCol == null) return;

            ////由David修改以下這句代碼 2022-03-14
            ////string sTag = objCol != null ? Convert.ToString(objCol) : Convert.ToString(obj); 

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
                    //e.Appearance.BackColor = colorYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    //e.Appearance.BackColor = colorBlue;
                    break;
                default:
                    brush = brushYellow;
                    //e.Appearance.BackColor = colorYellow;
                    break;
            }

            //e.Column.AppearanceHeader.BackColor = e.Appearance.BackColor;

            if (e.Column.FieldName == "BulkSampleQty") //設置特別的顏色
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Moccasin, Color.Moccasin, 90);
            }
            else if (e.Column.FieldName == "LineWorkShipCompleted_SpecialFactory") //SW Start dd
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.FromArgb(217, 204, 219), Color.FromArgb(217, 204, 219), 90);
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

        private object GetParentBandTag(DevExpress.XtraGrid.Views.BandedGrid.GridBand subBand)
        {
            object obj = subBand.Tag;
            if (obj != null) return obj;

            if (subBand.ParentBand != null)
                return GetParentBandTag(subBand.ParentBand);

            return obj;
        }

        object SaveBindingSource = null;
        private void barEditItemDashboard_EditValueChanged(object sender, EventArgs e)
        {
            try
            {
                gridBand20.Visible = true;
                gridBand12.Visible = true;
                colSampleOrderNOs.Visible = true;

                if (SaveBindingSource == null)
                {
                    SaveBindingSource = this.BindingSource.DataSource;
                }
                this.BindingSource.DataSource = SaveBindingSource;

                if (this.BindingSource.List.Count == 0) return;

                this.Cursor = Cursors.WaitCursor;

                if (barEditItemDashboard.EditValue.ToString() == "#1.1: Red data for despatching critical smpl at all sites")
                {
                    bandedGridView1.ClearColumnsFilter();
                    IEnumerable<WorkOrder> lists = this.BindingSource.DataSource as IEnumerable<WorkOrder>;

                    this.BindingSource.DataSource = bandedGridView1.FilteredList().Cast<WorkOrder>().Where(p =>
                      p.TotalSampleType > 0 &&
                      (
                        p.RequestDespatchDateFirstLotFirstDateRedFlag > 0 || p.RequestDespatchDateFirstLotNextDateRedFlag > 0 ||
                        p.RequestDespatchDateLastLotFirstDateRedFlag > 0 || p.RequestDespatchDateLastLotNextDateRedFlag > 0
                      )
                    );

                    //this.BindingSource.DataSource = bandedGridView1.FilteredList().Cast<WorkOrder>().Where(p =>
                    //    p.TotalSampleType > 0 &&
                    //    (
                    //      (!p.ActualDespatchDate_FirstLotFirstDate.HasValue && p.RequestDespatchDate_FirstLotFirstDate.HasValue && (p.RequestDespatchDate_FirstLotFirstDate.Value - DateTime.Now.Date).Days <= 14) ||
                    //      (!p.ActualDespatchDate_FirstLotNextDate.HasValue && p.RequestDespatchDate_FirstLotNextDate.HasValue && (p.RequestDespatchDate_FirstLotNextDate.Value - DateTime.Now.Date).Days <= 14)
                    //    )
                    //  );

                    gridBand20.Visible = false;
                    colSampleOrderNOs.Visible = false;
                }
                else if (barEditItemDashboard.EditValue.ToString() == "#1.2: Despatched critical smpl waiting for approval at all sites")
                {
                    this.BindingSource.DataSource = bandedGridView1.FilteredList().Cast<WorkOrder>().Where(p =>
                        p.TotalSampleType > 0 &&
                    (
                      p.ActualDespatchDate_FirstLotFirstDateRedFlag > 0 || p.ActualDespatchDate_FirstLotNextDateRedFlag > 0 ||
                      p.ActualDespatchDate_LastLotFirstDateRedFlag > 0 || p.ActualDespatchDate_LastLotNextDateRedFlag > 0
                    )
                  );

                    //  this.BindingSource.DataSource = bandedGridView1.FilteredList().Cast<WorkOrder>().Where(p =>
                    //      p.TotalSampleType > 0 &&
                    //  (
                    //    (p.ActualDespatchDate_FirstLotFirstDate.HasValue && !p.ApprovalStartDate.HasValue) ||
                    //    (p.ActualDespatchDate_FirstLotNextDate.HasValue && !p.ApprovalEndDate.HasValue)
                    //  )
                    //);

                    gridBand12.Visible = false;
                    colSampleOrderNOs.Visible = false;
                }
                else
                {
                    this.BindingSource.DataSource = SaveBindingSource;
                }
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
            this.InitFormNavigator();
        }

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<WorkOrder> lists = bandedGridView1.FilteredList().Cast<WorkOrder>();

                switch (item.FieldName)
                {
                    case "Factory":
                        e.TotalValue = lists.Select(p => p.Factory).Distinct().Count();
                        break;

                    case "SalesOrderNo":
                        e.TotalValue = lists.Select(p => p.SalesOrderNo).Distinct().Count();
                        break;

                    case "ProjectNo":
                        e.TotalValue = lists.Select(p => p.ProjectNo).Distinct().Count();
                        break;

                    case "Customer":
                        e.TotalValue = lists.Select(p => p.Customer).Distinct().Count();
                        break;

                    case "WorkOrderNo":
                        e.TotalValue = lists.Select(p => p.WorkOrderNo).Distinct().Count();
                        break;

                    case "LineWorkShipCompleted_SpecialFactory":
                        e.TotalValue = lists.Select(p => p.LineWorkShipCompleted_SpecialFactory).Distinct().Count();
                        break;

                    case "LCLExFtyShipCompleted":
                        e.TotalValue = lists.Select(p => p.LCLExFtyShipCompleted).Distinct().Count();
                        break;

                    case "ShipMode":
                        e.TotalValue = lists.Select(p => p.ShipMode).Distinct().Count();
                        break;

                    case "RequestDespatchDate_FirstLotFirstDate":
                        e.TotalValue = lists.Where(p => p.RequestDespatchDate_FirstLotFirstDate.HasValue).Select(p => p.RequestDespatchDate_FirstLotFirstDate).Distinct().Count();
                        break;

                    case "RequestDespatchDate_FirstLotNextDate":
                        e.TotalValue = lists.Where(p => p.RequestDespatchDate_FirstLotNextDate.HasValue).Select(p => p.RequestDespatchDate_FirstLotNextDate).Distinct().Count();
                        break;

                    case "ActualDespatchDate_FirstLotFirstDate":
                        e.TotalValue = lists.Where(p => p.ActualDespatchDate_FirstLotFirstDate.HasValue).Select(p => p.ActualDespatchDate_FirstLotFirstDate).Distinct().Count();
                        break;

                    case "ActualDespatchDate_FirstLotNextDate":
                        e.TotalValue = lists.Where(p => p.ActualDespatchDate_FirstLotNextDate.HasValue).Select(p => p.ActualDespatchDate_FirstLotNextDate).Distinct().Count();
                        break;

                    case "RequestDespatchDate_LastLotFirstDate":
                        e.TotalValue = lists.Where(p => p.RequestDespatchDate_LastLotFirstDate.HasValue).Select(p => p.RequestDespatchDate_LastLotFirstDate).Distinct().Count();
                        break;

                    case "RequestDespatchDate_LastLotNextDate":
                        e.TotalValue = lists.Where(p => p.RequestDespatchDate_LastLotNextDate.HasValue).Select(p => p.RequestDespatchDate_LastLotNextDate).Distinct().Count();
                        break;

                    case "ActualDespatchDate_LastLotFirstDate":
                        e.TotalValue = lists.Where(p => p.ActualDespatchDate_LastLotFirstDate.HasValue).Select(p => p.ActualDespatchDate_LastLotFirstDate).Distinct().Count();
                        break;

                    case "ActualDespatchDate_LastLotNextDate":
                        e.TotalValue = lists.Where(p => p.ActualDespatchDate_LastLotNextDate.HasValue).Select(p => p.ActualDespatchDate_LastLotNextDate).Distinct().Count();
                        break;

                    case "ApprovalDate_FirstLotFirstDate":
                        e.TotalValue = lists.Where(p => p.ApprovalDate_FirstLotFirstDate.HasValue).Select(p => p.ApprovalDate_FirstLotFirstDate).Distinct().Count();
                        break;

                    case "ApprovalDate_FirstLotNextDate":
                        e.TotalValue = lists.Where(p => p.ApprovalDate_FirstLotNextDate.HasValue).Select(p => p.ApprovalDate_FirstLotNextDate).Distinct().Count();
                        break;

                    case "ApprovalDate_LastLotFirstDate":
                        e.TotalValue = lists.Where(p => p.ApprovalDate_LastLotFirstDate.HasValue).Select(p => p.ApprovalDate_LastLotFirstDate).Distinct().Count();
                        break;

                    case "ApprovalDate_LastLotNextDate":
                        e.TotalValue = lists.Where(p => p.ApprovalDate_LastLotNextDate.HasValue).Select(p => p.ApprovalDate_LastLotNextDate).Distinct().Count();
                        break;
                }
            }
        }

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            string ProjectNo = "0";
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                WorkOrder obj = bandedGridView1.GetRow(i) as WorkOrder;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    ProjectNo = obj.ProjectNo;
                }
                else
                {
                    if (obj.ProjectNo == ProjectNo)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        ProjectNo = obj.ProjectNo;
                    }
                }
            }
        }

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

    }
}
