using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class SupplierRegionListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public SupplierRegionListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            this.BindingSource.DataSource = (DataContext as BasicInfoDataContext).SupplierRegions.OrderBy(p => p.SeqNo);

            this.EditorTypeName = typeof(SupplierRegionDetailForm).FullName;
        }
    }
}
