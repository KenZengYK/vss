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
    public partial class JobNewMIDcPOReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        public JobNewMIDcPOReport()
        {
            InitializeComponent();
            Area = "SL";
            _langID = "EN";

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

        private PH.POPC.BO.POHeader _POHeader;

        public string CONO
        { get { return this.editCONO.Text; } }
        public string PONO
        { get { return this.editPONO.Text; } }
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
        }

        private void InitTerm(string LanguageCode)
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            LanguageCode = "EN";
            List<PH.POPC.BO.Term> ts = (from cc in context.Terms where cc.LanguageCode == LanguageCode select cc).ToList<PH.POPC.BO.Term>();
            string s = "";
            int i = 0;
            foreach (PH.POPC.BO.POTerm item in this._POHeader.POTerms)
            {
                PH.POPC.BO.Term tt = ts.Find(delegate(PH.POPC.BO.Term t1)
                {
                    return t1.TermCode == item.TermCode;
                }
                );
                if (tt != null)
                {

                    i++;
                    s += string.Format("({0}){1}", i, tt.Remark + "\r\n");
                }
            }
            if (this._POHeader.POType == 1)
            {
                PH.POPC.BO.POERPList list = new PH.POPC.BO.POERPList();
                i++;
                string s1 = list.GetERPTermsConditions(this._POHeader.Company, this._POHeader.PONO);
                if (!string.IsNullOrEmpty(s1))
                    s += string.Format("({0}){1}", i, s1);

                this._POHeader.ERPAmendment = list.GetERPAmendmentNo(this._POHeader.Company, this._POHeader.PONO);
            }
            if (s != "")
            {
                this._POHeader.AddtionalTermsAndConditions = s;
            }
        }

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            this._param = parameters;
            GetValues(parameters);
            GetHeaders();

            //bool isScPO = false;
            bool isDometisMarkets = false;
            foreach (var item in this.Headers)
            {
                //isScPO = item.IsScPO;
                isDometisMarkets = item.IsDometisMarkets;
            }

            DevExpress.XtraReports.UI.XtraReport report = new MIDcNewformat.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, isDometisMarkets);

            var cc = (from a in this.Headers
                      from b in a.PODetails
                      select new { b.SupplierReference }
                     ).Distinct();
            //string widthSpec;
            string langID = this._langID;// PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            #region Error report
            foreach (var item in this.Headers)
            {
                if (string.IsNullOrEmpty(item.LocationOfSuppFactory))
                {
                    switch (langID)
                    {
                        case "EN":
                            report = new MIDcNewformat.EN.poErrorReport(_pono);
                            break;
                        case "CN":
                            report = new MIDcNewformat.CN.poErrorReport(_pono);
                            break;
                        case "TW":
                            goto case "CN";
                        //case "TH":
                        //    report = new MIDcNewformat.TH.poErrorReport(_pono);
                        //    break;
                        default:
                            goto case "EN";
                        //break;
                    }
                    return report;
                }
                else if (!item.MatrixIsOK)
                {
                    report = new MIDcNewformat.EN.poMatrixErrorReport(item, _isColorPrint);
                    return report;
                }
            }
            #endregion

            //if (this._isDetailReport)
            {
                #region Detail Report

                switch (langID)
                {
                    #region EN

                    case "EN":
                        if (cc.Count() == 1)
                        {
                            foreach (var po in this.Headers)
                            {
                                switch (po.SupplierDimension)
                                {
                                    case PODimension.ThreeS:
                                        report = new MIDcNewformat.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, isDometisMarkets);
                                        break;
                                    case PODimension.ThreeR:
                                    case PODimension.Four:
                                        report = new MIDcNewformat.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, isDometisMarkets);
                                        break;
                                    default:
                                        goto case PODimension.ThreeS;
                                }

                                //widthSpec = po.ItemWidthSpec;
                                //switch (widthSpec)
                                //{
                                //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                //        report = new MIDcNewformat.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                //        report = new MIDcNewformat.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                                //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                                //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                                //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                                //    default:
                                //        report = new MIDcNewformat.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //}

                                if (po.Flag == "1")// po cancelled
                                {
                                    report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                    report.Watermark.Text = "Cancelled";
                                    report.Watermark.TextTransparency = 90;
                                    report.Watermark.ShowBehind = !_isColorPrint;
                                }
                                break;
                            }
                        }
                        else
                        {
                            foreach (var po in this.Headers)
                            {
                                switch (po.SupplierDimension)
                                {
                                    case PODimension.ThreeS:
                                        report = new MIDcNewformat.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, isDometisMarkets);
                                        break;
                                    case PODimension.ThreeR:
                                    case PODimension.Four:
                                        report = new MIDcNewformat.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, isDometisMarkets);
                                        break;
                                    default:
                                        goto case PODimension.ThreeS;
                                }

                                //widthSpec = po.ItemWidthSpec;
                                //switch (widthSpec)
                                //{
                                //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                //        report = new MIDcNewformat.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                //        report = new MIDcNewformat.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                                //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                                //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                                //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                                //    default:
                                //        report = new MIDcNewformat.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //}
                                if (po.Flag == "1")// po cancelled
                                {
                                    report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                    report.Watermark.Text = "Cancelled";
                                    report.Watermark.TextTransparency = 90;
                                    report.Watermark.ShowBehind = !_isColorPrint;
                                }
                                break;
                            }
                        }
                        break;
                    #endregion
                    #region CN,TW

                    case "CN":
                        if (cc.Count() == 1)
                        {
                            foreach (var po in this.Headers)
                            {
                                switch (po.SupplierDimension)
                                {
                                    case PODimension.ThreeS:
                                        report = new MIDcNewformat.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, isDometisMarkets);
                                        break;
                                    case PODimension.ThreeR:
                                    case PODimension.Four:
                                        report = new MIDcNewformat.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, isDometisMarkets);
                                        break;
                                    default:
                                        goto case PODimension.ThreeS;
                                }

                                //widthSpec = po.ItemWidthSpec;
                                //switch (widthSpec)
                                //{
                                //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                //        report = new MIDcNewformat.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                //        report = new MIDcNewformat.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                                //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                                //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                                //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                                //    default:
                                //        report = new MIDcNewformat.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //}
                                if (po.Flag == "1")// po cancelled
                                {
                                    report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                    report.Watermark.Text = "Cancelled";
                                    report.Watermark.TextTransparency = 90;
                                    report.Watermark.ShowBehind = !_isColorPrint;
                                }
                                break;
                            }
                        }
                        else
                        {
                            foreach (var po in this.Headers)
                            {
                                switch (po.SupplierDimension)
                                {
                                    case PODimension.ThreeS:
                                        report = new MIDcNewformat.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, isDometisMarkets);
                                        break;
                                    case PODimension.ThreeR:
                                    case PODimension.Four:
                                        report = new MIDcNewformat.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, isDometisMarkets);
                                        break;
                                    default:
                                        goto case PODimension.ThreeS;
                                }

                                //widthSpec = po.ItemWidthSpec;
                                //switch (widthSpec)
                                //{
                                //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                //        report = new MIDcNewformat.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                //        report = new MIDcNewformat.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                                //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                                //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                                //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                                //    default:
                                //        report = new MIDcNewformat.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                                //        break;
                                //}
                                if (po.Flag == "1")// po cancelled
                                {
                                    report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                    report.Watermark.Text = "Cancelled";
                                    report.Watermark.TextTransparency = 90;
                                    report.Watermark.ShowBehind = !_isColorPrint;
                                }
                                break;
                            }
                        }
                        break;
                    case "TW":
                        goto case "CN";
                    #endregion
                    #region TH

                    //case "TH":
                    //    if (cc.Count() == 1)
                    //    {
                    //        foreach (var po in this.Headers)
                    //        {
                    //            widthSpec = po.ItemWidthSpec;
                    //            switch (widthSpec)
                    //            {
                    //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                    //                    report = new MIDcNewformat.TH.poIndividualItemWidthReport(_isPHCopy, _isColorPrint);
                    //                    break;
                    //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                    //                    report = new MIDcNewformat.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                    //                    break;
                    //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                    //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                    //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                    //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                    //                default:
                    //                    report = new MIDcNewformat.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                    //                    break;
                    //            }
                    //            if (po.Flag == "1")// po cancelled
                    //            {
                    //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                    //                report.Watermark.Text = "Cancelled";
                    //                report.Watermark.TextTransparency = 90;
                    //                report.Watermark.ShowBehind = !_isColorPrint;
                    //            }
                    //            break;
                    //        }
                    //    }
                    //    else
                    //    {
                    //        foreach (var po in this.Headers)
                    //        {
                    //            widthSpec = po.ItemWidthSpec;
                    //            switch (widthSpec)
                    //            {
                    //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                    //                    report = new MIDcNewformat.TH.poMultipleItemWidthReport(_isPHCopy, _isColorPrint);
                    //                    break;
                    //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                    //                    report = new MIDcNewformat.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                    //                    break;
                    //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                    //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                    //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                    //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                    //                default:
                    //                    report = new MIDcNewformat.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                    //                    break;
                    //            }
                    //            if (po.Flag == "1")// po cancelled
                    //            {
                    //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                    //                report.Watermark.Text = "Cancelled";
                    //                report.Watermark.TextTransparency = 90;
                    //                report.Watermark.ShowBehind = !_isColorPrint;
                    //            }
                    //            break;
                    //        }
                    //    }
                    //    break;
                    #endregion

                    default:
                        goto case "EN";
                }
                #endregion
            }
            //else
            {
                #region Summary Report

                //switch (langID)
                //{
                //    #region EN

                //    case "EN":
                //        if (cc.Count() == 1)
                //        {
                //            foreach (var po in this.Headers)
                //            {
                //                switch (po.SupplierDimension)
                //                {
                //                    case PODimension.ThreeS:
                //                        report = new MIDcNewformat.Summary.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint);
                //                        break;
                //                    case PODimension.ThreeR:
                //                    case PODimension.Four:
                //                        report = new MIDcNewformat.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                //                        break;
                //                    default:
                //                        goto case PODimension.ThreeS;
                //                }

                //                //widthSpec = po.ItemWidthSpec;
                //                //switch (widthSpec)
                //                //{
                //                //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                //                //        report = new MIDcNewformat.Summary.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                //                //        report = new MIDcNewformat.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //                //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //                //    default:
                //                //        report = new MIDcNewformat.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //}

                //                if (po.Flag == "1")// po cancelled
                //                {
                //                    report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                //                    report.Watermark.Text = "Cancelled";
                //                    report.Watermark.TextTransparency = 90;
                //                    report.Watermark.ShowBehind = !_isColorPrint;
                //                }
                //                break;
                //            }
                //        }
                //        else
                //        {
                //            foreach (var po in this.Headers)
                //            {
                //                switch (po.SupplierDimension)
                //                {
                //                    case PODimension.ThreeS:
                //                        report = new MIDcNewformat.Summary.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint);
                //                        break;
                //                    case PODimension.ThreeR:
                //                    case PODimension.Four:
                //                        report = new MIDcNewformat.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                //                        break;
                //                    default:
                //                        goto case PODimension.ThreeS;
                //                }

                //                //widthSpec = po.ItemWidthSpec;
                //                //switch (widthSpec)
                //                //{
                //                //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                //                //        report = new MIDcNewformat.Summary.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                //                //        report = new MIDcNewformat.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //                //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //                //    default:
                //                //        report = new MIDcNewformat.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //}
                //                if (po.Flag == "1")// po cancelled
                //                {
                //                    report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                //                    report.Watermark.Text = "Cancelled";
                //                    report.Watermark.TextTransparency = 90;
                //                    report.Watermark.ShowBehind = !_isColorPrint;
                //                }
                //                break;
                //            }
                //        }
                //        break;
                //    #endregion
                //    #region CN,TW

                //    case "CN":
                //        if (cc.Count() == 1)
                //        {
                //            foreach (var po in this.Headers)
                //            {
                //                switch (po.SupplierDimension)
                //                {
                //                    case PODimension.ThreeS:
                //                        report = new MIDcNewformat.Summary.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint);
                //                        break;
                //                    case PODimension.ThreeR:
                //                    case PODimension.Four:
                //                        report = new MIDcNewformat.Summary.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                //                        break;
                //                    default:
                //                        goto case PODimension.ThreeS;
                //                }

                //                //widthSpec = po.ItemWidthSpec;
                //                //switch (widthSpec)
                //                //{
                //                //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                //                //        report = new MIDcNewformat.Summary.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                //                //        report = new MIDcNewformat.Summary.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //                //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //                //    default:
                //                //        report = new MIDcNewformat.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //}
                //                if (po.Flag == "1")// po cancelled
                //                {
                //                    report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                //                    report.Watermark.Text = "Cancelled";
                //                    report.Watermark.TextTransparency = 90;
                //                    report.Watermark.ShowBehind = !_isColorPrint;
                //                }
                //                break;
                //            }
                //        }
                //        else
                //        {
                //            foreach (var po in this.Headers)
                //            {
                //                switch (po.SupplierDimension)
                //                {
                //                    case PODimension.ThreeS:
                //                        report = new MIDcNewformat.Summary.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint);
                //                        break;
                //                    case PODimension.ThreeR:
                //                    case PODimension.Four:
                //                        report = new MIDcNewformat.Summary.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                //                        break;
                //                    default:
                //                        goto case PODimension.ThreeS;
                //                }

                //                //widthSpec = po.ItemWidthSpec;
                //                //switch (widthSpec)
                //                //{
                //                //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                //                //        report = new MIDcNewformat.Summary.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                //                //        report = new MIDcNewformat.Summary.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //                //    case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //                //    case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                //                //        goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //                //    default:
                //                //        report = new MIDcNewformat.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                //                //        break;
                //                //}
                //                if (po.Flag == "1")// po cancelled
                //                {
                //                    report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                //                    report.Watermark.Text = "Cancelled";
                //                    report.Watermark.TextTransparency = 90;
                //                    report.Watermark.ShowBehind = !_isColorPrint;
                //                }
                //                break;
                //            }
                //        }
                //        break;
                //    case "TW":
                //        goto case "CN";
                //    #endregion
                //    #region TH

                //    //case "TH":
                //    //    if (cc.Count() == 1)
                //    //    {
                //    //        foreach (var po in this.Headers)
                //    //        {
                //    //            widthSpec = po.ItemWidthSpec;
                //    //            switch (widthSpec)
                //    //            {
                //    //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                //    //                    report = new MIDcNewformat.Summary.TH.poIndividualItemWidthReport(_isPHCopy, _isColorPrint);
                //    //                    break;
                //    //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                //    //                    report = new MIDcNewformat.Summary.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                //    //                    break;
                //    //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                //    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //    //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                //    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //    //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                //    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //    //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                //    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //    //                default:
                //    //                    report = new MIDcNewformat.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint);
                //    //                    break;
                //    //            }
                //    //            if (po.Flag == "1")// po cancelled
                //    //            {
                //    //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                //    //                report.Watermark.Text = "Cancelled";
                //    //                report.Watermark.TextTransparency = 90;
                //    //                report.Watermark.ShowBehind = !_isColorPrint;
                //    //            }
                //    //            break;
                //    //        }
                //    //    }
                //    //    else
                //    //    {
                //    //        foreach (var po in this.Headers)
                //    //        {
                //    //            widthSpec = po.ItemWidthSpec;
                //    //            switch (widthSpec)
                //    //            {
                //    //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                //    //                    report = new MIDcNewformat.Summary.TH.poMultipleItemWidthReport(_isPHCopy, _isColorPrint);
                //    //                    break;
                //    //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                //    //                    report = new MIDcNewformat.Summary.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                //    //                    break;
                //    //                case PH.POPC.BO.SupplierWidthSpec.SizeRange://Spec Item Width
                //    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //    //                case PH.POPC.BO.SupplierWidthSpec.SizeCupRange://Spec Item Width
                //    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth; ;
                //    //                case PH.POPC.BO.SupplierWidthSpec.SolidSize://SolidSize
                //    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //    //                case PH.POPC.BO.SupplierWidthSpec.NotApplyto://Not Apply to Item Width & Item Spec
                //    //                    goto case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth;
                //    //                default:
                //    //                    report = new MIDcNewformat.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint);
                //    //                    break;
                //    //            }
                //    //            if (po.Flag == "1")// po cancelled
                //    //            {
                //    //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                //    //                report.Watermark.Text = "Cancelled";
                //    //                report.Watermark.TextTransparency = 90;
                //    //                report.Watermark.ShowBehind = !_isColorPrint;
                //    //            }
                //    //            break;
                //    //        }
                //    //    }
                //    //    break;
                //    #endregion

                //    default:
                //        goto case "EN";

                //}
                #endregion
            }
            return report;
        }

        void report_AfterPrint(object sender, EventArgs e)
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            var aa = from c in context.POHeaders
                     where (c.POType == (int)PH.POPC.BO.POType.PO && c.Company == this._cono && c.PONO == this._pono)
                     group c by new { c.PONO, c.Company } into newGroup
                     select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };

            var bb = from xx in context.POColorSizeDetails
                     from yy in aa
                     where xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO && (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
                     select xx;

            MIDcNewformat.EN.po4DReport report = new MIDcNewformat.EN.po4DReport();
            report.DataSource = bb;
            report.CreateDocument();

            DevExpress.XtraReports.UI.XtraReport report1 = sender as DevExpress.XtraReports.UI.XtraReport;
            report1.PrintingSystem.ContinuousPageNumbering = true;
            report1.Pages.AddRange(report.Pages);
        }
        private void GetHeaders()
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            var aa = from c in context.POHeaders
                     where (c.POType == (int)PH.POPC.BO.POType.MIDcPO && c.Company == this._cono && c.PONO == this._pono)
                     group c by new { c.PONO, c.Company } into newGroup
                     select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };


            this.Headers = from xx in context.POHeaders
                           from yy in aa
                           where (xx.POType == (int)PH.POPC.BO.POType.MIDcPO) && xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO &&
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
            string lang = Convert.ToString(this.editLanguage.EditValue);
            string s = string.Format("{0};{1};{2};{3};{4};{5};{6}", cono, pono, area, reportType, colorPrint, lang, this.IsDetailReport);//執行數據源時候需要使用的參數
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobNewMIDcPOReport ctl = new JobNewMIDcPOReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editCONO.EditValue = paras[0];
                ctl.editPONO.EditValue = paras[1];
                ctl.textRegion.EditValue = paras[2];
                ctl.editReportType.SelectedIndex = Convert.ToInt32(paras[3]);
                ctl.editPrintColor.EditValue = Convert.ToBoolean(paras[4]);
                ctl.editLanguage.EditValue = paras[5];
                ctl.editDetailSumReport.EditValue = Convert.ToBoolean(paras[6]);
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
