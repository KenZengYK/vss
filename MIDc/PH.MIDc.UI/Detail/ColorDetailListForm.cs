using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class ColorDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public ColorDetailListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(ColorDetailDetailForm).FullName;
            this.RowChangeAutoSave = false;
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.ColorDetail);
        }

        private void barBtnSubColor_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.FormState == PH.Platform.BO.Interface.WorkMode.Edit)
            {
                ColorDetail CurrColorDetail = this.BindingSource.Current as ColorDetail;
                CurrColorDetail.CurrentDataContext = this.DataContext;
                SubColorManageForm CurrSubColorMangeForm = new SubColorManageForm(CurrColorDetail);
                if (CurrSubColorMangeForm.ShowDialog() == DialogResult.OK)
                {
                    RefreshSubColors();
                }
            }
        }
        protected override void SetToolBarState(PH.Platform.BO.Interface.WorkMode aState)
        {
            base.SetToolBarState(aState);
            this.barBtnSubColor.Enabled = (aState == PH.Platform.BO.Interface.WorkMode.Edit);

        }

        public override void DataBind()
        {
            base.DataBind();
            //this.objListGridView.OptionsDetail.EnableMasterViewMode = true;
            this.BindingSource.PositionChanged += new EventHandler(BindingSource_PositionChanged);
            RefreshSubColors();

            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }

        private void BindingSource_PositionChanged(object sender, EventArgs e)
        {
            RefreshSubColors();
        }

        private void RefreshSubColors()
        {
            ColorDetail colorDetail = this.BindingSource.Current as ColorDetail;
            if (colorDetail == null) return;

            PH.MIDc.BO.MIDcDataContext context = this.DataContext as PH.MIDc.BO.MIDcDataContext;
            var aa = from a in context.SubColorDetails
                     where a.SuppRef == colorDetail.SuppRef && a.Color == colorDetail.Color
                     orderby a.SubColor
                     select a;

            this.gridControl1.DataSource = null;
            this.gridControl1.DataSource = aa;

        }
    }
}
