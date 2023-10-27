using System;
using System.Drawing;
using System.Data.Linq;
using System.Data;
using System.Linq;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.BasicInfo.BO;
using PH.Platform.BO;
using System.Collections.Generic;

namespace PH.BasicInfo.UI.TimeElement.Report
{
    public partial class SupplierWithAffiliatePartnersGroupRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public BasicInfoDataContext context { get; set; }
        public string WhereCondition { get; set; }

        public IEnumerable<SupplierProfile> Source
        {
            set
            {
                this.bindingSource1.DataSource = value;
            }
            get
            {
                return this.bindingSource1.DataSource as IEnumerable<SupplierProfile>;
            }
        }


 
        public SupplierWithAffiliatePartnersGroupRpt()
        {
            InitializeComponent(); 
        }


        private int GroupIndex = 0;
        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SupplierProfile sp = this.GetCurrentRow() as SupplierProfile;
            if (sp == null) return;

            //xsj100820:置標識為"Y"/"N"
            //this.cellAssociatePartner.Text = sp.AssociatePartnerStr;
            if (!(sp.AssociatePartner ?? false))
            {
                this.Detail1.Visible = false;
            }
            else
            {
                this.Detail1.Visible = true;
            }
        }

        int _iTtlcount = 0;
        int _icount = 0;

        private void SupplierWithAssociatePartnersGroupRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (Source != null)
            {
                //Xsj100820:有子報表創建前,取得總行數,以構建報表格式.
                foreach (SupplierProfile val in Source )
                {
                    if (val.AssociatePartner  ?? false)
                    {
                        _iTtlcount += val.IncontermsTransits.Count();
                    }
                }
            }
        }
        
        //Xsj100824:組計數器
        int _currGroupRowIndex = 0;
        int _allCurrGroupRowCount = 0;
        private void DetailReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SupplierProfile sp = this.GetCurrentRow() as SupplierProfile;
            if (sp == null) return;

            _allCurrGroupRowCount = sp.IncontermsTransits.Count();

            //Xsj100820:顯示組號和組名
            this.cellGroupCode.Text = sp.SupplierGroup;
            this.cellGroupName.Text = sp.SupplierGroupName;
        }

        private void DetailReport_AfterPrint(object sender, EventArgs e)
        {
            _currGroupRowIndex = 0;
            _allCurrGroupRowCount = 0;
        }

        private void Detail1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SupplierProfile sp = this.GetCurrentRow() as SupplierProfile;
            if (sp == null) return;

            _icount++;

            //Xsj100820:第一行時,填入組號和組名
            this.cellGroupCode.Text = (_icount == 1) ? sp.SupplierGroup : "";
            this.cellGroupName.Text = (_icount == 1) ? sp.SupplierGroupName : "";
            //Xsj100820:中間行,只顯示兩邊的邊框,如果是最後一行則顯示兩邊和低部的邊框(形成合並單元格的效果).
            if (_icount != _iTtlcount)
            {
                this.cellGroupCode.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
                this.cellGroupName.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
            }
            else
            {
                this.cellGroupCode.Borders = DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
                this.cellGroupName.Borders = DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
            }

            _currGroupRowIndex++;

            this.xtrErpName.Text = (_currGroupRowIndex == 1) ? sp.ERPName : "";
            this.xtrMultiIncoterms.Text = (_currGroupRowIndex == 1) ? sp.MultiIncoterms : "";
            this.xtrPaymentTerms.Text = (_currGroupRowIndex == 1) ? sp.PaymentTerms : "";
            this.xtrCurrency.Text = (_currGroupRowIndex == 1) ? sp.Currency : "";
            this.xtrCustDependent.Text = (_currGroupRowIndex == 1) ? sp.CustDependent : "";
            if (_currGroupRowIndex != _allCurrGroupRowCount)
            {
                this.xtrErpName.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
                this.xtrMultiIncoterms.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
                this.xtrPaymentTerms.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
                this.xtrCurrency.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
                this.xtrCustDependent.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
            }
            else
            {
                this.xtrErpName.Borders = DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
                this.xtrMultiIncoterms.Borders = DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
                this.xtrPaymentTerms.Borders = DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
                this.xtrCurrency.Borders = DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
                this.xtrCustDependent.Borders = DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right;
            }

            if (sp.IncontermsTransits == null || _currGroupRowIndex <= 0) return;
            if (string.IsNullOrEmpty((sp.IncontermsTransits)[_currGroupRowIndex - 1].FCLTransitPointDescEN) && !string.IsNullOrEmpty((sp.IncontermsTransits)[_currGroupRowIndex - 1].FCLIncotermsPointPortDesc) && (sp.IncontermsTransits[_currGroupRowIndex - 1].FCLIncotermsPointPortDesc).ToString().ToUpper() == "N.A")
            {
                this.xrTable5.Visible = false;
                this.xrTableRow6.Visible = false;

                this.xrTable3.Height =36;
            }
            else
            {
                this.xrTable5.Visible = true;
                this.xrTableRow6.Visible = true;
                this.xrTable3.Height = 69;
            }
            
        }
    }
}
