using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.POPC.BO;
using PH.Platform.UI.CS.DataQuery;
using PH.Platform.ExtendLibrary;

namespace PH.POPC.UI
{
    public partial class PONotifyListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PONotifyListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(PONotifyDetailForm).FullName;
        }

        private List<PH.POPC.BO.POColorSizeDetail> _purs;
        private bool IsSigleFormMode = false;
        private DevExpress.XtraTab.XtraTabPage _parentPage;
        //private IEnumerable<PH.POPC.BO.PONotify> _lists;
        private PH.POPC.UI.POInfo _poinfo;
        PH.POPC.BO.POPCDataContext context;

        public PONotifyListForm(object purs, DevExpress.XtraTab.XtraTabPage parentPage, PH.POPC.UI.POInfo poinfo)
            : this()
        {
            _poinfo = poinfo;

            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.btnSaveAndReturn.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            //this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.layoutView1.OptionsBehavior.Editable = false;
            this._purs = (List<PH.POPC.BO.POColorSizeDetail>)purs;

            this._parentPage = parentPage;
            //this.AllowGridEdit = true;
            IsSigleFormMode = true;

        }
        public override void DataBind()
        {
            base.DataBind();

            //if (this._purs != null && this._purs.CurrentDataContext != null)
            //    context = (PH.POPC.BO.POPCDataContext)this._purs.CurrentDataContext;
            //else
            context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();

            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(PONotify);
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

            if (IsSigleFormMode)
            {
                //this.AddNewObject();
                //this.barBtnAddNew.PerformClick();
                this.OnClickAddNew();
            }
            else
            {
                #region Enquiry

                //var aa = from a in context.PONotifies
                //         select a;
                //this.BindingSource.DataSource = aa;

                DataQueryParameter result = new DataQueryParameter();
                //result.BeforeQuerySQL = "SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED";
                result.BoType = typeof(PH.POPC.BO.PONotify);
                result.View = this.layoutView1;
                //result.FixedWherePart = GetCondition();
                result.WarnRecord = -1;
                this.StartEnquiry(result);

                #endregion
            }

        }
        protected override void OnClickFind()
        {
            using (POPC.PONotifyEnquiryForm frm = new PH.POPC.UI.POPC.PONotifyEnquiryForm())
            {
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    EnquiryPOPC(frm.Condition);
                }
            }
        }
        private void EnquiryPOPC(PH.POPC.BO.POPCEnquiryCondition condition)
        {

            //this.CreateWaitDialog("Loading data...", "Please waiting");
            try
            {
                context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                context.Connection.Open();
                context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

                this.DataContext = context;

                var cc = from c in context.PONotifies
                         where (string.IsNullOrEmpty(condition.Team) || c.Division == condition.Team)
                         && (!condition.IsInternal.HasValue || condition.IsInternal == c.IsInternal)
                         && (!condition.Classification.HasValue || condition.Classification == c.Classification)
                         && (string.IsNullOrEmpty(condition.Sender) || condition.Senders.Contains(c.Sender))

                         && (condition.IssueDateFrom == DateTime.MinValue ||
                               (c.DT >= condition.IssueDateFrom && c.DT < condition.IssueDateTo.AddDays(1))
                            )

                         && (string.IsNullOrEmpty(condition.PONO) || c.PONotifyPOs.Any(p => condition.PONOs.Contains(p.PONO)))
                         && (string.IsNullOrEmpty(condition.EndCustCode) || c.PONotifyPOs.Any(p => condition.EndCustCodes.Contains(p.EndCustCode)))
                         && (string.IsNullOrEmpty(condition.Supplier) || c.PONotifyPOs.Any(p => condition.Suppliers.Contains(p.Supplier)))
                         && (string.IsNullOrEmpty(condition.ProjectFrom) || c.PONotifyPOs.Any(p => (p.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && p.ProjectNo.CompareTo(condition.ProjectTo) <= 0)))
                         orderby c.DT, c.Sender
                         select c;

                this.BindingSource.DataSource = cc;
            }
            finally
            {
                //ReleaseWaitDialog();
            }

        }


        protected override void BaseListForm_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        {
            if (this.IsSigleFormMode)
            {
                PH.POPC.BO.PONotify item = this.BindingSource.Current as PH.POPC.BO.PONotify;
                item.DT = DateTime.Now;
            }
            else
            {
                base.AddNewObject();
            }
        }
        protected override void AddNewObject()
        {
            base.AddNewObject();

            if (this._purs != null)
            {
                PH.POPC.BO.PONotify item = this.BindingSource.Current as PH.POPC.BO.PONotify;
                item.DT = DateTime.Now;
                item.Sender = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                item.Amendment = 0;
                item.IsInternal = true;
                item.Classification = 1;
                item.POColorSizeDetails = _purs;
            }
        }
        private void SetValue()
        {
            //this._PUR.ColorStdSeq = null;
            //this._PUR.Col_OpDate = null;

            //if (this._PUR.CurrentDataContext != null)
            //{
            //    this._PUR.CurrentDataContext.Refresh(System.Data.Linq.RefreshMode.OverwriteCurrentValues, this._PUR);
            //}
            //_poinfo.GridView.RefreshRow(_poinfo.GridView.FocusedRowHandle);
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PostGridValue(this.objListGridView);
            this.BindingSource.EndEdit();
            this.DataContext.SubmitChanges();
            //SetValue();
            //MessageBox.Show(Common.SaveInfo);
            this.ClosePage(this.TabControls.SelectedTabPage, this._parentPage);
        }

        private void btnNotify_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            NotifyMail();
        }
        private void NotifyMail()
        {
            //PH.POPC.BO.PONotify pur = this.layoutView1.GetRow(this.layoutView1.FocusedRowHandle) as PH.POPC.BO.PONotify;
            PH.POPC.BO.PONotify pur = this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle) as PH.POPC.BO.PONotify;
            if (pur == null) return;

            PH.POPC.BO.POPCDataContext context = (PH.POPC.BO.POPCDataContext)this.DataContext;
            PH.POPC.BO.PONotify pur1 = (from a in context.PONotifies
                                        where a.DT == pur.DT
                                        select a).FirstOrDefault();
            if (pur1 == null) return;
            pur1.CurrentDataContext = context;
                        
            Notify.NotifyForm frm = new Notify.NotifyForm(pur1);
            frm.ShowDialog();
        }

        private void btnNotepadReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BackEnd.POPCNewformat.NotepadReport rpt = new PH.POPC.BackEnd.POPCNewformat.NotepadReport();
            rpt.DataSource = this.objListGridView.FilteredList();
            rpt.ShowPreviewDialog();
        }


    }
}
