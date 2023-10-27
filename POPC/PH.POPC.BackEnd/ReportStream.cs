using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using PH.POPC.BO;

namespace PH.POPC.BackEnd
{
    public enum PopcReportType
    {
        DetailAssortedExReportCn = 0,
        DetailAssortedExReportEn = 1,
        DetailAssortedInReportCn = 2,
        DetailAssortedInReportEn = 3,
        DetailSolidExReportCn = 4,
        DetailSolidExReportEn = 5,
        DetailSolidInReportCn = 6,
        DetailSolidInReportEn = 7,
        SumAssortedReportCn = 8,
        SumAssortedReportEn = 9,
        SumSolidReportCn = 10,
        SumSolidReportEn = 11
    }



    public class ReportStream
    {
        //private string _Company;
        //private string _PONO;
        //private string _Version;
        //private string _AmendmentNo;
        private PH.POPC.BO.POHeader _POHeader;
        private PopcReportType _ReportType;
        private PH.POPC.BO.POPCDataContext _Context;
        private DevExpress.XtraReports.UI.XtraReport _Report;
        private bool _isPHCopy;
        private bool _isColorPrint;
        private bool _isVATPrint;
        //private string _ReportTitleType; //由David加入 2020-01-07

        //Xsj:標識是否是海關PO報表。
        bool _isPrintPOForHS = false;

        public IEnumerable<PH.POPC.BO.POHeader> Headers { get; set; }
        private string _language;
        private void InitDataContext()
        {
            PH.Platform.AuthMgr.BO.LoginManager manager = new PH.Platform.AuthMgr.BO.LoginManager();
            PH.Platform.AuthMgr.BO.Auth_User user;
            //PH.Platform.AuthMgr.BO.LoginUserStatus status = manager.ValidateLogin("pcn", "pcn");
            PH.Platform.AuthMgr.BO.LoginUserStatus status = manager.ValidateLogin("pcn", "pcn", this._language, out user);

            _Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            _Context.CommandTimeout = 1000;

        }

        #region Old Format

        //public ReportStream(string Company, string PONO, int Version, int AmendmentNo, PopcReportType ReportType)
        //{
        //    InitDataContext();
        //    this._POHeader = (from a in _Context.POHeaders
        //                      where a.Company == Company
        //                      && a.PONO == PONO
        //                      && a.AmendmentNo == AmendmentNo
        //                      && a.Version == Version
        //                      select a).SingleOrDefault() as PH.POPC.BO.POHeader;
        //    this._ReportType = ReportType;
        //    Init();
        //}

        //public static Stream CreatePDF(string Company, string PONO, int Version, int AmendmentNo, PopcReportType ReportType)
        //{
        //    ReportStream rs = new ReportStream(Company, PONO, Version, AmendmentNo, ReportType);


        //    return rs.GetStream();

        //}
        //public static Stream CreatePDF(string Company, string PONO, int Version, int AmendmentNo, PopcReportType ReportType, bool saveToDB)
        //{
        //    ReportStream rs = new ReportStream(Company, PONO, Version, AmendmentNo, ReportType);
        //    Stream s = rs.GetStream();

        //    if (saveToDB)
        //    {
        //        rs.Save(s as MemoryStream);
        //    }
        //    return s;
        //}


