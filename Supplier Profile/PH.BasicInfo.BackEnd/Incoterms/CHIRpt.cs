using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.BackEnd.Incoterms.Report
{
    public partial class CHIRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public BasicInfoDataContext DataContext { get; set; }
        public string WhereCondition { get; set; }
        public CHIRpt()
        {
            InitializeComponent();
        }

        private void CHIRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.bindingSource1.DataSource = DataContext.ExecuteQuery<Incoterm>(string.Format("select * from Incoterms {0} order by No", WhereCondition));
            
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //SellerOriginInlandFreight
            Cell_SellerOriginInlandFreight.BackColor = GetCurrentValue("SellerOriginInlandFreight") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerOriginForwarder
            Cell_SellerOriginForwarder.BackColor = GetCurrentValue("SellerOriginForwarder") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerOriginCustomsClearance
            Cell_SellerOriginCustomsClearance.BackColor = GetCurrentValue("SellerOriginCustomsClearance") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerOriginCustomsDutiesTax
            Cell_SellerOriginCustomsDutiesTax.BackColor = GetCurrentValue("SellerOriginCustomsDutiesTax") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerOriginTerminal
            Cell_SellerOriginTerminal.BackColor = GetCurrentValue("SellerOriginTerminal") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerCarriageFreight
            Cell_SellerCarriageFreight.BackColor = GetCurrentValue("SellerCarriageFreight") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerMainAirInsurance
            Cell_SellerMainAirInsurance.BackColor = GetCurrentValue("SellerMainAirInsurance") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerDestinationTerminal
            Cell_SellerDestinationTerminal.BackColor = GetCurrentValue("SellerDestinationTerminal") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerDestinationCustomsClearance
            Cell_SellerDestinationCustomsClearance.BackColor = GetCurrentValue("SellerDestinationCustomsClearance") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerDestinationCustomsDutiesTax
            Cell_SellerDestinationCustomsDutiesTax.BackColor = GetCurrentValue("SellerDestinationCustomsDutiesTax") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerDestinationForwarder
            Cell_SellerDestinationForwarder.BackColor = GetCurrentValue("SellerDestinationForwarder") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));
            //SellerDestinationInlandFreight
            Cell_SellerDestinationInlandFreight.BackColor = GetCurrentValue("SellerDestinationInlandFreight") ? System.Drawing.Color.FromArgb(((int)(((byte)(245)))), ((int)(((byte)(208)))), ((int)(((byte)(35))))) : System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(216)))), ((int)(((byte)(242)))));


        }

        Boolean GetCurrentValue(string FieldName)
        {
            return GetCurrentColumnValue(FieldName) != null ? Convert.ToBoolean(GetCurrentColumnValue(FieldName).ToString()) : false;
        }

    }
}
