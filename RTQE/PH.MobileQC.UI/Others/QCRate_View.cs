using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid.Views.Grid;



namespace PH.MobileQC.UI
{
    public partial class QCRate_View : DevExpress.XtraEditors.XtraForm
    {
        //private string _style;
        private string _worker;
        private DateTime _qc_time;
        public QCRate_View(string worker, DateTime qc_time)
        {
            InitializeComponent();

            //_style = style;
            _worker = worker;
            _qc_time = qc_time;

            PH.MobileQC.BO.MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

            this.gridControl1.DataSource = context.opt_qcrate(_worker, _qc_time, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);

        }

        private void gridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {

            //if (e.Column.FieldName  == "style")
            //{
            //    e.Merge = true;

            //}

            if (e.Column.FieldName == "style")
            {
                GridView view = sender as GridView;
                e.Merge = view.GetRowCellValue(e.RowHandle1, e.Column).ToString() == view.GetRowCellValue(e.RowHandle2, e.Column).ToString();
            }
            e.Handled = true;

            //else if (e.Column.FieldName == "rate")
            //{
            //    e.Merge = false;
            //    e.Handled = true;
            //}


        }

        private void gridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "rate")
            {
                //StyleLineQCStatByWorkshopResult obj = this.objListGridView.GetRow(e.RowHandle) as StyleLineQCStatByWorkshopResult;

                BO.qc_rate qv = this.gridView1.GetRow(e.RowHandle) as BO.qc_rate;


                if (qv.rate < 90)
                {
                    e.Appearance.ForeColor = Color.Red;
                    //e.DisplayText = "未作審查";
                }

                else //質量OK標記為綠色
                {
                    e.Appearance.ForeColor = Color.Blue;
                    // e.DisplayText = "質量OK";
                }
            }
        }

        private void gridControl1_Load(object sender, EventArgs e)
        {
            this.gridView1.Columns["style"].Caption = "款式 \n Style ";
            this.gridView1.Columns["w_procedure"].Caption = "工序 \n OPN ID";
            this.gridView1.Columns["operationname"].Caption = "工序名稱 \n OPN Name";
            this.gridView1.Columns["rate"].Caption = "合格率\n PY(%)";
        }

    }
}