using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Main.ActionLog
{
    public partial class ActionLogSubjectCategoryListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ActionLogSubjectCategoryListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.BindingSource.DataSource = (DataContext as FabricInspectionDataContext).ActionLogSubjectCategories.OrderBy(p => p.SeqNo);
            this.EditorTypeName = typeof(ActionLogSubjectCategoryDetailForm).FullName;
        }
    }
}
