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
    public partial class LabellingPackagingListForm : DetailListForm
    {
        public LabellingPackagingListForm()
        {
            InitializeComponent();
        }

        private void TMIDcListForm_Load(object sender, EventArgs e)
        {
            //在此設置DataSource和context。
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            this.DataSource = from detail in context.Details where detail.MIDStatus ==  "LabellingPackaging" select detail;
        }
    }
}
