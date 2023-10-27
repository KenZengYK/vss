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
using DevExpress.XtraBars;

namespace PH.FabricInspection.UI.MasterDB
{
    public partial class CrossCupGroupListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CrossCupGroupListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            BindingSource.DataSource = (DataContext as FabricInspectionDataContext).CrossCupGroups;

            this.EditorTypeName = typeof(CrossCupGroupDetailForm).FullName;
        }

    }
}
