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

namespace PH.MobileQC.UI.MasterDB
{
    public partial class AuditExamSetupListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public AuditExamSetupListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.BindingSource.DataSource = (DataContext as MobileQCDataContext).AuditExamSetups;
            this.EditorTypeName = typeof(AuditExamSetupDetailForm).FullName;
        }
    }
}