        //private void Init()
        //{
        //    if (this._POHeader == null) return;
        //    switch (this._ReportType)
        //    {
        //        case PopcReportType.DetailAssortedExReportCn:
        //            InitTerm("zh - TW");
        //            _Report = new PH.POPC.BackEnd.DetailAssortedExReportCn(this._POHeader);
        //            break;
        //        case PopcReportType.DetailAssortedExReportEn:
        //            InitTerm("EN");
        //            _Report = new PH.POPC.BackEnd.DetailAssortedExReportEn(this._POHeader);
        //            break;
        //        case PopcReportType.DetailAssortedInReportCn:
        //            InitTerm("zh - TW");
        //            _Report = new PH.POPC.BackEnd.DetailAssortedInReportCn(this._POHeader);
        //            break;
        //        case PopcReportType.DetailAssortedInReportEn:
        //            InitTerm("EN");
        //            _Report = new PH.POPC.BackEnd.DetailAssortedInReportEn(this._POHeader);
        //            break;
        //        case PopcReportType.DetailSolidExReportCn:
        //            InitTerm("zh - TW");
        //            _Report = new PH.POPC.BackEnd.DetailSolidExReportCn(this._POHeader);
        //            break;
        //        case PopcReportType.DetailSolidExReportEn:
        //            InitTerm("EN");
        //            _Report = new PH.POPC.BackEnd.DetailSolidExReportEn(this._POHeader);
        //            break;
        //        case PopcReportType.DetailSolidInReportCn:
        //            InitTerm("zh - TW");
        //            _Report = new PH.POPC.BackEnd.DetailSolidInReportCn(this._POHeader);
        //            break;
        //        case PopcReportType.DetailSolidInReportEn:
        //            InitTerm("EN");
        //            _Report = new PH.POPC.BackEnd.DetailSolidInReportEn(this._POHeader);
        //            break;
        //        case PopcReportType.SumAssortedReportCn:
        //            InitTerm("zh - TW");
        //            _Report = new PH.POPC.BackEnd.SumAssortedReportCn(this._POHeader);
        //            break;
        //        case PopcReportType.SumAssortedReportEn:
        //            InitTerm("EN");
        //            _Report = new PH.POPC.BackEnd.SumAssortedReportEn(this._POHeader);
        //            break;
        //        case PopcReportType.SumSolidReportCn:
        //            InitTerm("zh - TW");
        //            _Report = new PH.POPC.BackEnd.SumSolidReportCn(this._POHeader);
        //            break;
        //        case PopcReportType.SumSolidReportEn:
        //            InitTerm("EN");
        //            _Report = new PH.POPC.BackEnd.SumSolidReportEn(this._POHeader);
        //            break;
        //    }
        //}
        //private void InitTerm(string LanguageCode)
        //{
        //    LanguageCode = "EN";
        //    List<PH.POPC.BO.Term> ts = (from cc in this._Context.Terms where cc.LanguageCode == LanguageCode select cc).ToList<PH.POPC.BO.Term>();
        //    string s = "";
        //    int i = 0;
        //    foreach (PH.POPC.BO.POTerm item in this._POHeader.POTerms)
        //    {
        //        PH.POPC.BO.Term tt = ts.Find(delegate(PH.POPC.BO.Term t1)
        //        {
        //            return t1.TermCode == item.TermCode;
        //        }
        //        );
        //        if (tt != null)
        //        {

        //            i++;
        //            s += string.Format("({0}){1}", i, tt.Remark + "\r\n");
        //        }
        //    }
        //    if (this._POHeader.POType == 1)
        //    {
        //        PH.POPC.BO.POERPList list = new PH.POPC.BO.POERPList();
        //        //s += list.GetERPTermsConditions(this._POHeader.Company, this._POHeader.PONO);
        //        i++;
        //        string s1 = list.GetERPTermsConditions(this._POHeader.Company, this._POHeader.PONO);
        //        if (!string.IsNullOrEmpty(s1))
        //            s += string.Format("({0}){1}", i, s1);


        //        this._POHeader.ERPAmendment = list.GetERPAmendmentNo(this._POHeader.Company, this._POHeader.PONO);
        //    }

        //    if (s != "")
        //    {
        //        this._POHeader.AddtionalTermsAndConditions = s;
        //    }
        //}

        #endregion


        /// <summary>
        /// 得到报表文件的数据流
        /// </summary>
        /// <returns></returns>
        public Stream GetStream()
        {
            if (this._POHeader == null) return null;
            MemoryStream ms = new MemoryStream();
            this._Report.CreateDocument();
            this._Report.ExportToPdf(ms);
            //this._Report.ShowPreviewDialog();

            return ms;
        }

