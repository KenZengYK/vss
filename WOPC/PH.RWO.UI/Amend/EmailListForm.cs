using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.Misc.BO;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.RWO.UI.Amend
{
    public partial class EmailListForm : ListForm
    {
        public EmailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            PHPlatformMiscDataContext mdc = PH.Platform.BO.ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            this.DataContext = mdc;
            this.DataSource = from d in mdc.Misc_DataDictionaries where d.DataType == "RWO.Amend.EmailTo" || d.DataType == "RWO.Amend.EmailCC" select d;
            this.EditorTypeName = typeof(EmailDetail).FullName;
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

            Misc_DataDictionary mdd = view.GetRow(idx) as Misc_DataDictionary;
            string _tname = "";
            if (mdd != null)
                _tname = mdd.DataType == "RWO.Amend.EmailTo" ? "Email To" : "CC";
            return _tname;

            //GetListSourceRowCellValue(listSourceRowIndex, "UnitPrice"));
        }
    }
}
