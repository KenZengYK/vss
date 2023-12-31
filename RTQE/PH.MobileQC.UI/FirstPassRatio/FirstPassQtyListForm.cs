using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Data.Linq;
using System.Linq;
using DevExpress.XtraBars;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.MobileQC.UI.FirstPassRatio

{

    public partial class FirstPassQtyListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public List<FirstPassQty> ImportList = new List<FirstPassQty>();
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        DataSet ds;
        //DataTable tb;
        public FirstPassQtyListForm()
        {
            InitializeComponent();
            this.barDateTime.EditValue = DateTime.Now.ToString("yyyy-MM-dd");

            if (this.DataContext == null)
            {
                DataContext = db;
            }
            //this.barButtonItem1_ItemClick(null, null);
            this.barButtonItem1.PerformClick();

        }

        public override void DataBind()
        {
            base.DataBind();
            this.NeedCheckPermission = false;
            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnOpen.Visibility = BarItemVisibility.Never;
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            bandedGridView1.Columns.Clear();

            string Sqlstr = "exec sp_GetFirstPassYield '{0}', '{1}', '{2}'";

            //string DateTimeStart = Convert.ToDateTime(barDateTime.EditValue.ToString()).AddDays(-6).ToString("yyyy-MM-dd");
            string DateTimeDue = Convert.ToDateTime(barDateTime.EditValue).ToString("yyyy-MM-dd");

            Sqlstr = string.Format(Sqlstr, barFactory.EditValue.ToString(), DateTimeDue, LanguageChose.EditValue.ToString());

            //tb = db.ExecuteDataTable(Sqlstr, "111");
            ds = db.ExecuteDataSet(Sqlstr, new DataSet(), "111");
            for (int i = 0; i < ds.Tables[0].Columns.Count; i++)
            {

                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn cl = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
                //DevExpress.XtraGrid.Columns.GridColumn cl = new DevExpress.XtraGrid.Columns.GridColumn();

                cl.Name = cl.FieldName = cl.Caption = ds.Tables[0].Columns[i].ColumnName;
                //cl.Caption = ds.Tables[0].Columns[i].ColumnName;
                //cl.FieldName = ds.Tables[0].Columns[i].ColumnName;
                //cl.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
                cl.ColumnEdit = repositoryItemMemoEdit1;
                cl.AppearanceHeader.Options.UseTextOptions = true;
                cl.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
                //cl.AppearanceCell.Options.UseTextOptions = true;
                //cl.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
                //cl.Width = 236;
                cl.VisibleIndex = i;

                cl.Visible = true;

                if (i == 0)
                {
                    bandedGridView1.Bands["gridBandWs"].Columns.Add(cl);
                }
                else if (i == 1)
                {
                    bandedGridView1.Bands["gridBandToday"].Columns.Add(cl);
                }
                else
                {
                    bandedGridView1.Bands["gridBandPast5Day"].Columns.Add(cl);
                }
            }
            this.BindingSource.DataSource = ds.Tables[0];
            this.bandedGridView1.BestFitColumns();

            this.bandedGridView1.Bands["gridBandWs"].Columns[0].Caption = "-";
            this.bandedGridView1.Bands["gridBandWs"].Columns[0].AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridView1.Bands["gridBandWs"].Columns[0].AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands["gridBandWs"].Columns[0].AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridView1.Bands["gridBandWs"].Columns[0].AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands["gridBandWs"].Width = 40;


        }

        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if ((this.barDateTime.EditValue != null) && !string.IsNullOrEmpty(this.barFactory.EditValue.ToString()))
            {
                var obj = db.FirstPass_Headers.Where(p => p.Factory == this.barFactory.EditValue.ToString() && p.QueryDate == Convert.ToDateTime(this.barDateTime.EditValue)).FirstOrDefault();
                if (obj == null)
                {
                    MessageBox.Show("無查詢日期的日誌");
                    return;
                }
                else
                {
                    AlertLogForm frmAlertLog = new AlertLogForm(this.DataContext as MobileQCDataContext, obj);
                    frmAlertLog.ShowDialog();

                    this.BindingSource.ResetCurrentItem();
                }
            }
            else { MessageBox.Show("工廠与日期不能爲空!"); }
            //FirstPass_Header obj = this.BindingSource.Current as FirstPass_Header;
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {

            //string GetToday = DateTime.Now.ToString("yyyy-MM-dd") + " (Today)";

            //if (string.IsNullOrEmpty(e.DisplayText))
            //{
            //    if (e.Column.FieldName.ToString() == GetToday)
            //        //e.DisplayText = "待QA審定";
            //        e.DisplayText = " Waiting for AQL";
            //    else
            //        e.DisplayText = "No QA data";
            //}

            //this.objListGridView.Appearance.HorzLine.BackColor = Color.Black;
            //e.Appearance.BackColor = Color.Black; 

            //e.Appearance.BorderColor = Color.Black;


            //this.objListGridView.Appearance.HorzLine.BorderColor = Color.Black;
        }

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            string GetToday = DateTime.Now.ToString("yyyy-MM-dd") + " (Today)";

            if (string.IsNullOrEmpty(e.DisplayText))
            {
                if (e.Column.FieldName.ToString() == GetToday)
                    //e.DisplayText = "待QA審定";
                    e.DisplayText = " Waiting for AQL";
                else
                    e.DisplayText = "No QA data";
            }
        }


        private void btnPreview_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (ds.Tables[0] == null) return;
            FirstPassQtyReport rptFirstPassQty = new FirstPassQtyReport(ds.Tables[0], barFactory.EditValue.ToString());
            rptFirstPassQty.ShowPreview();
        }


        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            //if (this.BindingSource.DataSource == null) return;
            //string ColumnText = this.objListGridView.FocusedColumn.FieldName.ToString().Replace("(Today)", "");

            //if (ColumnText.ToUpper() == "WORKSHOP")
            //{
            //    return;
            //}

            //string RowText = this.objListGridView.GetFocusedRowCellValue(objListGridView.Columns[0]).ToString();


            ////Convert.ToDateTime(ColumnText) && d.WorkShop == RowText).ToList());

            //string Sqlstr = "exec sp_GetFirstPassYieldDetail '{0}', '{1}','{2}'";

            ////string DateTimeDue = Convert.ToDateTime(barDateTime.EditValue).ToString("yyyy-MM-dd");

            //Sqlstr = string.Format(Sqlstr, barFactory.EditValue.ToString(), RowText == barFactory.EditValue.ToString() ? "" : RowText, ColumnText);

            //DataSet ds2 = db.ExecuteDataSet(Sqlstr, new DataSet(), "222");

            //FirstPassQtyDetailForm Fdetail = new FirstPassQtyDetailForm(ds2, this.objListGridView.FocusedColumn.FieldName.ToString(), RowText, LanguageChose.EditValue.ToString());//.Where(d => d.QCTime == Convert.ToDateTime(ColumnText) && d.WorkShop == RowText).ToList());
            //Fdetail.StartPosition = FormStartPosition.CenterParent;
            //DialogResult dlg = Fdetail.ShowDialog();
        }

        private void bandedGridView1_DoubleClick(object sender, EventArgs e)
        {
            if (this.BindingSource.DataSource == null) return;
            string ColumnText = this.bandedGridView1.FocusedColumn.FieldName.ToString().Replace("(Today)", "");

            if (ColumnText.ToUpper() == "WORKSHOP")
            {
                return;
            }

            string RowText = this.bandedGridView1.GetFocusedRowCellValue(bandedGridView1.Columns[0]).ToString();


            //Convert.ToDateTime(ColumnText) && d.WorkShop == RowText).ToList());

            string Sqlstr = "exec sp_GetFirstPassYieldDetail '{0}', '{1}','{2}'";

            //string DateTimeDue = Convert.ToDateTime(barDateTime.EditValue).ToString("yyyy-MM-dd");

            Sqlstr = string.Format(Sqlstr, barFactory.EditValue.ToString(), RowText == barFactory.EditValue.ToString() ? "" : RowText, ColumnText);

            DataSet ds2 = db.ExecuteDataSet(Sqlstr, new DataSet(), "222");

            FirstPassQtyDetailForm Fdetail = new FirstPassQtyDetailForm(ds2, this.bandedGridView1.FocusedColumn.FieldName.ToString(), RowText, LanguageChose.EditValue.ToString());//.Where(d => d.QCTime == Convert.ToDateTime(ColumnText) && d.WorkShop == RowText).ToList());
            Fdetail.StartPosition = FormStartPosition.CenterParent;
            DialogResult dlg = Fdetail.ShowDialog();
        }

        private void barFactory_EditValueChanged(object sender, EventArgs e)
        {
            if (this.barFactory.EditValue.ToString() == "CL")
                this.LanguageChose.EditValue = "EN+CN";
            this.BindingSource.DataSource = null;
        }

        private void barDateTime_EditValueChanged(object sender, EventArgs e)
        {
            this.BindingSource.DataSource = null;
        }

        private void LanguageChose_EditValueChanged(object sender, EventArgs e)
        {
            this.BindingSource.DataSource = null;
        }

      

    }
}