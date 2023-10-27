using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.MonitorOverdueAudit
{
    public partial class ExclueMaterialListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ExclueMaterialListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).ExclueMaterials.OrderBy(p => p.MaterialCategory).ThenBy(p => p.Material);
            this.EditorTypeName = typeof(ExclueMaterialDetailForm).FullName;
        }
    }
}
