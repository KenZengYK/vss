using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;

namespace PH.MIDc.UI
{
    public partial class EmailNotifyListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        //PH.MIDc.BO.MIDcDataContext CurrDataContext = PH.Platform.BO.DataContextExtend.CreateContext<PH.MIDc.BO.MIDcDataContext>();
        PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

        public EmailNotifyListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            this.DataContext = context;
            this.DataSource = from val in context.MIDcEmailNotifies
                              select val;
            this.EditorTypeName = typeof(EmailNotifyDetailForm).FullName;
            base.DataBind();
        }
    }
}
