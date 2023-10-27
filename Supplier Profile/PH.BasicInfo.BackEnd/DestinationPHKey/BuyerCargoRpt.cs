using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.BasicInfo.BO;


namespace PH.BasicInfo.BackEnd.DestinationPHKey.Report
{
    public partial class BuyerCargoRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public string SqlWhere { get; set; }
        public BasicInfoDataContext DataContext { get; set; }
        Int32 CurRowsCount = 0;
        Int32 TtlRows = 0;
        string BuyerName = string.Empty;

        public BuyerCargoRpt()
        {
            InitializeComponent();
           
        }

        private void BuyerCargoRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.bindingSource1.DataSource =DataContext.ExecuteQuery<ForPointDeliveryofDestinationPHKey>(string.Format("select * from ForPointDeliveryofDestinationPHKey {0}",SqlWhere));
        }

        private void DetailReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            TtlRows = bindingSource1.Current != null ? (bindingSource1.Current as ForPointDeliveryofDestinationPHKey).EndPointFactoryFrames.Count : 0;
        }

        private void DetailReport_AfterPrint(object sender, EventArgs e)
        {
            this.bindingSource1.MoveNext();
            TtlRows = 0;
            CurRowsCount = 0;
        }

        private void Cell_Name_AfterPrint(object sender, EventArgs e)
        {
            BuyerName = GetCurrentColumnValue("Name") != null ? GetCurrentColumnValue("Name").ToString() : string.Empty;
        }

        private void Cell_Name_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            CurRowsCount++;
            if (CurRowsCount != TtlRows && Cell_Name.Text.Trim()!=BuyerName)
            {
                Cell_Name.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right)));
              

            }
            if (CurRowsCount == TtlRows && Cell_Name.Text.Trim()!=BuyerName)
            {
                Cell_Name.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
              

            }
            if (CurRowsCount != TtlRows && Cell_Name.Text.Trim() == BuyerName)
            {
                Cell_Name.Text = string.Empty;             

                Cell_Name.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left) | DevExpress.XtraPrinting.BorderSide.Right)));
            }

            if (CurRowsCount == TtlRows && Cell_Name.Text.Trim() == BuyerName)
            {
                Cell_Name.Text = string.Empty;          
                Cell_Name.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) | DevExpress.XtraPrinting.BorderSide.Bottom)));
                
            }
        }

    }
}
