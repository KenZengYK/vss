using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.UI.CS.UI2;


namespace PH.MobileQC.UI
{
    public partial class TraceInfoListForm : ListForm
    {
        public TraceInfoListForm()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            
            base.DataBind();
            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            this.DataContext = context;
            this.DataSource = from m in context.TraceInfos select m;
            this.EditorTypeName = typeof(TraceInfoDetailForm).FullName;
        }
    }
}
