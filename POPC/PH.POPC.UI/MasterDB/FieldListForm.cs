using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.POPC.BO;

namespace PH.POPC.UI.MasterDB
{
    public partial class FieldListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public FieldListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<POPCDataContext>();
            this.BindingSource.DataSource = (DataContext as POPCDataContext).Fields.OrderBy(p => p.SortID);

            this.EditorTypeName = typeof(FieldDetailForm).FullName;
        }
    }
}
