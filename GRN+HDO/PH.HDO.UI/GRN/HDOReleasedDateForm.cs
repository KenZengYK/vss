using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.HDO.BO;
using PH.Platform.BO;
using DevExpress.Utils.Drawing;

namespace PH.HDO.UI.GRN
{
    public partial class HDOReleasedDateForm : ListForm
    {
        public HDOReleasedDateForm()
        {
            InitializeComponent();

            barBtnSave.Enabled = false;
            //barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }

        public override void DataBind()
        {
            base.DataBind();

            HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
            Context.CommandTimeout = 80000;
            this.DataContext = Context;

            string sqls = string.Format("exec dbo.[sp_HDOReleased_dd] ");

            DataTable tb = Context.ExecuteDataSet(sqls, new DataSet(), "opt").Tables[0];
            //List<HDOReleasedDateInfomation> List = tb.AsEnumerable().Select(dr => new HDOReleasedDateInfomation 
            //{
            //    HDONo = dr["HDONo"].ToString(),
            //    HDODate = string.IsNullOrEmpty(dr["Status"].ToString()) ? null : 
            //    HDOReleasedDate = dr["Status"].ToString(), 
            //    Status = dr["Status"].ToString(),
            //}).ToList();
            this.BindingSource.DataSource = (Context as HDODataContext).HDOReleasedDateInfomations.Where(dr => (dr.IsShow ?? false) == true);
            objListGridView.OptionsBehavior.Editable = true;
            this.AllowGridEdit = true;
        }

        public override void SaveData()
        {

            this.BindingSource.EndEdit();
            DataContext.SubmitChanges();
            //HDOReleasedDateInfomation obj = this.BindingSource.Current as HDOReleasedDateInfomation;
            //obj.Operator = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //obj.OperationDate = DateTime.Now;
            base.SaveData();
            //DataContext.SubmitChanges();
            this.objListGridView.RefreshData();
            //this.txtID.Properties.ReadOnly = true;
        }

        private void objListGridView_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            DataContext.SubmitChanges();
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            switch (e.Column.FieldName)
            {
                //case "Status":
                //    if (objListGridView.GetRowCellValue(e.RowHandle, "Status") == null) return;

                //    //if (bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate") == null) return;
                //    string StatusType = objListGridView.GetRowCellValue(e.RowHandle, "Status").ToString();
                //    if (StatusType == "RELEASED")
                //    {
                //        e.Appearance.BackColor = System.Drawing.Color.FromArgb(235, 241, 222);
                //    }
                //    else 
                //    {
                //        e.Appearance.BackColor = System.Drawing.Color.FromArgb(220, 230, 241);
                //    }                                      
                //    break;

                //case "HDONo":
                //    if (objListGridView.GetRowCellValue(e.RowHandle, "Status") == null) return;

                //    //if (bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate") == null) return;
                //    string StatusType1 = objListGridView.GetRowCellValue(e.RowHandle, "Status").ToString();
                //    if (StatusType1 == "RELEASED")
                //    {
                //        e.Appearance.BackColor = System.Drawing.Color.FromArgb(235, 241, 222);
                //    }
                //    else
                //    {
                //        e.Appearance.BackColor = System.Drawing.Color.FromArgb(220, 230, 241);
                //    }
                //    break;

                //case "HDODate":
                //    if (objListGridView.GetRowCellValue(e.RowHandle, "Status") == null) return;

                //    //if (bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate") == null) return;
                //    string StatusType2 = objListGridView.GetRowCellValue(e.RowHandle, "Status").ToString();
                //    if (StatusType == "RELEASED")
                //    {
                //        e.Appearance.BackColor = System.Drawing.Color.FromArgb(235, 241, 222);
                //    }
                //    else
                //    {
                //        e.Appearance.BackColor = System.Drawing.Color.FromArgb(220, 230, 241);
                //    }
                //    break;

                //case "Status":
                //    if (objListGridView.GetRowCellValue(e.RowHandle, "Status") == null) return;

                //    //if (bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate") == null) return;
                //    string StatusType = objListGridView.GetRowCellValue(e.RowHandle, "Status").ToString();
                //    if (StatusType == "RELEASED")
                //    {
                //        e.Appearance.BackColor = System.Drawing.Color.FromArgb(235, 241, 222);
                //    }
                //    else
                //    {
                //        e.Appearance.BackColor = System.Drawing.Color.FromArgb(220, 230, 241);
                //    }
                //    break;

                default:
                    break;

            }
        }

        private void objListGridView_CustomDrawColumnHeader(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        {
            if (DesignMode)
                return;

            if (e.Column != null)
            {
                if (e.Column.FieldName == "HDOReleasedDate")
                {
                    e.Appearance.BackColor = System.Drawing.Color.FromArgb(251, 215, 167);

                    e.Column.AppearanceHeader.BackColor = e.Appearance.BackColor;
                    Brush brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), e.Appearance.BackColor, e.Appearance.BackColor, 90);
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

                    BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
                    BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
                    ObjectPainter.DrawObject(e.Cache, borderPainter, border);
                    r.Inflate(-1, -1);
                    e.Graphics.FillRectangle(brush, r);
                    r.Inflate(-2, 0);
                    e.Appearance.DrawString(e.Cache, e.Column.Caption, r);
                    e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
                    e.Handled = true;

                }
            }


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


    }
}
