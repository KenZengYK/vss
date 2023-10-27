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
    public partial class POSKUColorStdListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POSKUColorStdListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(POSKUColorStdDetailForm).FullName;
            this.repType.Items.Clear();
            this.repType.Items.Add(PH.POPC.BO.Common.ColorStd);


        }

        private PH.POPC.BO.POColorSizeDetail _PUR;
        private bool IsSigleFormMode = false;
        private DevExpress.XtraTab.XtraTabPage _parentPage;
        private IEnumerable<PH.POPC.BO.POSKUOperate> _lists;
        private PH.POPC.UI.POInfo _poinfo;

       
        public POSKUColorStdListForm(object pur, DevExpress.XtraTab.XtraTabPage parentPage, PH.POPC.UI.POInfo poinfo)
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

            _lists = this._PUR.POSKUOperates;//不能再var了, 否则两个集合不一样, 保存不了
           

            ////context.CommandTimeout = 1000;
            ////this.DataContext = context;
            ////_lists = (from c in context.POSKUOperates
            ////          where c.Company == company
            ////          && c.PONO == pono
            ////          && c.AmendmentNo == amendmentNo
            ////          && c.Version == version
            ////          && c.OrderLine == orderLine
            ////          && c.SKU == sku
            ////          && c.HandleType == Common.ColorStd
            ////          select c);

            //foreach (PH.POPC.BO.POSKUOperate item in _lists)
            //{
            //    item.PHQty = qty;
            //}

            this.BindingSource.DataSource = _lists;

            this.objListGridView.ActiveFilterString = string.Format("[HandleType] = '{0}'", PH.POPC.BO.Common.ColorStd);
            this.objListGridView.OptionsCustomization.AllowFilter = false;
            this.objListGridView.OptionsView.ShowFilterPanelMode =  DevExpress.XtraGrid.Views.Base.ShowFilterPanelMode.Never;

            //this._PUR = (PH.POPC.BO.POColorSizeDetail)pur;
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
                //item.Qty = Convert.ToDouble(this._PUR.Qty);
                item.HandleType = PH.POPC.BO.Common.ColorStd;
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
            //PH.POPC.BO.POSKUOperate item = this._lists.Where(p => p.HandleNo == LotNO && p.HandleType == Common.ColorStd).FirstOrDefault();
            this._PUR.ColorStdSeq = null;
            //this._PUR.Col_OpDate = null;
            //if (item != null)
            //{
            //    this._PUR.Co1_Recount = item.HandleNo;
            //    this._PUR.Col_OpDate = item.OperateDate;
            //}
            if (this._PUR.CurrentDataContext != null)
            {
                this._PUR.CurrentDataContext.Refresh(System.Data.Linq.RefreshMode.OverwriteCurrentValues, this._PUR);
            }
            _poinfo.GridView.RefreshRow(_poinfo.GridView.FocusedRowHandle);
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

    }
}
