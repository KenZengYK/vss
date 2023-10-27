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
    public partial class POSKUOperateListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POSKUOperateListForm()
        {
            InitializeComponent();


        }

        private PH.POPC.BO.POColorSizeDetail _PUR;
        private bool IsSigleFormMode = false;
        private DevExpress.XtraTab.XtraTabPage _parentPage;
        private IQueryable<PH.POPC.BO.POSKUOperate> _lists;


        public POSKUOperateListForm(object pur, DevExpress.XtraTab.XtraTabPage parentPage)
            : this()
        {
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

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            _lists = (from c in context.POSKUOperates
                      where c.Company == company
                      && c.PONO == pono
                      && c.AmendmentNo == amendmentNo
                      && c.Version == version
                      && c.OrderLine == orderLine
                      && c.SKU == sku
                      select c);

            //foreach (PH.POPC.BO.POSKUOperate item in _lists)
            //{
            //    item.PHQty = qty;
            //}

            this.BindingSource.DataSource = _lists;
            this._PUR = (PH.POPC.BO.POColorSizeDetail)pur;
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
                item.HandleNo = this.objListGridView.RowCount;

            }
            else
            {
                base.AddNewObject();
            }
        }


        private void SetValue()
        {
            //PH.POPC.BO.POSKUOperate item = this._lists.Where(p => p.HandleNo == 1 && p.HandleType == "Lot").FirstOrDefault();
            //this._PUR.Qty1 = null;
            //this._PUR.FtyDate1 = null;
            //this._PUR.Percent1 = null;
            //this._PUR.Qty2 = null;
            //this._PUR.FtyDate2 = null;
            //this._PUR.Percent2 = null;
            //this._PUR.Qty3 = null;
            //this._PUR.FtyDate3 = null;
            //this._PUR.Percent3 = null;
            //this._PUR.Qty4 = null;
            //this._PUR.FtyDate4 = null;
            //this._PUR.Percent4 = null;

            //if (item != null)
            //{
            //    this._PUR.Qty1 = Convert.ToDouble(item.Qty);
            //    this._PUR.FtyDate1 = item.ReceiveDate;
            //    this._PUR.Percent1 = Convert.ToDouble(item.Percent);
            //}


            //item = this._lists.Where(p => p.HandleNo == 2 && p.HandleType == "Lot").FirstOrDefault();
            //if (item != null)
            //{
            //    this._PUR.Qty2 = Convert.ToDouble(item.Qty);
            //    this._PUR.FtyDate2 = item.ReceiveDate;
            //    this._PUR.Percent2 = Convert.ToDouble(item.Percent);
            //}

            //item = this._lists.Where(p => p.HandleNo == 3 && p.HandleType == "Lot").FirstOrDefault();
            //if (item != null)
            //{
            //    this._PUR.Qty3 = Convert.ToDouble(item.Qty);
            //    this._PUR.FtyDate3 = item.ReceiveDate;
            //    this._PUR.Percent3 = Convert.ToDouble(item.Percent);
            //}

            //item = this._lists.Where(p => p.HandleNo == 4 && p.HandleType == "Lot").FirstOrDefault();
            //if (item != null)
            //{
            //    this._PUR.Qty4 = Convert.ToDouble(item.Qty);
            //    this._PUR.FtyDate4 = item.ReceiveDate;
            //    this._PUR.Percent4 = Convert.ToDouble(item.Percent);
            //}

        }


        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PostGridValue(this.objListGridView);
            this.BindingSource.EndEdit();
            this.DataContext.SubmitChanges();
            SetValue();
            //MessageBox.Show(Common.SaveInfo);
            this.ClosePage(this.TabControls.SelectedTabPage, this._parentPage);
        }

    }
}
