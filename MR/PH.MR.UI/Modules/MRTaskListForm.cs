using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.Modules
{
    public partial class MRTaskListForm : PH.Platform.UI.CS.BaseListForm
    {
        public MRTaskListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            this.BindingSource.DataSource = dcon.AnticipantMR_HSCodeHeaders;
            this.DataContext = dcon;

            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnCancel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            base.DataBind();
        }


        private void BindingSource_ListChanged(object sender, ListChangedEventArgs e)
        {
            if (this.BindingSource.List.Count > 0)
            {
                this.barBtnDel.Enabled = true;
            }
        }

        private void Btn_Refresh_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.DataBind();
        }
    }
}
