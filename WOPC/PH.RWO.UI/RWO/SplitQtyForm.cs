using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.RWO.BO;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.Utils;

namespace PH.RWO.UI.RWO
{
    public partial class SplitQtyForm : DevExpress.XtraEditors.XtraForm
    {
        public SplitQtyForm(TempSplitRWO sr)
        {
            InitializeComponent();
            //Xsj:記錄當前要拆分SKU的RWO對象
            _TempSplitRWO = sr;
            //Xsj:初始化數據SKU列表信息
            InitValue();
        }

        /// <summary>
        /// Xsj:等待拆分的RWO
        /// </summary>
        private TempSplitRWO _TempSplitRWO;
        AppearanceDefault footerAppRed = new AppearanceDefault(Color.Red, Color.Empty, new Font(AppearanceObject.DefaultFont, FontStyle.Bold));
        AppearanceDefault footerAppBlue = new AppearanceDefault(Color.Blue, Color.Empty, new Font(AppearanceObject.DefaultFont, FontStyle.Bold));

        /// <summary>
        /// Xsj:初始化數據
        /// </summary>
        private void InitValue()
        {
            //Xsj:獲取SKU列表信息（可拆分信息)
            _TempSplitRWO.InitRWOSKUs();
            //Xsj:綁定數據源---RWOSKU
            this.tempRWOSKUBindingSource.DataSource = _TempSplitRWO.RWOSKUs;
        }

        //Xsj:驗證輸入的BulkQty是否大於MaxBulkQty.
        private void gridView1_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            ColumnView view = sender as ColumnView;
            int qty = Convert.ToInt32(view.GetRowCellValue(e.RowHandle, view.Columns["BulkQty"]));
            int mqty = Convert.ToInt32(view.GetRowCellValue(e.RowHandle, view.Columns["MaxBulkQty"]));
            string s = "";
            if (qty > mqty)
            {
                e.Valid = false;
                e.ErrorText = s = string.Format("Cannot greater than max qty: {0} ", mqty);
            }
            view.SetColumnError(view.Columns["BulkQty"], s);


            //-----------------------Start----------------------------
            //Xsj:為拆分SampleQty而添加以下代碼 
            int sampleQty = Convert.ToInt32(view.GetRowCellValue(e.RowHandle, "SampleQty"));
            int maxSampleQty = Convert.ToInt32(view.GetRowCellValue(e.RowHandle, "MaxSampleQty"));
            if (sampleQty > maxSampleQty)
            {
                e.Valid = false;
                e.ErrorText = s = string.Format("Cannot greater than max sample qty: {0} ", maxSampleQty);
            }
            view.SetColumnError(view.Columns["SampleQty"], s);
            //-----------------------End------------------------------

            //view.SetColumnError(null, !val ? null : "Item should not be discontinued.");
        }

        private void gridView1_InvalidRowException(object sender, InvalidRowExceptionEventArgs e)
        {
            e.ExceptionMode = DevExpress.XtraEditors.Controls.ExceptionMode.NoAction;
        }

        private void gridView1_CustomDrawFooterCell(object sender, DevExpress.XtraGrid.Views.Grid.FooterCellCustomDrawEventArgs e)
        {
            int ii = (this._TempSplitRWO.MaxSubQty ?? 0) - (_TempSplitRWO.SumSubQty ?? 0);
            this.btnOK.Enabled = (ii >= 0);

            if (e.Column.FieldName == "BulkQty" && ii >= 0)
            {
                AppearanceHelper.Apply(e.Appearance, footerAppBlue);
            }
            else if (e.Column.FieldName == "BulkQty")
            {
                AppearanceHelper.Apply(e.Appearance, footerAppRed);
            }
        }

        private void gridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            ColumnView view = sender as ColumnView;
            int maxQty = Convert.ToInt32(view.GetRowCellValue(e.RowHandle, "MaxBulkQty"));
            int qty = Convert.ToInt32(view.GetRowCellValue(e.RowHandle, "BulkQty"));
            bool canInput = (maxQty > qty);
            if (e.Column.FieldName == "MaxBulkQty" && canInput)
            {
                e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                e.Appearance.ForeColor = Color.Red;
            }

            //-------------Start----------------------------
            //Xsj:為拆分SampleQty而添加以下代碼 
            int maxSampleQty = Convert.ToInt32(view.GetRowCellValue(e.RowHandle, "MaxSampleQty"));
            int sampleQty = Convert.ToInt32(view.GetRowCellValue(e.RowHandle, "SampleQty"));
            canInput = (maxSampleQty > sampleQty);
            if (e.Column.FieldName == "MaxSampleQty" && canInput)
            {
                e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                e.Appearance.ForeColor = Color.Red;
            }
            //-------------End------------------------------


        }
    }
}