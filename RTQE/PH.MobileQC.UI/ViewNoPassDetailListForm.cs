using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Data.Linq;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;

namespace PH.MobileQC.UI
{
    public partial class ViewNoPassDetailListForm : ListForm
    {
        public ViewNoPassDetailListForm()
        {
            InitializeComponent();
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            barBtnSave.Visibility = barBtnAddNew.Visibility;
        }

        public override void DataBind()
        {
            base.DataBind();
        }

        public ViewNoPassDetailListForm(DataContext ADataContext, DataTable ADataSource)
            : this()
        {
            this.DataContext = ADataContext;
            this.DataSource = ADataSource;
        }

    }
}
