using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.POPC.BO;

namespace PH.POPC.BackEnd
{
    public partial class JobMultiPOReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        //Xsj:為打印海關PO而添加以下代碼------------------------ 
        //Xsj:標識是否是海關PO報表。
        public bool IsPrintPOForHS
        {
            get
            {
                return this.chk_POForHS.Checked;
            }
            set
            {
                this.chk_POForHS.Checked = value;
                this.chk_POForHS.Visible = value;
                if (value)
                {
                    this.editLanguage.EditValue = "EN";
                    this.editLanguage.Properties.ReadOnly = true;
                }
            }
        }
        //------------------------------------------------------


        public JobMultiPOReport()
        {
            InitializeComponent();
            Area = "SL";
            _langID = "EN";
            _isVATPrint = false;

            InitValue();
            // if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;
        }

        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            //return -1;
            GetValues(parameters);
            return this._area == "KB" ? 0 : -1;
        }
        string _param;
        string _cono;
        //string _ponos;
        private string __pono;
        string _pono
        {
            get { return this.__pono; }
            set
            {
                __pono = value;
                //if (!string.IsNullOrEmpty(__pono)) __pono = __pono.Trim();
                //string[] ss = __pono.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                //_ponos = new string[ss.Length];
                //for (int i = 0; i < ss.Length; i++)
                //{
                //    string s = ss[i].Trim();
                //    _ponos[i] = s;
                //}
                string truePOs = GetTruePOs(this.__pono);
                _ponos = POArray(truePOs);

            }
        }
        string[] _ponos { get; set; }

        //string _reportType;
        string _area;//KB,SL,HK
        int _ReportType; // 0=PH Copy, 1=To supplier
        bool _isPHCopy { get { return _ReportType == 0; } }
        bool _isColorPrint;
        string _langID;
        bool _isDetailReport;
        bool _isVATPrint;
        //bool _isDometisMarkets;//是否内销

        public bool IsDetailReport
        {
            get
            {
                return this.editDetailSumReport.SelectedIndex == 0;
            }
        }
        public string Area
        {
            get
            {
                _area = this.textRegion.Text;
                return _area;
            }
            set
            {
                _area = value;
                this.textRegion.Text = _area;
            }
        }

        //private PH.POPC.BO.POHeader _POHeader;

        public string CONO
        { get { return this.editCONO.Text; } }
        public string PONO
        {
            get
            {
                string po = this.tePOs.Text.Trim();
                string truePOs = GetTruePOs(po);
                //string[] pos = POArray(po0);

                //foreach (var s in pos)
                //{
                //    if (string.IsNullOrEmpty(s)) continue;
                //    int i = s.IndexOf('-');
                //    if (i > -1) //is PO range
                //    {
                //        string po1 = s.Substring(0, i).Trim();
                //        string po2 = s.Substring(i + 1).Trim();

                //        truePOs += PORange(po1, po2);
                //    }
                //    else truePOs += string.Format("{0}, ", s);
                //}

                return truePOs;
            }
        }
        public string[] PONOs
        {
            get
            {
                //string po = this.PONO;
                //if (!string.IsNullOrEmpty(po)) po = po.Trim();
                //string[] ss = po.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                //string[] pos = new string[ss.Length];
                //for (int i = 0; i < ss.Length; i++)
                //{
                //    string s = ss[i].Trim();
                //    pos[i] = s;
                //}
                //return pos;
                return POArray(this.PONO);
            }
        }


        public int ReportType
        { get { return Convert.ToInt32(this.editReportType.EditValue); } }
        public bool ColorPrint
        { get { return Convert.ToBoolean(this.editPrintColor.EditValue); } }
        public string Lang
        { get { return Convert.ToString(this.editLanguage.EditValue); } }
        public bool VATPrint
        { get { return this.editVAT.Checked; } }
        //public bool DometisPrint
        //{ get { return Convert.ToBoolean(this.editMarkets.EditValue); } }

        public string ReportTitleType
        {
            get;
            set;
            //get
            //{
            //    return this.rgReportTitleType.EditValue.ToString();
            //}

        }

        // 之前报表只有两种格式：PH copy和Original, 王生要求加入一个选项：All，用于同时打印两份报表

        /// <summary>
        /// 之前报表只有两种格式：PH copy和Original, 王生要求加入一个选项：All，用于同时打印两份报表
        /// 当用户选择All选时，需要动态设定本属性 由David中加入 2020-09-21
        /// </summary>
        public int DynamicReportType { get; set; }

        public IEnumerable<PH.POPC.BO.POHeader> Headers { get; set; }

        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            _cono = ss[0];
            _pono = ss[1];
            //_reportType = ss[2];
            _area = ss[2];
            _ReportType = Convert.ToInt32(ss[3]);
            _isColorPrint = Convert.ToBoolean(ss[4]);
            _langID = ss[5];
            _isDetailReport = Convert.ToBoolean(ss[6]);
            _isVATPrint = Convert.ToBoolean(ss[7]);
            //_isDometisMarkets = Convert.ToBoolean(ss[8]);


            //Xsj:為打印海關PO而添加以下代碼------------------------ 
            //Xsj:標識是否是海關PO報表。
            IsPrintPOForHS = Convert.ToBoolean(ss[8]);
            this.ReportTitleType = ss[9];
            //----------------------End-----------------------------
        }

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            this._param = parameters;
            GetValues(parameters);
            GetHeaders();
            bool isScPO = false;
            bool isDometisMarkets = false;
            DevExpress.XtraReports.UI.XtraReport report = null;

            string langID = this._langID;
            foreach (var item in this.Headers)
            {
                isScPO = item.IsScPO;
                isDometisMarkets = item.IsDometisMarkets;
                _isDetailReport = item.SupplierDimension != PODimension.ThreeS;

                #region Error report
                if (string.IsNullOrEmpty(item.LocationOfSuppFactory))
                {
                    report = new PH.POPC.BackEnd.PO.Share.poErrorReport(item.PONO, langID);
                    return report;
                }
                else if (!item.MatrixIsOK)
                {
                    report = new PH.POPC.BackEnd.PO.Share.poMatrixErrorReport(item, _isColorPrint);
                    return report;
                }
                #endregion
                else
                {
                    //report = new PH.POPC.BackEnd.PO.POReport(_isPHCopy, _isColorPrint, _isVATPrint, isScPO, _langID, isDometisMarkets);
                    //Xsj:為打印海關PO而添加以下代碼------------------------  
                    report = new PH.POPC.BackEnd.PO.POReport(_isPHCopy, _isColorPrint, _isVATPrint, isScPO, _langID, isDometisMarkets, this.IsPrintPOForHS, this.ReportTitleType);
                    //----------------------End-----------------------------
                }

            }
            if (report != null)
                report.AfterPrint += new EventHandler(report_AfterPrint);
            return report;

        }

        void report_AfterPrint(object sender, EventArgs e)
        {
            bool isScPO = false;
            bool isDometisMarkets = false;
            DevExpress.XtraReports.UI.XtraReport report = null;

            var hs = from xx in context.POHeaders
                     where (xx.POType == (int)PH.POPC.BO.POType.PO) && xx.Company == this._cono && this._ponos.Contains(xx.PONO) && (xx.VersionFlag ?? false)
                     orderby xx.PONO
                     select xx;

            string langID = this._langID;
            foreach (var h in hs)
            {
                if (h.PONO == this._ponos[0]) continue;


                isScPO = h.IsScPO;
                isDometisMarkets = h.IsDometisMarkets;
                _isDetailReport = h.SupplierDimension != PODimension.ThreeS;

                #region Error report
                if (string.IsNullOrEmpty(h.LocationOfSuppFactory))
                {
                    report = new PH.POPC.BackEnd.PO.Share.poErrorReport(h.PONO, langID);
                }
                else if (!h.MatrixIsOK)
                {
                    report = new PH.POPC.BackEnd.PO.Share.poMatrixErrorReport(h, _isColorPrint);
                }
                #endregion
                else
                {
                    //report = new PH.POPC.BackEnd.PO.POReport(_isPHCopy, _isColorPrint, _isVATPrint, isScPO, _langID, isDometisMarkets);
                    //Xsj:為打印海關PO而添加以下代碼------------------------  
                    report = new PH.POPC.BackEnd.PO.POReport(_isPHCopy, _isColorPrint, _isVATPrint, isScPO, _langID, isDometisMarkets, this.IsPrintPOForHS, this.ReportTitleType);
                    //----------------------End-----------------------------
                    List<POHeader> pos = new List<POHeader>();
                    pos.Add(h);
                    report.DataSource = pos;
                }

                report.CreateDocument();

                DevExpress.XtraReports.UI.XtraReport report1 = sender as DevExpress.XtraReports.UI.XtraReport;
                report1.PrintingSystem.ContinuousPageNumbering = false;
                report1.Pages.AddRange(report.Pages);
            }

        }

        PH.POPC.BO.POPCDataContext context;
        private void GetHeaders()
        {
            context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            string po = this._ponos.Length == 0 ? "" : this._ponos[0];

            var aa = from c in context.POHeaders
                     where (c.POType == (int)PH.POPC.BO.POType.PO && c.Company == this._cono && c.PONO == po)
                     group c by new { c.PONO, c.Company } into newGroup
                     select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };


            this.Headers = from xx in context.POHeaders
                           from yy in aa
                           where (xx.POType == (int)PH.POPC.BO.POType.PO) && xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO &&
                           (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
                           select xx;

            //this.Headers = from xx in context.POHeaders
            //               where (xx.POType == (int)PH.POPC.BO.POType.PO) && xx.Company == this._cono && this._ponos.Contains(xx.PONO) && (xx.VersionFlag ?? false)
            //               orderby xx.PONO
            //               select xx;
        }

        public object GetReportDataSource(string parameters)
        {
            return this.Headers;
        }

        #endregion


        #region IParameterSetControl Members

        public string GetParameter()
        {
            string cono = this.editCONO.Text;
            string pono = this.tePOs.Text;

            //由david修改 2020-09-21
            int reportType;
            if (this.DynamicReportType == -19) reportType = Convert.ToInt32(this.editReportType.EditValue);
            else reportType = this.DynamicReportType;

            //int reportType = Convert.ToInt32(this.editReportType.EditValue);


            bool colorPrint = Convert.ToBoolean(this.editPrintColor.EditValue);
            string area = this.textRegion.Text;
            string lang = Convert.ToString(this.editLanguage.EditValue);
            bool vatPrint = this.editVAT.Checked;

            string ReportTitleType = this.rgReportTitleType.EditValue.ToString(); //由David加入 2020-01-07 由Dongguan或PY出PO
            //string s = string.Format("{0};{1};{2};{3};{4};{5};{6};{7}", cono, pono, area, reportType, colorPrint, lang, this.IsDetailReport, vatPrint);//執行數據源時候需要使用的參數

            //Xsj:為打印海關PO而添加以下代碼------------------------------------  
            string s = string.Format("{0};{1};{2};{3};{4};{5};{6};{7};{8};{9}", cono, pono, area, reportType, colorPrint, lang, this.IsDetailReport, vatPrint, this.IsPrintPOForHS, ReportTitleType);//執行數據源時候需要使用的參數
            //-----------------------End-----------------------------------------
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobMultiPOReport ctl = new JobMultiPOReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editCONO.EditValue = paras[0];
                ctl.tePOs.EditValue = paras[1];
                ctl.textRegion.EditValue = paras[2];
                ctl.editReportType.SelectedIndex = Convert.ToInt32(paras[3]);
                ctl.editPrintColor.EditValue = Convert.ToBoolean(paras[4]);
                ctl.editLanguage.EditValue = paras[5];
                ctl.editDetailSumReport.EditValue = Convert.ToBoolean(paras[6]);
                ctl.editVAT.EditValue = Convert.ToBoolean(paras[7]);
                //ctl.editMarkets.EditValue = Convert.ToBoolean(paras[8]);
            }
            return ctl;
        }

        #endregion

        private BackEndEventHandler backEndEventHandler;
        public event BackEndEventHandler JobHandle
        {
            add { backEndEventHandler += value; }
            remove { backEndEventHandler -= value; }
        }
        private void editPONO_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode != Keys.Enter) return;

            if (string.IsNullOrEmpty(this.PONO))
            {
                MessageBox.Show("Please enter PO No.");
                return;
            }
            if (backEndEventHandler != null)
            {
                BackEndEventArgs args = new BackEndEventArgs(GetParameter());
                backEndEventHandler(this, args);
            }
        }

        private void InitValue()
        {
            #region Table

            DataColumn col;
            //DataRow row;

            //table-PO
            DataTable dtPO = new DataTable();
            col = new DataColumn();
            col.ColumnName = "PONO";
            col.DataType = System.Type.GetType("System.String");
            dtPO.Columns.Add(col);

            #endregion

            //PO
            this.tePOs.DataSource = dtPO;
            this.tePOs.DisplayMember = "PONO";

        }

        private int GetPOInteger(string po)
        {
            if (string.IsNullOrEmpty(po) || (po.Length != 7) || (!po.StartsWith("P", true, null))) return 0;

            string s = po.Substring(1);

            try
            {
                int i = Convert.ToInt32(s);

                return i;
            }
            catch (Exception)
            {
                return 0;
            }
        }

        //驗證PO是否有效，總數不能超過50個
        public string ValidationPO()
        {
            string po0 = this.tePOs.Text.Trim();
            string[] pos = POArray(po0);

            foreach (var s in pos)
            {
                if (string.IsNullOrEmpty(s)) continue;
                int i = s.IndexOf('-');
                if (i > -1) //is PO range
                {
                    string po1 = s.Substring(0, i).Trim();
                    string po2 = s.Substring(i + 1).Trim();

                    if (string.IsNullOrEmpty(po1)) po1 = po2;
                    if (string.IsNullOrEmpty(po2)) po2 = po1;

                    string s1 = po1;
                    if (string.Compare(po1, po2) > 0)
                    { po1 = po2; po2 = s1; }

                    //輸入了PO才驗證
                    if (!string.IsNullOrEmpty(po1))
                    {
                        int iPO1 = GetPOInteger(po1);
                        int iPO2 = GetPOInteger(po2);

                        //if (iPO1 == 0) return string.Format("{0} is invalid PO No!", po1);
                        //if (iPO2 == 0) return string.Format("{0} is invalid PO No!", po2);
                        //if ((iPO2 - iPO1 + 1) > 100) return string.Format("{0} - {1} 's intervals cannot over 100!",po1, po2);
                        if (iPO1 == 0) return string.Format("{0} 不是有效的 PO No!", po1);
                        if (iPO2 == 0) return string.Format("{0} 不是有效的 PO No!", po2);
                        //if ((iPO2 - iPO1 + 1) > 50) return string.Format("{0} - {1} 之間的個數已經超過 50 個!", po1, po2);
                    }
                }
                else
                {
                    int iPO = GetPOInteger(s);
                    if (iPO == 0) return string.Format("{0} 不是有效的 PO No!", s);
                }
            }

            if (this.PONOs.Length > 50) return string.Format("PO總數已經超過 50 個!");

            return "";
        }

        private string[] POArray(string po)
        {
            if (!string.IsNullOrEmpty(po)) po = po.Trim();
            string[] ss = po.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
            string[] pos = new string[ss.Length];
            for (int i = 0; i < ss.Length; i++)
            {
                string s = ss[i].Trim();
                pos[i] = s;
            }
            return pos;
        }

        private string PORange(string po1, string po2)
        {
            if (string.IsNullOrEmpty(po1)) po1 = po2;
            if (string.IsNullOrEmpty(po2)) po2 = po1;

            string s = po1;
            if (string.Compare(po1, po2) > 0)
            { po1 = po2; po2 = s; }

            string pos = "";
            if (!string.IsNullOrEmpty(po1))
            {
                int iPO1 = GetPOInteger(po1);
                int iPO2 = GetPOInteger(po2);

                if (Math.Abs(iPO2 - iPO1) > 50) return "";

                for (int i = iPO1; i <= iPO2; i++)
                {
                    string s1 = i.ToString().PadLeft(6, '0');
                    pos += string.Format("P{0}, ", s1);
                }
            }
            return pos;
        }
        private string GetTruePOs(string po)
        {
            //string po0 = this.tePOs.Text.Trim();
            string[] pos = POArray(po);

            string truePOs = "";
            foreach (var s in pos)
            {
                if (string.IsNullOrEmpty(s)) continue;
                int i = s.IndexOf('-');
                if (i > -1) //is PO range
                {
                    string po1 = s.Substring(0, i).Trim();
                    string po2 = s.Substring(i + 1).Trim();

                    truePOs += PORange(po1, po2);
                }
                else truePOs += string.Format("{0}, ", s);
            }

            return truePOs;
        }

        private void btnSelectPO_Click(object sender, EventArgs e)
        {
            SelectPOForm frmSelectPO = new SelectPOForm();
            if (frmSelectPO.ShowDialog() == DialogResult.OK)
            {
                tePOs.Text = frmSelectPO.GetChoosePOs();
            }
        }

        private void chkDomesticPurchase_CheckedChanged(object sender, EventArgs e)
        {
            editLanguage.EditValue = chkDomesticPurchase.Checked ? "TW" : "EN";
        }
    }
}
