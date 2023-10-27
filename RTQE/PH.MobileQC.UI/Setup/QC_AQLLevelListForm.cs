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
    public partial class QC_AQLLevelListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public QC_AQLLevelListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).QC_AQLLevels;

            this.EditorTypeName = typeof(QC_AQLLevelDetailForm).FullName;
        }
    }
}
