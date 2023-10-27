using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;

namespace PH.LWPM.UI.ActionLog
{
    public partial class ActionLogHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ActionLogHeaderListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            this.BindingSource.DataSource = db.ActionLogHeaders;
            this.EditorTypeName = typeof(ActionLogHeaderDetailForm).FullName;

            base.DataBind();
        }

    }
}
