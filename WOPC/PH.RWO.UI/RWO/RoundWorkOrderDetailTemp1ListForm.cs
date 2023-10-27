using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.Linq;

using PH.RWO.BO;
       
namespace PH.RWO.UI
{
    public partial class RoundWorkOrderDetailTemp1ListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public RoundWorkOrderDetailTemp1ListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(RWO_RoundWorkOrderDetailsDetailForm).FullName;
            
           
        }

        public RoundWorkOrderDetailTemp1ListForm(int roundno,RoundWorkOrderDetailForm form)
        {
            InitializeComponent();
            this.RoundNo = roundno;
            this.RwodForm = form;
           
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.FormState = RwodForm.IsEditting ? PH.Platform.BO.Interface.WorkMode.Edit : PH.Platform.BO.Interface.WorkMode.New;
            for (int index = this.RwodForm.TempSortedList.Count - 1; index >= 0; index--)
            {
                this.RwodForm.TempSortedList.RemoveAt(index);
            }
            this.RwodForm.SetSortedlist(this.RwodForm.xtraTabControl1, this.roundno);

            int i = this.RwodForm.TempSortedList.Count;

            if (this.roundno > 0 && (i + 1 < this.roundno))
            {
                MessageBox.Show(string.Format("Round{0} have not data,Please import it frist!", this.roundno - 1), "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            PH.RWO.BO.RoundWorkOrder rwo = (PH.RWO.BO.RoundWorkOrder)((PH.RWO.UI.RoundWorkOrderDetailForm)(this.Parent.Parent.Parent.Parent)).BindingSource.Current;
            if (rwo.RoundWorkOrderDetails.Count == 0)
            {
                MessageBox.Show("Have no roundorder data to import!Please fill the roundorder data and try again!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            //context.Sp_RWO_ImportDataToTempFromRoundWorkOrderDetail(rwo.Company, rwo.SalesOrderNo, rwo.SalesOrderLine, rwo.WorkOrderNo, rwo.RoundNo, 1);
            if (this.BindingSource.Count > 0)
            {
                MessageBox.Show("The  data existed in Temp1,You can not import data into temp1 again!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            i = 0;
            foreach (RoundWorkOrderDetail rwod in rwo.RoundWorkOrderDetails)
            {
                RoundWorkOrderDetailTemp1 t1 = clone(rwod, i, rwo);
                list.Add(t1);
                this.DataContext.GetTable<RoundWorkOrderDetailTemp1>().InsertOnSubmit(t1);
                i = i + 1;
            }
            this.BindingSource.DataSource = from c in list orderby c.CupOrder,c.SizeOrder select c;
            this.RwodForm.RealRoundNo = this.roundno;
        }
        IList<RoundWorkOrderDetailTemp1> list = new List<RoundWorkOrderDetailTemp1>();
        private RoundWorkOrderDetailTemp1 clone(RoundWorkOrderDetail t,int i,RoundWorkOrder rwo)
        {
            RoundWorkOrderDetailTemp1 t1 = new RoundWorkOrderDetailTemp1();
            t1.Company = t.Company;
            t1.ColorCode = t.ColorCode;
            t1.Cup = t.Cup;
            t1.Size = t.Size;
            t1.SalesOrderNo = t.SalesOrderNo;
            t1.WorkOrderNo = t.WorkOrderNo;
            t1.SalesOrderLine = t.SalesOrderLine;
            t1.Ratio = t.Ratio;
            t1.RoundNo = this.RoundNo;
            t1.CustSize = t.CustSize;

            int sqty, qty;
            if (this.roundno > 1)
            {
                Global.SumQty(rwo, this.RwodForm.TempSortedList, out sqty, out qty, i);
            }
            else
            {
                qty = (int)t.BulkQty;
                sqty = (int)t.SampleQty;
            }

            t1.BulkQty = qty;
            t1.SampleQty = sqty;

            t1.WorkOrderNo = t.WorkOrderNo;
            t1.SalesOrderNo = t.SalesOrderNo;
            return t1;            
        }

        private void barBtnAddNew_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            base.AddNewObject();
        }

        private int roundno;
        public int RoundNo
        {
            get
            {
                return roundno;
            }
            set
            {
                roundno = value;
            }
        }


        private RoundWorkOrderDetailForm RwodForm;
        private void editTotalBulk_EditValueChanged(object sender, EventArgs e)
        {
            int bulkqty = Convert.ToInt32(editTotalBulk.EditValue);
            int packQty = Convert.ToInt32(this.editPackQty.EditValue);
            this.ApplyBulk(bulkqty,packQty);
        }


        private void ApplyBulk(int bulkQty,int packQty)
        {
            RoundWorkOrder rwo = RwodForm.BindingSource.Current as RoundWorkOrder;
            // IEnumerable<RoundWorkOrderDetailTemp1> list = this.BindingSource.DataSource  as IEnumerable<RoundWorkOrderDetailTemp1>;
            foreach (RoundWorkOrderDetailTemp1 rwod in list)
            {
                decimal? bulk = (rwod.Ratio / 100) * bulkQty;
                if (packQty > 0)
                {
                   int b= ((int)bulk) % (int)packQty;
                   int i = (int)(((int)(bulk - b)) / packQty);
                   int a = ((decimal)b / packQty) > (decimal)0.5 ? 1 : 0;
                   bulk = (i + a) * packQty;
                }
                rwod.BulkQty = (int)bulk;
            }


            this.objListGridView.RefreshEditor(true);
            this.objListGridControl.Refresh();
        }


        private void editPackQty_EditValueChanged(object sender, EventArgs e)
        {
            int bulkqty = Convert.ToInt32(editTotalBulk.EditValue);
            int packQty = Convert.ToInt32(this.editPackQty.EditValue);
            this.ApplyBulk(bulkqty, packQty);
        }
    }
}