        #region Save
        /// <summary>
        /// 保存报表文件流到数据库
        /// </summary>
        public void Save()
        {
            try
            {
                if (this._POHeader == null) return;
                using (MemoryStream ms = GetStream() as MemoryStream)
                {
                    if (this._POHeader == null) return;
                    string sql = "if exists (select * from POPDF where Company={0} and PONO={1} and Version={2} and AmendmentNo={3})";
                    sql += "update POPDF set PDF={4} where Company={0} and PONO={1} and Version={2} and AmendmentNo={3}";
                    sql += " else Insert into POPDF (Company,PONO,Version,AmendmentNo,PDF,VersionFlag) values ({0},{1},{2},{3},{4},{5}) ";
                    object[] oparams = new object[6];
                    oparams[0] = _POHeader.Company;
                    oparams[1] = _POHeader.PONO;
                    oparams[2] = _POHeader.Version;
                    oparams[3] = _POHeader.AmendmentNo;
                    oparams[4] = ms.ToArray();
                    oparams[5] = _POHeader.VersionFlag == null ? 0 : 1;
                    _Context.CommandTimeout = 1800;
                    _Context.ExecuteCommand(sql, oparams);
                }
            }
            catch
            { }
        }
        public void Save(MemoryStream ms)
        {

            if (this._POHeader == null) return;
            string sql = "if exists (select * from [PH.POPC].dbo.POPDF where Company={0} and PONO={1} and Version={2} and AmendmentNo={3})";
            sql += "update [PH.POPC].dbo.POPDF set PDF={4} where Company={0} and PONO={1} and Version={2} and AmendmentNo={3}";
            sql += " else Insert into [PH.POPC].dbo.POPDF (Company,PONO,Version,AmendmentNo,PDF,VersionFlag) values ({0},{1},{2},{3},{4},{5}) ";
            object[] oparams = new object[6];
            oparams[0] = _POHeader.Company;
            oparams[1] = _POHeader.PONO;
            oparams[2] = _POHeader.Version;
            oparams[3] = _POHeader.AmendmentNo;
            oparams[4] = ms.ToArray();
            oparams[5] = _POHeader.VersionFlag == null ? 0 : 1;
            _Context.CommandTimeout = 1800;
            _Context.ExecuteCommand(sql, oparams);


        }
        #endregion

        #region New Format
        public ReportStream(string Company, string PONO, int Version, int AmendmentNo)
            : this(Company, PONO, Version, AmendmentNo, "EN", false)
        {
        }
        public ReportStream(string Company, string PONO, int Version, int AmendmentNo, string language, bool phCopy)
            : this(Company, PONO, Version, AmendmentNo, language, phCopy, true)
        {
        }

        public ReportStream(string Company, string PONO, int Version, int AmendmentNo, string language, bool phCopy, bool colorPrint)
        {
            this._language = language;
            this._isPHCopy = phCopy;
            this._isColorPrint = colorPrint;
            this._isVATPrint = false;
            InitDataContext();
            GetHeaders();
            //this._POHeader = (from a in _Context.POHeaders
            //                  where a.Company == Company
            //                  && a.PONO == PONO
            //                  && a.AmendmentNo == AmendmentNo
            //                  && a.Version == Version
            //                  select a).SingleOrDefault() as PH.POPC.BO.POHeader;

            this.Headers = from a in _Context.POHeaders
                           where a.Company == Company
                           && a.PONO == PONO
                           && a.AmendmentNo == AmendmentNo
                           && a.Version == Version
                           select a;
            this._POHeader = this.Headers.SingleOrDefault() as PH.POPC.BO.POHeader;
            InitNew();
        }

