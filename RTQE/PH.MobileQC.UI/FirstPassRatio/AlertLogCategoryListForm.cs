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
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.FirstPassRatio
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
            this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).FirstPass_AlertLogCategories;
            this.EditorTypeName = typeof(AlertLogCategoryDetailForm).FullName;
        }
    }
}
