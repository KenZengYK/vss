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
    public partial class SupplierCustomerSizeCupListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public SupplierCustomerSizeCupListForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            base.DataBind();
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = context.SupplierCustomerSizeCups;
            this.AllowGridEdit = true;
            
        }
        protected override void OnClickAddNew()
        {
            PH.POPC.UI.NewPO.SelectSizeCup frm = new SelectSizeCup();
            frm.ShowDialog();
            if (frm.DialogResult == DialogResult.OK)
            {
                IEnumerable<PH.POPC.BO.SupplierCustomerSizeCup> list = this.BindingSource.List.Cast<PH.POPC.BO.SupplierCustomerSizeCup>();
                IEnumerable<PH.POPC.BO.SupplierCustomerSizeCup> newlist=frm.SizeCups.Except(list, new comparer());
                foreach (PH.POPC.BO.SupplierCustomerSizeCup item in newlist)
                {
                    this.BindingSource.Add(item);
                }
                this.objListGridControl.RefreshDataSource();
            }
        }

        public class comparer : IEqualityComparer<PH.POPC.BO.SupplierCustomerSizeCup>
        {

            #region IEqualityComparer<SupplierCustomerSizeCup> Members

            public bool Equals(PH.POPC.BO.SupplierCustomerSizeCup x, PH.POPC.BO.SupplierCustomerSizeCup y)
            {
                if (x.Customer == y.Customer &&
                    x.SuppSize == y.SuppSize &&
                    x.SuppCup == y.SuppCup &&
                    x.CustSize == y.CustSize &&
                    x.CustCup == y.CustCup &&
                    x.CustStyleNo==y.CustStyleNo
                    )
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

            public int GetHashCode(PH.POPC.BO.SupplierCustomerSizeCup obj)
            {
             return   (obj.Customer +
                obj.SuppSize +
                obj.SuppCup +
                obj.CustSize +
                obj.CustCup +
                obj.CustStyleNo).GetHashCode();
            }

            #endregion
        }


    }
}
