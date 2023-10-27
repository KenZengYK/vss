using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class SampleOrderPODetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        private PH.MIDc.BO.SampleOrderPO currentMaster;
        private RepositoryItemPHSpinEdit _riseRWM;
        public SampleOrderPODetail CurSampleOrderPODetail
        {
            get { return (SampleOrderPODetail)this.BindingSource.Current; }
        }
        #endregion

        public SampleOrderPODetailListForm()
        {
            InitializeComponent();
            CreateSpinEdit();
            this.RowChangeAutoSave = false;


            Controller.SetColumnPHSpinEdit(objListGridView, "Price", _riseRWM);
            Controller.SetColumnPHSpinEdit(objListGridView, "Qty", _riseRWM);
            Controller.DisableSpinEditScrollings(this);
        }

        private void CreateSpinEdit()
        {
            _riseRWM = new RepositoryItemPHSpinEdit();
            _riseRWM.AutoHeight = false;
            _riseRWM.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            _riseRWM.Increment = new decimal(new int[] {
              0,
              0,
              0,
              0});
            _riseRWM.Buttons.Clear();
            _riseRWM.IsFloatValue = true;
        }

        public void BandCombox()
        {
            this.ricb_ColoerCategory.Properties.Items.Clear();

            SampleOrderPODetail current = (SampleOrderPODetail)this.BindingSource.Current;
            currentMaster = (SampleOrderPO)(this.ParentForm as SampleOrderPODetailForm).BindingSource.Current;

            //if (currentMaster.MIDcDetail != null)
            //{
            //    this.ricb_ColoerCategory.Properties.Items.Clear();
            //    foreach (ColorDetail midcPrice in currentMaster.MIDcDetail.ColorDetails)
            //    {
            //        //if ((midcPrice.Price ?? 0) == 0)
            //        //    continue;
            //        //if (midcPrice.ColorCategory == null)
            //        //    continue;
            //        this.ricb_ColoerCategory.Properties.Items.Add(midcPrice.Color);// (new RatioPrice(midcPrice.ColorCategory, midcPrice.Price));
            //    }

            //    //foreach (RatioPrice midcPrice in currentMaster.MIDcDetail.RatioPrices)
            //    //{
            //    //    if ((midcPrice.Price ?? 0) == 0)
            //    //        continue;
            //    //    if (midcPrice.ColorCategory == null)
            //    //        continue;
            //    //    this.ricb_ColoerCategory.Properties.Items.Add(midcPrice.ColorCategory);// (new RatioPrice(midcPrice.ColorCategory, midcPrice.Price));
            //    //}
            //}

        }

        private void SampleOrderPODetailListForm_Load(object sender, EventArgs e)
        {
            this.AllowGridEdit = true;
        }

        private void ricb_ColoerCategory_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            if (e.Value == null)
                return;
            if (this.BindingSource.Current == null)
                return;

            foreach (RatioPrice midcPrice in currentMaster.MIDcDetail.RatioPrices)
            {
                if (midcPrice.ColorCategory == e.Value.ToString())
                {
                    if (midcPrice.Price != 0)
                        CurSampleOrderPODetail.Price = midcPrice.Price;

                    break;
                }
            }
            if (CurSampleOrderPODetail.SampleOrderPO == null)
                CurSampleOrderPODetail.SampleOrderPO = currentMaster;

        }

        protected override void AddNewObject()
        {
            SampleOrderPODetailForm aa = (this.ParentForm as SampleOrderPODetailForm);
            if (aa == null)
                return;

            if (aa._sampleOrderPOMaster == null)
                return;

            if (string.IsNullOrEmpty(aa._sampleOrderPOMaster.SampleOrderPONo))
                return;

            base.AddNewObject();

        }

        private void ribe_Color_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            //Xsj20110818:经与PETER确认。此功能已作废。相关功能被移到POPC。
            #region Xsj20110817:为完善历史多单价而注释掉
            //SelectMIDcPriceForm f = new SelectMIDcPriceForm(currentMaster.MIDcDetail.MaterialPrices);
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            PH.MIDc.BO.PriceHeaderInfo pHInfo = new PriceHeaderInfo();
            PH.MIDc.BO.MaterialPriceHeader mPH = pHInfo.GetCurrPriceHeader(currentMaster.MIDcDetail, MaterialPriceType.Standard.ToString(), "");
            if (mPH == null) return;
            SelectMIDcPriceForm f = new SelectMIDcPriceForm(mPH.MaterialPrices);
            #endregion
            if (f.ShowDialog() != DialogResult.OK) return;

            if (f.MaterialPrice == null) return;

            //SampleOrderPODetail sd = this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle) as SampleOrderPODetail;
            //if (sd == null) return;
            SampleOrderPODetail sd;
            if (this.objListGridView.IsNewItemRow(this.objListGridView.FocusedRowHandle))
            {
                sd = this.BindingSource.AddNew() as SampleOrderPODetail;
                sd.CurrentBindingSource = this.BindingSource;
                sd.SampleOrderPO = currentMaster;
                sd.CurrentDataContext = this.DataContext;
            }
            else
                sd = CurSampleOrderPODetail;

            //if (this.objListGridView.FocusedRowHandle== )
            //this.objListGridView.SetFocusedRowCellValue(gridColumn_Color, f.MaterialPrice.ColorRange);
            //this.objListGridView.SetFocusedRowCellValue(gridColumn_Size, f.MaterialPrice.Size);
            //this.objListGridView.SetFocusedRowCellValue(gridColumn_Cup, f.MaterialPrice.Cup);
            //this.objListGridView.SetFocusedRowCellValue(gridColumn_Price, f.MaterialPrice.Price);

            sd.Color = f.MaterialPrice.ColorRange;
            //sd.Size = f.MaterialPrice.Size;
            //sd.Cup = f.MaterialPrice.Cup;
            sd.Price = Convert.ToDecimal(string.Format("{0:N6}", f.MaterialPrice.Price));

            //if (CurSampleOrderPODetail.SampleOrderPO == null)
            //    CurSampleOrderPODetail.SampleOrderPO = currentMaster;
        }


    }
}
