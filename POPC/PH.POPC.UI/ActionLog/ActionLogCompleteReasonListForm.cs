using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.FabricInspection.BO;
using System.IO;

namespace PH.FabricInspection.UI.Main.ActionLog
{
    public partial class ActionLogCompleteReasonListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ActionLogCompleteReasonListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).ActionLogCompleteReasons.OrderBy(p => p.SeqNo);
            this.EditorTypeName = typeof(ActionLogCompleteReasonDetailForm).FullName;
        }

    }
}
