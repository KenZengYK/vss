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

namespace PH.MobileQC.UI.FinalAuditPlan
{
    public partial class AQLAuditorListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public AQLAuditorListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            BindingSource.DataSource = (DataContext as MobileQCDataContext).AQLAuditors;
            this.EditorTypeName = typeof(AQLAuditorDetailForm).FullName;
        }


   
    }
}
