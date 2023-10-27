using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class POTradeMethodListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POTradeMethodListForm()
        {
            InitializeComponent();
        }


        private DevExpress.XtraTab.XtraTabPage _parentPage;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView _parentGridView;
        private PH.POPC.BO.POColorSizeDetail _PUR;
        private IEnumerable<PH.POPC.BO.PODetail> _lists;
        private PH.POPC.UI.POInfo _poinfo;

        public POTradeMethodListForm(object pur, DevExpress.XtraGrid.Views.BandedGrid.BandedGridView parentGridView, DevExpress.XtraTab.XtraTabPage parentPage, PH.POPC.UI.POInfo poinfo)
            : this()
        {

            //Xsj20151009:Add Trade Method LookupEdit
            AssignDataToLookupEdit_TradeMethod();
            //---------------------------

            _poinfo = poinfo;

            #region Get infor

            string company = "";
            string pono = "";
            int version = 0;
            int amendmentNo = 0;
            int orderLine = 0;
            string sku = "";
            double? qty = 0;

            if (pur is PH.POPC.BO.POColorSizeDetail)
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
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

            this._PUR = (PH.POPC.BO.POColorSizeDetail)pur;
            PH.POPC.BO.POPCDataContext context;
            if (this._PUR.CurrentDataContext != null)
                context = (PH.POPC.BO.POPCDataContext)this._PUR.CurrentDataContext;
            else
                context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();

            context.CommandTimeout = 1000;
            this.DataContext = context;

            _lists = context.PODetails.Where(p => p.Company == company && p.PONO == pono && p.Version == version && p.AmendmentNo == amendmentNo);

            this.BindingSource.DataSource = _lists;

            //this.objListGridView.ActiveFilterString = string.Format("[HandleType] = '{0}'", PH.POPC.BO.Common.BulkSubmission);
            this.objListGridView.OptionsCustomization.AllowFilter = false;
            this.objListGridView.OptionsView.ShowFilterPanelMode = DevExpress.XtraGrid.Views.Base.ShowFilterPanelMode.Never;

            this._parentPage = parentPage;
            this._parentGridView = parentGridView;
            this.AllowGridEdit = true; 
        }

        public override void OnClickSave()
        {
            base.OnClickSave();
            for (int i = 0; i < this._parentGridView.RowCount;i++ )
            {
                PH.POPC.BO.POColorSizeDetail bo = this._parentGridView.GetRow(i) as PH.POPC.BO.POColorSizeDetail;
                if (bo != null)
                {
                    bo.TradeMethod = null;
                }
                this._parentGridView.RefreshData();
            }
        }


        //Xsj20151009:Add Trade Method LookupEdit
        private List<PH.Platform.Misc.BO.Misc_DataDictionary> tradeMethodList = new List<PH.Platform.Misc.BO.Misc_DataDictionary>();
        private void AssignDataToLookupEdit_TradeMethod()
        {
            if (tradeMethodList.Count == 0)
            {
                PH.Platform.Misc.BO.PHPlatformMiscDataContext dcont = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
                tradeMethodList = dcont.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TradeMethod").ToList();

            }
            this.repositoryItemGridLookUpEdit_TradeMethod.DataSource = tradeMethodList.Select(p => new { DataCode = p.DataCode, DataName = p.DataName }).ToList();
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

        //--------------------
    }
}
