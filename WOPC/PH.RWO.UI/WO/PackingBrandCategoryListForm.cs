using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;

namespace PH.RWO.UI.WO
{
    public partial class PackingBrandCategoryListForm : ListForm
    {
        public PackingBrandCategoryListForm()
        {
            InitializeComponent();
            //this.AllowGridEdit = true;
        }
        public override void DataBind()
        {
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            base.DataBind();
            this.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            this.AllowGridEdit = false;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;

        }
    }
}
