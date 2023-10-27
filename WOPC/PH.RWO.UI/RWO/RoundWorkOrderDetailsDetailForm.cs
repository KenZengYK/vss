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
    public partial class RoundWorkOrderDetailsDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public RoundWorkOrderDetailsDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnEdit.Visibility = BarItemVisibility.Never;

        }
    }
}
