using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.SPC.BO;

namespace PH.SPC.UI.Setup
{
    public partial class ConfirmStyleList : ListForm
    {
        public ConfirmStyleList()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            ConfirmStyleHelper cshelper = new ConfirmStyleHelper();
            this.DataContext = cshelper.CurrentDataContext;
            this.BindingSource.DataSource = cshelper.GetAllData(); //from c in (this.DataContext as SPCDataContext).ConfirmStyles select c;
            this.EditorTypeName = typeof(ConfirmStyleDetail).FullName;

        }
    }
}
