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

namespace PH.FabricInspection.UI.MasterDB
{
    public partial class ErroCodeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ErroCodeListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            BindingSource.DataSource = (DataContext as FabricInspectionDataContext).ErrorCodes;

            this.EditorTypeName = typeof(ErrorCodeDetailForm).FullName;
        }
    }
}
