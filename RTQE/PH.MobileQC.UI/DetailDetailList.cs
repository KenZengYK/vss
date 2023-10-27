using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public partial class DetailDetailList : PH.Platform.UI.CS.UI2.ListForm
    {
        public DetailDetailList()
        {
            InitializeComponent();
        }

        //public override void DataBind()
        //{
        //    MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        //    this.DataContext = context;
        //    this.DataSource = from d in context.QC_Details select d;
        //    this.EditorTypeName = typeof(DetailDetail).FullName;
        //}
    }
}
