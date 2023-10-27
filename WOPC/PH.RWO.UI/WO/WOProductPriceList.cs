using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.DataQuery;
using PH.RWO.BO;

namespace PH.RWO.UI.WO
{
    public partial class WOProductPriceList : PH.Platform.UI.CS.UI2.ListForm
    {

        public decimal CurPrice;
        public string CurSaleorder,CurCurrency;
        public WOProductPriceList()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
          //  context.CommandTimeout = 1000; 
            //this.AllowGridEdit = true;
            //this.AllowAddRow = false;
            this.RowChangeAutoSave = false;

         //   this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(WorkOrder);
            param.WarnRecord = 500;
            //param.FixedWherePart =
            this.StartEnquiry(param);


            //AssignDataToLookupEdit();
            //foreach (DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn item in this.bandedGridView1.Columns)
            //{
            //    item.OptionsColumn.AllowEdit = true;
            //    item.OptionsColumn.ReadOnly = false;

            //}
        }

        protected override void OnClickFind()
        {
         //   HashTable ht = this.QueryParameter.;
            base.OnClickFind();
        }

        private void barUpdatePrice_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            BatchUpdatePrice buf = new BatchUpdatePrice(this);
            buf.RwoCtx = this.DataContext as RWOSOPCDataContext;
            buf.StartPosition = FormStartPosition.CenterParent;
            buf.ShowDialog();

            if (buf.DialogResult == DialogResult.OK)
            {
                UpdatePrice();
            }
            else
            {

                RWOSOPCDataContext ctx = this.DataContext as RWOSOPCDataContext;
                IQueryable<WorkOrder> ss = ctx.WorkOrders.Where(p => p.SalesOrderNo == this.CurSaleorder);
                this.BindingSource.DataSource = ss;
            }
        }

        private void UpdatePrice()
        {

            RWOSOPCDataContext ctx =this.DataContext as RWOSOPCDataContext;
            IQueryable<WorkOrder> ss = ctx.WorkOrders.Where(p => p.SalesOrderNo == this.CurSaleorder);
            foreach (var wo in ss)
            {
                wo.ProductPrice = CurPrice;
                wo.Currency = CurCurrency;
            }
            ctx.SubmitChanges();
            this.BindingSource.DataSource = ss;

        }
    }
}
