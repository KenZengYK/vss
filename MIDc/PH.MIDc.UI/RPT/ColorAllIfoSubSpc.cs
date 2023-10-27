using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.UI
{
    public class ColorAllIfoSubSpc : DevExpress.XtraReports.UI.XtraReport
    {
        #region

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRLabel xrLabel31;
        private DevExpress.XtraReports.UI.XRLabel xrLabel42;
        private DevExpress.XtraReports.UI.XRLabel xrLabel41;
        private DevExpress.XtraReports.UI.XRLabel xrLabel40;
        private DevExpress.XtraReports.UI.XRLabel xrLabel39;
        private DevExpress.XtraReports.UI.XRLabel xrLabel38;
        private DevExpress.XtraReports.UI.XRLabel xrLabel37;
        private DevExpress.XtraReports.UI.XRLabel xrLabel36;
        private DevExpress.XtraReports.UI.XRLabel xrLabel35;
        private DevExpress.XtraReports.UI.XRLabel xrLabel34;
        private DevExpress.XtraReports.UI.XRLabel xrLabel33;
        private DevExpress.XtraReports.UI.XRLabel xrLabel32;
        private DevExpress.XtraReports.UI.XRLabel xrLabel43;
        private DevExpress.XtraReports.UI.XRLabel xrLabel30;
        private DevExpress.XtraReports.UI.XRLabel xrLabel29;
        private DevExpress.XtraReports.UI.XRLabel xrLabel28;
        private DevExpress.XtraReports.UI.XRLabel xrLabel27;
        private DevExpress.XtraReports.UI.XRLabel xrLabel26;
        private DevExpress.XtraReports.UI.XRLabel xrLabel25;
        private DevExpress.XtraReports.UI.XRLabel xrLabel24;
        private DevExpress.XtraReports.UI.XRLabel xrLabel23;
        private DevExpress.XtraReports.UI.XRLabel xrLabel22;
        private DevExpress.XtraReports.UI.XRLabel xrLabel21;
        private DevExpress.XtraReports.UI.XRLabel xrLabel20;
        private DevExpress.XtraReports.UI.XRLabel xrLabel19;
        private DevExpress.XtraReports.UI.XRLabel xrLabel18;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRLabel xrLabel4;
        private DevExpress.XtraReports.UI.XRLabel xrLabel5;
        private DevExpress.XtraReports.UI.XRLabel xrLabel6;
        private DevExpress.XtraReports.UI.XRLabel xrLabel7;
        private DevExpress.XtraReports.UI.XRLabel xrLabel8;
        private DevExpress.XtraReports.UI.XRLabel xrLabel9;
        private DevExpress.XtraReports.UI.XRLabel xrLabel10;
        private DevExpress.XtraReports.UI.XRLabel xrLabel11;
        private DevExpress.XtraReports.UI.XRLabel xrLabel12;
        private DevExpress.XtraReports.UI.XRLabel xrLabel13;
        private DevExpress.XtraReports.UI.XRLabel xrLabel14;
        private DevExpress.XtraReports.UI.XRLabel xrLabel15;
        private DevExpress.XtraReports.UI.XRLabel xrLabel16;
        private DevExpress.XtraReports.UI.XRLabel xrLabel17;
        private DevExpress.XtraReports.UI.XRLabel xrLabel44;
        private DevExpress.XtraReports.UI.XRLabel xrLabel45;
        private DevExpress.XtraReports.UI.XRLabel xrLabel46;
        private DevExpress.XtraReports.UI.XRLabel xrLabel47;
        private DevExpress.XtraReports.UI.XRLabel xrLabel48;
        private DevExpress.XtraReports.UI.XRLabel xrLabel49;
        private DevExpress.XtraReports.UI.XRLabel xrLabel50;
        private DevExpress.XtraReports.UI.XRLabel xrLabel51;
        private DevExpress.XtraReports.UI.XRLabel xrLabel52;
        private DevExpress.XtraReports.UI.XRLabel xrLabel53;
        private DevExpress.XtraReports.UI.XRLabel xrLabel54;
        private DevExpress.XtraReports.UI.XRLabel xrLabel55;
        private DevExpress.XtraReports.UI.XRLabel xrLabel56;
        private DevExpress.XtraReports.UI.XRLabel xrLabel57;
        private DevExpress.XtraReports.UI.XRLabel xrLabel58;
        private DevExpress.XtraReports.UI.XRLabel xrLabel59;
        private DevExpress.XtraReports.UI.XRLabel xrLabel60;
        private DevExpress.XtraReports.UI.XRLabel xrLabel61;
        private DevExpress.XtraReports.UI.XRLabel xrLabel62;
        private DevExpress.XtraReports.UI.XRLabel xrLabel63;
        private DevExpress.XtraReports.UI.XRLabel xrLabel64;
        private DevExpress.XtraReports.UI.XRLabel xrLabel65;
        private DevExpress.XtraReports.UI.XRLabel xl_SupplierWidth;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_UsableWidth;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Weight_GmSqm_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Weight_LinearMeter_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Weight_GmSqm;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Weight_LinearMeter;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Relaxation_Length_per;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Relaxation_Width_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Conditions;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Pattern_Length_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Pattern_Width_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Pattern_Width;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Pattern_Length;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Elongation_Length;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Elongation_Width;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Elongation_Length_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Elongation_Width_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Shrinkage_Length_Washing;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Shrinkage_Width_Washing;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Shrinkage_Length_Ironin_g;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Shrinkage_Width_Ironing;
        private DevExpress.XtraReports.UI.XRLabel xl_Supplier_Shrinkage_ColorFasteness;
        private DevExpress.XtraReports.UI.XRLabel xl_Oeko;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Weight_GmSqm_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Weight_LinearMeter_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Weight_GmSqm;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_UsableWidth;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Weight_LinearMeter;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Relaxation_Length_per;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Relaxation_Width_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Conditions;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Pattern_Length_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Pattern_Length;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Pattern_Width;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Pattern_Width_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Elongation_Length_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Elongation_Length;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Elongation_Width;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Elongation_Width_Per;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Shrinkage_Length_Washing;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Shrinkage_Width_Washing;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Shrinkage_ColorFasteness;
        private DevExpress.XtraReports.UI.XRLabel xrLabel66;
        private DevExpress.XtraReports.UI.XRLabel xl_PH_Shrinkage_Width_Ironing;
        private DevExpress.XtraReports.UI.DetailBand Detail1;
        private DevExpress.XtraReports.UI.XRLine xrLine2;
        private DevExpress.XtraReports.UI.XRLine xrLine1;
        #endregion

        public ColorAllIfoSubSpc()
        {
            InitializeComponent();
        }

        public void Banddata(MIDc.BO.Spec obj)
        { ;
            this.xl_SupplierWidth.Text = obj.SupplierWidth;
            this.xl_Supplier_UsableWidth.Text = obj.Supplier_UsableWidth;
            this.xl_Supplier_Weight_GmSqm.Text = obj.Supplier_Weight_GmSqm == null ? "" : string.Format("{0:0.00}",obj.Supplier_Weight_GmSqm);
            this.xl_Supplier_Weight_GmSqm_Per.Text = obj.Supplier_Weight_GmSqm_Per == null ? "" : string.Format("{0:0.00}",obj.Supplier_Weight_GmSqm_Per.ToString());
            this.xl_Supplier_Weight_LinearMeter.Text = obj.Supplier_Weight_LinearMeter == null ? "" : string.Format("{0:0.00}",obj.Supplier_Weight_LinearMeter.ToString());
            this.xl_Supplier_Weight_LinearMeter_Per.Text = obj.Supplier_Weight_LinearMeter_Per == null ? "" : string.Format("{0:0.00}",obj.Supplier_Weight_LinearMeter.ToString());
            this.xl_Supplier_Relaxation_Width_Per.Text = obj.Supplier_Relaxation_Width_Per == null ? "" : string.Format("{0:0.00}",obj.Supplier_Weight_GmSqm_Per.ToString());
            this.xl_Supplier_Pattern_Length.Text = obj.Supplier_Pattern_Length == null ? "" : string.Format("{0:0.00}",obj.Supplier_Weight_GmSqm_Per.ToString());
            this.xl_Supplier_Pattern_Length_Per.Text = obj.Supplier_Pattern_Length_Per == null ? "" : string.Format("{0:0.00}",obj.Supplier_Pattern_Length_Per.ToString());
            this.xl_Supplier_Pattern_Width.Text = obj.Supplier_Pattern_Width == null ? "" : string.Format("{0:0.00}",obj.Supplier_Pattern_Width.ToString());
            this.xl_Supplier_Pattern_Width_Per.Text = obj.Supplier_Pattern_Width_Per == null ? "" : string.Format("{0:0.00}",obj.Supplier_Pattern_Width_Per.ToString());
            this.xl_Supplier_Elongation_Length.Text = obj.Supplier_Elongation_Length == null ? "" : string.Format("{0:0.00}",obj.Supplier_Elongation_Length.ToString());
            this.xl_Supplier_Elongation_Length_Per.Text = obj.Supplier_Elongation_Length_Per == null ? "" : string.Format("{0:0.00}",obj.Supplier_Elongation_Length_Per.ToString());
            this.xl_Supplier_Elongation_Width.Text = obj.Supplier_Elongation_Width == null ? "" : string.Format("{0:0.00}",obj.Supplier_Elongation_Width.ToString());
            this.xl_Supplier_Elongation_Width_Per.Text = obj.Supplier_Elongation_Width_Per == null ? "" : string.Format("{0:0.00}",obj.Supplier_Elongation_Width_Per.ToString());
            this.xl_Supplier_Shrinkage_Length_Washing.Text = obj.Supplier_Shrinkage_Length_Washing == null ? "" : string.Format("{0:0.00}",obj.Supplier_Shrinkage_Length_Washing.ToString());
            this.xl_Supplier_Shrinkage_Width_Washing.Text = obj.Supplier_Shrinkage_Width_Washing == null ? "" : string.Format("{0:0.00}",obj.Supplier_Shrinkage_Width_Washing.ToString());
            this.xl_Supplier_Shrinkage_Width_Ironing.Text = obj.Supplier_Shrinkage_Width_Ironing == null ? "" : string.Format("{0:0.00}",obj.Supplier_Shrinkage_Width_Ironing.ToString());
            this.xl_Supplier_Shrinkage_ColorFasteness.Text = obj.Supplier_Shrinkage_ColorFasteness == null ? "" : string.Format("{0:0.00}",obj.Supplier_Shrinkage_ColorFasteness.ToString());
            this.xl_Supplier_Conditions.Text = obj.Supplier_Conditions == null ? "" : string.Format("{0:0.00}",obj.Supplier_Conditions.ToString());
            this.xl_PH_UsableWidth.Text = obj.PH_UsableWidth == null ? "" : string.Format("{0:0.00}",obj.PH_UsableWidth);
            this.xl_PH_Weight_GmSqm.Text = obj.PH_Weight_GmSqm == null ? "" : string.Format("{0:0.00}",obj.PH_Weight_GmSqm.ToString());
            this.xl_PH_Weight_GmSqm_Per.Text = obj.PH_Weight_GmSqm_Per == null ? "" : string.Format("{0:0.00}",obj.PH_Weight_GmSqm_Per.ToString());
            this.xl_PH_Weight_LinearMeter.Text = obj.PH_Weight_LinearMeter == null ? "" : string.Format("{0:0.00}",obj.PH_Weight_LinearMeter.ToString());
            this.xl_PH_Weight_LinearMeter_Per.Text = obj.PH_Weight_LinearMeter_Per == null ? "" : string.Format("{0:0.00}",obj.PH_Weight_LinearMeter_Per.ToString());
            this.xl_PH_Relaxation_Width_Per.Text = obj.PH_Relaxation_Width_Per == null ? "" : string.Format("{0:0.00}",obj.PH_Relaxation_Width_Per.ToString());
            this.xl_PH_Pattern_Length.Text = obj.PH_Pattern_Length == null ? "" : string.Format("{0:0.00}",obj.PH_Pattern_Length.ToString());
            this.xl_PH_Pattern_Length_Per.Text = obj.PH_Pattern_Length_Per == null ? "" : string.Format("{0:0.00}",obj.PH_Pattern_Length_Per.ToString());
            this.xl_PH_Pattern_Width.Text = obj.PH_Pattern_Width == null ? "" : string.Format("{0:0.00}",obj.PH_Pattern_Width.ToString());
            this.xl_PH_Pattern_Width_Per.Text = obj.PH_Pattern_Width_Per == null ? "" : string.Format("{0:0.00}",obj.PH_Pattern_Width_Per.ToString());
            this.xl_PH_Elongation_Length.Text = obj.PH_Elongation_Length == null ? "" : string.Format("{0:0.00}",obj.PH_Elongation_Length.ToString());
            this.xl_PH_Elongation_Length_Per.Text = obj.PH_Elongation_Length_Per == null ? "" : string.Format("{0:0.00}",obj.PH_Elongation_Length_Per.ToString());
            this.xl_PH_Elongation_Width.Text = obj.PH_Elongation_Width == null ? "" : string.Format("{0:0.00}",obj.PH_Elongation_Width.ToString());
            this.xl_PH_Elongation_Width_Per.Text = obj.PH_Elongation_Width_Per == null ? "" : string.Format("{0:0.00}",obj.PH_Elongation_Width_Per.ToString());
            this.xl_PH_Shrinkage_Length_Washing.Text = obj.PH_Shrinkage_Length_Washing == null ? "" : string.Format("{0:0.00}",obj.PH_Shrinkage_Length_Washing.ToString());
            this.xl_PH_Shrinkage_Width_Washing.Text = obj.PH_Shrinkage_Width_Washing == null ? "" : string.Format("{0:0.00}",obj.PH_Shrinkage_Width_Washing.ToString());
            this.xl_PH_Shrinkage_Width_Ironing.Text = obj.PH_Shrinkage_Width_Ironing == null ? "" : string.Format("{0:0.00}",obj.PH_Shrinkage_Width_Ironing.ToString());
            this.xl_PH_Shrinkage_ColorFasteness.Text = obj.PH_Shrinkage_ColorFasteness == null ? "" : string.Format("{0:0.00}",obj.PH_Shrinkage_ColorFasteness.ToString());
            this.xl_PH_Conditions.Text = obj.PH_Conditions == null ? "" : string.Format("{0:0.00}",obj.PH_Conditions.ToString());
            this.xl_Oeko.Text = obj.Oeko == null ? "" : string.Format("{0:0.00}", obj.Oeko.ToString()); 
        
        
        }

        private void InitializeComponent()
        {
            this.xl_PH_Shrinkage_Width_Ironing = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel66 = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Shrinkage_ColorFasteness = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Shrinkage_Width_Washing = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Shrinkage_Length_Washing = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Elongation_Width_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Elongation_Width = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Elongation_Length = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Elongation_Length_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Pattern_Width_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Pattern_Width = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Pattern_Length = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Pattern_Length_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Conditions = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Relaxation_Width_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Relaxation_Length_per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Weight_LinearMeter = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_UsableWidth = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Weight_GmSqm = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Weight_LinearMeter_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_PH_Weight_GmSqm_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Oeko = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Shrinkage_ColorFasteness = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Shrinkage_Width_Ironing = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Shrinkage_Length_Ironin_g = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Shrinkage_Width_Washing = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Shrinkage_Length_Washing = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Elongation_Width_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Elongation_Length_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Elongation_Width = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Elongation_Length = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Pattern_Length = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Pattern_Width = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Pattern_Width_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Pattern_Length_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Conditions = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Relaxation_Width_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Relaxation_Length_per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Weight_LinearMeter = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Weight_GmSqm = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Weight_LinearMeter_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_Weight_GmSqm_Per = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_Supplier_UsableWidth = new DevExpress.XtraReports.UI.XRLabel();
            this.xl_SupplierWidth = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel65 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel64 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel63 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel62 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel61 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel60 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel59 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel58 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel57 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel56 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel55 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel54 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel53 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel52 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel51 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel50 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel49 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel48 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel47 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel46 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel45 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel44 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel17 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel16 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel15 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel14 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel13 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel12 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel11 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel10 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel9 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel8 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel7 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel6 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel18 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel19 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel20 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel21 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel22 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel23 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel24 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel25 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel26 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel27 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel28 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel29 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel30 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel31 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel32 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel33 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel34 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel35 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel36 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel37 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel38 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel39 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel40 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel41 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel42 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel43 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail1 = new DevExpress.XtraReports.UI.DetailBand();
            this.xrLine1 = new DevExpress.XtraReports.UI.XRLine();
            this.xrLine2 = new DevExpress.XtraReports.UI.XRLine();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // xl_PH_Shrinkage_Width_Ironing
            // 
            this.xl_PH_Shrinkage_Width_Ironing.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Shrinkage_Width_Ironing.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Shrinkage_Width_Ironing.Location = new System.Drawing.Point(317, 408);
            this.xl_PH_Shrinkage_Width_Ironing.Name = "xl_PH_Shrinkage_Width_Ironing";
            this.xl_PH_Shrinkage_Width_Ironing.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Shrinkage_Width_Ironing.Size = new System.Drawing.Size(108, 17);
            this.xl_PH_Shrinkage_Width_Ironing.StylePriority.UseBorders = false;
            // 
            // xrLabel66
            // 
            this.xrLabel66.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrLabel66.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel66.Location = new System.Drawing.Point(317, 42);
            this.xrLabel66.Name = "xrLabel66";
            this.xrLabel66.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel66.Size = new System.Drawing.Size(150, 17);
            this.xrLabel66.StylePriority.UseBorders = false;
            // 
            // xl_PH_Shrinkage_ColorFasteness
            // 
            this.xl_PH_Shrinkage_ColorFasteness.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Shrinkage_ColorFasteness.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Shrinkage_ColorFasteness.Location = new System.Drawing.Point(317, 425);
            this.xl_PH_Shrinkage_ColorFasteness.Name = "xl_PH_Shrinkage_ColorFasteness";
            this.xl_PH_Shrinkage_ColorFasteness.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Shrinkage_ColorFasteness.Size = new System.Drawing.Size(108, 17);
            this.xl_PH_Shrinkage_ColorFasteness.StylePriority.UseBorders = false;
            // 
            // xl_PH_Shrinkage_Width_Washing
            // 
            this.xl_PH_Shrinkage_Width_Washing.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Shrinkage_Width_Washing.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Shrinkage_Width_Washing.Location = new System.Drawing.Point(317, 392);
            this.xl_PH_Shrinkage_Width_Washing.Name = "xl_PH_Shrinkage_Width_Washing";
            this.xl_PH_Shrinkage_Width_Washing.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Shrinkage_Width_Washing.Size = new System.Drawing.Size(108, 17);
            this.xl_PH_Shrinkage_Width_Washing.StylePriority.UseBorders = false;
            // 
            // xl_PH_Shrinkage_Length_Washing
            // 
            this.xl_PH_Shrinkage_Length_Washing.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Shrinkage_Length_Washing.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Shrinkage_Length_Washing.Location = new System.Drawing.Point(317, 375);
            this.xl_PH_Shrinkage_Length_Washing.Name = "xl_PH_Shrinkage_Length_Washing";
            this.xl_PH_Shrinkage_Length_Washing.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Shrinkage_Length_Washing.Size = new System.Drawing.Size(108, 17);
            this.xl_PH_Shrinkage_Length_Washing.StylePriority.UseBorders = false;
            // 
            // xl_PH_Elongation_Width_Per
            // 
            this.xl_PH_Elongation_Width_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Elongation_Width_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Elongation_Width_Per.Location = new System.Drawing.Point(317, 358);
            this.xl_PH_Elongation_Width_Per.Name = "xl_PH_Elongation_Width_Per";
            this.xl_PH_Elongation_Width_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Elongation_Width_Per.Size = new System.Drawing.Size(108, 17);
            this.xl_PH_Elongation_Width_Per.StylePriority.UseBorders = false;
            // 
            // xl_PH_Elongation_Width
            // 
            this.xl_PH_Elongation_Width.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Elongation_Width.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Elongation_Width.Location = new System.Drawing.Point(392, 308);
            this.xl_PH_Elongation_Width.Name = "xl_PH_Elongation_Width";
            this.xl_PH_Elongation_Width.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Elongation_Width.Size = new System.Drawing.Size(33, 17);
            this.xl_PH_Elongation_Width.StylePriority.UseBorders = false;
            // 
            // xl_PH_Elongation_Length
            // 
            this.xl_PH_Elongation_Length.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Elongation_Length.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Elongation_Length.Location = new System.Drawing.Point(392, 292);
            this.xl_PH_Elongation_Length.Name = "xl_PH_Elongation_Length";
            this.xl_PH_Elongation_Length.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Elongation_Length.Size = new System.Drawing.Size(33, 17);
            this.xl_PH_Elongation_Length.StylePriority.UseBorders = false;
            // 
            // xl_PH_Elongation_Length_Per
            // 
            this.xl_PH_Elongation_Length_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Elongation_Length_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Elongation_Length_Per.Location = new System.Drawing.Point(317, 308);
            this.xl_PH_Elongation_Length_Per.Name = "xl_PH_Elongation_Length_Per";
            this.xl_PH_Elongation_Length_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Elongation_Length_Per.Size = new System.Drawing.Size(33, 17);
            this.xl_PH_Elongation_Length_Per.StylePriority.UseBorders = false;
            // 
            // xl_PH_Pattern_Width_Per
            // 
            this.xl_PH_Pattern_Width_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Pattern_Width_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Pattern_Width_Per.Location = new System.Drawing.Point(317, 292);
            this.xl_PH_Pattern_Width_Per.Name = "xl_PH_Pattern_Width_Per";
            this.xl_PH_Pattern_Width_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Pattern_Width_Per.Size = new System.Drawing.Size(33, 17);
            this.xl_PH_Pattern_Width_Per.StylePriority.UseBorders = false;
            // 
            // xl_PH_Pattern_Width
            // 
            this.xl_PH_Pattern_Width.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Pattern_Width.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Pattern_Width.Location = new System.Drawing.Point(392, 242);
            this.xl_PH_Pattern_Width.Name = "xl_PH_Pattern_Width";
            this.xl_PH_Pattern_Width.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Pattern_Width.Size = new System.Drawing.Size(33, 17);
            this.xl_PH_Pattern_Width.StylePriority.UseBorders = false;
            // 
            // xl_PH_Pattern_Length
            // 
            this.xl_PH_Pattern_Length.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Pattern_Length.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Pattern_Length.Location = new System.Drawing.Point(392, 225);
            this.xl_PH_Pattern_Length.Name = "xl_PH_Pattern_Length";
            this.xl_PH_Pattern_Length.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Pattern_Length.Size = new System.Drawing.Size(33, 17);
            this.xl_PH_Pattern_Length.StylePriority.UseBorders = false;
            // 
            // xl_PH_Pattern_Length_Per
            // 
            this.xl_PH_Pattern_Length_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Pattern_Length_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Pattern_Length_Per.Location = new System.Drawing.Point(317, 242);
            this.xl_PH_Pattern_Length_Per.Name = "xl_PH_Pattern_Length_Per";
            this.xl_PH_Pattern_Length_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Pattern_Length_Per.Size = new System.Drawing.Size(33, 17);
            this.xl_PH_Pattern_Length_Per.StylePriority.UseBorders = false;
            // 
            // xl_PH_Conditions
            // 
            this.xl_PH_Conditions.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Conditions.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Conditions.Location = new System.Drawing.Point(317, 225);
            this.xl_PH_Conditions.Name = "xl_PH_Conditions";
            this.xl_PH_Conditions.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Conditions.Size = new System.Drawing.Size(33, 17);
            this.xl_PH_Conditions.StylePriority.UseBorders = false;
            // 
            // xl_PH_Relaxation_Width_Per
            // 
            this.xl_PH_Relaxation_Width_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Relaxation_Width_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Relaxation_Width_Per.Location = new System.Drawing.Point(317, 175);
            this.xl_PH_Relaxation_Width_Per.Name = "xl_PH_Relaxation_Width_Per";
            this.xl_PH_Relaxation_Width_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Relaxation_Width_Per.Size = new System.Drawing.Size(100, 17);
            this.xl_PH_Relaxation_Width_Per.StylePriority.UseBorders = false;
            // 
            // xl_PH_Relaxation_Length_per
            // 
            this.xl_PH_Relaxation_Length_per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Relaxation_Length_per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Relaxation_Length_per.Location = new System.Drawing.Point(317, 158);
            this.xl_PH_Relaxation_Length_per.Name = "xl_PH_Relaxation_Length_per";
            this.xl_PH_Relaxation_Length_per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Relaxation_Length_per.Size = new System.Drawing.Size(100, 17);
            this.xl_PH_Relaxation_Length_per.StylePriority.UseBorders = false;
            // 
            // xl_PH_Weight_LinearMeter
            // 
            this.xl_PH_Weight_LinearMeter.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Weight_LinearMeter.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Weight_LinearMeter.Location = new System.Drawing.Point(317, 142);
            this.xl_PH_Weight_LinearMeter.Name = "xl_PH_Weight_LinearMeter";
            this.xl_PH_Weight_LinearMeter.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Weight_LinearMeter.Size = new System.Drawing.Size(100, 17);
            this.xl_PH_Weight_LinearMeter.StylePriority.UseBorders = false;
            // 
            // xl_PH_UsableWidth
            // 
            this.xl_PH_UsableWidth.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_UsableWidth.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_UsableWidth.Location = new System.Drawing.Point(317, 83);
            this.xl_PH_UsableWidth.Name = "xl_PH_UsableWidth";
            this.xl_PH_UsableWidth.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_UsableWidth.Size = new System.Drawing.Size(33, 17);
            this.xl_PH_UsableWidth.StylePriority.UseBorders = false;
            // 
            // xl_PH_Weight_GmSqm
            // 
            this.xl_PH_Weight_GmSqm.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Weight_GmSqm.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Weight_GmSqm.Location = new System.Drawing.Point(317, 100);
            this.xl_PH_Weight_GmSqm.Name = "xl_PH_Weight_GmSqm";
            this.xl_PH_Weight_GmSqm.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Weight_GmSqm.Size = new System.Drawing.Size(33, 17);
            this.xl_PH_Weight_GmSqm.StylePriority.UseBorders = false;
            // 
            // xl_PH_Weight_LinearMeter_Per
            // 
            this.xl_PH_Weight_LinearMeter_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Weight_LinearMeter_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Weight_LinearMeter_Per.Location = new System.Drawing.Point(375, 100);
            this.xl_PH_Weight_LinearMeter_Per.Name = "xl_PH_Weight_LinearMeter_Per";
            this.xl_PH_Weight_LinearMeter_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Weight_LinearMeter_Per.Size = new System.Drawing.Size(42, 17);
            this.xl_PH_Weight_LinearMeter_Per.StylePriority.UseBorders = false;
            // 
            // xl_PH_Weight_GmSqm_Per
            // 
            this.xl_PH_Weight_GmSqm_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_PH_Weight_GmSqm_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_PH_Weight_GmSqm_Per.Location = new System.Drawing.Point(375, 83);
            this.xl_PH_Weight_GmSqm_Per.Name = "xl_PH_Weight_GmSqm_Per";
            this.xl_PH_Weight_GmSqm_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_PH_Weight_GmSqm_Per.Size = new System.Drawing.Size(42, 17);
            this.xl_PH_Weight_GmSqm_Per.StylePriority.UseBorders = false;
            // 
            // xl_Oeko
            // 
            this.xl_Oeko.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Oeko.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Oeko.Location = new System.Drawing.Point(142, 442);
            this.xl_Oeko.Name = "xl_Oeko";
            this.xl_Oeko.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Oeko.Size = new System.Drawing.Size(125, 17);
            this.xl_Oeko.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Shrinkage_ColorFasteness
            // 
            this.xl_Supplier_Shrinkage_ColorFasteness.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Shrinkage_ColorFasteness.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Shrinkage_ColorFasteness.Location = new System.Drawing.Point(142, 425);
            this.xl_Supplier_Shrinkage_ColorFasteness.Name = "xl_Supplier_Shrinkage_ColorFasteness";
            this.xl_Supplier_Shrinkage_ColorFasteness.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Shrinkage_ColorFasteness.Size = new System.Drawing.Size(125, 17);
            this.xl_Supplier_Shrinkage_ColorFasteness.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Shrinkage_Width_Ironing
            // 
            this.xl_Supplier_Shrinkage_Width_Ironing.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Shrinkage_Width_Ironing.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Shrinkage_Width_Ironing.Location = new System.Drawing.Point(142, 408);
            this.xl_Supplier_Shrinkage_Width_Ironing.Name = "xl_Supplier_Shrinkage_Width_Ironing";
            this.xl_Supplier_Shrinkage_Width_Ironing.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Shrinkage_Width_Ironing.Size = new System.Drawing.Size(125, 17);
            this.xl_Supplier_Shrinkage_Width_Ironing.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Shrinkage_Length_Ironin_g
            // 
            this.xl_Supplier_Shrinkage_Length_Ironin_g.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Shrinkage_Length_Ironin_g.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Shrinkage_Length_Ironin_g.Location = new System.Drawing.Point(142, 392);
            this.xl_Supplier_Shrinkage_Length_Ironin_g.Name = "xl_Supplier_Shrinkage_Length_Ironin_g";
            this.xl_Supplier_Shrinkage_Length_Ironin_g.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Shrinkage_Length_Ironin_g.Size = new System.Drawing.Size(125, 17);
            this.xl_Supplier_Shrinkage_Length_Ironin_g.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Shrinkage_Width_Washing
            // 
            this.xl_Supplier_Shrinkage_Width_Washing.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Shrinkage_Width_Washing.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Shrinkage_Width_Washing.Location = new System.Drawing.Point(142, 375);
            this.xl_Supplier_Shrinkage_Width_Washing.Name = "xl_Supplier_Shrinkage_Width_Washing";
            this.xl_Supplier_Shrinkage_Width_Washing.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Shrinkage_Width_Washing.Size = new System.Drawing.Size(125, 17);
            this.xl_Supplier_Shrinkage_Width_Washing.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Shrinkage_Length_Washing
            // 
            this.xl_Supplier_Shrinkage_Length_Washing.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Shrinkage_Length_Washing.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Shrinkage_Length_Washing.Location = new System.Drawing.Point(142, 358);
            this.xl_Supplier_Shrinkage_Length_Washing.Name = "xl_Supplier_Shrinkage_Length_Washing";
            this.xl_Supplier_Shrinkage_Length_Washing.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Shrinkage_Length_Washing.Size = new System.Drawing.Size(125, 17);
            this.xl_Supplier_Shrinkage_Length_Washing.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Elongation_Width_Per
            // 
            this.xl_Supplier_Elongation_Width_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Elongation_Width_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Elongation_Width_Per.Location = new System.Drawing.Point(217, 308);
            this.xl_Supplier_Elongation_Width_Per.Name = "xl_Supplier_Elongation_Width_Per";
            this.xl_Supplier_Elongation_Width_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Elongation_Width_Per.Size = new System.Drawing.Size(42, 17);
            this.xl_Supplier_Elongation_Width_Per.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Elongation_Length_Per
            // 
            this.xl_Supplier_Elongation_Length_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Elongation_Length_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Elongation_Length_Per.Location = new System.Drawing.Point(217, 292);
            this.xl_Supplier_Elongation_Length_Per.Name = "xl_Supplier_Elongation_Length_Per";
            this.xl_Supplier_Elongation_Length_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Elongation_Length_Per.Size = new System.Drawing.Size(42, 17);
            this.xl_Supplier_Elongation_Length_Per.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Elongation_Width
            // 
            this.xl_Supplier_Elongation_Width.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Elongation_Width.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Elongation_Width.Location = new System.Drawing.Point(92, 308);
            this.xl_Supplier_Elongation_Width.Name = "xl_Supplier_Elongation_Width";
            this.xl_Supplier_Elongation_Width.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Elongation_Width.Size = new System.Drawing.Size(83, 17);
            this.xl_Supplier_Elongation_Width.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Elongation_Length
            // 
            this.xl_Supplier_Elongation_Length.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Elongation_Length.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Elongation_Length.Location = new System.Drawing.Point(92, 292);
            this.xl_Supplier_Elongation_Length.Name = "xl_Supplier_Elongation_Length";
            this.xl_Supplier_Elongation_Length.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Elongation_Length.Size = new System.Drawing.Size(83, 17);
            this.xl_Supplier_Elongation_Length.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Pattern_Length
            // 
            this.xl_Supplier_Pattern_Length.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Pattern_Length.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Pattern_Length.Location = new System.Drawing.Point(92, 225);
            this.xl_Supplier_Pattern_Length.Name = "xl_Supplier_Pattern_Length";
            this.xl_Supplier_Pattern_Length.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Pattern_Length.Size = new System.Drawing.Size(83, 17);
            this.xl_Supplier_Pattern_Length.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Pattern_Width
            // 
            this.xl_Supplier_Pattern_Width.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Pattern_Width.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Pattern_Width.Location = new System.Drawing.Point(92, 242);
            this.xl_Supplier_Pattern_Width.Name = "xl_Supplier_Pattern_Width";
            this.xl_Supplier_Pattern_Width.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Pattern_Width.Size = new System.Drawing.Size(83, 17);
            this.xl_Supplier_Pattern_Width.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Pattern_Width_Per
            // 
            this.xl_Supplier_Pattern_Width_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Pattern_Width_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Pattern_Width_Per.Location = new System.Drawing.Point(217, 242);
            this.xl_Supplier_Pattern_Width_Per.Name = "xl_Supplier_Pattern_Width_Per";
            this.xl_Supplier_Pattern_Width_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Pattern_Width_Per.Size = new System.Drawing.Size(42, 17);
            this.xl_Supplier_Pattern_Width_Per.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Pattern_Length_Per
            // 
            this.xl_Supplier_Pattern_Length_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Pattern_Length_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Pattern_Length_Per.Location = new System.Drawing.Point(217, 225);
            this.xl_Supplier_Pattern_Length_Per.Name = "xl_Supplier_Pattern_Length_Per";
            this.xl_Supplier_Pattern_Length_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Pattern_Length_Per.Size = new System.Drawing.Size(42, 17);
            this.xl_Supplier_Pattern_Length_Per.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Conditions
            // 
            this.xl_Supplier_Conditions.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Conditions.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Conditions.Location = new System.Drawing.Point(133, 175);
            this.xl_Supplier_Conditions.Name = "xl_Supplier_Conditions";
            this.xl_Supplier_Conditions.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Conditions.Size = new System.Drawing.Size(92, 17);
            this.xl_Supplier_Conditions.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Relaxation_Width_Per
            // 
            this.xl_Supplier_Relaxation_Width_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Relaxation_Width_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Relaxation_Width_Per.Location = new System.Drawing.Point(133, 158);
            this.xl_Supplier_Relaxation_Width_Per.Name = "xl_Supplier_Relaxation_Width_Per";
            this.xl_Supplier_Relaxation_Width_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Relaxation_Width_Per.Size = new System.Drawing.Size(92, 17);
            this.xl_Supplier_Relaxation_Width_Per.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Relaxation_Length_per
            // 
            this.xl_Supplier_Relaxation_Length_per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Relaxation_Length_per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Relaxation_Length_per.Location = new System.Drawing.Point(133, 142);
            this.xl_Supplier_Relaxation_Length_per.Name = "xl_Supplier_Relaxation_Length_per";
            this.xl_Supplier_Relaxation_Length_per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Relaxation_Length_per.Size = new System.Drawing.Size(92, 17);
            this.xl_Supplier_Relaxation_Length_per.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Weight_LinearMeter
            // 
            this.xl_Supplier_Weight_LinearMeter.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Weight_LinearMeter.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Weight_LinearMeter.Location = new System.Drawing.Point(233, 100);
            this.xl_Supplier_Weight_LinearMeter.Name = "xl_Supplier_Weight_LinearMeter";
            this.xl_Supplier_Weight_LinearMeter.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Weight_LinearMeter.Size = new System.Drawing.Size(42, 17);
            this.xl_Supplier_Weight_LinearMeter.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Weight_GmSqm
            // 
            this.xl_Supplier_Weight_GmSqm.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Weight_GmSqm.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Weight_GmSqm.Location = new System.Drawing.Point(233, 83);
            this.xl_Supplier_Weight_GmSqm.Name = "xl_Supplier_Weight_GmSqm";
            this.xl_Supplier_Weight_GmSqm.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Weight_GmSqm.Size = new System.Drawing.Size(42, 17);
            this.xl_Supplier_Weight_GmSqm.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Weight_LinearMeter_Per
            // 
            this.xl_Supplier_Weight_LinearMeter_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Weight_LinearMeter_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Weight_LinearMeter_Per.Location = new System.Drawing.Point(100, 100);
            this.xl_Supplier_Weight_LinearMeter_Per.Name = "xl_Supplier_Weight_LinearMeter_Per";
            this.xl_Supplier_Weight_LinearMeter_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Weight_LinearMeter_Per.Size = new System.Drawing.Size(83, 17);
            this.xl_Supplier_Weight_LinearMeter_Per.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_Weight_GmSqm_Per
            // 
            this.xl_Supplier_Weight_GmSqm_Per.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_Weight_GmSqm_Per.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_Weight_GmSqm_Per.Location = new System.Drawing.Point(100, 83);
            this.xl_Supplier_Weight_GmSqm_Per.Name = "xl_Supplier_Weight_GmSqm_Per";
            this.xl_Supplier_Weight_GmSqm_Per.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_Weight_GmSqm_Per.Size = new System.Drawing.Size(83, 17);
            this.xl_Supplier_Weight_GmSqm_Per.StylePriority.UseBorders = false;
            // 
            // xl_Supplier_UsableWidth
            // 
            this.xl_Supplier_UsableWidth.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_Supplier_UsableWidth.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_Supplier_UsableWidth.Location = new System.Drawing.Point(142, 42);
            this.xl_Supplier_UsableWidth.Name = "xl_Supplier_UsableWidth";
            this.xl_Supplier_UsableWidth.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_Supplier_UsableWidth.Size = new System.Drawing.Size(133, 17);
            this.xl_Supplier_UsableWidth.StylePriority.UseBorders = false;
            // 
            // xl_SupplierWidth
            // 
            this.xl_SupplierWidth.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xl_SupplierWidth.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xl_SupplierWidth.Location = new System.Drawing.Point(142, 25);
            this.xl_SupplierWidth.Name = "xl_SupplierWidth";
            this.xl_SupplierWidth.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xl_SupplierWidth.Size = new System.Drawing.Size(133, 17);
            this.xl_SupplierWidth.StylePriority.UseBorders = false;
            // 
            // xrLabel65
            // 
            this.xrLabel65.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel65.Location = new System.Drawing.Point(425, 408);
            this.xrLabel65.Name = "xrLabel65";
            this.xrLabel65.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel65.Size = new System.Drawing.Size(33, 17);
            this.xrLabel65.Text = "deg";
            // 
            // xrLabel64
            // 
            this.xrLabel64.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel64.Location = new System.Drawing.Point(425, 392);
            this.xrLabel64.Name = "xrLabel64";
            this.xrLabel64.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel64.Size = new System.Drawing.Size(33, 17);
            this.xrLabel64.Text = "+/-%";
            // 
            // xrLabel63
            // 
            this.xrLabel63.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel63.Location = new System.Drawing.Point(425, 375);
            this.xrLabel63.Name = "xrLabel63";
            this.xrLabel63.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel63.Size = new System.Drawing.Size(33, 17);
            this.xrLabel63.Text = "+/-%";
            // 
            // xrLabel62
            // 
            this.xrLabel62.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel62.Location = new System.Drawing.Point(425, 425);
            this.xrLabel62.Name = "xrLabel62";
            this.xrLabel62.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel62.Size = new System.Drawing.Size(33, 17);
            this.xrLabel62.Text = "+/-%";
            // 
            // xrLabel61
            // 
            this.xrLabel61.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel61.Location = new System.Drawing.Point(425, 358);
            this.xrLabel61.Name = "xrLabel61";
            this.xrLabel61.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel61.Size = new System.Drawing.Size(33, 17);
            this.xrLabel61.Text = "+/-%";
            // 
            // xrLabel60
            // 
            this.xrLabel60.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel60.Location = new System.Drawing.Point(425, 292);
            this.xrLabel60.Name = "xrLabel60";
            this.xrLabel60.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel60.Size = new System.Drawing.Size(33, 17);
            this.xrLabel60.Text = "kg";
            // 
            // xrLabel59
            // 
            this.xrLabel59.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel59.Location = new System.Drawing.Point(425, 308);
            this.xrLabel59.Name = "xrLabel59";
            this.xrLabel59.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel59.Size = new System.Drawing.Size(33, 17);
            this.xrLabel59.Text = "kg";
            // 
            // xrLabel58
            // 
            this.xrLabel58.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel58.Location = new System.Drawing.Point(350, 308);
            this.xrLabel58.Name = "xrLabel58";
            this.xrLabel58.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel58.Size = new System.Drawing.Size(33, 17);
            this.xrLabel58.Text = "+/-%";
            // 
            // xrLabel57
            // 
            this.xrLabel57.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel57.Location = new System.Drawing.Point(350, 292);
            this.xrLabel57.Name = "xrLabel57";
            this.xrLabel57.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel57.Size = new System.Drawing.Size(33, 17);
            this.xrLabel57.Text = "+/-%";
            // 
            // xrLabel56
            // 
            this.xrLabel56.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel56.Location = new System.Drawing.Point(425, 225);
            this.xrLabel56.Name = "xrLabel56";
            this.xrLabel56.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel56.Size = new System.Drawing.Size(33, 17);
            this.xrLabel56.Text = "mm";
            // 
            // xrLabel55
            // 
            this.xrLabel55.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel55.Location = new System.Drawing.Point(425, 242);
            this.xrLabel55.Name = "xrLabel55";
            this.xrLabel55.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel55.Size = new System.Drawing.Size(33, 17);
            this.xrLabel55.Text = "mm";
            // 
            // xrLabel54
            // 
            this.xrLabel54.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel54.Location = new System.Drawing.Point(350, 242);
            this.xrLabel54.Name = "xrLabel54";
            this.xrLabel54.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel54.Size = new System.Drawing.Size(33, 17);
            this.xrLabel54.Text = "+/-%";
            // 
            // xrLabel53
            // 
            this.xrLabel53.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel53.Location = new System.Drawing.Point(350, 225);
            this.xrLabel53.Name = "xrLabel53";
            this.xrLabel53.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel53.Size = new System.Drawing.Size(33, 17);
            this.xrLabel53.Text = "+/-%";
            // 
            // xrLabel52
            // 
            this.xrLabel52.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel52.Location = new System.Drawing.Point(417, 158);
            this.xrLabel52.Name = "xrLabel52";
            this.xrLabel52.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel52.Size = new System.Drawing.Size(33, 17);
            this.xrLabel52.Text = "%";
            // 
            // xrLabel51
            // 
            this.xrLabel51.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel51.Location = new System.Drawing.Point(417, 175);
            this.xrLabel51.Name = "xrLabel51";
            this.xrLabel51.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel51.Size = new System.Drawing.Size(33, 17);
            this.xrLabel51.Text = "%";
            // 
            // xrLabel50
            // 
            this.xrLabel50.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel50.Location = new System.Drawing.Point(417, 142);
            this.xrLabel50.Name = "xrLabel50";
            this.xrLabel50.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel50.Size = new System.Drawing.Size(33, 17);
            this.xrLabel50.Text = "%";
            // 
            // xrLabel49
            // 
            this.xrLabel49.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel49.Location = new System.Drawing.Point(417, 83);
            this.xrLabel49.Name = "xrLabel49";
            this.xrLabel49.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel49.Size = new System.Drawing.Size(33, 17);
            this.xrLabel49.Text = "+/-%";
            // 
            // xrLabel48
            // 
            this.xrLabel48.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel48.Location = new System.Drawing.Point(417, 100);
            this.xrLabel48.Name = "xrLabel48";
            this.xrLabel48.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel48.Size = new System.Drawing.Size(33, 17);
            this.xrLabel48.Text = "+/-%";
            // 
            // xrLabel47
            // 
            this.xrLabel47.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel47.Location = new System.Drawing.Point(350, 100);
            this.xrLabel47.Name = "xrLabel47";
            this.xrLabel47.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel47.Size = new System.Drawing.Size(25, 17);
            this.xrLabel47.Text = "gm";
            // 
            // xrLabel46
            // 
            this.xrLabel46.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel46.Location = new System.Drawing.Point(350, 83);
            this.xrLabel46.Name = "xrLabel46";
            this.xrLabel46.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel46.Size = new System.Drawing.Size(25, 17);
            this.xrLabel46.Text = "gm";
            // 
            // xrLabel45
            // 
            this.xrLabel45.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel45.Location = new System.Drawing.Point(317, 25);
            this.xrLabel45.Name = "xrLabel45";
            this.xrLabel45.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel45.Size = new System.Drawing.Size(150, 17);
            this.xrLabel45.Text = "[FOR PH STANDARD] :  ";
            // 
            // xrLabel44
            // 
            this.xrLabel44.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel44.Location = new System.Drawing.Point(267, 425);
            this.xrLabel44.Name = "xrLabel44";
            this.xrLabel44.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel44.Size = new System.Drawing.Size(33, 17);
            this.xrLabel44.Text = "deg";
            // 
            // xrLabel17
            // 
            this.xrLabel17.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold);
            this.xrLabel17.Location = new System.Drawing.Point(17, 275);
            this.xrLabel17.Name = "xrLabel17";
            this.xrLabel17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel17.Size = new System.Drawing.Size(233, 17);
            this.xrLabel17.Text = "Natural Relaxation : (Linear metric)";
            // 
            // xrLabel16
            // 
            this.xrLabel16.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel16.Location = new System.Drawing.Point(183, 242);
            this.xrLabel16.Name = "xrLabel16";
            this.xrLabel16.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel16.Size = new System.Drawing.Size(33, 17);
            this.xrLabel16.Text = "mm";
            // 
            // xrLabel15
            // 
            this.xrLabel15.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel15.Location = new System.Drawing.Point(183, 225);
            this.xrLabel15.Name = "xrLabel15";
            this.xrLabel15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel15.Size = new System.Drawing.Size(33, 17);
            this.xrLabel15.Text = "mm";
            // 
            // xrLabel14
            // 
            this.xrLabel14.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel14.Location = new System.Drawing.Point(17, 225);
            this.xrLabel14.Name = "xrLabel14";
            this.xrLabel14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel14.Size = new System.Drawing.Size(67, 17);
            this.xrLabel14.Text = "Length";
            // 
            // xrLabel13
            // 
            this.xrLabel13.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel13.Location = new System.Drawing.Point(17, 242);
            this.xrLabel13.Name = "xrLabel13";
            this.xrLabel13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel13.Size = new System.Drawing.Size(67, 17);
            this.xrLabel13.Text = "Width";
            // 
            // xrLabel12
            // 
            this.xrLabel12.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold);
            this.xrLabel12.Location = new System.Drawing.Point(17, 208);
            this.xrLabel12.Name = "xrLabel12";
            this.xrLabel12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel12.Size = new System.Drawing.Size(233, 17);
            this.xrLabel12.Text = "Natural Relaxation : (Linear metric)";
            // 
            // xrLabel11
            // 
            this.xrLabel11.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel11.Location = new System.Drawing.Point(17, 175);
            this.xrLabel11.Name = "xrLabel11";
            this.xrLabel11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel11.Size = new System.Drawing.Size(108, 17);
            this.xrLabel11.Text = "Natural Relaxation";
            // 
            // xrLabel10
            // 
            this.xrLabel10.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel10.Location = new System.Drawing.Point(17, 158);
            this.xrLabel10.Name = "xrLabel10";
            this.xrLabel10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel10.Size = new System.Drawing.Size(108, 17);
            this.xrLabel10.Text = "Width/wept";
            // 
            // xrLabel9
            // 
            this.xrLabel9.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel9.Location = new System.Drawing.Point(17, 142);
            this.xrLabel9.Name = "xrLabel9";
            this.xrLabel9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel9.Size = new System.Drawing.Size(108, 17);
            this.xrLabel9.Text = "Length/wrap";
            // 
            // xrLabel8
            // 
            this.xrLabel8.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold);
            this.xrLabel8.Location = new System.Drawing.Point(17, 125);
            this.xrLabel8.Name = "xrLabel8";
            this.xrLabel8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel8.Size = new System.Drawing.Size(233, 17);
            this.xrLabel8.Text = "Natural Relaxation : (Linear metric)";
            // 
            // xrLabel7
            // 
            this.xrLabel7.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel7.Location = new System.Drawing.Point(17, 100);
            this.xrLabel7.Name = "xrLabel7";
            this.xrLabel7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel7.Size = new System.Drawing.Size(75, 17);
            this.xrLabel7.Text = "linear meter";
            // 
            // xrLabel6
            // 
            this.xrLabel6.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel6.Location = new System.Drawing.Point(17, 42);
            this.xrLabel6.Name = "xrLabel6";
            this.xrLabel6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel6.Size = new System.Drawing.Size(108, 17);
            this.xrLabel6.Text = "Usable Width";
            // 
            // xrLabel5
            // 
            this.xrLabel5.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel5.Location = new System.Drawing.Point(17, 83);
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(75, 17);
            this.xrLabel5.Text = "gm/sqm";
            // 
            // xrLabel4
            // 
            this.xrLabel4.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold);
            this.xrLabel4.Location = new System.Drawing.Point(17, 67);
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(108, 17);
            this.xrLabel4.Text = "Weight : ";
            // 
            // xrLabel3
            // 
            this.xrLabel3.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel3.Location = new System.Drawing.Point(17, 25);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(108, 17);
            this.xrLabel3.Text = "Supplier Width";
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold);
            this.xrLabel2.Location = new System.Drawing.Point(17, 8);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(133, 17);
            this.xrLabel2.Text = "[FOR SUPPLIER]";
            // 
            // xrLabel18
            // 
            this.xrLabel18.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel18.Location = new System.Drawing.Point(17, 292);
            this.xrLabel18.Name = "xrLabel18";
            this.xrLabel18.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel18.Size = new System.Drawing.Size(67, 17);
            this.xrLabel18.Text = "Width";
            // 
            // xrLabel19
            // 
            this.xrLabel19.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel19.Location = new System.Drawing.Point(175, 308);
            this.xrLabel19.Name = "xrLabel19";
            this.xrLabel19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel19.Size = new System.Drawing.Size(33, 17);
            this.xrLabel19.Text = "kg";
            // 
            // xrLabel20
            // 
            this.xrLabel20.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel20.Location = new System.Drawing.Point(17, 308);
            this.xrLabel20.Name = "xrLabel20";
            this.xrLabel20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel20.Size = new System.Drawing.Size(67, 17);
            this.xrLabel20.Text = "Length";
            // 
            // xrLabel21
            // 
            this.xrLabel21.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel21.Location = new System.Drawing.Point(175, 292);
            this.xrLabel21.Name = "xrLabel21";
            this.xrLabel21.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel21.Size = new System.Drawing.Size(33, 17);
            this.xrLabel21.Text = "kg";
            // 
            // xrLabel22
            // 
            this.xrLabel22.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold);
            this.xrLabel22.Location = new System.Drawing.Point(17, 342);
            this.xrLabel22.Name = "xrLabel22";
            this.xrLabel22.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel22.Size = new System.Drawing.Size(233, 17);
            this.xrLabel22.Text = "Natural Relaxation : (Linear metric)";
            // 
            // xrLabel23
            // 
            this.xrLabel23.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel23.Location = new System.Drawing.Point(17, 375);
            this.xrLabel23.Name = "xrLabel23";
            this.xrLabel23.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel23.Size = new System.Drawing.Size(100, 17);
            this.xrLabel23.Text = "Washing-Width";
            // 
            // xrLabel24
            // 
            this.xrLabel24.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel24.Location = new System.Drawing.Point(17, 358);
            this.xrLabel24.Name = "xrLabel24";
            this.xrLabel24.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel24.Size = new System.Drawing.Size(100, 17);
            this.xrLabel24.Text = "Washing-Length";
            // 
            // xrLabel25
            // 
            this.xrLabel25.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel25.Location = new System.Drawing.Point(17, 392);
            this.xrLabel25.Name = "xrLabel25";
            this.xrLabel25.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel25.Size = new System.Drawing.Size(100, 17);
            this.xrLabel25.Text = "Ironing-Length";
            // 
            // xrLabel26
            // 
            this.xrLabel26.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel26.Location = new System.Drawing.Point(17, 408);
            this.xrLabel26.Name = "xrLabel26";
            this.xrLabel26.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel26.Size = new System.Drawing.Size(100, 17);
            this.xrLabel26.Text = "Ironing-Width";
            // 
            // xrLabel27
            // 
            this.xrLabel27.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel27.Location = new System.Drawing.Point(17, 425);
            this.xrLabel27.Name = "xrLabel27";
            this.xrLabel27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel27.Size = new System.Drawing.Size(100, 17);
            this.xrLabel27.Text = "Color fasteness";
            // 
            // xrLabel28
            // 
            this.xrLabel28.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel28.Location = new System.Drawing.Point(17, 442);
            this.xrLabel28.Name = "xrLabel28";
            this.xrLabel28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel28.Size = new System.Drawing.Size(125, 17);
            this.xrLabel28.Text = "Oeko standard-100 OK ";
            // 
            // xrLabel29
            // 
            this.xrLabel29.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel29.Location = new System.Drawing.Point(183, 100);
            this.xrLabel29.Name = "xrLabel29";
            this.xrLabel29.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel29.Size = new System.Drawing.Size(33, 17);
            this.xrLabel29.Text = "+/-%";
            // 
            // xrLabel30
            // 
            this.xrLabel30.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel30.Location = new System.Drawing.Point(183, 83);
            this.xrLabel30.Name = "xrLabel30";
            this.xrLabel30.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel30.Size = new System.Drawing.Size(33, 17);
            this.xrLabel30.Text = "+/-%";
            // 
            // xrLabel31
            // 
            this.xrLabel31.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel31.Location = new System.Drawing.Point(275, 100);
            this.xrLabel31.Name = "xrLabel31";
            this.xrLabel31.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel31.Size = new System.Drawing.Size(25, 17);
            this.xrLabel31.Text = "gm";
            // 
            // xrLabel32
            // 
            this.xrLabel32.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel32.Location = new System.Drawing.Point(275, 83);
            this.xrLabel32.Name = "xrLabel32";
            this.xrLabel32.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel32.Size = new System.Drawing.Size(25, 17);
            this.xrLabel32.Text = "gm";
            // 
            // xrLabel33
            // 
            this.xrLabel33.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel33.Location = new System.Drawing.Point(225, 142);
            this.xrLabel33.Name = "xrLabel33";
            this.xrLabel33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel33.Size = new System.Drawing.Size(33, 17);
            this.xrLabel33.Text = "%";
            // 
            // xrLabel34
            // 
            this.xrLabel34.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel34.Location = new System.Drawing.Point(225, 158);
            this.xrLabel34.Name = "xrLabel34";
            this.xrLabel34.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel34.Size = new System.Drawing.Size(33, 17);
            this.xrLabel34.Text = "%";
            // 
            // xrLabel35
            // 
            this.xrLabel35.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel35.Location = new System.Drawing.Point(225, 175);
            this.xrLabel35.Name = "xrLabel35";
            this.xrLabel35.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel35.Size = new System.Drawing.Size(33, 17);
            this.xrLabel35.Text = "%";
            // 
            // xrLabel36
            // 
            this.xrLabel36.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel36.Location = new System.Drawing.Point(258, 225);
            this.xrLabel36.Name = "xrLabel36";
            this.xrLabel36.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel36.Size = new System.Drawing.Size(33, 17);
            this.xrLabel36.Text = "+/-%";
            // 
            // xrLabel37
            // 
            this.xrLabel37.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel37.Location = new System.Drawing.Point(258, 242);
            this.xrLabel37.Name = "xrLabel37";
            this.xrLabel37.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel37.Size = new System.Drawing.Size(33, 17);
            this.xrLabel37.Text = "+/-%";
            // 
            // xrLabel38
            // 
            this.xrLabel38.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel38.Location = new System.Drawing.Point(258, 292);
            this.xrLabel38.Name = "xrLabel38";
            this.xrLabel38.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel38.Size = new System.Drawing.Size(33, 17);
            this.xrLabel38.Text = "+/-%";
            // 
            // xrLabel39
            // 
            this.xrLabel39.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel39.Location = new System.Drawing.Point(258, 308);
            this.xrLabel39.Name = "xrLabel39";
            this.xrLabel39.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel39.Size = new System.Drawing.Size(33, 17);
            this.xrLabel39.Text = "+/-%";
            // 
            // xrLabel40
            // 
            this.xrLabel40.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel40.Location = new System.Drawing.Point(267, 358);
            this.xrLabel40.Name = "xrLabel40";
            this.xrLabel40.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel40.Size = new System.Drawing.Size(33, 17);
            this.xrLabel40.Text = "+/-%";
            // 
            // xrLabel41
            // 
            this.xrLabel41.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel41.Location = new System.Drawing.Point(267, 375);
            this.xrLabel41.Name = "xrLabel41";
            this.xrLabel41.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel41.Size = new System.Drawing.Size(33, 17);
            this.xrLabel41.Text = "+/-%";
            // 
            // xrLabel42
            // 
            this.xrLabel42.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel42.Location = new System.Drawing.Point(267, 392);
            this.xrLabel42.Name = "xrLabel42";
            this.xrLabel42.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel42.Size = new System.Drawing.Size(33, 17);
            this.xrLabel42.Text = "+/-%";
            // 
            // xrLabel43
            // 
            this.xrLabel43.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLabel43.Location = new System.Drawing.Point(267, 408);
            this.xrLabel43.Name = "xrLabel43";
            this.xrLabel43.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel43.Size = new System.Drawing.Size(33, 17);
            this.xrLabel43.Text = "+/-%";
            // 
            // Detail1
            // 
            this.Detail1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLine2,
            this.xrLabel3,
            this.xrLabel32,
            this.xrLabel31,
            this.xrLabel30,
            this.xrLabel29,
            this.xrLabel5,
            this.xrLabel7,
            this.xrLabel46,
            this.xrLabel47,
            this.xrLabel48,
            this.xrLabel49,
            this.xl_Supplier_Weight_GmSqm_Per,
            this.xl_Supplier_Weight_LinearMeter_Per,
            this.xl_Supplier_Weight_GmSqm,
            this.xl_Supplier_Weight_LinearMeter,
            this.xl_PH_Weight_GmSqm_Per,
            this.xl_PH_Weight_LinearMeter_Per,
            this.xl_PH_Weight_GmSqm,
            this.xl_PH_UsableWidth,
            this.xl_SupplierWidth,
            this.xrLine1,
            this.xrLabel4,
            this.xrLabel6,
            this.xrLabel45,
            this.xrLabel2,
            this.xl_Supplier_UsableWidth,
            this.xrLabel66,
            this.xl_Supplier_Shrinkage_Width_Ironing,
            this.xrLabel42,
            this.xrLabel41,
            this.xrLabel40,
            this.xrLabel39,
            this.xrLabel38,
            this.xrLabel37,
            this.xrLabel36,
            this.xrLabel35,
            this.xrLabel34,
            this.xrLabel33,
            this.xrLabel28,
            this.xrLabel27,
            this.xrLabel26,
            this.xrLabel25,
            this.xrLabel24,
            this.xrLabel23,
            this.xrLabel22,
            this.xrLabel21,
            this.xrLabel20,
            this.xrLabel19,
            this.xrLabel18,
            this.xrLabel8,
            this.xrLabel9,
            this.xrLabel10,
            this.xrLabel11,
            this.xrLabel12,
            this.xrLabel13,
            this.xrLabel14,
            this.xrLabel15,
            this.xrLabel16,
            this.xrLabel17,
            this.xrLabel44,
            this.xrLabel50,
            this.xrLabel51,
            this.xrLabel52,
            this.xrLabel53,
            this.xrLabel54,
            this.xrLabel55,
            this.xrLabel56,
            this.xrLabel57,
            this.xrLabel58,
            this.xrLabel59,
            this.xrLabel60,
            this.xrLabel61,
            this.xrLabel62,
            this.xrLabel63,
            this.xrLabel64,
            this.xrLabel65,
            this.xl_Supplier_Relaxation_Length_per,
            this.xl_Supplier_Relaxation_Width_Per,
            this.xl_Supplier_Conditions,
            this.xl_Supplier_Pattern_Length_Per,
            this.xl_Supplier_Pattern_Width_Per,
            this.xl_Supplier_Pattern_Width,
            this.xl_Supplier_Pattern_Length,
            this.xl_Supplier_Elongation_Length,
            this.xl_Supplier_Elongation_Width,
            this.xl_Supplier_Elongation_Length_Per,
            this.xl_Supplier_Elongation_Width_Per,
            this.xl_Supplier_Shrinkage_Length_Washing,
            this.xl_Supplier_Shrinkage_Width_Washing,
            this.xl_Supplier_Shrinkage_Length_Ironin_g,
            this.xrLabel43,
            this.xl_Supplier_Shrinkage_ColorFasteness,
            this.xl_Oeko,
            this.xl_PH_Weight_LinearMeter,
            this.xl_PH_Relaxation_Length_per,
            this.xl_PH_Relaxation_Width_Per,
            this.xl_PH_Conditions,
            this.xl_PH_Pattern_Length_Per,
            this.xl_PH_Pattern_Length,
            this.xl_PH_Pattern_Width,
            this.xl_PH_Pattern_Width_Per,
            this.xl_PH_Elongation_Length_Per,
            this.xl_PH_Elongation_Length,
            this.xl_PH_Elongation_Width,
            this.xl_PH_Elongation_Width_Per,
            this.xl_PH_Shrinkage_Length_Washing,
            this.xl_PH_Shrinkage_Width_Washing,
            this.xl_PH_Shrinkage_ColorFasteness,
            this.xl_PH_Shrinkage_Width_Ironing});
            this.Detail1.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.Detail1.Height = 625;
            this.Detail1.Name = "Detail1";
            // 
            // xrLine1
            // 
            this.xrLine1.BackColor = System.Drawing.Color.Black;
            this.xrLine1.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLine1.Location = new System.Drawing.Point(308, 17);
            this.xrLine1.Name = "xrLine1";
            this.xrLine1.Size = new System.Drawing.Size(2, 450);
            this.xrLine1.StylePriority.UseBackColor = false;
            // 
            // xrLine2
            // 
            this.xrLine2.BackColor = System.Drawing.Color.Black;
            this.xrLine2.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.xrLine2.Location = new System.Drawing.Point(467, 0);
            this.xrLine2.Name = "xrLine2";
            this.xrLine2.Size = new System.Drawing.Size(2, 625);
            this.xrLine2.StylePriority.UseBackColor = false;
            // 
            // ColorAllIfoSubSpc
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail1});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(19, 11, 30, 15);
            this.PageHeight = 850;
            this.PageWidth = 1100;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
    }
}
