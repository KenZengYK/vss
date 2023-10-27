using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;
using System.Data.Common;
using System.Data.SqlClient;
using System.Data.Linq;

namespace PH.LWPM.UI.PurchasePlan
{
    public partial class PurchaseProcessForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PurchaseProcessForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            string SqlStr = "select * from PurchaseProcess order by POType, ActualStockInDate, VendorCode, HWType";
            this.BindingSource.DataSource = db.ExecuteQuery<PurchaseProcess>(SqlStr);  // db.LCShipmentDates;

            //this.EditorTypeName = typeof(LCShipmentDateDetailForm).FullName;
            base.DataBind();
        }

        public override void InitFormNavigator()
        {
            base.InitFormNavigator();
            this.barBtnAddNew.Enabled = false;
            this.barBtnDel.Enabled = false;
        }

        private void barBtnGetData_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RAPLQDataContext db = this.DataContext as RAPLQDataContext;
            db.ExecuteCommand("exec GetPurchaseProcessData");
            this.DataBind();
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "ActualStockInDate" && (e.CellValue == null || e.CellValue.ToString() == ""))
            {
                e.Appearance.BackColor = Color.FromArgb(255, 224, 192);
            }
        }
    }
}
