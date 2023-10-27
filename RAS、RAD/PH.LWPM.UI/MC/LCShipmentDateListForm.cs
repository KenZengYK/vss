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

namespace PH.LWPM.UI.MC
{
    public partial class LCShipmentDateListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public LCShipmentDateListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            string SqlStr = "select * from LCShipmentDate order by ActualStockInDate, HWCategoryCode, VendorCode, HWGroupCode, MCType";
            this.BindingSource.DataSource = db.ExecuteQuery<LCShipmentDate>(SqlStr);  // db.LCShipmentDates;

            //this.EditorTypeName = typeof(LCShipmentDateDetailForm).FullName;
            base.DataBind();

            //this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            //this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            //this.objListGridView.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            //this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
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
            db.ExecuteCommand("exec GetLCShipmentDate");
            this.DataBind();
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "ActualStockInDate" && (e.CellValue == null || e.CellValue.ToString() == ""))
            {
                e.Appearance.BackColor = Color.FromArgb(213, 243, 247);

            }
        }
    }
}
