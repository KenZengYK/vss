using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Collections.Generic;
using System.IO;
using System.Linq;


namespace PH.POPC.BackEnd
{
    public partial class StickerPOReportCH : DevExpress.XtraReports.UI.XtraReport
    {
        public StickerPOReportCH()
        {
            InitializeComponent();
        }

        public StickerPOReportCH(object ADataSource, PH.POPC.BO.POHeader AHeader)
        {
            InitializeComponent();
            //this.PivotGrid.DataSource = ADataSource;

            //this.lblTitle.Text = "Customer Profile - Size Ratio - " + AHeader.Company + " " + AHeader.PONo;
        }


        private POPC.BO.POHeader _poheader;
        public StickerPOReportCH(List<PH.POPC.BO.POHeader> list, POPC.BO.POHeader poheader, string ReportName)
        {
            InitializeComponent();
            //var items = from aa in poheader.PODetails
            //            where aa.Photo != null
            //            select aa;
            //int count = items == null ? 0 : items.Count();
            //this.xrPageBreak1.Visible = count == 0 ? false : true;

            this.DataSource = list;
            this._poheader = poheader;
            this.subReport21._poheader = poheader;
            this.xrLabelReportName.Text = string.IsNullOrEmpty(this._poheader.ReportName) ? this.xrLabelReportName.Text : this._poheader.ReportName;

        }

        public int PrintPO(int nCompany, int nPONo)
        {
            //InitHeader(nCompany, nPONo);
            //InitDetail(nCompany, nPONo);

            this.ShowPreview();
            return 0;
        }


        public int InitBaseInfo(string strSupplier)
        {
            PH.BasicInfo.BO.BasicInfoDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
            var items = from cc in context.SupplierProfiles
                        where cc.Supplier == strSupplier
                        select cc;
            foreach (var row in items)
            {

                this.lblSupplier.Text = row.Supplier; //供應商
                this.lblAddress.Text = row.Address;   //地址
                this.lblConnecter.Text = row.SupplierName; //聯係人
                this.lblConnectTel.Text = row.TEL; //聯係電話
                this.lblFax.Text = row.Fax; //傳真
                this.lblPayMode.Text = row.PaymentTerms; //付款方式
                this.lblSendMode.Text = row.ShipMode; //送貨方式
                this.lblTransforMode.Text = row.DeliveryMode; //運輸方式

                //TODO:
                this.lblTotalMoney.Text = ""; //總價錢   

                this.lblSheetMaker.Text = row.Remarks; //製單員

            }

            return 0;

        }

        private void Detail1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.POPC.BO.PODetail d = DetailReport.GetCurrentRow() as PH.POPC.BO.PODetail;// this.DataSource as List<PH.POPC.BO.POHeader>;
            List<PH.POPC.BO.POColorSizeDetail> list = d.POColorSizeDetails.ToList<PH.POPC.BO.POColorSizeDetail>();
            list.Sort(SortColorCup);
            this.prPivotGrid1.DataSource = null;
            this.prPivotGrid1.DataSource = list;
        }
        private int SortColorCup(PH.POPC.BO.POColorSizeDetail x, PH.POPC.BO.POColorSizeDetail y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {

                    i = x.ColorCode.CompareTo(y.ColorCode);
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else
                    {
                        i = x.CupOrder - y.CupOrder;
                        if (i < 0) return -1;
                        else if (i > 0) return 1;
                        else return 0;
                    }
                }
            }
        }

    }
}
