using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.HDO.BO;
using PH.Platform.UI.CS.UI2;
using PH.Platform.UI.CS.DataQuery;

namespace PH.HDO.UI
{
    public partial class HDOQuantityListFrm : ListForm
    {
        public HDOQuantityListFrm()
        {
            InitializeComponent();
            this.AllowGridEdit = true;
            _firstLoad = false;
        }
        private bool _firstLoad;

        public override void DataBind()
        {
            HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
            Context.CommandTimeout = 60000;
            this.DataContext = Context;

            if (!_firstLoad)
            {
                string sqls = string.Format("exec dbo.[sp_GRNNoHDO_2]   'P1'");
                Context.ExecuteNonQuery(sqls);

                var aa = from a in Context.HDOQuantities
                         where !(a.HDODelivery.GRNStatus ?? false)
                         select a;

                this.BindingSource.DataSource = aa;
                _firstLoad = true;
            }
            //this.EditorTypeName = typeof(HDOInvoiceDetialFrm).FullName;
            base.DataBind();
            this.AllowAddRow = false;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;


            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.HDO.BO.HDOQuantity);
            param.WarnRecord = 1000;
            this.StartEnquiry(param);
        }

        private void objListGridView_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            HDOQuantity q1 = this.objListGridView.GetRow(e.RowHandle1) as HDOQuantity;
            HDOQuantity q2 = this.objListGridView.GetRow(e.RowHandle2) as HDOQuantity;

            switch (e.Column.FieldName)
            {
                case "GRNNO":
                    e.Merge = q1.GRNNO == q2.GRNNO;
                    e.Handled = true;
                    break;
                case "PONO":
                    e.Merge = q1.GRNNO == q2.GRNNO && q1.PONO == q2.PONO;
                    e.Handled = true;
                    break;
                default:
                    break;
            }
        }



    }
}
