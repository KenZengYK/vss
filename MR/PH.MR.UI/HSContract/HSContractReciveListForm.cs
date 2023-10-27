using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using PH.Platform.UI.CS.UI2;
using PH.Platform.Common;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MR.BO;
using PH.Platform.UI.CS.DataQuery;
using DevExpress.XtraBars;
using PH.MR.UI.Report;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.MR.UI.HSContract
{
    public partial class HSContractReciveListForm : ListForm
    {
        public HSContractReciveListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            
            
            base.DataBind();
            this.NeedCheckPermission = false;
            this.DataContext = ContextBuilder.CreateContext<MRDataContext>();

            this.barBtnFind.Visibility = BarItemVisibility.Always;
            //DataQueryParameter param = new DataQueryParameter();
            //this.StartEnquiry(param);

            //PH.Platform.UI.CS.DataQuery.DataQueryParameter DataQuery = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            //DataQuery.StoredProcedureName = "Sp_WeeklyShipmentDetailDay";
            //DataQuery.BoType = typeof(PH.Weekly.BO.ShipmentDetail);
            //DataQuery.DataContext = this.DataContext;
            //DataQuery.QueryType = PH.Platform.UI.CS.DataQuery.QueryType.StoredProcedure;
            //DataQuery.View = this.objListGridView;
            //DataQuery.CreateConditions();
            //DataQuery["@monthday1"].Label = "From Date (e.g. 2009-01-01)";
            //DataQuery["@monthday2"].Label = "To Date (e.g. 2009-12-31) ";
            //this.StartEnquiry(DataQuery);
        }


        //private void GetReciveData(string dtnow,string dt_start,string dt_end)
        //{
        //    DateTime dtime = DateTime.Now;
        //    string ASQL = string.Format("execute PROCEDURE SP_GENQNMR ('{0}','{1}','{2}')", dtnow, dt_start, dt_end);
        //    PH.MR.BO.DB.IBDB.Execute(ASQL);

        //    ASQL = string.Format("select * from tmp_QNMR where tm='{0}'",
        //        dtime.ToString("yyyy'/'MM'/'dd HH':'mm':'ss"));

        //    this._WorkDataTable = GetDataByPage_INTERBASE(ASQL);
        //}
        public DataTable DbRecive = new DataTable();
        public DataTable DbDetail = new DataTable();
        public string DateRange = "";
        protected override void OnClickFind()
        {
            //base.OnClickFind();
            DateRangeForm drf = new DateRangeForm(this);
            drf.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dgr = drf.ShowDialog();
            if (dgr == DialogResult.OK)
            {
                
                this.objListGridControl.DataSource = DbRecive;                
            }

        }

        public string CurFty="",CurContract = "";        
        public int Rpttype = 0;

        private void barBtnPrint_ItemClick(object sender, ItemClickEventArgs e)
        {
            FrmRptCondition frc = new FrmRptCondition(this);
            frc.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dgr = frc.ShowDialog();
            if (dgr == DialogResult.OK)
            {
                if (Rpttype == 0)
                {
                    HSReciveListRpt rpt = new HSReciveListRpt(DbRecive, DateRange);
                    rpt.ShowPreview();
                }
                else
                { 
                    List<ReciveWoDetailt> _data =  PrepareData();
                    RptContractWo rptwo = new RptContractWo(_data,DateRange);
                    rptwo.ShowPreview();

                }
            }

        }

        private List<ReciveWoDetailt>  PrepareData()
        {

            List<ReciveWoDetailt> _lst = new List<ReciveWoDetailt>();
            DataRow[] _rptrows = DbDetail.Select("0=1");
            if (CurContract!="NULL"&&CurContract!="ALL")
             //  _rptrows = DbDetail.Select("fty='" + CurFty + "' and HScontractNO='"+CurContract+"'");
                  _rptrows = DbDetail.Select("HScontractNO='"+CurContract+"'");

            if (CurFty=="ALL"&&CurContract=="NULL")
                _rptrows = DbDetail.Select("HScontractNO IS NULL");

            if (CurFty != "ALL" && CurContract == "NULL")
                _rptrows = DbDetail.Select("fty='" + CurFty + "' AND HScontractNO IS NULL");

            if (CurFty != "ALL" && CurContract == "ALL")
                _rptrows = DbDetail.Select("fty='" + CurFty + "'");
            if (CurFty == "ALL" && CurContract == "ALL")
                _rptrows = DbDetail.Select("1=1");

            for(int j = 0; j < _rptrows.Length; j++)
            {
                 DataRow drw =_rptrows[j];
                ReciveWoDetailt wor = new ReciveWoDetailt();
                wor.FTY = drw["FTY"] != DBNull.Value ? drw["FTY"].ToString() : "SL";
                wor.HScontractNO = drw["HScontractNO"] != DBNull.Value ? drw["HScontractNO"].ToString() : "";
                wor.ProjectNo = drw["PROJECT"] != DBNull.Value ? drw["PROJECT"].ToString() : "";
                wor.WO = drw["WO"] != DBNull.Value ? drw["WO"].ToString() : "";
                wor.StyleNo = drw["STYLE"] != DBNull.Value ? drw["STYLE"].ToString() : "";
                wor.HSCode = drw["HSCODE"] != DBNull.Value ? drw["HSCODE"].ToString() : "";
                wor.ReciveQty = drw["SP_QTY"] != DBNull.Value ? int.Parse(drw["SP_QTY"].ToString()) : 0;

                DataRow[] _drows = DbRecive.Select("HScontractNO='" + wor.HScontractNO + "' and HSCode='" + wor.HSCode + "'");
                if (_drows.Length > 0)
                {
                    DataRow _dr = _drows[0];
                    wor.HSCodeSeq = _dr["HSCodeSeq"] != DBNull.Value ? int.Parse(_dr["HSCodeSeq"].ToString()) : 0;
                    wor.HSName = _dr["HSName"] != DBNull.Value ? _dr["HSName"].ToString() :"";
                }
                _lst.Add(wor);
            }

            return _lst;
            
        
        }

        private void btnDetail_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view =((DevExpress.XtraGrid.Views.Grid.GridView)(this.objListGridControl.MainView));
        }

        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            Point po = this.objListGridView.GridControl.PointToClient(Control.MousePosition);
            GridHitInfo info = objListGridView.CalcHitInfo(po);
            if (info.InRow || info.InRowCell)
            {
                //string colCaption = info.Column == null ? "N/A" : info.Column.GetCaption();
                // MessageBox.Show(string.Format("DoubleClick on row: {0}, column: {1}.", info.RowHandle, colCaption));
                DataRow dr = objListGridView.GetDataRow(info.RowHandle);
                string _contractno = dr["HScontractNO"] == DBNull.Value ? "" : dr["HScontractNO"].ToString();
                 string _fty = dr["FTY"] == DBNull.Value ? "" : dr["FTY"].ToString();
                 string _hscode = dr["HSCode"] == DBNull.Value ? "" : dr["HSCode"].ToString();
                 DataRow[] _rows;
                if (!string.IsNullOrEmpty(_contractno))
                    _rows = DbDetail.Select("HScontractNO='" + _contractno + "' and fty='" + _fty + "' and HSCODE ='"+_hscode+"'");
                else
                    _rows = DbDetail.Select("fty='" + _fty + "' and HSCODE ='" + _hscode + "' and HScontractNO is null");
                if (_rows.Length > 0)
                {
                    DataTable _dt = DbDetail.Clone();
                   // _dt.Rows.Add(_rows);
                    for (int i = 0; i < _rows.Length; i++)
                    {
                        _dt.ImportRow((DataRow)_rows[i]);

                    }

                    FrmWoDetail _detail = new FrmWoDetail(_dt);
                    _detail.StartPosition = FormStartPosition.CenterScreen;
                    _detail.ShowDialog();
                }
                else
                {
                    MessageBox.Show("沒有對應的數據!");
                    return;
                }

            }



        }


    }
}
