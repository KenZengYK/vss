using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI.AppAudit
{
    public partial class QCUserListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public QCUserListForm()
        {
            InitializeComponent();
            this.objListGridView.OptionsView.ColumnAutoWidth = true;
            this.EditorTypeName = typeof(QCUserDetailForm).FullName;
        }


        public override void DataBind()
        {
            PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
            this.DataContext = dcon;
            this.BindingSource.DataSource = dcon.QC_QCUsers;
        }
    }
}
