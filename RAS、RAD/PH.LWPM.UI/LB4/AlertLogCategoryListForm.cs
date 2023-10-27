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

namespace PH.LWPM.UI.LB4
{
    public partial class AlertLogCategoryListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public AlertLogCategoryListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).AlertLogCategories;
            this.EditorTypeName = typeof(AlertLogCategoryDetailForm).FullName;
        }
    }
}
