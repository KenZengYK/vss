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
    public partial class JobPOReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        public JobPOReport()
        {
            InitializeComponent();
            Area = "SL";
            _langID = "EN";
            _isVATPrint = false;

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
        string _pono;
        //string _reportType;
        string _area;//KB,SL,HK
        int _ReportType; // 0=PH Copy, 1=To supplier
        bool _isPHCopy { get { return _ReportType == 0; } }
        bool _isColorPrint;
        string _langID;
        bool _isDetailReport;
        bool _isVATPrint;
        //bool _isDometisMarkets;//是否内销


        //Xsj:為打印海關PO而添加以下代碼------------ 
        //標識是否是海關PO報表
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
                    chkDomesticPurchase.Checked = false;
                    chkDomesticPurchase.Properties.ReadOnly = true;

                    //this.editLanguage.EditValue = "EN";
                    //this.editLanguage.Properties.ReadOnly = true;
                }
            }
        }
        //------------------End----------------

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
        { get { return this.editPONO.Text; } }
        public int ReportType
        { get { return Convert.ToInt32(this.editReportType.EditValue); } }
        public bool ColorPrint
        { get { return Convert.ToBoolean(this.editPrintColor.EditValue); } }

        public string Lang
        { get { return chkDomesticPurchase.Checked ? "TW" : "EN"; } }

        //public string Lang
        //{ get { return Convert.ToString(this.editLanguage.EditValue); } }

        public bool VATPrint
        { get { return this.editVAT.Checked; } }
        //public bool DometisPrint
        //{ get { return Convert.ToBoolean(this.editMarkets.EditValue); } }

        //用于区分由Dongguan采购还是PY采购, 由david加入 2020-01-07
        public string ReportTitleType { get; set; }

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

            //Xsj20160418:為打印海關PO而添加以下代碼----------------  
            this.IsPrintPOForHS = Convert.ToBoolean(ss[8]);

            this.ReportTitleType = ss[9];
            //----------------------End-----------------------------
        }

        private void InitTerm(string LanguageCode)
        {
            //PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //context.CommandTimeout = 1000;

            //LanguageCode = "EN";
            //List<PH.POPC.BO.Term> ts = (from cc in context.Terms where cc.LanguageCode == LanguageCode select cc).ToList<PH.POPC.BO.Term>();
            //string s = "";
            //int i = 0;
            //foreach (PH.POPC.BO.POTerm item in this._POHeader.POTerms)
            //{
            //    PH.POPC.BO.Term tt = ts.Find(delegate(PH.POPC.BO.Term t1)
            //    {
            //        return t1.TermCode == item.TermCode;
            //    }
            //    );
            //    if (tt != null)
            //    {

            //        i++;
            //        s += string.Format("({0}){1}", i, tt.Remark + "\r\n");
            //    }
            //}
            //if (this._POHeader.POType == 1)
            //{
            //    PH.POPC.BO.POERPList list = new PH.POPC.BO.POERPList();
            //    i++;
            //    string s1 = list.GetERPTermsConditions(this._POHeader.Company, this._POHeader.PONO);
            //    if (!string.IsNullOrEmpty(s1))
            //        s += string.Format("({0}){1}", i, s1);

            //    this._POHeader.ERPAmendment = list.GetERPAmendmentNo(this._POHeader.Company, this._POHeader.PONO);
            //}
            //if (s != "")
            //{
            //    this._POHeader.AddtionalTermsAndConditions = s;
            //}
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
                    report = new PH.POPC.BackEnd.PO.Share.poErrorReport(_pono, langID);
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

                    //Xsj20160418:為打印海關PO而添加以下代碼。---------  
                    report = new PH.POPC.BackEnd.PO.POReport(_isPHCopy, _isColorPrint, _isVATPrint, isScPO, _langID, isDometisMarkets, this.IsPrintPOForHS, this.ReportTitleType);
                    //----------------------End-----------------------------
                }

            }

            return report;

            #region No use


            //var cc = (from a in this.Headers
            //          from b in a.PODetails
            //          select new { b.ItemCode }
            //         ).Distinct();

            //if (!isScPO)
            //{
            //    #region Normal PO

            //    if (this._isDetailReport)
            //    {
            //        #region Detail Report

            //        switch (langID)
            //        {
            //            #region EN

            //            case "EN":
            //                if (cc.Count() == 1)
            //                {
            //                    foreach (var po in this.Headers)
            //                    {

            //                        #region PO report

            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new NewReport.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new NewReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new NewReport.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new NewReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new NewReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}

            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        #endregion

            //                        break;
            //                    }
            //                }
            //                else
            //                {
            //                    foreach (var po in this.Headers)
            //                    {

            //                        #region PO report

            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new NewReport.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new NewReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new NewReport.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new NewReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new NewReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        #endregion

            //                        break;
            //                    }
            //                }
            //                break;
            //            #endregion
            //            #region CN,TW

            //            case "CN":
            //                if (cc.Count() == 1)
            //                {
            //                    foreach (var po in this.Headers)
            //                    {

            //                        #region PO report

            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new NewReport.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new NewReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new NewReport.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new NewReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new NewReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        #endregion

            //                        break;
            //                    }
            //                }
            //                else
            //                {
            //                    foreach (var po in this.Headers)
            //                    {

            //                        #region PO report

            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new NewReport.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new NewReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new NewReport.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new NewReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new NewReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        #endregion

            //                        break;
            //                    }
            //                }
            //                break;
            //            case "TW":
            //                goto case "CN";
            //            #endregion
            //            #region TH

            //            //case "TH":
            //            //    if (cc.Count() == 1)
            //            //    {
            //            //        foreach (var po in this.Headers)
            //            //        {
            //            //            widthSpec = po.ItemWidthSpec;

            //            //            #region PO report

            //            //            switch (widthSpec)
            //            //            {
            //            //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //            //                    report = new NewReport.TH.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //            //                    report = new NewReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                default:
            //            //                    report = new NewReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //            }
            //            //            if (po.Flag == "1")// po cancelled
            //            //            {
            //            //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //            //                report.Watermark.Text = "Cancelled";
            //            //                report.Watermark.TextTransparency = 90;
            //            //                report.Watermark.ShowBehind = !_isColorPrint;
            //            //            }
            //            //            #endregion

            //            //            break;
            //            //        }
            //            //    }
            //            //    else
            //            //    {
            //            //        foreach (var po in this.Headers)
            //            //        {
            //            //            widthSpec = po.ItemWidthSpec;

            //            //            #region PO report

            //            //            switch (widthSpec)
            //            //            {
            //            //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //            //                    report = new NewReport.TH.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //            //                    report = new NewReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                default:
            //            //                    report = new NewReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //            }
            //            //            if (po.Flag == "1")// po cancelled
            //            //            {
            //            //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //            //                report.Watermark.Text = "Cancelled";
            //            //                report.Watermark.TextTransparency = 90;
            //            //                report.Watermark.ShowBehind = !_isColorPrint;
            //            //            }
            //            //            #endregion

            //            //            break;
            //            //        }
            //            //    }
            //            //    break;
            //            #endregion

            //            default:
            //                goto case "EN";
            //        }
            //        #endregion
            //    }
            //    else
            //    {
            //        #region Summary Report

            //        switch (langID)
            //        {
            //            #region EN

            //            case "EN":
            //                if (cc.Count() == 1)
            //                {
            //                    foreach (var po in this.Headers)
            //                    {
            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new NewReport.Summary.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new NewReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new NewReport.Summary.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new NewReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new NewReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}

            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        break;
            //                    }
            //                }
            //                else
            //                {
            //                    foreach (var po in this.Headers)
            //                    {
            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new NewReport.Summary.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new NewReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new NewReport.Summary.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new NewReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new NewReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        break;
            //                    }
            //                }
            //                break;
            //            #endregion
            //            #region CN,TW

            //            case "CN":
            //                if (cc.Count() == 1)
            //                {
            //                    foreach (var po in this.Headers)
            //                    {
            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new NewReport.Summary.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new NewReport.Summary.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new NewReport.Summary.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new NewReport.Summary.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new NewReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        break;
            //                    }
            //                }
            //                else
            //                {
            //                    foreach (var po in this.Headers)
            //                    {
            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new NewReport.Summary.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new NewReport.Summary.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new NewReport.Summary.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new NewReport.Summary.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new NewReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        break;
            //                    }
            //                }
            //                break;
            //            case "TW":
            //                goto case "CN";
            //            #endregion
            //            #region TH

            //            //case "TH":
            //            //    if (cc.Count() == 1)
            //            //    {
            //            //        foreach (var po in this.Headers)
            //            //        {
            //            //            widthSpec = po.ItemWidthSpec;
            //            //            switch (widthSpec)
            //            //            {
            //            //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //            //                    report = new NewReport.Summary.TH.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //            //                    report = new NewReport.Summary.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                default:
            //            //                    report = new NewReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //            }
            //            //            if (po.Flag == "1")// po cancelled
            //            //            {
            //            //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //            //                report.Watermark.Text = "Cancelled";
            //            //                report.Watermark.TextTransparency = 90;
            //            //                report.Watermark.ShowBehind = !_isColorPrint;
            //            //            }
            //            //            break;
            //            //        }
            //            //    }
            //            //    else
            //            //    {
            //            //        foreach (var po in this.Headers)
            //            //        {
            //            //            widthSpec = po.ItemWidthSpec;
            //            //            switch (widthSpec)
            //            //            {
            //            //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //            //                    report = new NewReport.Summary.TH.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //            //                    report = new NewReport.Summary.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                default:
            //            //                    report = new NewReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //            }
            //            //            if (po.Flag == "1")// po cancelled
            //            //            {
            //            //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //            //                report.Watermark.Text = "Cancelled";
            //            //                report.Watermark.TextTransparency = 90;
            //            //                report.Watermark.ShowBehind = !_isColorPrint;
            //            //            }
            //            //            break;
            //            //        }
            //            //    }
            //            //    break;
            //            #endregion

            //            default:
            //                goto case "EN";

            //        }
            //        #endregion
            //    }
            //    #endregion
            //}
            //else
            //{
            //    #region Sub-Contracting PO

            //    if (this._isDetailReport)
            //    {
            //        #region Detail Report

            //        switch (langID)
            //        {
            //            #region EN

            //            case "EN":
            //                if (cc.Count() == 1)
            //                {
            //                    foreach (var po in this.Headers)
            //                    {
            //                        #region PO report

            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new SubContractReport.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new SubContractReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new SubContractReport.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new SubContractReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new SubContractReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}

            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        #endregion

            //                        break;
            //                    }
            //                }
            //                else
            //                {
            //                    foreach (var po in this.Headers)
            //                    {

            //                        #region PO report

            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new SubContractReport.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new SubContractReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new SubContractReport.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new SubContractReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new SubContractReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        #endregion

            //                        break;
            //                    }
            //                }
            //                break;
            //            #endregion
            //            #region CN,TW

            //            case "CN":
            //                if (cc.Count() == 1)
            //                {
            //                    foreach (var po in this.Headers)
            //                    {

            //                        #region PO report

            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new SubContractReport.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new SubContractReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new SubContractReport.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new SubContractReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new SubContractReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        #endregion

            //                        break;
            //                    }
            //                }
            //                else
            //                {
            //                    foreach (var po in this.Headers)
            //                    {

            //                        #region PO report

            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new SubContractReport.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new SubContractReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new SubContractReport.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new SubContractReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new SubContractReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        #endregion

            //                        break;
            //                    }
            //                }
            //                break;
            //            case "TW":
            //                goto case "CN";
            //            #endregion
            //            #region TH

            //            //case "TH":
            //            //    if (cc.Count() == 1)
            //            //    {
            //            //        foreach (var po in this.Headers)
            //            //        {
            //            //            widthSpec = po.ItemWidthSpec;

            //            //            #region PO report

            //            //            switch (widthSpec)
            //            //            {
            //            //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //            //                    report = new SubContractReport.TH.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //            //                    report = new SubContractReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                default:
            //            //                    report = new SubContractReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //            }
            //            //            if (po.Flag == "1")// po cancelled
            //            //            {
            //            //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //            //                report.Watermark.Text = "Cancelled";
            //            //                report.Watermark.TextTransparency = 90;
            //            //                report.Watermark.ShowBehind = !_isColorPrint;
            //            //            }
            //            //            #endregion

            //            //            break;
            //            //        }
            //            //    }
            //            //    else
            //            //    {
            //            //        foreach (var po in this.Headers)
            //            //        {
            //            //            widthSpec = po.ItemWidthSpec;

            //            //            #region PO report

            //            //            switch (widthSpec)
            //            //            {
            //            //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //            //                    report = new SubContractReport.TH.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //            //                    report = new SubContractReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                default:
            //            //                    report = new SubContractReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //            }
            //            //            if (po.Flag == "1")// po cancelled
            //            //            {
            //            //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //            //                report.Watermark.Text = "Cancelled";
            //            //                report.Watermark.TextTransparency = 90;
            //            //                report.Watermark.ShowBehind = !_isColorPrint;
            //            //            }
            //            //            #endregion

            //            //            break;
            //            //        }
            //            //    }
            //            //    break;
            //            #endregion

            //            default:
            //                goto case "EN";
            //        }
            //        #endregion
            //    }
            //    else
            //    {
            //        #region Summary Report

            //        switch (langID)
            //        {
            //            #region EN

            //            case "EN":
            //                if (cc.Count() == 1)
            //                {
            //                    foreach (var po in this.Headers)
            //                    {
            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new SubContractReport.Summary.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new SubContractReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new SubContractReport.Summary.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new SubContractReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new SubContractReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}

            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        break;
            //                    }
            //                }
            //                else
            //                {
            //                    foreach (var po in this.Headers)
            //                    {
            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new SubContractReport.Summary.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new SubContractReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new SubContractReport.Summary.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new SubContractReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new SubContractReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        break;
            //                    }
            //                }
            //                break;
            //            #endregion
            //            #region CN,TW

            //            case "CN":
            //                if (cc.Count() == 1)
            //                {
            //                    foreach (var po in this.Headers)
            //                    {
            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new SubContractReport.Summary.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new SubContractReport.Summary.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new SubContractReport.Summary.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new SubContractReport.Summary.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new NewReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        break;
            //                    }
            //                }
            //                else
            //                {
            //                    foreach (var po in this.Headers)
            //                    {
            //                        switch (po.SupplierDimension)
            //                        {
            //                            case PODimension.ThreeS:
            //                                report = new SubContractReport.Summary.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            case PODimension.ThreeR:
            //                            case PODimension.Four:
            //                                report = new SubContractReport.Summary.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                                break;
            //                            default:
            //                                goto case PODimension.ThreeS;
            //                        }

            //                        //widthSpec = po.ItemWidthSpec;
            //                        //switch (widthSpec)
            //                        //{
            //                        //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //                        //        report = new SubContractReport.Summary.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //                        //        report = new SubContractReport.Summary.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //                        //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //                        //    default:
            //                        //        report = new NewReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //                        //        break;
            //                        //}
            //                        if (po.Flag == "1")// po cancelled
            //                        {
            //                            report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //                            report.Watermark.Text = "Cancelled";
            //                            report.Watermark.TextTransparency = 90;
            //                            report.Watermark.ShowBehind = !_isColorPrint;
            //                        }
            //                        break;
            //                    }
            //                }
            //                break;
            //            case "TW":
            //                goto case "CN";
            //            #endregion
            //            #region TH

            //            //case "TH":
            //            //    if (cc.Count() == 1)
            //            //    {
            //            //        foreach (var po in this.Headers)
            //            //        {
            //            //            widthSpec = po.ItemWidthSpec;
            //            //            switch (widthSpec)
            //            //            {
            //            //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //            //                    report = new SubContractReport.Summary.TH.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //            //                    report = new SubContractReport.Summary.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                default:
            //            //                    report = new NewReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //            }
            //            //            if (po.Flag == "1")// po cancelled
            //            //            {
            //            //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //            //                report.Watermark.Text = "Cancelled";
            //            //                report.Watermark.TextTransparency = 90;
            //            //                report.Watermark.ShowBehind = !_isColorPrint;
            //            //            }
            //            //            break;
            //            //        }
            //            //    }
            //            //    else
            //            //    {
            //            //        foreach (var po in this.Headers)
            //            //        {
            //            //            widthSpec = po.ItemWidthSpec;
            //            //            switch (widthSpec)
            //            //            {
            //            //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
            //            //                    report = new SubContractReport.Summary.TH.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
            //            //                    report = new SubContractReport.Summary.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
            //            //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
            //            //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
            //            //                default:
            //            //                    report = new NewReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
            //            //                    break;
            //            //            }
            //            //            if (po.Flag == "1")// po cancelled
            //            //            {
            //            //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
            //            //                report.Watermark.Text = "Cancelled";
            //            //                report.Watermark.TextTransparency = 90;
            //            //                report.Watermark.ShowBehind = !_isColorPrint;
            //            //            }
            //            //            break;
            //            //        }
            //            //    }
            //            //    break;
            //            #endregion

            //            default:
            //                goto case "EN";

            //        }
            //        #endregion
            //    }
            //    #endregion
            //}

            //return report;

            #endregion
        }

        void report_AfterPrint(object sender, EventArgs e)
        {
            //PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //context.CommandTimeout = 1000;

            //var aa = from c in context.POHeaders
            //         where (c.POType == (int)PH.POPC.BO.POType.PO && c.Company == this._cono && c.PONO == this._pono)
            //         group c by new { c.PONO, c.Company } into newGroup
            //         select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };

            //var bb = from xx in context.POColorSizeDetails
            //         from yy in aa
            //         where xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO && (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
            //         select xx;

            //NewReport.EN.po4DReport report = new NewReport.EN.po4DReport();
            //report.DataSource = bb;
            //report.CreateDocument();

            //DevExpress.XtraReports.UI.XtraReport report1 = sender as DevExpress.XtraReports.UI.XtraReport;
            //report1.PrintingSystem.ContinuousPageNumbering = true;
            //report1.Pages.AddRange(report.Pages);
        }
        private void GetHeaders()
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            var aa = from c in context.POHeaders
                     where (c.POType == (int)PH.POPC.BO.POType.PO && c.Company == this._cono && c.PONO == this._pono)
                     //where (c.Company == this._cono && c.PONO == this._pono)
                     group c by new { c.PONO, c.Company } into newGroup
                     select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };


            this.Headers = from xx in context.POHeaders
                           from yy in aa
                           where (xx.POType == (int)PH.POPC.BO.POType.PO) && xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO &&
                               //where xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO &&
                           (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
                           select xx;
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
            string pono = this.editPONO.Text;
            int reportType = Convert.ToInt32(this.editReportType.EditValue);
            bool colorPrint = Convert.ToBoolean(this.editPrintColor.EditValue);
            string area = this.textRegion.Text;

            string lang = chkDomesticPurchase.Checked ? "TW" : "EN";
            //string lang = Convert.ToString(this.editLanguage.EditValue);

            bool vatPrint = this.editVAT.Checked;
            //string s = string.Format("{0};{1};{2};{3};{4};{5};{6};{7}", cono, pono, area, reportType, colorPrint, lang, this.IsDetailReport, vatPrint);//執行數據源時候需要使用的參數
            //Xsj20160418:為打印海關PO而添加以下代碼----------------Start-------
            bool isPOForHS = this.chk_POForHS.Checked;

            string ReportTitleType = this.rgReportTitleType.EditValue.ToString(); //由David加入 2020-01-07 由Dongguan或PY出PO

            string s = string.Format("{0};{1};{2};{3};{4};{5};{6};{7};{8};{9}", cono, pono, area, reportType, colorPrint, lang, this.IsDetailReport, vatPrint, isPOForHS, ReportTitleType);//執行數據源時候需要使用的參數
            //-----------------------End-----------------------------------------

            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobPOReport ctl = new JobPOReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editCONO.EditValue = paras[0];
                ctl.editPONO.EditValue = paras[1];
                ctl.textRegion.EditValue = paras[2];
                ctl.editReportType.SelectedIndex = Convert.ToInt32(paras[3]);
                ctl.editPrintColor.EditValue = Convert.ToBoolean(paras[4]);
                ctl.chkDomesticPurchase.Checked = paras[5] == "TW";
                //ctl.editLanguage.EditValue = paras[5];

                ctl.editDetailSumReport.EditValue = Convert.ToBoolean(paras[6]);
                ctl.editVAT.EditValue = Convert.ToBoolean(paras[7]);
                //ctl.editMarkets.EditValue = Convert.ToBoolean(paras[8]);

                ctl.rgReportTitleType.EditValue = paras[9];
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



    }
}
