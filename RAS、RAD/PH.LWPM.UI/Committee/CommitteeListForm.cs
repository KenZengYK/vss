using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;
using DevExpress.XtraBars;

namespace PH.LWPM.UI.Committee
{
    public partial class CommitteeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CommitteeListForm()
        {
            InitializeComponent();
        }

        public string Param = "";
        public CommitteeListForm(string AParam)
            : this()
        {
            Param = AParam;
            if (Param == "Review")
            {
                barBtnAddNew.Visibility = BarItemVisibility.Never;
                barBtnDel.Visibility = BarItemVisibility.Never;
            }
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).Committees.OrderBy(p => p.SeqNo);
            this.EditorTypeName = typeof(CommitteeDetailForm).FullName;

        }
    }
}
