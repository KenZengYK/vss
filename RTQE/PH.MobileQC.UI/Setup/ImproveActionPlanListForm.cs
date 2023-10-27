using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Setup
{
    public partial class ImproveActionPlanListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ImproveActionPlanListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();

            this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).QC_ImproveActionPlans.OrderBy(p => p.SeqNo);
            this.EditorTypeName = typeof(ImproveActionPlanDetailForm).FullName;
        }
    }
}
