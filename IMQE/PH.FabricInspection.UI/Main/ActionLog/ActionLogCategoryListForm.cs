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

namespace PH.FabricInspection.UI.Main
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
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).ActionLogCategories.OrderBy(p => p.Code);

            this.AllowGridEdit = true;
            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
        }

    }
}
