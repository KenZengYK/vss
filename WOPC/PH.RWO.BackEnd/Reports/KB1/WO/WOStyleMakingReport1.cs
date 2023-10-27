using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd.KB
{
    public partial class WOStyleMakingReport1 : DevExpress.XtraReports.UI.XtraReport
    {
        public WOStyleMakingReport1()
        {
            InitializeComponent();

        }
        bool _bNon;
        int _y;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.RWO.BO.Style style = (PH.RWO.BO.Style)GetCurrentRow();
            if (style == null)
                return;

            _y = lblMaterial.Top + lblMaterial.Height;
            _bNon = false;

            SetLabel(new XRControl[] { this.ckbMaterialContrastColor, this.lblMaterialContrastColor }, style.MaterialContrastColor ?? false);
            SetLabel(new XRControl[] { this.ckbMaterialVariousWidth, this.lblMaterialVariousWidth }, style.MaterialVariousWidth ?? false);
            SetLabel(new XRControl[] { this.ckbMaterialOthers, this.lblMaterialOthers, this.lblMaterialOthersRemark }, style.MaterialOthers ?? false);
            SetLabel(new XRControl[] { this.ckbMaterialNon, this.lblMaterialNon }, !_bNon);
            SetLabel(new XRControl[] { this.lblMaterialDate }, true);

            _y += 5;
            SetLabel(new XRControl[] { this.lblCutting }, true);
            _bNon = false;
            SetLabel(new XRControl[] { this.ckbCuttingBackPart, this.lblCuttingBackPart, this.lblCuttingBackPart1 }, style.CuttingBackPart ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingCoverButton, this.lblCuttingCoverButton }, style.CuttingCoverButton ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingMixStyles, this.lblCuttingMixStyles, this.lblCuttingMixStyles1 }, style.CuttingMixStyles ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingNotch, this.lblCuttingNotch }, style.CuttingNotch ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingFabircRelax, this.lblCuttingFabircRelax }, style.CuttingFabircRelax ?? false);
            SetLabel(new XRControl[] { this.ckbCutting1stLace, this.lblCutting1stLace }, style.Cutting1stLace ?? false);
            SetLabel(new XRControl[] { this.ckbCutting2ndLace, this.lblCutting2ndLace }, style.Cutting2ndLace ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingOthers, this.lblCuttingOthers, this.lblCuttingOthersRemark }, style.CuttingOthers ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingNon, this.lblCuttingNon }, !_bNon);
            SetLabel(new XRControl[] { this.lblCuttingDate }, true);

            _y += 5;
            SetLabel(new XRControl[] { this.lblTest }, true);
            _bNon = false;
            SetLabel(new XRControl[] { this.ckbTestWashing, this.lblTestWashing }, style.TestWashing ?? false);
            SetLabel(new XRControl[] { this.ckbTestFusing, this.lblTestFusing }, style.TestFusing ?? false);

            SetLabel(new XRControl[] { this.ckbTestAZO, this.lblTestAZO }, style.TestAZO ?? false);
            SetLabel(new XRControl[] { this.ckbTestOEKO, this.lblTestOEKO }, style.TestOEKO ?? false);

            SetLabel(new XRControl[] { this.ckbTestShrinkage, this.lblTestShrinkage }, style.TestShrinkage ?? false);
            SetLabel(new XRControl[] { this.ckbTestElongation, this.lblTestElongation }, style.TestElongation ?? false);
            SetLabel(new XRControl[] { this.ckbTestOthers, this.lblTestOthers, this.lblTestOthersRemark }, style.TestOthers ?? false);

            SetLabel(new XRControl[] { this.ckbTestNon, this.lblTestNon }, !_bNon);
            SetLabel(new XRControl[] { this.lblTestDate }, true);

            _y += 5;
            SetLabel(new XRControl[] { this.lbTips }, true);
            this.Detail.Height = _y + 5;
        }
        private void SetLabel(XRControl[] controls, bool visible)
        {
            _bNon = _bNon || visible;
            foreach (XRControl con in controls)
            {
                con.Visible = visible;

                if (visible)
                {
                    con.Top = _y;
                    _y += con.Height;
                }
            }
        }
    }
}
