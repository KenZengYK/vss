using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Setup
{
    public partial class ProductTypeListForm : ListForm
    {

        MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        public ProductTypeListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = context;
            this.DataSource = from d in context.QC_ProductTypeInfos  select d;
            this.EditorTypeName = typeof(ProductTypeDetailForm).FullName;
          
        }
    }
}
