using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using DevExpress.XtraBars;

namespace PH.RWO.UI
{
    public partial class ProjectDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public ProjectDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.workOrdersListForm1.DataSource = (this.BindingSource.Current as Project).WorkOrders;
            this.workOrdersListForm1.EditorTypeName = typeof(WorkOrderDetailForm).FullName;

            //控制为Review状态，只能查看，由david加入 2020-08-25
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnEdit.Visibility = BarItemVisibility.Never;

        } 
    }
}
