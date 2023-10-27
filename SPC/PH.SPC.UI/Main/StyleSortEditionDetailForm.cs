using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using PH.SPC.BackEnd;
using PH.Platform.BO;

namespace PH.SPC.UI
{
    public partial class StyleSortEditionDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {

        public StyleSortEditionDetailForm()
        {
            InitializeComponent();
        }

        private StyleSortEdition _edition
        {
            get
            {
                return this.BindingSource.Current as StyleSortEdition;
            }
        }

        public override void DataBind()
        {
            base.DataBind();

            styleSizeListForm1.BindingSource.DataSource = _edition.StyleSizes;
            //styleProduceRemarkListForm2.BindingSource.DataSource = _edition.StyleProduceRemarks;

            //delayCauseTextEdit.Properties.Items.Clear();
            //DelayCauseList list = new DelayCauseList();
            //foreach (PH.Platform.Misc.BO.Misc_DataDictionary obj in list.GetAllDelayCause())
            //{
            //    delayCauseTextEdit.Properties.Items.Add(obj.Description);
            //}
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();

            //處理功能權限
            var PendingRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Pending");
            chkIsPendingShow.Visible = PendingRight != null;
        }

        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            this.txtEditionID.Enabled = false;
            this.txtEditionID.Properties.ReadOnly = true;

            this.txtSampleOrderNoShow.Enabled = false;
            this.txtSampleOrderNoShow.Properties.ReadOnly = true;

            this.txtPHStyleNoShow.Enabled = false;
            this.txtPHStyleNoShow.Properties.ReadOnly = true;

            this.txtSampleTypeShow.Enabled = false;
            this.txtSampleTypeShow.Properties.ReadOnly = true;
        }

        private void StyleSortEditionDetailForm_Load(object sender, EventArgs e)
        {
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            // _edition = this.BindingSource.Current as StyleSortEdition;

            //DictionaryList list2 = new DictionaryList();
            //this.sampleTypeLookUpEdit.Properties.DataSource = list2.GetDataDictionaryMutiLang("PH.SPC.StyleSortEdition.Sample");

            //txtActionRemark.Properties.Items.Clear();
            //string SqlStr = "select DataType as Code, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'SampleTypePurpose'";
            //DataTable dtSampleTypePurpose = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtSampleTypePurpose");
            //txtActionRemark.Properties.Items.Clear();
            //foreach (DataRow dr in dtSampleTypePurpose.Rows)
            //{
            //    txtActionRemark.Properties.Items.Add(dr["Code"].ToString());
            //}


        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            StyleSortEdition edition = this.BindingSource.Current as StyleSortEdition;
            if (edition == null) return;

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.SPC.BackEnd.dll";　//當前dll全名
            data.ClassFullName = "PH.SPC.BackEnd.RunWorkNoteReport";//報表全名
            data.JobName = "SPC樣辦制造通知單";//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到

            data.Parameter = Convert.ToString(edition.OID);
            //data.Parameter = string.Format("{0};{1};{2};{3};", edition.SampleOrderID, edition.StyleID, edition.SortID, edition.EditionID);

            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");

            //PH.SPC.BackEnd.WorkNoteReport report = new PH.SPC.BackEnd.WorkNoteReport();
            //List<StyleSortEdition> list = new List<StyleSortEdition>();

            //StyleSortEdition edition = this.BindingSource.Current as StyleSortEdition;
            //SPCDataContext context = this.DataContext as SPCDataContext;
            //var editions = from a in context.StyleSortEditions
            //               where a.SampleOrderID == edition.SampleOrderID && a.ProjectID == edition.ProjectID
            //               && a.StyleID == edition.StyleID && a.SortID == edition.SortID && a.EditionID == edition.EditionID
            //               select a;
            //list = editions.ToList<StyleSortEdition>();
            ////list.Add(edition);
            //report.DataSource = null;
            //report.DataSource = list;

            //report.ShowPreview();
        }

