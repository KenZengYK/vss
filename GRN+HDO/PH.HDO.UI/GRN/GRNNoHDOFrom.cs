using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Windows.Forms;
using System.Text;
using DevExpress.XtraEditors;
using PH.HDO.BO;
using PH.Platform.UI.CS.DataQuery;
using System.Linq;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;

namespace PH.HDO.UI
{
    public partial class GRNNoHDOFrom : PH.Platform.UI.CS.UI2.ListForm
    {
        public GRNNoHDOFrom()
        {
            InitializeComponent();
            _HDOs = new List<HDOTempBO>();
        }
        private HDODataContext dateContext = ContextBuilder.CreateContext<HDODataContext>();

        public DateTime MinDate { get; set; }
        public DateTime MaxDate { get; set; }
        public int GRNDays { get { return (this.MaxDate - this.MinDate).Days + 1; } set { value = 0; } }
        private List<HDOTempBO> _HDOs;
        private DateTime _runStart;
        private DateTime _runEnd;

        public override void DataBind()
        {
            this.BindingSource.DataSource = null;
            this.DataContext = dateContext;
            dateContext.CommandTimeout = 60000;

            GetData();
            //this.BindingSource.DataSource = dateContext.ExecuteQuery<HDOTempBO>(@"select name from syscolumns where id=(select id from sysobjects where name='dbo.hdotemp') ").ToList();
            base.DataBind();

            //DataQueryParameter param = new DataQueryParameter();
            //param.BoType = typeof(PH.HDO.BO.HDOTempBO);
            //param.WarnRecord = 100;
            //this.StartEnquiry(param);

        }


        protected override void OnClickFind()
        {
            //DateTime dt1, dt2;
            HDOQuestionFrom frm = new HDOQuestionFrom();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                string Company = frm.Company;
                string Supplier = frm.Supplier;
                string Stockroomfrom = frm.Stockroomfrom;
                string Stockroomto = frm.Stockroomto;
                string POfrom = frm.POfrom;
                string POto = frm.POto;

                //dt1 = DateTime.Now;

                Stockroomfrom = string.IsNullOrEmpty(Stockroomfrom) ? Stockroomto : Stockroomfrom;
                Stockroomto = string.IsNullOrEmpty(Stockroomto) ? Stockroomfrom : Stockroomto;
                POfrom = string.IsNullOrEmpty(POfrom) ? POto : POfrom;
                POto = string.IsNullOrEmpty(POto) ? POfrom : POto;


                dateContext.CommandTimeout = 6000;
                this.BindingSource.DataSource = null;
                this.DataContext = dateContext;
                //string sqls = string.Format("exec [sp_GRNNoHDO]   '{0}','{1}','{2}','{3}','{4}','{5}','{6}'", Supplier, Stockroomfrom, Stockroomto, Companyfrom, Companyto, Ordernumfrom, Ordernumto);

                GetData();

                //base.DataBind();
                //DataQueryParameter param = new DataQueryParameter();
                //param.BoType = typeof(PH.HDO.BO.HDOTemp);
                //param.DataContext = this.dateContext;
                //param.WarnRecord = 200;
                //this.StartEnquiry(param);

            }
        }
        private void GetData()
        {
            _runStart = DateTime.Now;
            //string sql = string.Format("exec dbo.[sp_GRNHDO] 'P1'");
            string sql = string.Format("exec dbo.[sp_GRNHDO] 'P1',{0},'{1}'", -1, "ALL");
            _HDOs = dateContext.ExecuteQuery<HDOTempBO>(sql).ToList();
            _runEnd = DateTime.Now;

            //dt2 = DateTime.Now;

            //MessageBox.Show(string.Format("{0}-{1}", (dt2 - dt1).TotalMinutes, (dt2 - dt1).Minutes));

            this.BindingSource.DataSource = _HDOs;
            comboBoxEdit_TransitPoint.Properties.Items.Add("");
            comboBoxEdit_TransitPoint.Properties.Items.AddRange(_HDOs.Select(dr => dr.ADVN59.Length < 2 ? "" : (dr.ADVN59.Substring(0, 1) == "S" ? "SLCRS" : (dr.ADVN59.Substring(0, 1) == "H" ? "HKCCS" : "BDCRS"))).Distinct().ToList());
            SetGroupPanelText();
        }
        private void SetGroupPanelText()
        {
            TimeSpan ts = (_runEnd - _runStart);

            string s = string.Format("[Time Span - {0:hh\\:mm\\:ss\\.fff}]", ts);
#if !Platform2014
            this.objListGridView.GroupPanelText = s;
#else
            this.objListGridView.OptionsView.ShowViewCaption = true;
            this.objListGridView.OptionsView.ShowGroupPanel = false;
            this.objListGridView.ViewCaption = s;
#endif
        }
        private void GetMaxMinDate(List<object> ds)
        {
            decimal dt = 0;
            decimal minDt = 100000000;
            decimal maxDt = 0;
            foreach (var a in ds)
            {
                HDOTempBO h = a as HDOTempBO;
                dt = h.RECD59;
                minDt = Math.Min(dt, minDt);
                maxDt = Math.Max(dt, maxDt);
            }
            MinDate = DateTime.MinValue;
            MaxDate = DateTime.MinValue;
            if (minDt != 100000000)
            {
                MinDate = HDOTempBO.ErpInt2Date(Convert.ToInt32(minDt));
            }
            if (maxDt != 0)
            {
                MaxDate = HDOTempBO.ErpInt2Date(Convert.ToInt32(maxDt));
            }
        }
        private void GetMaxMinDate(List<HDOTempBO> ds)
        {
            decimal dt = 0;
            decimal minDt = 100000000;
            decimal maxDt = 0;
            foreach (var a in ds)
            {
                HDOTempBO h = a as HDOTempBO;
                dt = h.RECD59;
                minDt = Math.Min(dt, minDt);
                maxDt = Math.Max(dt, maxDt);
            }
            MinDate = DateTime.MinValue;
            MaxDate = DateTime.MinValue;
            if (minDt != 100000000)
            {
                MinDate = HDOTempBO.ErpInt2Date(Convert.ToInt32(minDt));
            }
            if (maxDt != 0)
            {
                MaxDate = HDOTempBO.ErpInt2Date(Convert.ToInt32(maxDt));
            }
        }

