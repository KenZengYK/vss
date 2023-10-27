using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;
using PH.Platform.BO;

namespace PH.POPC.UI
{
    public partial class POSKUDipSubmitListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POSKUDipSubmitListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(POSKUBulkSubmissionDetailForm).FullName;
            this.repType.Items.Clear();
            this.repType.Items.Add(PH.POPC.BO.Common.DipSubmit);


            PHPlatformMiscDataContext db = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var lists = db.Misc_DataDictionaries.Where(p => p.DataType == "PH.POPC.Status").Select(p => p.DataName).ToList();
            repStatus.Items.Clear();
            repStatus.Items.AddRange(lists);
        }

        private PH.POPC.BO.POColorSizeDetail _PUR;
        private bool IsSigleFormMode = false;
        private DevExpress.XtraTab.XtraTabPage _parentPage;
        private IEnumerable<PH.POPC.BO.POSKUOperate> _lists;
        private PH.POPC.UI.POInfo _poinfo;


        public POSKUDipSubmitListForm(object pur, DevExpress.XtraTab.XtraTabPage parentPage, PH.POPC.UI.POInfo poinfo)
            : this()
        {
            _poinfo = poinfo;
            #region Get infor

            string company = "";
            string pono = "";
            int version = 0;
            int amendmentNo = 0;
            int orderLine = 0;
            string sku = "";
            double? qty = 0;

            if (pur is PH.POPC.BO.View_POPC_PUR)
            {
                PH.POPC.BO.View_POPC_PUR p = (PH.POPC.BO.View_POPC_PUR)pur;
                if (p != null)
                {
                    company = p.Company;
                    pono = p.PONO;
                    version = p.Version;
                    amendmentNo = p.AmendmentNo;
                    orderLine = p.OrderLine;
                    sku = p.SKU;
                    qty = Convert.ToDouble(p.Qty);
                }
            }
            else if (pur is PH.POPC.BO.POColorSizeDetail)
            {
                PH.POPC.BO.POColorSizeDetail p = (PH.POPC.BO.POColorSizeDetail)pur;
                if (p != null)
                {
                    company = p.Company;
                    pono = p.PONO;
                    version = p.Version;
                    amendmentNo = p.AmendmentNo;
                    orderLine = p.OrderLine;
                    sku = p.SKU;
                    qty = Convert.ToDouble(p.Qty);
                }
            }
            #endregion

            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.barButtonItem1.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

            this._PUR = (PH.POPC.BO.POColorSizeDetail)pur;
            PH.POPC.BO.POPCDataContext context;
            if (this._PUR.CurrentDataContext != null)
                context = (PH.POPC.BO.POPCDataContext)this._PUR.CurrentDataContext;
            else
                context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();

            context.CommandTimeout = 1000;
            this.DataContext = context;

            _lists = this._PUR.POSKUOperates;

            //_lists = (from c in context.POSKUOperates
            //          where c.Company == company
            //          && c.PONO == pono
            //          && c.AmendmentNo == amendmentNo
            //          && c.Version == version
            //          && c.OrderLine == orderLine
            //          && c.SKU == sku
            //          && c.HandleType ==Common.BulkSubmission
            //          select c);

            //foreach (PH.POPC.BO.POSKUOperate item in _lists)
            //{
            //    item.PHQty = qty;
            //}

            this.BindingSource.DataSource = _lists;

            this.objListGridView.ActiveFilterString = string.Format("[HandleType] = '{0}'", PH.POPC.BO.Common.DipSubmit);
            this.objListGridView.OptionsCustomization.AllowFilter = false;
            this.objListGridView.OptionsView.ShowFilterPanelMode = DevExpress.XtraGrid.Views.Base.ShowFilterPanelMode.Never;

            this._parentPage = parentPage;
            this.AllowGridEdit = true;
            IsSigleFormMode = true;
        }
        protected override void BaseListForm_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        {
            if (this.IsSigleFormMode)
            {
                PH.POPC.BO.POSKUOperate item = this.BindingSource.Current as PH.POPC.BO.POSKUOperate;
                item.Company = this._PUR.Company;
                item.PONO = this._PUR.PONO;
                item.AmendmentNo = this._PUR.AmendmentNo;
                item.Version = this._PUR.Version;
                item.OrderLine = this._PUR.OrderLine;
                item.SKU = this._PUR.SKU;
                ////item.Qty = Convert.ToDouble(this._PUR.Qty);
                item.HandleType = PH.POPC.BO.Common.DipSubmit;
                item.HandleNo = this.objListGridView.RowCount;
                //item.VersionFlag = true;

            }
            else
            {
                base.AddNewObject();
            }
        }
        private void SetValue()
        {
            //int LotNO = this._lists.Max(p => p.HandleNo);
            //PH.POPC.BO.POSKUOperate item = this._lists.Where(p => p.HandleNo == LotNO && p.HandleType == Common.BulkSubmission).FirstOrDefault();

            //this._PUR.Bul_Recount = null;
            //this._PUR.Bul_OpDate = null;
            //this._PUR.Bul_Status = null;
            //this._PUR.Bul_SubmitNo = null;
            //this._PUR.Bul_ReceiveBulkSampleDate = null;
            //if (item != null)
            //{
            //    this._PUR.Bul_Recount = item.HandleNo;
            //    this._PUR.Bul_OpDate = item.OperateDate;
            //    this._PUR.Bul_Status = item.Status;
            //    this._PUR.Bul_SubmitNo = item.SubmitNo;
            //    this._PUR.Bul_ReceiveBulkSampleDate = item.ReceiveBulkSampleDate;
            //}
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
        private void SetColumnVisible()
        {
            if (_PUR == null) return;

            this.objListGridView.BeginUpdate();
            try
            {
                foreach (DevExpress.XtraGrid.Columns.GridColumn col in this.objListGridView.Columns)
                {
                    col.Visible = false;
                }
                int i = -1;

                switch (_PUR.LadDipOption)
                {
                    case "B"://b) . App by PH at first , then PH send to Cust. App
                        colHandleNo.VisibleIndex = ++i;
                        colSubmitNo.VisibleIndex = ++i;
                        colDropDeadDate.VisibleIndex = ++i;
                        colReceiveDate.VisibleIndex = ++i;
                        //colOperateDate.VisibleIndex = -1;
                        colPHToCustDate.VisibleIndex = ++i;
                        colStatus.VisibleIndex = ++i;
                        //colSuppToCustDate.VisibleIndex = -1;
                        colCustOperateDate.VisibleIndex = ++i;
                        colCustStatus.VisibleIndex = ++i;
                        colHaveColoristComm.VisibleIndex = ++i;
                        colRemark.VisibleIndex = ++i;
                        colHaveCustComm.VisibleIndex = ++i;
                        colCustRemark.VisibleIndex = ++i;
                        break;
                    case "C"://c) . Supp send to Cust. App
                        colHandleNo.VisibleIndex = ++i;
                        colSubmitNo.VisibleIndex = ++i;
                        colDropDeadDate.VisibleIndex = ++i;
                        colSuppToCustDate.VisibleIndex = ++i;
                        colReceiveDate.VisibleIndex = ++i;
                        //colOperateDate.VisibleIndex = ++i;
                        //colStatus.VisibleIndex = ++i;
                        //colPHToCustDate.VisibleIndex = ++i;
                        colCustOperateDate.VisibleIndex = ++i;
                        colCustStatus.VisibleIndex = ++i;
                        colHaveColoristComm.VisibleIndex = ++i;
                        colRemark.VisibleIndex = ++i;
                        colHaveCustComm.VisibleIndex = ++i;
                        colCustRemark.VisibleIndex = ++i;
                        break;
                    case "A"://a) . PH App
                    case "D"://d) . Repeat 
                    default:
                        colHandleNo.VisibleIndex = ++i;
                        colSubmitNo.VisibleIndex = ++i;
                        colDropDeadDate.VisibleIndex = ++i;
                        colReceiveDate.VisibleIndex = ++i;
                        colOperateDate.VisibleIndex = ++i;
                        colStatus.VisibleIndex = ++i;
                        //colPHToCustDate.VisibleIndex = -1;
                        //colSuppToCustDate.VisibleIndex = -1;
                        //colCustOperateDate.VisibleIndex = -1;
                        //colCustStatus.VisibleIndex = -1;
                        colHaveColoristComm.VisibleIndex = ++i;
                        colRemark.VisibleIndex = ++i;
                        colHaveCustComm.VisibleIndex = ++i;
                        colCustRemark.VisibleIndex = ++i;
                        break;
                }

                colHandleNo.Width = 51;
                colDropDeadDate.Width = 87;
                colReceiveDate.Width = 79;
                colOperateDate.Width = 79;
                colStatus.Width = 66;
                colPHToCustDate.Width = 89;
                colSuppToCustDate.Width = 89;
                colCustOperateDate.Width = 71;
                colCustStatus.Width = 66;
                colRemark.Width = 99;
                colCustRemark.Width = 99;
            }
            finally
            {
                this.objListGridView.EndUpdate();
            }
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            SetColumnVisible();
        }
    }
}
