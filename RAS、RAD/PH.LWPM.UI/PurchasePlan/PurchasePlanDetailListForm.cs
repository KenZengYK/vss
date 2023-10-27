using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using DevExpress.XtraBars;

namespace PH.LWPM.UI.PurchasePlan
{
    public partial class PurchasePlanDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PurchasePlanDetailListForm()
        {
            InitializeComponent();
        }

        string _AParam;
        public PurchasePlanDetailListForm(string AParam)
            : this()
        {
            _AParam = AParam; ;
        }

        public override void DataBind()
        {
            base.DataBind();

            if (_AParam == "Review")
            {
                this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
                this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).PurchasePlanDetails.ToList().OrderByDescending(p => p.Status);

                //this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).PurchasePlanDetails.OrderBy(p => p.PurchasePlanHeader.PurchaseNo);

                this.barBtnAddNew.Visibility = BarItemVisibility.Never;
                this.barBtnOpen.Visibility = BarItemVisibility.Never;
                this.barBtnDel.Visibility = BarItemVisibility.Never;
            }
            else
            {
                this.EditorTypeName = typeof(PurchasePlanDetailDetailForm).FullName;
            }
        }

        //public PurchasePlanDetail CurrentPurchasePlanDetail
        //{
        //    get
        //    {
        //        return this.BindingSource.Current as PurchasePlanDetail;
        //    }
        //}

        //protected override void OnClickAddNew()
        //{
        //    base.OnClickAddNew();
        //    //this.gridPurchasePlanDetail.OptionsBehavior.Editable = true;
        //}

        private void ItemButtonEdit_HWType_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            //SelectHWTypeForm frmSelectHWType = new SelectHWTypeForm();
            //if (frmSelectHWType.ShowDialog() == DialogResult.OK)
            //{
            //    CurrentPurchasePlanDetail.HWTypeCode = frmSelectHWType.HWTypeCode;
            //    this.gridPurchasePlanDetail.HideEditor();
            //}
        }

        private void ItemButtonEdit_VendorCode_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            //SelectVendorForm frmSelectVendor = new SelectVendorForm();
            //if (frmSelectVendor.ShowDialog() == DialogResult.OK)
            //{
            //    CurrentPurchasePlanDetail.VendorCode = frmSelectVendor.VendorCode;
            //    this.gridPurchasePlanDetail.HideEditor();
            //}
        }

        private void gridPurchasePlanDetail_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "Status" && (e.CellValue == null || e.CellValue.ToString() == "Outstanding"))
            {
                e.Appearance.BackColor = Color.AliceBlue;
                e.Appearance.ForeColor = Color.Black;
                //e.Appearance.BackColor2 = Color.Gold;
                //e.Appearance.BackColor = Color.FromArgb(213, 243, 247);
            }

        }
    }
}
