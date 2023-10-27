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
    public partial class CommitteeMemberListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CommitteeMemberListForm()
        {
            InitializeComponent();
        }

        public string CommitteeOID = "";
        public CommitteeMemberListForm(string ACommitteeOID)
            : this()
        {
            CommitteeOID = ACommitteeOID;
        }

        public override void DataBind()
        {
            base.DataBind();

            if (!string.IsNullOrEmpty(this.CommitteeOID))
            {
                this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).CommitteeMembers
                    .Where(p => p.CommitteeOID == Convert.ToInt64(this.CommitteeOID)).OrderBy(p => p.SeqNo);
            }

            this.EditorTypeName = typeof(CommitteMemberDetailForm).FullName;
        }
    }
}
