using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LineBalanceII.BO;
using PH.Platform.UI.CS.UI2;
using PH.Platform.Misc.BO;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class McTypeListForm : ListForm
    {
        public McTypeListForm()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            PHPlatformMiscDataContext mdc = PH.Platform.BO.ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            this.DataContext = mdc;
            this.DataSource = from d in mdc.Misc_DataDictionaries where d.DataType == "PH.BondingSpec.Mcnf" || d.DataType == "PH.BondingSpec.Mcyt" select d;
            this.EditorTypeName = typeof(McTypeDetailForm).FullName;
            base.DataBind();
        }

        private void objListGridView_CustomUnboundColumnData(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnDataEventArgs e)
        {
            GridView view = sender as GridView;
            if (e.Column.FieldName == "FType" && e.IsGetData)
                e.Value = getTypeName(view, e.ListSourceRowIndex);
               
        }

        string getTypeName(GridView view, int idx)
        {

            Misc_DataDictionary mdd =view.GetRow(idx) as Misc_DataDictionary;
            string _tname ="";
            if (mdd != null)
                _tname = mdd.DataType == "PH.BondingSpec.Mcnf" ? "粘縫機" : "壓燙機";
            return _tname;

                //GetListSourceRowCellValue(listSourceRowIndex, "UnitPrice"));
        }
    }
}