        private void InitNew()
        {
            #region No use

            //if (this.Headers == null) return;

            //DevExpress.XtraReports.UI.XtraReport report = new NewReport.EN.poIndividualSpecItemReport(_isPHCopy, _isColorPrint, _isVATPrint);

            //var cc = (from a in this.Headers
            //          from b in a.PODetails
            //          select new { b.ItemCode }
            //         ).Distinct();
            ////string widthSpec;
            //string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();


            //bool isScPO = false;
            //bool isDetailReport = false;

            //#region Error report
            //foreach (var item in this.Headers)
            //{
            //    isScPO = item.OrderClass == 4 || item.OrderClass == 8;
            //    isDetailReport = item.SupplierDimension != PODimension.ThreeS;
            //    //isDetailReport = item.MIDcDimensionDesc != "3Ds";

            //    if (string.IsNullOrEmpty(item.LocationOfSuppFactory))
            //    {
            //        switch (langID)
            //        {
            //            case "EN":
            //                report = new NewReport.EN.poErrorReport(item.PONO);
            //                break;
            //            case "CN":
            //                report = new NewReport.CN.poErrorReport(item.PONO);
            //                break;
            //            case "TW":
            //                goto case "CN";
            //            //case "TH":
            //            //    report = new NewReport.TH.poErrorReport(item.PONO);
            //            //    break;
            //            default:
            //                break;
            //        }

            //        this._Report = report;

            //        return;
            //    }
            //    else if (!item.MatrixIsOK)
            //    {
            //        report = new NewReport.EN.poMatrixErrorReport(item, _isColorPrint);
            //        report.DataSource = this.Headers;
            //        this._Report = report;
            //        return;
            //    }
            //}
            //#endregion

            //if (!isScPO)
            //{
            //    #region Normal PO

            //    if (isDetailReport)
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

            //    if (isDetailReport)
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
            //report.DataSource = this.Headers;
            //this._Report = report;

            #endregion


            if (this.Headers == null) return;

            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();

            bool isScPO = false;
            bool isDometisMarkets = false;
            //bool isDetailReport = false;

            DevExpress.XtraReports.UI.XtraReport report = null;

            foreach (var item in this.Headers)
            {
                isScPO = item.IsScPO;
                isDometisMarkets = item.IsDometisMarkets;
                //isDetailReport = item.SupplierDimension != PODimension.ThreeS;

                #region Error report
                if (string.IsNullOrEmpty(item.LocationOfSuppFactory))
                {
                    report = new PH.POPC.BackEnd.PO.Share.poErrorReport(item.PONO, langID);
                    //return report;
                }
                else if (!item.MatrixIsOK)
                {
                    report = new PH.POPC.BackEnd.PO.Share.poMatrixErrorReport(item, _isColorPrint);
                    //return report;
                }
                #endregion
                else
                    //Xsj20160405:為了實現打印海關PO而注釋掉以下代碼
                    //report = new PH.POPC.BackEnd.PO.POReport(_isPHCopy, _isColorPrint, _isVATPrint, isScPO, langID, isDometisMarkets);
                    report = new PH.POPC.BackEnd.PO.POReport(_isPHCopy, _isColorPrint, _isVATPrint, isScPO, langID, isDometisMarkets, this._isPrintPOForHS, "Dongguan");


            }
            if (report != null)
            {
                report.DataSource = this.Headers;
                this._Report = report;
            }
        }

        public static Stream CreatePDF(string Company, string PONO, int Version, int AmendmentNo)
        {
            return CreatePDF(Company, PONO, Version, AmendmentNo, false);

        }
        public static Stream CreatePDF(string Company, string PONO, int Version, int AmendmentNo, bool saveToDB)
        {
            return CreatePDF(Company, PONO, Version, AmendmentNo, "EN", false, saveToDB);

            //ReportStream rs = new ReportStream(Company, PONO, Version, AmendmentNo);
            //Stream s = rs.GetStream();

            //if (saveToDB)
            //{
            //    rs.Save(s as MemoryStream);
            //}
            //return s;
        }

        public static Stream CreatePDF(string Company, string PONO, int Version, int AmendmentNo, string language, bool phCopy)
        {
            return CreatePDF(Company, PONO, Version, AmendmentNo, language, phCopy, false);

        }
        public static Stream CreatePDF(string Company, string PONO, int Version, int AmendmentNo, string language, bool phCopy, bool saveToDB)
        {
            return CreatePDF(Company, PONO, Version, AmendmentNo, language, phCopy, saveToDB, true);
        }
        public static Stream CreatePDF(string Company, string PONO, int Version, int AmendmentNo, string language, bool phCopy, bool saveToDB, bool colorPrint)
        {
            ReportStream rs = new ReportStream(Company, PONO, Version, AmendmentNo, language, phCopy, colorPrint);
            Stream s = rs.GetStream();

            if (saveToDB)
            {
                rs.Save(s as MemoryStream);
            }
            return s;
        }


        private void GetHeaders()
        {
            //PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //context.CommandTimeout = 1000;

            //var aa = from c in _Context.POHeaders
            //         where (c.POType == (int)PH.POPC.BO.POType.PO && c.Company == this._cono && c.PONO == this._pono)
            //         group c by new { c.PONO, c.Company } into newGroup
            //         select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };

            //this.Headers = from xx in _Context.POHeaders
            //               from yy in aa
            //               where (xx.POType == (int)PH.POPC.BO.POType.PO) && xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO && (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
            //               select xx;
        }
        #endregion
    }

}
