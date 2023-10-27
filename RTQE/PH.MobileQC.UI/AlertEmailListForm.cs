using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public partial class AlertEmailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        private MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        public AlertEmailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = context;
            this.BindingSource.DataSource = from a in context.QC_AlertEmails select a;

            this.EditorTypeName = typeof(AlertEmailDetailForm).FullName;
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

        }
    }
}
