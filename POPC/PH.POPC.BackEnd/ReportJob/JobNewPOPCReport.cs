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
    public partial class JobNewPOPCReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        public JobNewPOPCReport()
        {
            InitializeComponent();
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
        bool _isVATPrint;

        public bool IsDetailReport
        {
            get
            {
                return this.editDetailSumReport.SelectedIndex == 0;
            }
        }


        private PH.POPC.BO.POHeader _POHeader;


        public string Supplier
        { get { return this.editSupplier.Text; } }
        public IEnumerable<PH.POPC.BO.POHeader> Headers { get; set; }
        public bool VATPrint
        { get { return this.editVAT.Checked; } }

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
            DevExpress.XtraReports.UI.XtraReport report = new NewReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);

            var cc = (from a in this.Headers
                      from b in a.PODetails
                      select new { b.ItemCode }
                     ).Distinct();
            //string widthSpec;
            string langID = this._langID;// PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            bool isScPO = false;
            bool isDetailReport = false;
            foreach (var item in this.Headers)
            {
                isScPO = item.OrderClass == 4 || item.OrderClass == 8;
                isDetailReport = item.SupplierDimension != PODimension.ThreeS;

                #region Error report
                if (string.IsNullOrEmpty(item.LocationOfSuppFactory))
                {
                    switch (langID)
                    {
                        case "EN":
                            report = new NewReport.EN.poErrorReport(_pono);
                            break;
                        case "CN":
                            report = new NewReport.CN.poErrorReport(_pono);
                            break;
                        case "TW":
                            goto case "CN";
                        //case "TH":
                        //    report = new NewReport.TH.poErrorReport(_pono);
                        //break;
                        default:
                            goto case "EN";
                        //break;
                    }
                    return report;
                }
                else if (!item.MatrixIsOK)
                {
                    report = new NewReport.EN.poMatrixErrorReport(item, _isColorPrint);
                    return report;
                }
                #endregion
            }

            if (!isScPO)
            {
                #region Normal PO

                if (this._isDetailReport)
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

                                    #region PO report

                                    switch (po.SupplierDimension)
                                    {
                                        case PODimension.ThreeS:
                                            report = new NewReport.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new NewReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new NewReport.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new NewReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new NewReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //}

                                    if (po.Flag == "1")// po cancelled
                                    {
                                        report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                        report.Watermark.Text = "Cancelled";
                                        report.Watermark.TextTransparency = 90;
                                        report.Watermark.ShowBehind = !_isColorPrint;
                                    }
                                    #endregion

                                    break;
                                }
                            }
                            else
                            {
                                foreach (var po in this.Headers)
                                {

                                    #region PO report

                                    switch (po.SupplierDimension)
                                    {
                                        case PODimension.ThreeS:
                                            report = new NewReport.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new NewReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new NewReport.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new NewReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new NewReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //}
                                    if (po.Flag == "1")// po cancelled
                                    {
                                        report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                        report.Watermark.Text = "Cancelled";
                                        report.Watermark.TextTransparency = 90;
                                        report.Watermark.ShowBehind = !_isColorPrint;
                                    }
                                    #endregion

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

                                    #region PO report

                                    switch (po.SupplierDimension)
                                    {
                                        case PODimension.ThreeS:
                                            report = new NewReport.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new NewReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new NewReport.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new NewReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new NewReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //}
                                    if (po.Flag == "1")// po cancelled
                                    {
                                        report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                        report.Watermark.Text = "Cancelled";
                                        report.Watermark.TextTransparency = 90;
                                        report.Watermark.ShowBehind = !_isColorPrint;
                                    }
                                    #endregion

                                    break;
                                }
                            }
                            else
                            {
                                foreach (var po in this.Headers)
                                {

                                    #region PO report

                                    switch (po.SupplierDimension)
                                    {
                                        case PODimension.ThreeS:
                                            report = new NewReport.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new NewReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new NewReport.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new NewReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new NewReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //}
                                    if (po.Flag == "1")// po cancelled
                                    {
                                        report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                        report.Watermark.Text = "Cancelled";
                                        report.Watermark.TextTransparency = 90;
                                        report.Watermark.ShowBehind = !_isColorPrint;
                                    }
                                    #endregion

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

                        //            #region PO report

                        //            switch (widthSpec)
                        //            {
                        //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                        //                    report = new NewReport.TH.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                        //                    report = new NewReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new NewReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //            }
                        //            if (po.Flag == "1")// po cancelled
                        //            {
                        //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                        //                report.Watermark.Text = "Cancelled";
                        //                report.Watermark.TextTransparency = 90;
                        //                report.Watermark.ShowBehind = !_isColorPrint;
                        //            }
                        //            #endregion

                        //            break;
                        //        }
                        //    }
                        //    else
                        //    {
                        //        foreach (var po in this.Headers)
                        //        {
                        //            widthSpec = po.ItemWidthSpec;

                        //            #region PO report

                        //            switch (widthSpec)
                        //            {
                        //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                        //                    report = new NewReport.TH.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                        //                    report = new NewReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new NewReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //            }
                        //            if (po.Flag == "1")// po cancelled
                        //            {
                        //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                        //                report.Watermark.Text = "Cancelled";
                        //                report.Watermark.TextTransparency = 90;
                        //                report.Watermark.ShowBehind = !_isColorPrint;
                        //            }
                        //            #endregion

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
                else
                {
                    #region Summary Report

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
                                            report = new NewReport.Summary.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new NewReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new NewReport.Summary.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new NewReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new NewReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                            report = new NewReport.Summary.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new NewReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new NewReport.Summary.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new NewReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new NewReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                            report = new NewReport.Summary.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new NewReport.Summary.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new NewReport.Summary.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new NewReport.Summary.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new NewReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                            report = new NewReport.Summary.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new NewReport.Summary.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new NewReport.Summary.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new NewReport.Summary.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new NewReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new NewReport.Summary.TH.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                        //                    report = new NewReport.Summary.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new NewReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new NewReport.Summary.TH.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                        //                    report = new NewReport.Summary.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new NewReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                #endregion
            }
            else
            {
                #region Sub-Contracting PO

                if (this._isDetailReport)
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
                                    #region PO report

                                    switch (po.SupplierDimension)
                                    {
                                        case PODimension.ThreeS:
                                            report = new SubContractReport.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new SubContractReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new SubContractReport.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new SubContractReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new SubContractReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //}

                                    if (po.Flag == "1")// po cancelled
                                    {
                                        report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                        report.Watermark.Text = "Cancelled";
                                        report.Watermark.TextTransparency = 90;
                                        report.Watermark.ShowBehind = !_isColorPrint;
                                    }
                                    #endregion

                                    break;
                                }
                            }
                            else
                            {
                                foreach (var po in this.Headers)
                                {

                                    #region PO report

                                    switch (po.SupplierDimension)
                                    {
                                        case PODimension.ThreeS:
                                            report = new SubContractReport.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new SubContractReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new SubContractReport.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new SubContractReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new SubContractReport.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //}
                                    if (po.Flag == "1")// po cancelled
                                    {
                                        report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                        report.Watermark.Text = "Cancelled";
                                        report.Watermark.TextTransparency = 90;
                                        report.Watermark.ShowBehind = !_isColorPrint;
                                    }
                                    #endregion

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

                                    #region PO report

                                    switch (po.SupplierDimension)
                                    {
                                        case PODimension.ThreeS:
                                            report = new SubContractReport.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new SubContractReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new SubContractReport.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new SubContractReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new SubContractReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //}
                                    if (po.Flag == "1")// po cancelled
                                    {
                                        report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                        report.Watermark.Text = "Cancelled";
                                        report.Watermark.TextTransparency = 90;
                                        report.Watermark.ShowBehind = !_isColorPrint;
                                    }
                                    #endregion

                                    break;
                                }
                            }
                            else
                            {
                                foreach (var po in this.Headers)
                                {

                                    #region PO report

                                    switch (po.SupplierDimension)
                                    {
                                        case PODimension.ThreeS:
                                            report = new SubContractReport.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new SubContractReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new SubContractReport.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new SubContractReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new SubContractReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //}
                                    if (po.Flag == "1")// po cancelled
                                    {
                                        report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                                        report.Watermark.Text = "Cancelled";
                                        report.Watermark.TextTransparency = 90;
                                        report.Watermark.ShowBehind = !_isColorPrint;
                                    }
                                    #endregion

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

                        //            #region PO report

                        //            switch (widthSpec)
                        //            {
                        //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                        //                    report = new SubContractReport.TH.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                        //                    report = new SubContractReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new SubContractReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //            }
                        //            if (po.Flag == "1")// po cancelled
                        //            {
                        //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                        //                report.Watermark.Text = "Cancelled";
                        //                report.Watermark.TextTransparency = 90;
                        //                report.Watermark.ShowBehind = !_isColorPrint;
                        //            }
                        //            #endregion

                        //            break;
                        //        }
                        //    }
                        //    else
                        //    {
                        //        foreach (var po in this.Headers)
                        //        {
                        //            widthSpec = po.ItemWidthSpec;

                        //            #region PO report

                        //            switch (widthSpec)
                        //            {
                        //                case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                        //                    report = new SubContractReport.TH.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                        //                    report = new SubContractReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new SubContractReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //            }
                        //            if (po.Flag == "1")// po cancelled
                        //            {
                        //                report.Watermark.Font = new System.Drawing.Font("Verdana", 80F);
                        //                report.Watermark.Text = "Cancelled";
                        //                report.Watermark.TextTransparency = 90;
                        //                report.Watermark.ShowBehind = !_isColorPrint;
                        //            }
                        //            #endregion

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
                else
                {
                    #region Summary Report

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
                                            report = new SubContractReport.Summary.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new SubContractReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new SubContractReport.Summary.EN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new SubContractReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new SubContractReport.Summary.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                            report = new SubContractReport.Summary.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new SubContractReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new SubContractReport.Summary.EN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new SubContractReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new SubContractReport.Summary.EN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                            report = new SubContractReport.Summary.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new SubContractReport.Summary.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new SubContractReport.Summary.CN.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new SubContractReport.Summary.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new NewReport.CN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                            report = new SubContractReport.Summary.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        case PODimension.ThreeR:
                                        case PODimension.Four:
                                            report = new SubContractReport.Summary.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                            break;
                                        default:
                                            goto case PODimension.ThreeS;
                                    }

                                    //widthSpec = po.ItemWidthSpec;
                                    //switch (widthSpec)
                                    //{
                                    //    case PH.POPC.BO.SupplierWidthSpec.ItemWidth://Item Width
                                    //        report = new SubContractReport.Summary.CN.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                                    //        break;
                                    //    case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                                    //        report = new SubContractReport.Summary.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                                    //        report = new NewReport.CN.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new SubContractReport.Summary.TH.poIndividualItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                        //                    report = new SubContractReport.Summary.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new NewReport.TH.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new SubContractReport.Summary.TH.poMultipleItemWidthReport(_isPHCopy, _isColorPrint, _isVATPrint);
                        //                    break;
                        //                case PH.POPC.BO.SupplierWidthSpec.TrimBandWidth://Spec Item Width
                        //                    report = new SubContractReport.Summary.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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
                        //                    report = new NewReport.TH.poMultipleSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);
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

            NewReport.EN.po4DReport report = new NewReport.EN.po4DReport();
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
                     where (c.POType == (int)PH.POPC.BO.POType.PO && c.Company == this._cono && c.PONO == this._pono)
                     group c by new { c.PONO, c.Company } into newGroup
                     select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };


            this.Headers = from xx in context.POHeaders
                           from yy in aa
                           where (xx.POType == (int)PH.POPC.BO.POType.PO) && xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO &&
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
            string supp = this.editSupplier.Text;
            string lang = Convert.ToString(this.editLanguage.EditValue);
            bool vatPrint = this.editVAT.Checked;
            string s = string.Format("{0};{1}", supp, lang);//執行數據源時候需要使用的參數
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobNewPOPCReport ctl = new JobNewPOPCReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editSupplier.EditValue = paras[1];
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

            if (string.IsNullOrEmpty(this.Supplier))
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