        #region GRN outstanding


        private void GRNALLReport(PODType pod, bool received)
        {
            if (this.BindingSource.DataSource == null) return;
            //PH.HDO.BackEnd.Report.OutstandingGRNReport rpt = new PH.HDO.BackEnd.Report.OutstandingGRNReport();
            //List<object> objs = this.objListGridView.FilteredList();
            GRNReportType reportType = GRNReportType.None;
            List<HDOTempBO> results;
            string title = "";
            switch (pod)
            {
                case PODType.ALL:
                    results = this._HDOs.FindAll(delegate(HDOTempBO bo)
                    {
                        return ((!received && bo.HDOGRNStatus == HDOGRNStatus.Receiving) || (received && bo.HDOGRNStatus != HDOGRNStatus.Receiving));
                    });
                    title = "HK CCS / SL CRS";
                    reportType = received ? GRNReportType.ReceivedALL : GRNReportType.ReceivingALL;
                    break;
                case PODType.HKCCS:
                    results = this._HDOs.FindAll(delegate(HDOTempBO bo)
                    {
                        return bo.ADVN59.StartsWith("H")
                            && ((!received && bo.HDOGRNStatus == HDOGRNStatus.Receiving) || (received && bo.HDOGRNStatus != HDOGRNStatus.Receiving));
                    });
                    title = "HK CCS";
                    reportType = received ? GRNReportType.ReceivedHK : GRNReportType.ReceivingHK;
                    break;
                case PODType.SLCRS:
                    results = this._HDOs.FindAll(delegate(HDOTempBO bo)
                    {
                        return bo.ADVN59.StartsWith("S")
                             && ((!received && bo.HDOGRNStatus == HDOGRNStatus.Receiving) || (received && bo.HDOGRNStatus != HDOGRNStatus.Receiving));
                    });
                    title = "SL CRS";
                    reportType = received ? GRNReportType.ReceivedSL : GRNReportType.ReceivingSL;
                    break;
                default:
                    results = this._HDOs;
                    break;
            }
            //string s = received ? "Received for HDO (location transfer) handling" : "Receiving preparation";
            //title = string.Format("GRN Cargo {0} - {1}", s, title);
            PH.HDO.BackEnd.Report.GRNNoteReport rpt = new PH.HDO.BackEnd.Report.GRNNoteReport(reportType, comboBoxEdit_TransitPoint.EditValue.ToString());
            rpt.DataSource = results;
            //GetMaxMinDate(results);
            //rpt.SetCaption(this.MinDate, this.MaxDate, title);
#if Platform2014
            PH.Platform.UI.CS.ReportHelper.Show(rpt);
#else
            rpt.ShowPreviewDialog();
#endif

        }

