using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.RWO.BO;

namespace PH.RWO.UI.Setting
{
    public partial class WONotepadReasonListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public WONotepadReasonListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            DataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.BindingSource.DataSource = (DataContext as RWOSOPCDataContext).WONotepadReasons.OrderBy(p => p.Seq);

            this.EditorTypeName = typeof(WONotepadReasonDetailForm).FullName;
        }
    }
}
