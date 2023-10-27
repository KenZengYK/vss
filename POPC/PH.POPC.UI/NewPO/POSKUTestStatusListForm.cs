using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI.NewPO
{
    public partial class POSKUTestStatusListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POSKUTestStatusListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(POSKUTestStatusDetailForm).FullName;
            this.repType.Items.Clear();
            this.repType.Items.Add(PH.POPC.BO.Common.TestStatus);
            

        }

        private PH.POPC.BO.POColorSizeDetail _PUR;
        private bool IsSigleFormMode = false;
        private DevExpress.XtraTab.XtraTabPage _parentPage;
        private IQueryable<PH.POPC.BO.POSKUOperate> _lists;


        public POSKUTestStatusListForm(object pur, DevExpress.XtraTab.XtraTabPage parentPage)
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
                      && c.HandleType == PH.POPC.BO.Common.TestStatus
                      select c);

            //foreach (PH.POPC.BO.POSKUOperate item in _lists)
            //{
            //    item.PHQty = qty;
            //}

            this.BindingSource.DataSource = _lists;
            this._PUR =(PH.POPC.BO.POColorSizeDetail) pur;
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
                item.HandleType = PH.POPC.BO.Common.TestStatus;

            }
            else
            {
                base.AddNewObject();
            }
        }


        private void SetValue()
        {
            //int LotNO = this._lists.Max(p => p.HandleNo);
            //PH.POPC.BO.POSKUOperate item = this._lists.Where(p => p.HandleNo == LotNO && p.HandleType == Common.TestStatus).FirstOrDefault();
            //this._PUR.Tes_Recount =null;
            //this._PUR.Tes_Opdate = null;
            //this._PUR.Tes_Status = null;
            //if (item != null)
            //{
            //    this._PUR.Tes_Recount = item.HandleNo;
            //    this._PUR.Tes_Opdate = item.OperateDate;
            //    this._PUR.Tes_Status = item.Status;
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