        private void btnGRNALL_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GRNALLReport(PODType.ALL, true);
        }
        private void btnGRNCCS_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GRNALLReport(PODType.HKCCS, true);
        }

        private void btnGRNCRS_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GRNALLReport(PODType.SLCRS, true);
        }

        #endregion

        #region Today

        //private void DailyReport(PODType pod)
        //{
        //    if (this.BindingSource.DataSource == null) return;
        //    PH.HDO.BackEnd.Report.GRNNoteReport rpt = new PH.HDO.BackEnd.Report.GRNNoteReport();


        //    List<HDOTempBO> results;
        //    string title = "";
        //    switch (pod)
        //    {
        //        case PODType.ALL:
        //            results = this._HDOs.FindAll(delegate(HDOTempBO bo)
        //            {
        //                return bo.ETADate >= DateTime.Today && bo.ETADate < DateTime.Today.AddDays(1);
        //            });
        //            title = "GRN Today list for Cargo Receiving preparation - HK CCS / SL CRS based on ETA CCS/CRS";
        //            break;
        //        case PODType.HKCCS:
        //            results = this._HDOs.FindAll(delegate(HDOTempBO bo)
        //            {
        //                return bo.ADVN59.StartsWith("H") && (bo.ETADate >= DateTime.Today && bo.ETADate < DateTime.Today.AddDays(1));
        //            });
        //            title = "GRN Today list for Cargo Receiving preparation - HK CCS based on ETA CCS/CRS";
        //            break;
        //        case PODType.SLCRS:
        //            results = this._HDOs.FindAll(delegate(HDOTempBO bo)
        //            {
        //                return bo.ADVN59.StartsWith("S") && (bo.ETADate >= DateTime.Today && bo.ETADate < DateTime.Today.AddDays(1));
        //            });
        //            title = "GRN Today list for Cargo Receiving preparation - SL CRS based on ETA CCS/CRS";
        //            break;
        //        default:
        //            results = this._HDOs;
        //            break;
        //    }

        //    rpt.DataSource = results;
        //    GetMaxMinDate(results);
        //    rpt.SetCaption(this.MinDate, this.MaxDate, title);
        //    //PH.Platform.UI.CS.ReportHelper.Show(rpt);
        //    rpt.ShowPreviewDialog();
        //}
        private void btnTodayAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GRNALLReport(PODType.ALL, false);
        }
        private void btnCCS_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GRNALLReport(PODType.HKCCS, false);
        }

        private void btnCRS_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GRNALLReport(PODType.SLCRS, false);
        }



        #endregion

        private void btnGRNNote_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GRNNote();
        }
        private void GRNNote()
        {
            if (this.BindingSource.DataSource == null) return;
            PH.HDO.BackEnd.Report.GRNNoteReport rpt = new PH.HDO.BackEnd.Report.GRNNoteReport(GRNReportType.None, comboBoxEdit_TransitPoint.EditValue.ToString());
            //List<object> objs = this.objListGridView.FilteredList();
            //List<HDOTempBO> objs = _HDOs;

            //改写传入条件的方法, 由David修改 2022-07-15

            IEnumerable<HDOTempBO> ResultList = _HDOs;

            if (string.IsNullOrEmpty(comboBoxEdit_TransitPoint.Text)) //打全部记录
            {
                ResultList = _HDOs;
            }

            if (!string.IsNullOrEmpty(comboBoxEdit_TransitPoint.Text))//选了Transit Point条件
            {
                string Str = comboBoxEdit_TransitPoint.Text.Substring(0, 1);
                if (comboBoxEdit_TransitPoint.Text.StartsWith("BD"))
                {
                    Str = "C";
                }
                ResultList = ResultList.Where(p => p.ADVN59.StartsWith(Str));
            }

            if (!string.IsNullOrEmpty(checkedComboBoxEdit_SuppCode.Text)) //选了Supp Code条件
            {
                string Str = checkedComboBoxEdit_SuppCode.EditValue == null ? "" : checkedComboBoxEdit_SuppCode.EditValue.ToString();
                string[] Supps = Str.Split(new string[] { ", ", "," }, StringSplitOptions.RemoveEmptyEntries);
                ResultList = ResultList.Where(p => Supps.Contains(p.VNDR59.Trim()));
            }

            if (!string.IsNullOrEmpty(checkedComboBoxEdit_GRNNO.Text)) //选择了GRN No. 条件
            {
                string Str = checkedComboBoxEdit_GRNNO.EditValue == null ? "" : checkedComboBoxEdit_GRNNO.EditValue.ToString();
                string[] GRNs = Str.Split(new string[] { ", ", "," }, StringSplitOptions.RemoveEmptyEntries);
                int[] GRNNos = Array.ConvertAll<string, int>(GRNs, int.Parse);

                ResultList = ResultList.Where(p => GRNNos.Contains(p.GRNO59));
            }
            rpt.DataSource = ResultList.ToList();
            rpt.ShowPreviewDialog();


            //            List<HDOTempBO> list = new List<HDOTempBO>();

            //            var lists = objs.Where(dr => (string.IsNullOrEmpty(comboBoxEdit_TransitPoint.Text) || dr.ADVN59.StartsWith(comboBoxEdit_TransitPoint.Text.Substring(0, 1))) &&
            //                                         (GRNNos.Count() == 0 || GRNNos.Contains(dr.GRNO59)));

            //            //foreach (var obj in objs.Where(dr => string.IsNullOrEmpty(comboBoxEdit1.Text) || dr.ADVN59.StartsWith(comboBoxEdit1.Text.Substring(0, 1))))
            //            foreach (var obj in lists)
            //            {
            //                list.Add(obj as HDOTempBO);
            //            }
            //            //string title = "GRN Note";
            //            //List<HDOTempBO> Aobjs = new List<HDOTempBO>();
            //            //Aobjs = list.OrderBy(dr => dr.s).ThenBy(dr => dr.VCAT59).ThenBy(dr => dr.ItemCode).ThenBy(dr => dr.ProjectNo).ToList();

            //            rpt.DataSource = list;
            //            //rpt.DataSource = list.OrderBy(dr=>dr.GRNDate).ThenBy(dr=>dr.VCAT59).ThenBy(dr=>dr.ItemCode).ThenBy(dr=>dr.ProjectNo);


            //            //GetMaxMinDate(objs);
            //            //rpt.SetCaption(this.MinDate, this.MaxDate, title);
            //#if Platform2014
            //            PH.Platform.UI.CS.ReportHelper.Show(rpt);
            //#else
            //            rpt.ShowPreviewDialog();
            //#endif
        }

        // add by joseph
        private void GRNStockIn()
        {
            if (this.BindingSource.DataSource == null) return;
            PH.HDO.BackEnd.Report.GRNStockInReport rpt = new PH.HDO.BackEnd.Report.GRNStockInReport(GRNReportType.None);
            List<object> objs = this.objListGridView.FilteredList();

            List<HDOTempBO> list = new List<HDOTempBO>();
            foreach (var obj in objs)
            {
                list.Add(obj as HDOTempBO);
            }
            //string title = "GRN Note";

            rpt.DataSource = list;
            //GetMaxMinDate(objs);
            //rpt.SetCaption(this.MinDate, this.MaxDate, title);
#if Platform2014
            PH.Platform.UI.CS.ReportHelper.Show(rpt);
#else
            rpt.ShowPreviewDialog();
#endif
        }

        private void btnGRNStockIn_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.GRNStockIn();
        }


        private ArrayList GetGrnList()
        {
            ArrayList _grnlist = new ArrayList();
            //for (int i = 0; i < this.BindingSource.List.Count; i++)
            //{
            //    if ((this.BindingSource[i] as T).CheckFlag)
            //    {
            //        datalist.Add(i, (this.BindingSource[i] as T));
            //    }
            //}
            //for (int i = 0; i < this.BindingSource.List.Count; i++)
            //{
            //    HDOTempBO _hdo = this.BindingSource[i] as HDOTempBO;
            //    _grnlist.Add(_hdo.GRNO59);
            //}
            for (int i = 0; i < this.objListGridView.RowCount; i++)
            {
                HDOTempBO _hdo = objListGridView.GetRow(i) as HDOTempBO;
                if (!_grnlist.Contains(_hdo.GRNO59))
                    _grnlist.Add(_hdo.GRNO59);
            }
            return _grnlist;
        }



        public ArrayList SelectGrnList = new ArrayList();
        private void objListGridView_CustomFilterDialog(object sender, DevExpress.XtraGrid.Views.Grid.CustomFilterDialogEventArgs e)
        {
            if (e.Column.FieldName == "GRNO59")
            {
                ArrayList _grnlst = GetGrnList();
                if (_grnlst.Count == 0)
                    return;

                e.Handled = true;
                FrmSelectGrnInfo frm = new FrmSelectGrnInfo(_grnlst);
                frm.ParList = this;
                frm.StartPosition = FormStartPosition.CenterParent;
                DialogResult dgr = frm.ShowDialog();
                if (dgr == DialogResult.OK)
                {
                    if (SelectGrnList.Count > 0)
                    {
                        string _conditon = this.objListGridView.ActiveFilterString; // + "and GRNO59=";
                        string _mstr = "";
                        if (string.IsNullOrEmpty(_conditon))
                            _mstr = " 1=1 and GRNO59=";
                        else
                            _mstr = " and GRNO59=";

                        for (int j = 0; j < SelectGrnList.Count; j++)
                        {
                            if (j == 0)
                            {
                                _conditon = _conditon + _mstr + SelectGrnList[j].ToString();
                            }
                            else
                                _conditon = _conditon + " or GRNO59=" + SelectGrnList[j].ToString();


                        }
                        this.objListGridView.ActiveFilterString = _conditon;
                        this.objListGridView.ApplyColumnsFilter();
                    }
                }
            }

        }

        //根据选择的Transit Point，得到Supp Code
        private void comboBoxEdit_TransitPoint_SelectedValueChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(comboBoxEdit_TransitPoint.Text))
            {
                checkedComboBoxEdit_GRNNO.Properties.Items.Clear();
                checkedComboBoxEdit_GRNNO.EditValue = null;

                checkedComboBoxEdit_SuppCode.Properties.Items.Clear();
                checkedComboBoxEdit_SuppCode.EditValue = null;

                return;
            }

            string Str = comboBoxEdit_TransitPoint.Text.Substring(0, 1);
            if (comboBoxEdit_TransitPoint.Text.StartsWith("BD"))
            {
                Str = "C";
            }

            //得到Supplier Code
            checkedComboBoxEdit_SuppCode.Properties.Items.Clear();
            var SuppList = _HDOs.Where(p => p.ADVN59.StartsWith(Str)).Select(p => p.VNDR59.Trim()).Distinct().OrderBy(p => p);
            foreach (var obj in SuppList)
            {
                checkedComboBoxEdit_SuppCode.Properties.Items.Add(obj);
            }

            checkedComboBoxEdit_SuppCode.EditValue = null;

            checkedComboBoxEdit_GRNNO.Properties.Items.Clear();
            checkedComboBoxEdit_GRNNO.EditValue = null;
        }

        //根据选择的Supp Code，得到GRN No.
        private void checkedComboBoxEdit_SuppCode_EditValueChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(comboBoxEdit_TransitPoint.Text))
            {
                checkedComboBoxEdit_GRNNO.Properties.Items.Clear();
                checkedComboBoxEdit_GRNNO.EditValue = null;

                checkedComboBoxEdit_SuppCode.Properties.Items.Clear();
                checkedComboBoxEdit_SuppCode.EditValue = null;

                return;
            }

            //得到GRN No.
            string Str = comboBoxEdit_TransitPoint.Text.Substring(0, 1);
            if (comboBoxEdit_TransitPoint.Text.StartsWith("BD"))
            {
                Str = "C";
            }

            checkedComboBoxEdit_GRNNO.Properties.Items.Clear();

            string SuppCode = checkedComboBoxEdit_SuppCode.EditValue == null ? "" : checkedComboBoxEdit_SuppCode.EditValue.ToString();
            string[] Supps = SuppCode.Split(new string[] { ", ", "," }, StringSplitOptions.RemoveEmptyEntries);


            var GRNList = _HDOs.Where(p => p.ADVN59.StartsWith(Str) && (checkedComboBoxEdit_SuppCode.EditValue == null || Supps.Contains(p.VNDR59.Trim()))).Select(p => p.GRNO59).Distinct().OrderBy(p => p);
            foreach (var obj in GRNList)
            {
                checkedComboBoxEdit_GRNNO.Properties.Items.Add(obj);
            }

            checkedComboBoxEdit_GRNNO.EditValue = null;

        }

    }
}
