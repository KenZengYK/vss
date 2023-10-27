using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;
using PH.Platform.BO;

namespace PH.POPC.UI.MasterDB
{
    public partial class Level6CmplLogListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public Level6CmplLogListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            DataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var lists = (DataContext as PHPlatformMiscDataContext).Misc_DataDictionaries.Where(p => p.DataType == "PH.POPC.Level6Status").OrderBy(p => p.DataCode);
            BindingSource.DataSource = lists;

            EditorTypeName = typeof(Level6CmplLogDetailForm).FullName;

        }
    }
}
