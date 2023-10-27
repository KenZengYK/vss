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
    public partial class POLadDipNoPOListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POLadDipNoPOListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

            PH.POPC.BO.POPCDataContext context;
            context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();

            context.CommandTimeout = 1000;
            this.DataContext = context;

            var aa = (from c in context.POLadDipNoPOs
                      orderby c.CreateDate
                      select c);

            this.BindingSource.DataSource = aa;

            this.AllowAddRow = true;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = true;
        }

        protected override void BaseListForm_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        {

            //    PH.POPC.BO.POSKUOperate item = this.BindingSource.Current as PH.POPC.BO.POSKUOperate;
            //    item.Company = this._PUR.Company;
            //    item.PONO = this._PUR.PONO;
            //    item.AmendmentNo = this._PUR.AmendmentNo;
            //    item.Version = this._PUR.Version;
            //    item.OrderLine = this._PUR.OrderLine;
            //    item.SKU = this._PUR.SKU;
            //    //item.Qty = Convert.ToDouble(this._PUR.Qty);
            //    item.HandleType = PH.POPC.BO.Common.ColorStd;
            //    item.HandleNo = this.objListGridView.RowCount;
            //    //item.VersionFlag = true;
            //}
            //else
            //{
            //    base.AddNewObject();
            //}
        }

    }
}
