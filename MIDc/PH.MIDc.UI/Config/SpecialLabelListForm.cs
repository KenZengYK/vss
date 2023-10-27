using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO; 
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class SpecialLabelListForm :  PH.Platform.UI.CS.UI2.ListForm
    {
        public SpecialLabelListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

        }

        public override void DataBind()
        {
 
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            this.DataSource = from speciallabel in context.SpecialLabels select speciallabel;

            this.EditorTypeName = typeof(SpecialLabelDetailForm).FullName;

            base.DataBind();
        }
    }
}
