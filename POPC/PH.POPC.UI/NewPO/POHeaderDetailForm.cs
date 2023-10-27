using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.IO;
using DevExpress.XtraEditors.DXErrorProvider;
using System.Collections;

namespace PH.POPC.UI.NewPO
{
    public partial class POHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        private PH.POPC.BO.POHeader m_POHeader;
        public POHeaderDetailForm()
        {
            InitializeComponent();
        }

        //Xsj110118:初始化驗證控件
        private void InitValidationRules()
        {
            PH.POPC.BO.POHeader currPOHeader = this.BindingSource.Current as PH.POPC.BO.POHeader;
            if (currPOHeader != null && currPOHeader.OrderDate.HasValue && currPOHeader.OrderDate.Value > Convert.ToDateTime("2011-02-01"))
            {
                ConditionValidatonRule rangeValidationRule = new ConditionValidatonRule();
                rangeValidationRule.ConditionOperator = ConditionOperator.IsNotBlank;
                rangeValidationRule.ErrorText = "[Class Code]不能為空,請選擇!";
                this.dxValidationProvider.SetValidationRule(this.imag_ClassCode, rangeValidationRule);
            }
        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            Common.SetFormStatus(this);
            this.butDownLoad.Enabled = true;
            this.butUpload.Enabled = true;
            this.panelControl2.Enabled = true;

        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.locationOfSuppFactoryLookUpEdit.Properties.ReadOnly = false;
            this.endCustCodeTextEdit.Properties.ReadOnly = false;
            this.individualAssociateImageComboBoxEdit.Properties.ReadOnly = false;
            this.MoreBuyerSizeRadioGroup.Properties.ReadOnly = false;
            //this.CBTransitMode2.Properties.ReadOnly = false;
            //Xsj110119:打開ClassCode的編輯功能
            this.imag_ClassCode.Properties.ReadOnly = false;
        }