        public int GetMaxEditionID()
        {
            //Int64 = this._edition.StyleSort.StyleSortEditions.Max(a => a.EditionID);
            if (this._edition.StyleSort == null)
            {
                return 1;
            }
            else
            {
                SPCDataContext con = this.DataContext as SPCDataContext;
                //int maxEditionID = this._edition.StyleSort.StyleSortEditions.Max(a => a.EditionID);
                var aa = from a in con.StyleSortEditions
                         where a.SampleOrderID == this._edition.SampleOrderID
                         && a.StyleID == this._edition.StyleID && a.SortID == this._edition.SortID
                         select a;
                int maxEditionID;
                if (aa.ToList().Count == 0) maxEditionID = 0;
                else
                    maxEditionID = aa.Max(a => a.EditionID ?? 0);
                return maxEditionID == 0 ? 1 : maxEditionID + 1;
            }
        }

        private void BeforeSaveProcess()
        {
            this.BindingSource.EndEdit();
            //_edition = this.BindingSource.Current as StyleSortEdition;
            //if (CheckData())
            {

                #region 得到製作順序(版本)號

                //_edition = this.CurBindingSource.Current as StyleSortEdition;
                //if (_edition.EditionID == 0)
                if (this.IsNew)
                {
                    //Int64 editionID = PH.Common.Sequences.Maker.Controller.PHCommonSequenceHelper.GetSequenceNum("PH.OA.SPC.StyleSortEditionID");
                    int id = GetMaxEditionID();

                    //May 要求明年1月份前讓user可以手工輸入版本號
                    int ym = Convert.ToInt32(string.Format("{0:yyyyMM}", DateTime.Now));
                    if (ym < 200902)
                    {
                        InputStyleSortEditon frm = new InputStyleSortEditon(id);
                        if (frm.ShowDialog() == DialogResult.OK)
                        {
                            id = frm.NewVersion;
                        }
                        frm.Dispose();
                        frm = null;
                    }
                    // id++;
                    _edition.EditionID = id;

                    //_edition.EditionID = editionID.ToString();
                    //txtEditionID.Text = _edition.EditionID;
                    this.BindingSource.ResetCurrentItem();
                    //_edition.StyleSort.EditionID = _edition.StyleSort.EditionID;

                    //(this.Parent as PH.Common.UI.ListingControl2).BindingSource.ResetCurrentItem();
                }
                #endregion

                //差異天數
                //_edition.DifferenceDays = Convert.ToInt32(Math.Ceiling((this.txtEditionActualDate.DateTime - this._edition.EditionDueDate).TotalDays));
                //txtDifferenceDays.Text = _edition.DifferenceDays.ToString();

                //同步SPC資料到對應的客戶
                SampleOrder sampleOrder = _edition.StyleSort.Style.SampleOrder;
                Style style = _edition.StyleSort.Style;
                switch (sampleOrder.CustomerID)
                {
                    #region LARD

                    //case "LARD":   // "DVP", "Quotation", "RVS", "SS", "PS"
                    //    {
                    //        switch (_edition.StyleSort.SortID.ToUpper())
                    //        {
                    //            case "DVP":
                    //                style.LARD.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                    //                style.LARD.DvpIssueDate = _edition.EditionDate;// _edition.EditionDate;         //同步發單日期
                    //                style.LARD.DvpDefaultDate = _edition.EditionDueDate;// _edition.EditionDueDate;    //同步預設日期
                    //                style.LARD.DvpCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                    //                break;
                    //            case "QTN":
                    //                style.LARD.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                    //                style.LARD.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                    //                style.LARD.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                    //                style.LARD.QuotationCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                    //                break;
                    //            case "RVS":
                    //                style.LARD.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                    //                style.LARD.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                    //                style.LARD.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                    //                style.LARD.RvsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                    //                break;
                    //            case "SS":
                    //                style.LARD.SsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                    //                style.LARD.SsIssueDate = _edition.EditionDate;         //同步發單日期
                    //                style.LARD.SsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                    //                style.LARD.SsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                    //                break;
                    //            case "PS":
                    //                style.LARD.PsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                    //                style.LARD.PsIssueDate = _edition.EditionDate;         //同步發單日期
                    //                style.LARD.PsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                    //                style.LARD.PsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                    //                break;
                    //            default:
                    //                break;
                    //        }
                    //        //DBController.SPCDB.SubmitChanges();
                    //    }
                    //    break;
                    #endregion

                    #region ETAM

                    case "ETAM": //"DVP", "Quotation", "RVS", "SS", "PS"
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                //case "DVP":
                                //    style.ETAM.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                //    style.ETAM.DvpIssueDate = _edition.EditionDate;         //同步發單日期
                                //    style.ETAM.DvpDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                //    style.ETAM.DvpCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                //    break;
                                //case "QTN":
                                //    style.ETAM.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                //    style.ETAM.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                //    style.ETAM.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                //    style.ETAM.QuotationCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                //    break;
                                //case "RVS":
                                //    style.ETAM.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                //    style.ETAM.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                //    style.ETAM.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                //    style.ETAM.RvsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                //    break;
                                //case "SS":
                                //    style.ETAM.SsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                //    style.ETAM.SsIssueDate = _edition.EditionDate;         //同步發單日期
                                //    style.ETAM.SsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                //    style.ETAM.SsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                //    break;
                                //case "PS":
                                //    style.ETAM.PsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                //    style.ETAM.PsIssueDate = _edition.EditionDate;         //同步發單日期
                                //    style.ETAM.PsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                //    style.ETAM.PsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                //    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion

                    #region TAMA
                    /*
                    case "TAMA": //"CG", "Quotation", "WT", "C/S+GS", "DGS", "PTS" 
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "CG":
                                    style.TAMA.CGSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAMA.CGIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.TAMA.CGDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.TAMA.CGCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.TAMA.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAMA.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.TAMA.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.TAMA.QuotationCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "WT":
                                    style.TAMA.WTSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAMA.WTIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.TAMA.WTDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.TAMA.WTCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "CGS":
                                    style.TAMA.CSGSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAMA.CSGSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.TAMA.CSGSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.TAMA.CSGSCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "DGS":
                                    style.TAMA.DGSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAMA.DGSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.TAMA.DGSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.TAMA.DGSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "PTS":
                                    style.TAMA.PTSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAMA.PTSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.TAMA.PTSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.TAMA.PTSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion
                    #region SALL

                    case "SALL":  //"CG", "Quotation", "Photo", "WT", "Size Set", "PP"
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "FIT"://CG
                                    style.ANFF.CGSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ANFF.CGIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.ANFF.CGDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.ANFF.CGCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.ANFF.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ANFF.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.ANFF.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.ANFF.QuotationCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "PS"://PHOTO
                                    style.ANFF.PhotoSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ANFF.PhotoIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.ANFF.PhotoDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.ANFF.PhotoCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "WT":
                                    style.ANFF.WTSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ANFF.WTIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.ANFF.WTDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.ANFF.WTCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS"://SIZE SET
                                    style.ANFF.SsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ANFF.SsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.ANFF.SsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.ANFF.SsCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "PP":
                                    style.ANFF.PPSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ANFF.PPIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.ANFF.PPDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.ANFF.PPCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion
                    #region HBI


                    case "HBI":  //"CG", "Quotation", "QA", "WT", "SS", "MW", "CBS"
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "CG":
                                    style.HBI.CGSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.HBI.CGIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.HBI.CGDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.HBI.CGCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.HBI.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.HBI.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.HBI.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.HBI.QuotationCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QA":
                                    style.HBI.QASos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.HBI.QAIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.HBI.QADefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.HBI.QACurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "WT":
                                    style.HBI.WTSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.HBI.WTIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.HBI.WTDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.HBI.WTCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS":
                                    style.HBI.SsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.HBI.SsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.HBI.SsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.HBI.SsCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "MW":
                                    style.HBI.MWSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.HBI.MWIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.HBI.MWDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.HBI.MWCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "CBS":
                                    style.HBI.CBSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.HBI.CBSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.HBI.CBSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.HBI.CBSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion
                    #region CMYR


                    case "CMYR":  //"DVP", "RVS", "Quotation", "QA Sample", "Size Set Sample Status"
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "DVP":
                                    style.CMYR.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.CMYR.DvpIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.CMYR.DvpDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.CMYR.DvpCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "RVS":
                                    style.CMYR.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.CMYR.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.CMYR.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.CMYR.RvsCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.CMYR.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.CMYR.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.CMYR.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.CMYR.QuotationCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QA"://QA SAMPLE
                                    style.CMYR.FSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.CMYR.FSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.CMYR.FSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.CMYR.FSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS":
                                    style.CMYR.SSSSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.CMYR.SSSSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.CMYR.SSSSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.CMYR.SSSSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;

                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion
                    #region WARN

                    case "WARN":  //"DVP", "RVS", "Quotation", "Fit Sample", "Size Set Sample Status", "Pre-Production Sample" 
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "DVP":
                                    style.WARN.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.WARN.DvpIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.WARN.DvpDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.WARN.DvpCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "RVS":
                                    style.WARN.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.WARN.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.WARN.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.WARN.RvsCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.WARN.QuotationSos = _edition.EditionID.ToString();// txtEditionID.Text;                     //同步製作順序號
                                    style.WARN.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.WARN.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.WARN.QuotationCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "FIT":
                                    style.WARN.FSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.WARN.FSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.WARN.FSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.WARN.FSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS":
                                    style.WARN.SSSSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.WARN.SSSSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.WARN.SSSSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.WARN.SSSSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;

                                case "PPS"://Pre-Production Sampl
                                    style.WARN.PPSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.WARN.PPSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.WARN.PPSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.WARN.PPSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;

                                default:
                                    break;
                            }
                            // DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion

                    #region SARA - not use

                    //case "SARA":  //"DVP", "RVS", "Quotation", "SL QA Sample", "KB QA Sample", "Size Set Sample"
                    //    {
                    //        switch (_edition.StyleSort.SortID.ToUpper())
                    //        {
                    //            case "DVP":
                    //                style.SARA.DvpSos = _edition.EditionID.ToString();// txtEditionID.Text;                     //同步製作順序號
                    //                style.SARA.DvpIssueDate = _edition.EditionDate;         //同步發單日期
                    //                style.SARA.DvpDefaultDate = _edition.EditionDueDate;    //同步預設日期
                    //                style.SARA.DvpCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                    //                break;
                    //            case "RVS":
                    //                style.SARA.RvsSos = _edition.EditionID.ToString();// txtEditionID.Text;                     //同步製作順序號
                    //                style.SARA.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                    //                style.SARA.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                    //                style.SARA.RvsCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                    //                break;
                    //            case "QUOTATION":
                    //                style.SARA.QuotationSos = _edition.EditionID.ToString();// txtEditionID.Text;                     //同步製作順序號
                    //                style.SARA.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                    //                style.SARA.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                    //                style.SARA.QuotationCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                    //                break;
                    //            case "SL QA SAMPLE":
                    //                style.SARA. FSSos = _edition.EditionID.ToString();// txtEditionID.Text;                     //同步製作順序號
                    //                style.SARA.FSIssueDate = _edition.EditionDate;         //同步發單日期
                    //                style.SARA.FSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                    //                style.SARA.FSCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                    //                break;
                    //            case "KB QA SAMPLE":
                    //                style.SARA.SSSSSos = _edition.EditionID.ToString();// txtEditionID.Text;                     //同步製作順序號
                    //                style.SARA.SSSSIssueDate = _edition.EditionDate;         //同步發單日期
                    //                style.SARA.SSSSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                    //                style.SARA.SSSSCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                    //                break;
                    //                break;
                    //            case "SIZE SET SAMPLE":
                    //                style.SARA.SSSSSos = _edition.EditionID.ToString();// txtEditionID.Text;                     //同步製作順序號
                    //                style.SARA.SSSSIssueDate = _edition.EditionDate;         //同步發單日期
                    //                style.SARA.SSSSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                    //                style.SARA.SSSSCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                    //                break;

                    //            default:
                    //                break;
                    //        }
                    //        DBController.SPCDB.SubmitChanges();
                    //    }
                    //    break;
                    #endregion

                    #region PH

                    case "PH": //"DVP", "Quotation", "RVS", 
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "DVP":
                                    style.PH.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.PH.DvpIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.PH.DvpDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.PH.DvpCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.PH.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.PH.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.PH.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.PH.QuotationCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                //case "RVS":
                                //    style.PH.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                //    style.PH.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                //    style.PH.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                //    style.PH.RvsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                //    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion
                    #region MAST

                    case "MAST":  //"DVP", "RVS", "Quotation", "Fit Sample", "Size Set Sample Status", "Pre-Production Sample" 
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "DVP":
                                    style.MAST.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.MAST.DvpIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.MAST.DvpDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.MAST.DvpCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "RVS":
                                    style.MAST.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.MAST.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.MAST.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.MAST.RvsCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.MAST.QuotationSos = _edition.EditionID.ToString();// txtEditionID.Text;                     //同步製作順序號
                                    style.MAST.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.MAST.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.MAST.QuotationCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "FIT":
                                    style.MAST.FSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.MAST.FSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.MAST.FSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.MAST.FSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS":
                                    style.MAST.SSSSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.MAST.SSSSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.MAST.SSSSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.MAST.SSSSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;

                                case "PPS"://Pre-Production Sampl
                                    style.MAST.PPSSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.MAST.PPSIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.MAST.PPSDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.MAST.PPSCurrentDate = _edition.EditionActualDate;//txtEditionActualDate.DateTime; //同步現況日期
                                    break;

                                default:
                                    break;
                            }
                            // DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion

                    #region CALD

                    case "CALD": //"DVP", "Quotation", "RVS", "SS", "PS"
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "DVP":
                                    style.CALD.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.CALD.DvpIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.CALD.DvpDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.CALD.DvpCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.CALD.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.CALD.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.CALD.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.CALD.QuotationCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "RVS":
                                    style.CALD.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.CALD.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.CALD.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.CALD.RvsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS":
                                    style.CALD.SsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.CALD.SsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.CALD.SsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.CALD.SsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "PS":
                                    style.CALD.PsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.CALD.PsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.CALD.PsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.CALD.PsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion
                    #region DAXO

                    case "DAXO":   // "DVP", "Quotation", "RVS", "SS", "PS"
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "DVP":
                                    style.DAXO.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.DAXO.DvpIssueDate = _edition.EditionDate;// _edition.EditionDate;         //同步發單日期
                                    style.DAXO.DvpDefaultDate = _edition.EditionDueDate;// _edition.EditionDueDate;    //同步預設日期
                                    style.DAXO.DvpCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.DAXO.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.DAXO.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.DAXO.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.DAXO.QuotationCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "RVS":
                                    style.DAXO.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.DAXO.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.DAXO.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.DAXO.RvsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS":
                                    style.DAXO.SsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.DAXO.SsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.DAXO.SsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.DAXO.SsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "PS":
                                    style.DAXO.PsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.DAXO.PsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.DAXO.PsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.DAXO.PsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion
                    #region EMPR

                    case "EMPR":   // "DVP", "Quotation", "RVS", "SS", "PS"
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "DVP":
                                    style.EMPR.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.EMPR.DvpIssueDate = _edition.EditionDate;// _edition.EditionDate;         //同步發單日期
                                    style.EMPR.DvpDefaultDate = _edition.EditionDueDate;// _edition.EditionDueDate;    //同步預設日期
                                    style.EMPR.DvpCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.EMPR.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.EMPR.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.EMPR.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.EMPR.QuotationCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "RVS":
                                    style.EMPR.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.EMPR.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.EMPR.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.EMPR.RvsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS":
                                    style.EMPR.SsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.EMPR.SsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.EMPR.SsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.EMPR.SsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "PS":
                                    style.EMPR.PsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.EMPR.PsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.EMPR.PsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.EMPR.PsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion
                    #region TAIL

                    case "TAIL":   // "DVP", "Quotation", "RVS", "SS", "PS"
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "DVP":
                                    style.TAIL.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAIL.DvpIssueDate = _edition.EditionDate;// _edition.EditionDate;         //同步發單日期
                                    style.TAIL.DvpDefaultDate = _edition.EditionDueDate;// _edition.EditionDueDate;    //同步預設日期
                                    style.TAIL.DvpCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.TAIL.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAIL.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.TAIL.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.TAIL.QuotationCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "RVS":
                                    style.TAIL.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAIL.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.TAIL.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.TAIL.RvsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS":
                                    style.TAIL.SsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAIL.SsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.TAIL.SsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.TAIL.SsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "PS":
                                    style.TAIL.PsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.TAIL.PsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.TAIL.PsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.TAIL.PsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion
                    #region MONO

                    case "MONO":   // "DVP", "Quotation", "RVS", "SS", "PS"
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "DVP":
                                    style.MONO.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.MONO.DvpIssueDate = _edition.EditionDate;// _edition.EditionDate;         //同步發單日期
                                    style.MONO.DvpDefaultDate = _edition.EditionDueDate;// _edition.EditionDueDate;    //同步預設日期
                                    style.MONO.DvpCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.MONO.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.MONO.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.MONO.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.MONO.QuotationCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "RVS":
                                    style.MONO.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.MONO.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.MONO.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.MONO.RvsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS":
                                    style.MONO.SsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.MONO.SsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.MONO.SsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.MONO.SsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "PS":
                                    style.MONO.PsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.MONO.PsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.MONO.PsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.MONO.PsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                    #endregion
                    #region ESSE

                    case "ESSE":   // "DVP", "Quotation", "RVS", "SS", "PS"
                        {
                            switch (_edition.StyleSort.SortID.ToUpper())
                            {
                                case "DVP":
                                    style.ESSE.DvpSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ESSE.DvpIssueDate = _edition.EditionDate;// _edition.EditionDate;         //同步發單日期
                                    style.ESSE.DvpDefaultDate = _edition.EditionDueDate;// _edition.EditionDueDate;    //同步預設日期
                                    style.ESSE.DvpCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "QTN":
                                    style.ESSE.QuotationSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ESSE.QuotationIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.ESSE.QuotationDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.ESSE.QuotationCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "RVS":
                                    style.ESSE.RvsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ESSE.RvsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.ESSE.RvsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.ESSE.RvsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "SS":
                                    style.ESSE.SsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ESSE.SsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.ESSE.SsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.ESSE.SsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                case "PS":
                                    style.ESSE.PsSos = _edition.ShowEditionID;// txtEditionID.Text;                     //同步製作順序號
                                    style.ESSE.PsIssueDate = _edition.EditionDate;         //同步發單日期
                                    style.ESSE.PsDefaultDate = _edition.EditionDueDate;    //同步預設日期
                                    style.ESSE.PsCurrentDate = _edition.EditionActualDate;// txtEditionActualDate.DateTime; //同步現況日期
                                    break;
                                default:
                                    break;
                            }
                            //DBController.SPCDB.SubmitChanges();
                        }
                        break;
                        */
                    #endregion

                }
            }
        }

        private void HandleStyeSizeKeyNullValue()
        {
            //_edition = this.BindingSource.Current as StyleSortEdition;
            if (this.styleSizeListForm1.objListGridView.PostEditor())
            {
                this.styleSizeListForm1.objListGridView.HideEditor();
                this.styleSizeListForm1.objListGridView.UpdateCurrentRow();
            }

        }

        public override void EditCurrent()
        {
            base.EditCurrent();

            if (_edition.EditionDate == DateTime.MinValue)
            {
                DateTime dt = DateTime.Now;
                _edition.EditionDate = dt;
                this._edition.EditionDate = dt;
            }

            if (_edition.EditionDueDate == DateTime.MinValue)
            {
                DateTime dt = DateTime.Now;
                _edition.EditionDueDate = dt;
                this._edition.EditionDueDate = dt;
            }
        }

        protected override void SaveCurrent()
        {
            base.SaveCurrent();
            StyleSortEdition obj = this.BindingSource.Current as StyleSortEdition;
            if (obj != null)
            {
                obj.StyleSort.Style.SampleOrder.ReCalculateTotalInformation();
            }
        }


    }
}
