using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MIDc.BO;

namespace PH.MIDc.UI 
{
    public partial class ColorSizeCupGroupListForm : PH.Platform .UI.CS.UI2 .ListForm 
    {
        public ColorSizeCupGroupListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(ColorSizeCupGroupDetailForm).FullName;

        }

        public override void DataBind()
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = context.ColorSizeCupGroups;
        }
    }
}
