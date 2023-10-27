using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.FabricInspection.BO;
using DevExpress.XtraBars;
using PH.FabricInspection.UI.Main;
using DevExpress.Utils.Drawing;

namespace PH.FabricInspection.UI.Query
{
    public partial class ActionLogIncompleteListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ActionLogIncompleteListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).ExecuteQuery<ActionLogIncompleteResult>("exec sp_GetActionLogIncompleteList");

            this.bandedGridView1.OptionsBehavior.Editable = true;
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

        private void repositoryItemButtonEdit_ActionLog_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenActionLog();
        }

        private void btnFollowup_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenActionLog();
            DataBind();
        }

        void OpenActionLog()
        {
            ActionLogIncompleteResult obj = this.BindingSource.Current as ActionLogIncompleteResult;
            if (obj == null) return;

            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;

            if (obj.AuditTeam == 1)
            {
                var lists = db.Fabric_Insp_Headers.Where(p => p.RefNo == obj.AuditNo && p.AuditStage == obj.AuditStage).Select(p => new { p.Supplier_Code, p.ProjectNo, p.Supplich_Batch }).ToList();
                string Suppliers = string.Join("/", lists.Select(p => p.Supplier_Code).Distinct().ToArray<string>());
                string Batchs = string.Join("/", lists.Select(p => p.Supplich_Batch).Distinct().ToArray<string>());
                string Projects = FabricHelper.GetProjectFormatString(lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo.Trim()).ToList(), "/");

                AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.Fabric, db, obj.AuditNo.ToString(), obj.ActionLogID, this, Suppliers, Projects, Batchs, obj.AuditStage);
                frmAlertLog.ShowDialog();
            }
            else if (obj.AuditTeam == 2)
            {
                var lists = db.BandLaceHeaders.Where(p => p.AuditNo == obj.AuditNo).Select(p => new { p.SuppCode, p.ProjectNo, p.BatchNo }).ToList();
                string Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
                string Projects = FabricHelper.GetProjectFormatString(lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo.Trim()).ToList(), "/");
                string Batchs = string.Join("/", lists.Select(p => p.BatchNo).Distinct().ToArray<string>());

                AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.BandLace, db, obj.ActionLogNo, obj.ActionLogID, this, Suppliers, Projects, Batchs, obj.AuditStage);
                frmAlertLog.ShowDialog();
            }
            else if (obj.AuditTeam == 3)
            {
                var lists = db.ElasticHeaders.Where(p => p.AuditNo == obj.AuditNo).Select(p => new { p.SuppCode, p.ProjectNo, /*p.BatchNo*/ }).ToList();
                string Projects = FabricHelper.GetProjectFormatString(lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo.Trim()).ToList(), "/");
                string Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());

                AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.Elastic, db, obj.ActionLogNo, obj.ActionLogID, this, Suppliers, Projects, "", obj.AuditStage);
                frmAlertLog.ShowDialog();
            }
            else if (obj.AuditTeam == 4)
            {
                var lists = db.AccessoryHeaders.Where(p => p.AuditNo == obj.AuditNo && p.AuditStage == obj.AuditStage).ToList()
                   .Select(p => new { p.ProjectNO, p.SuppCode, p.PONO, IDCreateDate = (p.IDCreateDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") });

                string Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
                string Projects = FabricHelper.GetProjectFormatString(lists.Where(p => !string.IsNullOrEmpty(p.ProjectNO)).Select(p => p.ProjectNO.Trim()).ToList(), "/");
                string Batchs = string.Join("/", lists.Select(p => p.IDCreateDate).Distinct().ToArray<string>());

                AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.Accessories, db, obj.ActionLogNo, obj.ActionLogID, this, Suppliers, Projects, Batchs, obj.AuditStage);
                frmAlertLog.ShowDialog();
            }
            else if (obj.AuditTeam == 5)
            {
                var lists = db.BraCupHeaders.Where(p => p.AuditNo == obj.AuditNo && p.AuditStage == obj.AuditStage).ToList()
                      .Select(p => new { p.ProjectNO, p.SuppCode, p.PONO, IDCreateDate = (p.IDCreateDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") });

                string Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
                string Projects = FabricHelper.GetProjectFormatString(lists.Where(p => !string.IsNullOrEmpty(p.ProjectNO)).Select(p => p.ProjectNO.Trim()).ToList(), "/");
                string Batchs = string.Join("/", lists.Select(p => p.IDCreateDate).Distinct().ToArray<string>());

                AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.BraCup, db, obj.ActionLogNo, obj.ActionLogID, this, Suppliers, Projects, Batchs, obj.AuditStage);
                frmAlertLog.ShowDialog();
            }
        }

        #region 画网格标题的背景颜色
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
                    break;
                case "2":
                    brush = brushBlue;
                    break;
                default:
                    brush = brushYellow;
                    break;
            }

            //e.Column.AppearanceHeader.BackColor = e.Appearance.BackColor;

            if (e.Column.FieldName == "WOFWStartDate" || e.Column.FieldName == "WOExftyDate") //設置特別的顏色
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Moccasin, Color.Moccasin, 90);
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

        #endregion


    }
}
