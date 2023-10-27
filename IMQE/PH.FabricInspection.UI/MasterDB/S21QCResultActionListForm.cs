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

namespace PH.FabricInspection.UI.MasterDB
{
    public partial class S21QCResultActionListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public S21QCResultActionListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.BindingSource.DataSource = (DataContext as FabricInspectionDataContext).S21QCResultActions.OrderBy(p => p.SeqNo);

            this.EditorTypeName = typeof(S21QCResultActionDetailForm).FullName;
        }

    }
}
