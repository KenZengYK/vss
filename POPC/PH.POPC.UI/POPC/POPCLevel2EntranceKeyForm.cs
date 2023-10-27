using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;
using DevExpress.XtraEditors.DXErrorProvider;
using System.Linq;

namespace PH.POPC.UI.POPC
{
    public partial class POPCLevel2EntranceKeyForm : DevExpress.XtraEditors.XtraForm
    {
        public POPCLevel2EntranceKeyForm(POChangesMonitor cm)
        {
            InitializeComponent();
            this.pageControl.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
            _CM = cm;
            InitValue();


        }
        private POChangesMonitor _CM;
        public List<POPCLevel2> POPCLevel2s;
        private IEnumerable<PH.BasicInfo.BO.TransitModeTransitPointChange> _TransitModeTransitPointChanges;

        private void InitValue()
        {
            int oldLots = _CM.Lots;
            this.OldLots = oldLots;
            this.NewLots = oldLots + 1;

            ConditionValidatonRule containsValidationRule = new ConditionValidatonRule();
            containsValidationRule.ConditionOperator = ConditionOperator.GreaterOrEqual;
            containsValidationRule.Value1 = this.OldLots;
            containsValidationRule.ErrorText = string.Format("New Shipment must Greater or Equal {0}", this.NewLots);
            containsValidationRule.ErrorType = ErrorType.Warning;
            dxValidationProvider1.SetValidationRule(this.editNewShipment, containsValidationRule);

            POPCLevel2s = new List<POPCLevel2>();

            PH.BasicInfo.BO.IncontermsTransit IncontermsTransit = _CM.POColorSizeDetail.PODetail.POHeader.IncontermsTransit;
            if (IncontermsTransit != null)
            {
                _TransitModeTransitPointChanges = from a in IncontermsTransit.SupplierProfile.TransitModeTransitPointChanges
                                                  where a.PHFactories == IncontermsTransit.PHFactories
                                                  && a.LocationofSuppFactory == IncontermsTransit.LocationofSuppFactory
                                                  && a.TransitMode != _CM.TransitModePO
                                                  select a;


                //this.bindingSource1.DataSource = aa;
                //this.rilueMode.DataSource = this.bindingSource1;//在這裡需要用 bindingSource 才能顯示出數據          
            }
            //Transit Mode

            if (_TransitModeTransitPointChanges == null || _TransitModeTransitPointChanges.Count() == 0)
            {
                this.lbTransitMode.Location = new Point(160, 100);
                this.lbTransitMode.Text = string.Format("for:\r\n  Factory:- {0}\r\n  Supplier:- {1}\r\n\r\n\r\nNo Transit Mode can be changed.", _CM.Factory, _CM.Supplier);
                this.gcTransitMode.Visible = false;
            }
            this.lbPODelDate.Text = string.Format("PO Delivery Date:- {0:yyyy/MM/dd}", _CM.PODeliveryDate);
            this.rideDelivery.NullText = string.Format("<{0:yyyy/MM/dd}>", _CM.PODeliveryDate);
            this.lbTransitModeTips.Text = string.Format("Current Transit Mode:- {0}", _CM.TransitModePO);
        }

        public int OldLots
        {
            get
            {
                return Convert.ToInt32(this.textEdit1.EditValue);
            }
            set
            {
                this.textEdit1.EditValue = value;
            }
        }
        public int NewLots
        {
            get
            {
                return Convert.ToInt32(this.editNewShipment.EditValue);
            }
            set
            {
                this.editNewShipment.EditValue = value;
            }
        }
        private void btnBack_Click(object sender, EventArgs e)
        {
            BackAction();
            //if (NewLots <= OldLots)
            //{
            //    MessageBox.Show("New Lots must greater than Current Lots!", "Warning");
            //    return;
            //}

            //this.DialogResult = DialogResult.OK;
        }
        private void btnNext_Click(object sender, EventArgs e)
        {
            NextAction();
        }
        private void BackAction()
        {
            DevExpress.XtraTab.XtraTabPage currPage = pageControl.SelectedTabPage;
            if (currPage == pageRevisedDelivery)
            {
                pageControl.SelectedTabPage = pageShipment;
            }
            else if (currPage == pageTransitMode)
            {
                pageControl.SelectedTabPage = pageRevisedDelivery;
            }
            else if (currPage == pageLineQty)
            {
                pageControl.SelectedTabPage = pageTransitMode;
            }
        }
        private void NextAction()
        {
            bool bValidate;
            DevExpress.XtraTab.XtraTabPage currPage = pageControl.SelectedTabPage;
            if (currPage == pageShipment)
            {
                bValidate = dxValidationProvider1.Validate(this.editNewShipment);
                if (bValidate)
                {
                    pageControl.SelectedTabPage = pageRevisedDelivery;
                    InitRevisedDelivery();
                }
            }
            else if (currPage == pageRevisedDelivery)
            {
                if (CheckDeliveryDate())
                    pageControl.SelectedTabPage = pageTransitMode;
            }
            else if (currPage == pageTransitMode)
            {
                pageControl.SelectedTabPage = pageLineQty;
            }
            else if (currPage == pageLineQty)
            {
                if (CheckSplitQty()) //检查用户必须输入Split Qty, 由David加入 2022-10-07
                {
                    this.DialogResult = DialogResult.OK;
                }
            }
        }

