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

namespace PH.FabricInspection.UI.Main
{
    public partial class BulkSubmissionListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public BulkSubmissionListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).BulkSubmissions;

            this.EditorTypeName = typeof(BulkSubmissionDetailForm).FullName;
        }
    }
}
