using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.POPC.BO;
namespace PH.POPC.UI
{
    public partial class POFormatListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POFormatListForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(POFormatDetailForm).FullName;
            POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = context.POFormats;
        }
    }
}
