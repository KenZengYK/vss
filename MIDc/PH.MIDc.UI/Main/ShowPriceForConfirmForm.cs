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
    public partial class ShowPriceForConfirmForm : Form
    {
        public ShowPriceForConfirmForm()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Xsj:當前Detail
        /// </summary>
        public PH.MIDc.BO.Detail CurrDetail
        {
            get;
            set;
        }


        private MultPriceType _multPrceType
        {
            get
            {
                MultPriceType currMultPriceType = new MultPriceType();
                switch (this.CurrDetail .MultiPriceOption .Value )
                {
                    case 1:
                        currMultPriceType = MultPriceType.ColorRangeSizeCup;
                        break;
                    case 2:
                        currMultPriceType = MultPriceType.ColorOnly;
                        break;
                    case 3:
                        currMultPriceType = MultPriceType.CupSize;
                        break;
                }
                return currMultPriceType;
            }

        }


        private void ShowPriceForConfirmForm_Load(object sender, EventArgs e)
        {
            ShowPrePriceInfo();
            ShowCurrPriceInfo();
        }

        /// <summary>
        /// Xsj:顯示更改前的一個單價
        /// </summary>
        private void ShowPrePriceInfo()
        {
            PH.MIDc .BO .PriceHeaderInfo pInfo=new PH.MIDc.BO.PriceHeaderInfo ();
            PH.MIDc.BO.MaterialPriceHeader lastPriceHeader = pInfo.GetLastPriceHeader(this.CurrDetail, "Standard", "");
            ShowPriceInfo(lastPriceHeader,true );
        }


        /// <summary>
        /// Xsj:顯示更改前的一個單價
        /// </summary>
        private void ShowCurrPriceInfo()
        {
            PH.MIDc.BO.PriceHeaderInfo pInfo = new PH.MIDc.BO.PriceHeaderInfo();
            PH.MIDc.BO.MaterialPriceHeader currPriceHeader = pInfo.GetCurrPriceHeader(this.CurrDetail, "Standard", "");
            ShowPriceInfo(currPriceHeader,false);
            ForbidInput(this.panelCtrl_ShowPrice); 
        }

        private void ShowPriceInfo(PH.MIDc.BO.MaterialPriceHeader MpHeader,bool isLastPrice)
        {
            PH.MIDc.BO.MaterialPriceHeader currPriceHeader = MpHeader;

            if (currPriceHeader == null)
            {
                return;
            }

            if (currPriceHeader.IsMultiPrice ?? false)
            {
                //MultiPrice
                CommonGridCtrl comMultiPriceEdit = new CommonGridCtrl();
                //Xsj20111124:注冊單價狀態提示動作 
                comMultiPriceEdit.Currency = this.CurrDetail.Currency;
                comMultiPriceEdit.CurrencyVisible = true;
                comMultiPriceEdit.Dock = DockStyle.Fill;
                comMultiPriceEdit.CurrMaterialPriceHeader = currPriceHeader;
                comMultiPriceEdit.CreatPriceDt(this._multPrceType, "Standard", new DataTable(), this.CurrDetail, "Standard");


                if (isLastPrice)
                {
                    this.lastPriceXtraTabPage.Controls.Clear();
                    this.lastPriceXtraTabPage.Controls.Add(comMultiPriceEdit);
                }
                else
                {
                    this.currPricextraTabPage.Controls.Clear();
                    this.currPricextraTabPage.Controls.Add(comMultiPriceEdit);
                }
            }
            else
            {
                //Single
                CommonSinglePriceEditor comSinglePriceEdt = new CommonSinglePriceEditor();
                //Xsj20111124:注冊單價狀態提示動作 
                comSinglePriceEdt.CurrMIDcSource = this.CurrDetail;
                comSinglePriceEdt.CurrUsedMaterialPriceHeader = currPriceHeader;
                comSinglePriceEdt.bindingSource1.DataSource = currPriceHeader.MaterialPrices.FirstOrDefault();
                comSinglePriceEdt.CreatShowSinglePrice();
                comSinglePriceEdt.Currency = this.CurrDetail.Currency;
                comSinglePriceEdt.CurrencyVisible = true;
                comSinglePriceEdt.Dock = DockStyle.Fill;
                //添加并显示
                if (isLastPrice)
                {
                    this.lastPriceXtraTabPage.Controls.Clear();
                    this.lastPriceXtraTabPage.Controls.Add(comSinglePriceEdt);
                }
                else
                {
                    this.currPricextraTabPage.Controls.Clear();
                    this.currPricextraTabPage.Controls.Add(comSinglePriceEdt);
                }
            }
        }

        private void ForbidInput(Control Ctrl)
        {
            if (Ctrl.Controls.Count > 0)
            {
                foreach (Control item in Ctrl.Controls)
                {
                    ForbidInput(item);
                }
            } 
            switch (Ctrl.GetType().Name)
            {
                case "GridControl":
                    DevExpress.XtraGrid.GridControl gctrl = Ctrl as DevExpress.XtraGrid.GridControl;
                    foreach (DevExpress.XtraGrid.Views.Grid.GridView gViewItem in gctrl.Views)
                    {
                        gViewItem.OptionsBehavior.Editable = false;
                    }
                    break;
                case "SimpleButton":
                    DevExpress.XtraEditors.SimpleButton sBtn = Ctrl as DevExpress.XtraEditors.SimpleButton;
                    if (sBtn.Name != "sBtnShowHideRatio") sBtn.Enabled = false;
                    break;
                case "DateEdit":
                    DevExpress.XtraEditors.DateEdit dEdit = Ctrl as DevExpress.XtraEditors.DateEdit;
                    dEdit.Properties .ReadOnly =true ;  
                    break;
                case "SpinEdit":
                    DevExpress.XtraEditors.SpinEdit spinEdit = Ctrl as DevExpress.XtraEditors.SpinEdit;
                    spinEdit.Properties.ReadOnly = true;
                    break;
            }
        }

        private void sBtn_SelectAndClose_Click(object sender, EventArgs e)
        {
            if (this.CurrDetail != null)
            {
                this.CurrDetail.Selected = true;
            }
            this.Close();
        }

        private void sBtn_Close_Click(object sender, EventArgs e)
        {
            this.Close();
        } 
    }
}
