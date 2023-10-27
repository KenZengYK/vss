using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PurchasePlan
{
    public partial class PurchasePlanHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public PurchasePlanHeaderDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.purchasePlanDetailListForm1.BindingSource.DataSource = (this.BindingSource.Current as PurchasePlanHeader).PurchasePlanDetails;
        }

        //protected override void OnClickEdit()
        //{
        //    base.OnClickEdit();
        //    this.purchasePlanDetailListForm1.gridPurchasePlanDetail.OptionsBehavior.Editable = true;
        //}

       

    }
}
