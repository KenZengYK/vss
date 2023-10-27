using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraBars;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using PH.POPC.BO;

namespace PH.POPC.UI.ActionLog
{
    public partial class ActionLogCategoryListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ActionLogCategoryListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<POPCDataContext>();
            this.BindingSource.DataSource = (this.DataContext as POPCDataContext).ActionLogCategories.OrderBy(p => p.Code);

            this.AllowGridEdit = true;
            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
        }

    }
}