        private void pageControl_SelectedPageChanged(object sender, DevExpress.XtraTab.TabPageChangedEventArgs e)
        {
            DevExpress.XtraTab.XtraTabPage currPage = e.Page;
            DevExpress.XtraTab.XtraTabPage prevPage = e.PrevPage;

            this.btnBack.Visible = (currPage != this.pageShipment);
            this.btnNext.Text = (currPage == this.pageLineQty) ? "Finish" : "Next >";
        }

        private void InitRevisedDelivery()
        {
            int currLots = POPCLevel2s.Count;
            if (currLots != this.NewLots)
            {
                POPCLevel2s.Clear();
                this.pOPCLevel1BindingSource.DataSource = null;

                foreach (var item in this._CM.POColorSizeDetail.POChangesMonitors)
                {
                    POPCLevel2 lv = new POPCLevel2();
                    lv.POColorSizeDetail = _CM.POColorSizeDetail;
                    lv.SplitNo = item.SplitNo;
                    lv.Lots = this.NewLots;

                    lv.RevisedDeliveryDate = item.RevisedDeliveryDate;
                    lv.TransitModeChanged = item.TransitModeChanged;
                    lv.ChangedTimeFrame1 = item.ChangedTimeFrame1;
                    lv.SplitQty = item.SplitQty;
                    lv.HaveSplited = true;

                    POPCLevel2s.Add(lv);
                }

                for (int i = this.OldLots; i < this.NewLots; i++)
                {
                    POPCLevel2 lv = new POPCLevel2();
                    lv.POColorSizeDetail = _CM.POColorSizeDetail;
                    lv.SplitNo = i + 1;
                    lv.Lots = this.NewLots;
                    lv.HaveSplited = false;

                    POPCLevel2s.Add(lv);
                }
                POPCLevel2s.Sort(POPCLevel2.SortData);
                this.pOPCLevel1BindingSource.DataSource = POPCLevel2s;
            }
        }

        private void gvRevisedDelivery_ShowingEditor(object sender, CancelEventArgs e)
        {
            //POPCLevel2 lv = this.pOPCLevel1BindingSource.Current as POPCLevel2;
            //if (lv == null)
            //    e.Cancel = true;
            //else
            //{
            //    e.Cancel = lv.HaveSplited;
            //}

        }

        private void gvRevisedDelivery_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            //if (e.Column.FieldName == "HowManyLot")
            {
                POPCLevel2 lv = e.Column.View.GetRow(e.RowHandle) as POPCLevel2;
                if (lv == null) return;

                //e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                if (lv.HaveSplited) e.Appearance.ForeColor = Color.Red;
                else e.Appearance.ForeColor = Color.Black;
            }
        }

        private void ribeMode_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (_TransitModeTransitPointChanges != null && _TransitModeTransitPointChanges.Count() > 0)
            {
                using (PH.POPC.UI.POPC.ChangeTransitModeForm frm = new PH.POPC.UI.POPC.ChangeTransitModeForm(_CM.POColorSizeDetail.PODetail.POHeader.IncontermsTransit, _CM.TransitModePO))
                {
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        POPCLevel2 lv = this.pOPCLevel1BindingSource.Current as POPCLevel2;

                        lv.TransitModeChanged = (frm.NewModeChanged == null) ? null : frm.NewModeChanged.TransitMode;
                        lv.ChangedTimeFrame1 = (frm.NewModeChanged == null) ? (int?)null : frm.NewModeChanged.TimeFrame;


                        if (gvTransitMode.PostEditor())
                        {
                            gvTransitMode.UpdateCurrentRow();
                        }
                    }
                }
            }
        }

        private bool CheckDeliveryDate()
        {
            DateTime? d;
            DateTime? d2;
            POPCLevel2 lv2 = new POPCLevel2();
            foreach (POPCLevel2 lv in POPCLevel2s)
            {
                d = lv.RevisedDeliveryDate.HasValue ? lv.RevisedDeliveryDate : lv.PODeliveryDate;
                d2 = lv2.RevisedDeliveryDate.HasValue ? lv2.RevisedDeliveryDate : lv2.PODeliveryDate;
                if (d <= d2)
                {
                    MessageBox.Show(string.Format("Shipment No. {0}'s Revised Delivery must greater than Shipment No. {1}", lv.HowManyLot, lv2.HowManyLot), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
                lv2 = lv;
            }
            return true;
        }

        bool CheckSplitQty()
        {
            IEnumerable<PH.POPC.BO.POPCLevel2> lists = pOPCLevel1BindingSource.DataSource as IEnumerable<PH.POPC.BO.POPCLevel2>;
            foreach (var obj in lists)
            {
                if (!obj.SplitQty.HasValue)
                {
                    MessageBox.Show("Pls input split line Qty", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }
            return true;
        }
    }
}