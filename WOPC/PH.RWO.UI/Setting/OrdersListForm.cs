using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class OrdersListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        public OrdersListForm()
        {
            InitializeComponent();
            this.DataContext = context;
           // this.EditorTypeName = typeof(OrdersDetailForm).FullName;
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            this.objListGridView.InitNewRow +=new DevExpress.XtraGrid.Views.Grid.InitNewRowEventHandler(objListGridView_InitNewRow);
        }


        protected  void objListGridView_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        {
            //base.BaseListForm_InitNewRow(sender, e);
            (this.BindingSource.Current as PH.RWO.BO.RwoOrder).OrderId = PH.Platform.Misc.BO.AutoNumber.IDMaker.GetFormatSequence("DataOrders", "O", "");
        }

 
        

        private void OrdersListForm_Load(object sender, EventArgs e)
        {
            var orders = from v in context.RwoOrders
                         select v;
            this.DataSource = orders;
        }
    }
}
