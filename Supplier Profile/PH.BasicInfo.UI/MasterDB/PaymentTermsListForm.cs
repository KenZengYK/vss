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

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class PaymentTermsListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PaymentTermsListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            DataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var lists = (DataContext as PHPlatformMiscDataContext).Misc_DataDictionaries.Where(p => p.DataType == "PH.MIDc.PaymentTerms").OrderBy(p => p.SortID);
            BindingSource.DataSource = lists;

            EditorTypeName = typeof(PaymentTermsDetailForm).FullName;

        }
    }
}
