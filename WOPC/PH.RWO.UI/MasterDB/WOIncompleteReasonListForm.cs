using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.Platform.Misc.BO;

namespace PH.RWO.UI.MasterDB
{
    public partial class WOIncompleteReasonListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public WOIncompleteReasonListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            DataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var lists = (DataContext as PHPlatformMiscDataContext).Misc_DataDictionaries.Where(p => p.DataType == "PH.WO.IncompleteWOReason").OrderBy(p => p.SortID);
            BindingSource.DataSource = lists;

            EditorTypeName = typeof(WOIncompleteReasonDetailForm).FullName;

        }
    }
}
