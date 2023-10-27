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

namespace PH.LWPM.UI.PO
{
    public partial class POStatusListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POStatusListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            this.BindingSource.DataSource = db.BaseCodes.Where(p => p.Type == "POStatus");
            this.EditorTypeName = typeof(POStatusDetailForm).FullName;
            base.DataBind();

        }
    }
}