        public override void DataBind()
        {
            base.DataBind();
            this.m_POHeader = this.BindingSource.Current as PH.POPC.BO.POHeader;
            this.poDetailListForm1.EditorTypeName = typeof(PODetailDetailForm).FullName;
            this.poDetailListForm1.BindingSource.DataSource = this.m_POHeader.PODetails;
            this.poDetailListForm1.AllowGridEdit = false;

            this.poTermListForm1.EditorTypeName = typeof(POTermDetailForm).FullName;
            this.poTermListForm1.BindingSource.DataSource = this.m_POHeader.POTerms;
            this.poTermListForm1.AllowGridEdit = false;

            this.locationOfSuppFactoryLookUpEdit.Properties.ValueMember = "LocationofSuppFactory";
            this.locationOfSuppFactoryLookUpEdit.Properties.DisplayMember = "FactoryDesc";
            this.locationOfSuppFactoryLookUpEdit.Properties.DataSource = PH.POPC.BO.DataAccess.GetSuppFactory(this.m_POHeader.Supplier, this.m_POHeader.Factory, this.m_POHeader.OrderDate.Value);

            InitComb(this.comb_Currency);
            InitComb(this.comb_PaymentTerms, "PH.MIDc.PaymentTerms");
            //InitComb(this.comb_ShipMode, "PH.MIDc.ShipMode");

            InitComb(this.comb_DeliveryTerm, "PH.MIDc.DeliveryTerms");

            InitComb(this.comb_PaymentMethod, "PH.POPC.PaymentMethod");
            InitComb(this.comb_DeliveryAddress, "PH.POPC.DeliveryAddress");
            InitComb(this.comb_PHAttnPerson, "PH.POPC.PHAttnPerson", "Description");
            InitTerms();
            SupplierData();
            var pdf = this.GetPDF();
            this.checkEdit1.Checked = pdf == null ? false : true;

            if ((this.PrevForm as PH.POPC.UI.NewPO.POHeaderListForm) != null && (this.PrevForm as PH.POPC.UI.NewPO.POHeaderListForm).m_POInfo != null)
            {
                this.OnClickEdit();
            }

            //Xsj110118:初始化ClassCode選擇項
            InitImageComb(this.imag_ClassCode, "PH.POPC.ClassCode");
            InitValidationRules();
        }
        /// <summary>
        /// 初始化供应商数据源
        /// </summary>
        private void SupplierData()
        {
            if (DesignMode) return;
            this.Cursor = Cursors.WaitCursor;
            PH.BasicInfo.BO.BasicInfoDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
            IQueryable<PH.BasicInfo.BO.SupplierProfile> items;
            items = (from cc in context.SupplierProfiles
                     where cc.ERPSupplier != string.Empty
                     && cc.ERPSupplier != null
                     //  && (cc.Active == "Y2"  || cc.Active=="Y1")
                     select cc).OrderBy(aa => aa.ERPSupplier);
            this.look_Supplier.Properties.ValueMember = "ERPSupplier";
            this.look_Supplier.Properties.DisplayMember = "ERPSupplier";
            this.look_Supplier.Properties.DataSource = null;
            this.look_Supplier.Properties.DataSource = items;
            this.Cursor = Cursors.Default;
        }
        protected override void OnClickSaveAndReturn()
        {

            base.OnClickSaveAndReturn();
            this.CloseTabPage();


        }
        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            this.CloseTabPage();
        }

        private void CloseTabPage()
        {
            POHeaderListForm Form = this.PrevForm as PH.POPC.UI.NewPO.POHeaderListForm;
            if (Form != null && Form.m_POInfo != null)
            {  
                foreach (PH.POPC.BO.View_POPC_PUR item in Form.m_POInfo.POPCView)
                {
                    if (item.Company == this.m_POHeader.Company && item.PONO == this.m_POHeader.PONO)
                    {
                        item.LocationOfSuppFactory = this.m_POHeader.LocationOfSuppFactoryDesc;
                        item.Incoterms = this.m_POHeader.Incoterms;
                        item.EndCustCode = this.m_POHeader.EndCustCode;
                        item.TransitPoint = this.m_POHeader.TransitPoint;
                        item.EndPoint = this.m_POHeader.EndPoint;
                        item.EndPointAddress = this.m_POHeader.EndPointAddress;
                        item.TransitFrame = this.m_POHeader.TransitFrame;
                        item.IndividualAssociate = this.m_POHeader.IndividualAssociate;
                        item.Email = this.m_POHeader.Email;
                        item.ClassCode = this.m_POHeader.ClassCode;
                    } 
                } 
                Form.m_POInfo.Grid.MainView.RefreshData();
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, Form.m_POInfo.POPCPage);
            }
        }

        private void InitComb(DevExpress.XtraEditors.ComboBoxEdit cmb, string where, string FldName)
        {
            if (DesignMode) return;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            string sql = string.Format("select distinct {1} from [PH.Platform.Misc]..Misc_DataDictionary where DataType='{0}'", where, FldName);
            var result = context.ExecuteQuery<string>(sql).ToList();
            cmb.Properties.Items.Clear();
            if (result.Count > 0)
            {
                foreach (string item in result)
                {
                    if (string.IsNullOrEmpty(item) == false)
                        cmb.Properties.Items.Add(item);
                }
            }
        }
        private void InitComb(DevExpress.XtraEditors.ComboBoxEdit cmb, string where)
        {
            if (DesignMode) return;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            string sql = string.Format("select distinct DataCode from [PH.Platform.Misc]..Misc_DataDictionary where DataType='{0}'", where);
            var result = context.ExecuteQuery<string>(sql);
            cmb.Properties.Items.Clear();
            foreach (string item in result)
            {
                cmb.Properties.Items.Add(item);
            }
        }


        /// <summary>
        /// Xsj110118:用數據字典初始化ImageComboBoxEdit
        /// </summary>
        /// <param name="imageComb">ImageComboBoxEdit實例</param>
        /// <param name="dataType">數據字典的dataType</param>
        private void InitImageComb(DevExpress.XtraEditors.ImageComboBoxEdit imageComb, string dataType)
        {
            if (DesignMode) return;
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            context.CommandTimeout = 1000;
            List<PH.Platform.Misc.BO.Misc_DataDictionary> dataList = context.Misc_DataDictionaries.Where(P => P.DataType == dataType).OrderBy(P => P.DataCode).ToList();
            imageComb.Properties.Items.Clear();

            DevExpress.XtraEditors.Controls.ImageComboBoxItem newImageComboxItem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
            newImageComboxItem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
            newImageComboxItem.Value = null;
            newImageComboxItem.Description = "";
            imageComb.Properties.Items.Add(newImageComboxItem);
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in dataList)
            {
                newImageComboxItem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
                newImageComboxItem.Value = item.DataCode;
                newImageComboxItem.Description = item.Description;
                imageComb.Properties.Items.Add(newImageComboxItem);
            }
        }

        private void InitComb(DevExpress.XtraEditors.ComboBoxEdit cmb)
        {
            //if (DesignMode) return;
            //PH.BasicInfo.BO.BasicInfoDataContext context = new PH.BasicInfo.BO.BasicInfoDataContext();
            //var _currencyitems = from aa in context.Currencies select aa;
            //cmb.Properties.Items.Clear(); 
            //foreach (var item in _currencyitems)
            //{
            //    cmb.Properties.Items.Add(item.Currency);
            //}
        }
        private string TemplateKey = "PH.POPC";
        private void InitTerms()
        {
            if (DesignMode) return;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            List<PH.POPC.BO.Term> ts = (from cc in context.Terms where cc.LanguageCode == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID select cc).ToList<PH.POPC.BO.Term>();

            string s = "";
            int i = 0;
            foreach (PH.POPC.BO.POTerm t in this.m_POHeader.POTerms)
            {
                PH.POPC.BO.Term tt = ts.Find(delegate(PH.POPC.BO.Term t1)
                {
                    return t1.TermCode == t.TermCode;
                });
                if (tt != null)
                {
                    i++;
                    s += string.Format("({0}){1}", i, tt.Remark + "\r\n");
                }
            }
            if (s != "")
            {
                this.m_POHeader.AddtionalTermsAndConditions = s;
            }
        }
        private void InitTerms(PH.POPC.BO.POHeader h)
        {
            //PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LanguageCode
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            List<PH.POPC.BO.Term> ts = (from cc in context.Terms where cc.LanguageCode == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID select cc).ToList<PH.POPC.BO.Term>();
            string s = "";
            int i = 0;
            foreach (PH.POPC.BO.POTerm t in h.POTerms)
            {
                PH.POPC.BO.Term tt = ts.Find(delegate(PH.POPC.BO.Term t1)
                {
                    return t1.TermCode == t.TermCode;
                });
                if (tt != null)
                {

                    i++;
                    s += string.Format("({0}){1}", i, tt.Remark + "\r\n");
                }
            }
            if (h.POType == 1)
            {
                PH.POPC.BO.POERPList list = new PH.POPC.BO.POERPList();
                i++;
                string s1 = list.GetERPTermsConditions(h.Company, h.PONO);
                if (!string.IsNullOrEmpty(s1))
                    s += string.Format("({0}){1}", i, s1);
                //s += list.GetERPTermsConditions(h.Company, h.PONO);
                this.m_POHeader.ERPAmendment = list.GetERPAmendmentNo(h.Company, h.PONO);
            }
            if (s != "")
            {
                h.AddtionalTermsAndConditions = s;
            }
        }
        private void InitTerms(PH.POPC.BO.POHeader h, string Language)
        {

            //PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LanguageCode
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            List<PH.POPC.BO.Term> ts = (from cc in context.Terms where cc.LanguageCode == Language select cc).ToList<PH.POPC.BO.Term>();
            string s = "";
            int i = 0;
            foreach (PH.POPC.BO.POTerm t in h.POTerms)
            {
                PH.POPC.BO.Term tt = ts.Find(delegate(PH.POPC.BO.Term t1)
                {
                    return t1.TermCode == t.TermCode;
                });
                if (tt != null)
                {

                    i++;
                    s += string.Format("({0}){1}", i, tt.Remark + "\r\n");
                }
            }
            if (s != "")
            {
                h.AddtionalTermsAndConditions = s;
            }
        }
        private PH.POPC.BO.POPDF GetPDF()
        {
            if (this.m_POHeader == null) return null;

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            var pdf = (from p in context.POPDFs
                       where p.Company == this.m_POHeader.Company && p.PONO == this.m_POHeader.PONO &&
                       p.Version == this.m_POHeader.Version && p.AmendmentNo == this.m_POHeader.AmendmentNo
                       select p).FirstOrDefault();
            return pdf;
        }

        #region 事件
        /// <summary>
        /// 上传PDF文件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void butUpload_Click(object sender, EventArgs e)
        {
            if (DesignMode) return;
            if (this.IsNew) return;
            if (this.m_POHeader == null) return;

            OpenFileDialog ofd = new OpenFileDialog();
            ofd.FileName = string.Empty;
            ofd.Filter = ByteFile.PdfFileFilter;
            string FileName = string.Empty;
            if (ofd.ShowDialog() != DialogResult.OK) return;

            this.Cursor = Cursors.WaitCursor;
            FileName = ofd.FileName;
            string sql = " delete POPDF where Company={0} and PONO={1} and Version={2} and AmendmentNo={3}";
            sql += " Insert into POPDF (Company,PONO,Version,AmendmentNo,PDF) values ({0},{1},{2},{3},{4}) ";
            object[] oparams = new object[5];
            oparams[0] = this.txtD_Company.Text;
            oparams[1] = this.txtD_PONO.Text;
            //oparams[2] = this.txtD_Version.Text;
            //oparams[3] = this.txtD_AmendmentNo.Text;
            oparams[2] = this.m_POHeader.Version;
            oparams[3] = this.m_POHeader.AmendmentNo;
            oparams[4] = ByteFile.ReadFile(FileName);
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            context.ExecuteCommand(sql, oparams);
            this.checkEdit1.Checked = true;
            this.Cursor = Cursors.Default;
        }
        /// <summary>
        /// 下载PDF文件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void butDownLoad_Click(object sender, EventArgs e)
        {
            if (DesignMode) return;
            SaveFileDialog dlg = new SaveFileDialog();
            dlg.FileName = string.Empty;
            dlg.Filter = ByteFile.PdfFileFilter;
            string FileName = string.Empty;
            if (dlg.ShowDialog() != DialogResult.OK) return;

            FileName = dlg.FileName;
            var pdf = this.GetPDF();
            if (pdf == null) return;
            this.Cursor = Cursors.WaitCursor;
            System.IO.FileStream fs = new FileStream(FileName, FileMode.OpenOrCreate);
            fs.Write(pdf.PDF, 0, pdf.PDF.Length);
            fs.Close();
            this.Cursor = Cursors.Default;
        }
        #endregion
        #region Print
        // StickerPOReport
        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //StickerPOReport report = new StickerPOReport();
            //PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //PH.POPC.BO.POHeader h1 = this.BindingSource.Current as PH.POPC.BO.POHeader;
            //PH.POPC.BO.POHeader h = (from a in context.POHeaders
            //                         where a.Version == h1.Version
            //                         && a.AmendmentNo == h1.AmendmentNo
            //                         && a.Company == h1.Company
            //                         && a.PONO == h1.PONO
            //                         select a).Single() as PH.POPC.BO.POHeader;

            ////h.PRefresh(this.DataContext);
            //InitTerms();
            //if (this.items == null) SupplierData();

            //foreach (PH.POPC.BO.PODetail d in h.PODetails)
            //{
            //    if (d.Photo == null)
            //    {
            //        var photo = (from c in context.V_Photos where c.SupplierReference == d.SupplierReference select c).FirstOrDefault();
            //        if (photo != null)
            //            d.Photo = photo.Photo;
            //    }
            //}

            //List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //list.Add(h);
            //report.DataSource = list;
            //report.ShowPreviewDialog();
        }
        #endregion
        #region Solid


        private PH.POPC.BO.POHeader GetNew()
        {

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            PH.POPC.BO.POHeader cur = this.BindingSource.Current as PH.POPC.BO.POHeader;
            PH.POPC.BO.POHeader h = (from a in context.POHeaders
                                     where a.Company == cur.Company
                                     && a.PONO == cur.PONO
                                     && a.AmendmentNo == cur.AmendmentNo
                                     && a.Version == cur.Version
                                     select a).Single() as PH.POPC.BO.POHeader;
            return h;

        }

        private PH.POPC.BO.POHeader GetNew(string Language)
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            PH.POPC.BO.POHeader cur = this.BindingSource.Current as PH.POPC.BO.POHeader;
            PH.POPC.BO.POHeader h = (from a in context.POHeaders
                                     where a.Company == cur.Company
                                     && a.PONO == cur.PONO
                                     && a.AmendmentNo == cur.AmendmentNo
                                     && a.Version == cur.Version
                                     select a).Single() as PH.POPC.BO.POHeader;
            //InitTerms(h, Language);
            this.InitTerms(h);
            return h;

        }

        //Sum solid en
        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BackEnd.SumSolidReportEn report = new PH.POPC.BackEnd.SumSolidReportEn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            //MemoryStream stream = new MemoryStream();
            //PH.POPC.BackEnd.CreatePDFStream.CreatePDF("SumSolidReportEn", stream, GetNew("EN"));

            //PH.POPC.BO.POHeader header = GetNew("EN");
            //PH.POPC.BackEnd.SumSolidReportEn report = new PH.POPC.BackEnd.SumSolidReportEn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //PH.Platform.Email.BO.SendMail
            //=============================================================================================================================

        }

        //Sum solid cn
        private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {


            //PH.POPC.BackEnd.SumSolidReportCn report = new PH.POPC.BackEnd.SumSolidReportCn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            //MemoryStream stream = new MemoryStream();
            //PH.POPC.BackEnd.CreatePDFStream.CreatePDF("SumSolidReportCn", stream, GetNew("zh - TW"));
            //PH.POPC.BO.POHeader header = GetNew("zh - TW");
            //PH.POPC.BackEnd.SumSolidReportCn report = new PH.POPC.BackEnd.SumSolidReportCn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //solid Detail-Internal-English
        private void barButtonItem4_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BackEnd.DetailSolidInReportEn report = new PH.POPC.BackEnd.DetailSolidInReportEn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            // MemoryStream stream = new MemoryStream();
            // PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailSolidInReportEn", stream, GetNew("EN"));
            //PH.POPC.BO.POHeader header = GetNew("EN");
            //PH.POPC.BackEnd.DetailSolidInReportEn report = new PH.POPC.BackEnd.DetailSolidInReportEn(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //solid Detail-Internal-cn
        private void barButtonItem5_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BackEnd.DetailSolidInReportCn report = new PH.POPC.BackEnd.DetailSolidInReportCn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            //MemoryStream stream = new MemoryStream();
            //PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailSolidInReportCn", stream, GetNew("zh - TW"));
            //PH.POPC.BO.POHeader header = GetNew("zh - TW");
            //PH.POPC.BackEnd.DetailSolidInReportCn report = new PH.POPC.BackEnd.DetailSolidInReportCn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //solid Detail-External-en
        private void barButtonItem6_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BackEnd.DetailSolidExReportEn report = new PH.POPC.BackEnd.DetailSolidExReportEn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            //MemoryStream stream = new MemoryStream();
            //PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailSolidExReportEn", stream, GetNew("EN"));

            //PH.POPC.BO.POHeader header = GetNew("EN");
            //PH.POPC.BackEnd.DetailSolidExReportEn report = new PH.POPC.BackEnd.DetailSolidExReportEn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================


        }

        //solid Detail-External-cn
        private void barButtonItem7_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BackEnd.DetailSolidExReportCn report = new PH.POPC.BackEnd.DetailSolidExReportCn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================

            //PH.POPC.BO.POHeader header = GetNew("zh - TW");
            //PH.POPC.BackEnd.DetailSolidExReportCn report = new PH.POPC.BackEnd.DetailSolidExReportCn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);

            //=============================================================================================================================

        }

        #endregion
        #region Assorted

        //assorted sum-en
        private void barButtonItem8_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            //this.InitTerms(h, "EN");
            this.InitTerms(h);
            //PH.POPC.BackEnd.SumAssortedReportEn report = new PH.POPC.BackEnd.SumAssortedReportEn(h);
            ////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            ////list.Add(h);
            ////report.DataSource = list;
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            //MemoryStream stream = new MemoryStream();
            //PH.POPC.BackEnd.CreatePDFStream.CreatePDF("SumAssortedReportEn", stream, h);

            //POPC.BO.POHeader header = GetNew("EN");
            //PH.POPC.BackEnd.SumAssortedReportEn report = new PH.POPC.BackEnd.SumAssortedReportEn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //assorted sum-cn
        private void barButtonItem9_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            //// this.InitTerms(h, "zh-TW");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.SumAssortedReportCn report = new PH.POPC.BackEnd.SumAssortedReportCn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("SumAssortedReportCn", stream, h);

            //PH.POPC.BackEnd.SumAssortedReportCn report = new PH.POPC.BackEnd.SumAssortedReportCn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //assorted In detail-en
        private void barButtonItem10_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            ////this.InitTerms(h, "EN");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.DetailAssortedInReportEn report = new PH.POPC.BackEnd.DetailAssortedInReportEn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailAssortedInReportEn", stream, h);
            //PH.POPC.BackEnd.DetailAssortedInReportEn report = new PH.POPC.BackEnd.DetailAssortedInReportEn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }


        //assorted In detail-cn
        private void barButtonItem11_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            ////this.InitTerms(h, "zh-TW");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.DetailAssortedInReportCn report = new PH.POPC.BackEnd.DetailAssortedInReportCn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailAssortedInReportCn", stream, h);
            //PH.POPC.BackEnd.DetailAssortedInReportCn report = new PH.POPC.BackEnd.DetailAssortedInReportCn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }
        //assorted ex detail-en
        private void barButtonItem12_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            ////this.InitTerms(h, "EN");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.DetailAssortedExReportEn report = new PH.POPC.BackEnd.DetailAssortedExReportEn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailAssortedExReportEn", stream, h);
            //PH.POPC.BackEnd.DetailAssortedExReportEn report = new PH.POPC.BackEnd.DetailAssortedExReportEn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //assorted ex detail-cn
        private void barButtonItem13_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            //// this.InitTerms(h, "zh-TW");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.DetailAssortedExReportCn report = new PH.POPC.BackEnd.DetailAssortedExReportCn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailAssortedExReportCn", stream, h);

            //PH.POPC.BackEnd.DetailAssortedExReportCn report = new PH.POPC.BackEnd.DetailAssortedExReportCn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }


        #endregion

        private void endPointLabel_Click(object sender, EventArgs e)
        {

        }

        private void look_Supplier_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            //SetSupplierValue(e.Value.ToString());
        }

        private void SetSupplierValue(string ErpSupplier)
        {
            //if (DesignMode) return;
            //if (string.IsNullOrEmpty(ErpSupplier)) return;
            //PH.BasicInfo.BO.SupplierProfile sup = items.First<PH.BasicInfo.BO.SupplierProfile>(p => p.ERPSupplier == ErpSupplier);
            //if (sup == null) return;
            //this._POHeader.SetSupplierOtherValue(sup);
            //comb_Currency_SelectedValueChanged(null, null);
        }




    }
}
