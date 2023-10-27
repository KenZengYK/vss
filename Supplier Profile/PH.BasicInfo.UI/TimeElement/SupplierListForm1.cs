using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using PH.BasicInfo.BO;
using PH.Platform.BO;
using PH.Platform.Misc.BO;
using PH.Platform.ExtendLibrary;
using System.Data;
using System.Drawing;
using DevExpress.Utils.Drawing;
using DevExpress.XtraBars;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class SupplierListForm1 : PH.Platform.UI.CS.UI2.ListForm
    {
        public SupplierListForm1()
        {
            InitializeComponent();

            //显示功能对应的报表打印菜单项
            ShowReptPrintMenuItem();

            //Xsj20151013:初始化TradeMethod控件
            InitTradeMethodCtrl();
        }

        //显示功能对应的报表打印菜单项
        private void ShowReptPrintMenuItem()
        {
            if (SupplierType == null)
            {
                this.barButtonItemPOMaterialSample.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }
            else
            {
                this.barBtnPCNPO.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.barBtnPCNPOSupplementSheet.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.barBtnGrp.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.barBtnSuppProForMIDc.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }
        }

        //Xsj20110404:增加一个构造函数,用于区别是MIDc,还是
        public string SupplierType;
        public SupplierListForm1(string supplierType)
        {
            InitializeComponent();
            SupplierType = supplierType;

            //显示功能对应的报表打印菜单项
            ShowReptPrintMenuItem();
        }


        //Xsj20151009:Add Trade Method LookupEdit
        private List<PH.Platform.Misc.BO.Misc_DataDictionary> tradeMethodList = new List<PH.Platform.Misc.BO.Misc_DataDictionary>();
        private void InitTradeMethodCtrl()
        {
            if (tradeMethodList.Count == 0)
            {
                PH.Platform.Misc.BO.PHPlatformMiscDataContext dcont = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
                tradeMethodList = dcont.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TradeMethod").ToList();
            }

            this.repositoryItemLookUpEdit_TradeMethod.DataSource = tradeMethodList.Select(p => new { DataCode = p.DataCode, DataName = p.DataName }).ToList();


            ////由David修改 2022-11-29
            //BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
            //this.repositoryItemLookUpEdit_TradeMethod.DataSource = db.TradeMethods.OrderBy(p => p.SeqNo);

        }

        public override void DataBind()
        {
            SupplierProfileList SPDataList = new SupplierProfileList();
            this.DataContext = SPDataList.CurrentDataContext;
            this.BindingSource.DataSource = SPDataList.GetDataByCondition("DeleteFlag=0 or DeleteFlag is null");
            base.DataBind();
            //this.EditorTypeName = typeof(SupplierDetailForm).FullName;
            PHPlatformMiscDataContext BasicInfoDataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            SupplierGrpLookUpEdit.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierGrp").OrderBy(E => E.DataCode);
            WidthSpecLookUpEdit.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.WidthSpec").OrderBy(E => E.DataCode);

            repositoryItemLookUpEdit1.Properties.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierStatus").OrderBy(E => E.DataCode);

            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
        }

        protected override void OnClickDelete()
        {
            if (MessageBox.Show("你確定要刪除當前供應信息嗎?", "系統提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                (this.BindingSource.Current as SupplierProfile).DeleteFlag = true;
                (this.BindingSource.Current as SupplierProfile).DeletedBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                (this.DataContext as BasicInfoDataContext).SubmitChanges();
                objListGridView.DeleteRow(this.BindingSource.Position);
                //base.OnClickDelete();
                DataBind();
                MessageBox.Show("刪除成功！", "系統提示");
            }

        }

        private void objListGridView_CustomColumnDisplayText(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventArgs e)
        {
            if (e.Column.FieldName == "Active")
            {
                //1= active; 2=N-active; 3= to drop;  4= others
                string s = e.Value == null ? "" : Convert.ToString(e.Value);
                switch (s)
                {
                    case "Y1":
                        e.DisplayText = "A-Main";//1
                        break;
                    case "Y2":
                        e.DisplayText = "A-Normal";//1
                        break;
                    case "N1":
                        e.DisplayText = "N-active";//2
                        break;
                    case "N2":
                        e.DisplayText = "To-Drop";//3
                        break;
                    case "N3":
                        e.DisplayText = "Others";//4
                        break;
                    default:
                        break;
                }
            }
        }

        //private void btn2XLS_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    string FileName = ShowSaveFileDialog("Export to Supplier...", ByteFile.ExcelFileFilter);
        //    if (FileName == string.Empty) return;

        //    this.objListGridView.ExportToXls(FileName);

        //    try
        //    {
        //        System.Diagnostics.Process.Start(FileName);
        //    }
        //    catch
        //    { }
        //}

        //private string ShowSaveFileDialog(string title, string filter)
        //{
        //    SaveFileDialog sdlg = new SaveFileDialog();
        //    string name = "Supplier";
        //    sdlg.Title = "Save as " + title;
        //    sdlg.FileName = name;
        //    sdlg.Filter = filter;
        //    if (sdlg.ShowDialog() == DialogResult.OK) return sdlg.FileName;
        //    return "";
        //}


        /// <summary>
        /// Xsj110112:報表"Supplier Profile for PCN and PO"打印事件.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barBtnPCNPO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.SupplierProfilePOPCNReport Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.SupplierProfilePOPCNReport();
            //Rpt.DataContext = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            Rpt.DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            //string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            //Xsj100824:注釋掉以上代碼，添加以下代碼,用於控制只打印當前選定行---Start
            if (this.objListGridView.GetSelectedRows().Count() == 0)
            {
                MessageBox.Show("請選擇你想要列印的列！", "系統提示", MessageBoxButtons.OK);
                return;
            }
            SupplierProfile sProfile = this.BindingSource.Current as SupplierProfile;
            if (sProfile == null || sProfile.ERPSupplier == null) return;
            string Sql = " ERPSupplier='" + sProfile.ERPSupplier + "'";
            Rpt.WhereCondition = Sql;
            //----End
            Rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where ERPSupplier in (select ERPSupplier from IncontermsTransit) and (" + Sql + ")" : "Where ERPSupplier in (select ERPSupplier from IncontermsTransit)";
            Rpt.ShowPreviewDialog();

        }

        private void barBtnPCNPOSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.Incoterms6PReport Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.Incoterms6PReport();

            //Rpt.DataContext = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            Rpt.DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            //string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            SupplierProfile sProfile = this.BindingSource.Current as SupplierProfile;
            if (sProfile == null || sProfile.ERPSupplier == null) return;
            string Sql = " ERPSupplier='" + sProfile.ERPSupplier + "'";

            Rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where ERPSupplier in (select ERPSupplier from IncontermsTransit) and (" + Sql + ")" : "Where ERPSupplier in (select ERPSupplier from IncontermsTransit)";
            Rpt.ShowPreviewDialog();
        }

        private void barBtnGrp_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.SupplierWithAffiliatePartnersRpt Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.SupplierWithAffiliatePartnersRpt();
            //Rpt.context = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            Rpt.context = ContextBuilder.CreateContext<BasicInfoDataContext>();
            string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            Rpt.WhereCondition = "where (AssociatePartner = 1 and Active = 1 and (DeleteFlag=0 or DeleteFlag is null))";
            Rpt.ShowPreviewDialog();
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.SupplierWithAffiliatePartnersGroupRpt Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.SupplierWithAffiliatePartnersGroupRpt();
            //Rpt.context = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            Rpt.context = ContextBuilder.CreateContext<BasicInfoDataContext>();

            string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            Rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where (" + Sql + ")" : "";

            Rpt.ShowPreviewDialog();
        }

        /// <summary>
        /// Xsj110112:報表"Supplier Profile for MIDc"打印事件.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barBtnSuppProForMIDc_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.SupplierProfileMIDcReport Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.SupplierProfileMIDcReport();
            Rpt.DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            //Xsj100824:注釋掉以上代碼，添加以下代碼,用於控制只打印當前選定行---Start
            if (this.objListGridView.GetSelectedRows().Count() == 0)
            {
                MessageBox.Show("請選擇你想要列印的列！", "系統提示", MessageBoxButtons.OK);
                return;
            }
            SupplierProfile sProfile = this.BindingSource.Current as SupplierProfile;
            if (sProfile == null || sProfile.ERPSupplier == null) return;
            string Sql = " ERPSupplier='" + sProfile.ERPSupplier + "'";
            Rpt.WhereCondition = Sql;
            //----End
            Rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where ERPSupplier in (select ERPSupplier from IncontermsTransit) and (" + Sql + ")" : "Where ERPSupplier in (select ERPSupplier from IncontermsTransit)";
            Rpt.ShowPreviewDialog();
        }

        /// <summary>
        /// Xsj110112:報表"Supplier Profile for PO - Material sample"打印事件.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barButtonItemPOMaterialSample_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.SupplierProfileMIDcNReport Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.SupplierProfileMIDcNReport();
            Rpt.DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            if (this.objListGridView.GetSelectedRows().Count() == 0)
            {
                MessageBox.Show("請選擇你想要列印的列！", "系統提示", MessageBoxButtons.OK);
                return;
            }
            SupplierProfile sProfile = this.BindingSource.Current as SupplierProfile;
            if (sProfile == null || sProfile.ERPSupplier == null) return;
            string Sql = " ERPSupplier='" + sProfile.ERPSupplier + "'";
            Rpt.WhereCondition = Sql;
            Rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where ERPSupplier in (select ERPSupplier from IncontermsTransitForMIDc) and (" + Sql + ")" : "Where ERPSupplier in (select ERPSupplier from IncontermsTransitForMIDc)";
            Rpt.ShowPreviewDialog();

        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            switch (e.Column.FieldName)
            {
                case "RegionCode":
                    if (objListGridView.GetRowCellValue(e.RowHandle, "RegionCode") == null) return;
                    bool IsSameRegionCodeSupplierFactory = Convert.ToBoolean(objListGridView.GetRowCellValue(e.RowHandle, "IsSameRegionCodeSupplierFactory"));
                    if (!IsSameRegionCodeSupplierFactory)
                    {
                        //e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;
            }
        }

        private void btnTransportationCost_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            IEnumerable<SupplierProfile> lists = objListGridView.FilteredList().Cast<SupplierProfile>();
            this.CreateProgramForm(typeof(TransportationCostListForm), "Transportation Cost", true, new object[] { lists }, null);
        }

        private void objListGridControl_Click(object sender, EventArgs e)
        {

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

    }
}
