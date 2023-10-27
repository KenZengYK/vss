using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd
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

            //_y = lblMaterial.Top + lblMaterial.Height;
            _y = lblTest.Top + lblTest.Height; 
            
            _bNon = false;

            //1.Test Requisition 測試要求
            //SetLabel(new XRControl[] { this.lblTest }, true);
            _bNon = false;
            SetLabel(new XRControl[] { this.ckbTestWashing }, style.TestWashing ?? false);
            SetLabel(new XRControl[] { this.ckbTestFusing }, style.TestFusing ?? false);

            SetLabel(new XRControl[] { this.ckbTestAZO }, style.TestAZO ?? false);
            SetLabel(new XRControl[] { this.ckbTestOEKO }, style.TestOEKO ?? false);

            SetLabel(new XRControl[] { this.ckbTestShrinkage }, style.TestShrinkage ?? false);
            SetLabel(new XRControl[] { this.ckbTestElongation }, style.TestElongation ?? false);
            SetLabel(new XRControl[] { this.ckbTestOthers, this.lblTestOthersRemark }, style.TestOthers ?? false);

            SetLabel(new XRControl[] { this.ckbTestNon }, !_bNon);
            SetLabel(new XRControl[] { this.lblTestDate }, true);
            _y += 5;

            //2.Material Specification Requisition 物料規格要求
            SetLabel(new XRControl[] { this.lblMaterial}, true);
            SetLabel(new XRControl[] { this.ckbMaterialContrastColor, this.lblMaterialContrastColor }, style.MaterialContrastColor ?? false);
            SetLabel(new XRControl[] { this.ckbMaterialVariousWidth, this.lblMaterialVariousWidth }, style.MaterialVariousWidth ?? false);
            SetLabel(new XRControl[] { this.ckbMaterialOthers, this.lblMaterialOthersRemark }, style.MaterialOthers ?? false);
            SetLabel(new XRControl[] { this.ckbMaterialNon, this.lblMaterialNon }, !_bNon);
            SetLabel(new XRControl[] { this.lblMaterialDate }, true);
            _y += 5;

            //3.CAD Requisition CAD要求
            SetLabel(new XRControl[] { this.lblCAD }, true);
            SetLabel(new XRControl[] { this.ckbCuttingMixStyles, this.lblCuttingMixStyles, this.lblCuttingMixStyles1 }, style.CuttingMixStyles ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingNotch, this.lblCuttingNotch }, style.CuttingNotch ?? false);
            SetLabel(new XRControl[] { this.ckbCADOthers, this.lblCADOthersRemark }, style.CuttingOthers ?? false);
            SetLabel(new XRControl[] { this.ckbCADNon }, !_bNon);
            SetLabel(new XRControl[] { this.lblCADDate }, true);
            
            _y += 5;
            
            //4.Cutting Requisition 裁割要求
            SetLabel(new XRControl[] { this.lblCutting }, true);
            _bNon = false;
            SetLabel(new XRControl[] { this.ckbCuttingBackPart, this.lblCuttingBackPart, this.lblCuttingBackPart1 }, style.CuttingBackPart ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingCoverButton, this.lblCuttingCoverButton }, style.CuttingCoverButton ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingFabircRelax, this.lblCuttingFabircRelax }, style.CuttingFabircRelax ?? false);
            SetLabel(new XRControl[] { this.ckbCutting1stLace, this.lblCutting1stLace }, style.Cutting1stLace ?? false);
            SetLabel(new XRControl[] { this.ckbCutting2ndLace, this.lblCutting2ndLace }, style.Cutting2ndLace ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingOthers, this.lblCuttingOthersRemark }, style.CuttingOthers ?? false);
            SetLabel(new XRControl[] { this.ckbCuttingNon }, !_bNon);
            SetLabel(new XRControl[] { this.lblCuttingDate }, true);

            _y += 5;
            //SetLabel(new XRControl[] { this.lbTips }, true);
            _y += 5;

            xrCrossBandBox1.EndPoint = new Point(0, _y);
            this.Detail.Height = _y;
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
