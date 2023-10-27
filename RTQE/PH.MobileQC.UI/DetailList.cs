using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
//using PH.UI.UI2;


namespace PH.MobileQC.UI
{
    public partial class DetailList : PH.Platform.UI.CS.UI2.ListForm//PH.UI.UI2.ChildListForm
    {
        public DetailList()
        {
            InitializeComponent();
        }
       
        public override void DataBind()
        {
            base.DataBind();

            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //this.DataContext = context;
            //this.DataSource = from d in context.QC_Details select d;
            //this.EditorTypeName = typeof(DetailDetail).FullName;
        }
    }
}
