using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;
using PH.Platform.Misc.BO;
using PH.Platform.UI.CS.UI2;

namespace PH.MIDc.UI
{
    public partial class ElementList : ListForm
    {
        public ElementList()
        {
            InitializeComponent();
        }



        public override void DataBind()
        {
            PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            this.DataContext = context;
            // this.BindingSource.DataSource = from c in context.Misc_DataDictionaries.Where(p=>p.DataType=="");
            this.BindingSource.DataSource = context.Misc_DataDictionaries.Where(p => p.DataType == "PH.MIDc.MaterialElement").OrderBy(p => p.SortID);
            this.EditorTypeName = typeof(ElementDetail).FullName;
            base.DataBind();
        }

    }

}
