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

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class TradeMethodListFormBAK : PH.Platform.UI.CS.UI2.ListForm
    {
        public TradeMethodListFormBAK()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            DataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            this.BindingSource.DataSource = (DataContext as PHPlatformMiscDataContext).Misc_DataDictionaries
                .Where(p => p.DataType == "PH.BasicInfo.TradeMethod").OrderBy(p => p.DataCode);

            this.EditorTypeName = typeof(TradeMethodDetailFormBAK).FullName;
        }
    }
}
