using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.PHGDB2.BO;
using PH.Platform.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class WorkTimeApplicationGroupListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public WorkTimeApplicationGroupListForm()
        {
            InitializeComponent();
        }

        public int Flag;
        public WorkTimeApplicationGroupListForm(string Flag)
        {
            InitializeComponent();
            this.Flag = Convert.ToInt32(Flag);
        }

        public override void DataBind()
        {
            PHGDB2DataContext context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = context.ByPrice_WorkTimeApplication_Masters.Where(p=>p.Flag==this.Flag);
            this.EditorTypeName=typeof(WorkTimeApplicationGroupDetailForm).FullName;
            base.DataBind();
        }

    }
}
