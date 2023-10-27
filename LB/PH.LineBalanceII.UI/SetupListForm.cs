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

namespace PH.LineBalanceII.UI
{
    public partial class SetupListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public string DataType;
        public SetupListForm()
        {
            InitializeComponent();
        }

        public SetupListForm(string ADataType)
            : this()
        {
            DataType = ADataType;
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            this.BindingSource.DataSource = (this.DataContext as PHPlatformMiscDataContext).Misc_DataDictionaries.Where(p => p.DataType == DataType).OrderBy(p => p.SortID);

            this.EditorTypeName = typeof(SetupDetailForm).FullName;
        }
    }
}
