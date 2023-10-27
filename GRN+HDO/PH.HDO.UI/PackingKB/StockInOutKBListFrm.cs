using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Excel = Microsoft.Office.Interop.Excel;
using PH.Platform.BO;
using PH.Platform.UI.CS.UI2;
using PH.HDO.BO;
namespace PH.HDO.UI.PackingKB
{
    public partial class StockInOutKBListFrm : PH.Platform.UI.CS.UI0.PrintBaseForm
    {
        public StockInOutKBListFrm()
        {
            InitializeComponent();
            DataBind();
        }
        bool isIMP = false;
        private PH.HDO.BO.HDODataContext context = ContextBuilder.CreateContext<PH.HDO.BO.HDODataContext>();
        DataSet stock;
        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = context;
            this.stockInKBListFrm1.DataContext = context;
            this.stockInKBListFrm1.BindingSource.DataSource = from c in context.Stock_InKBs orderby c.Date select c;
            this.stockOutKBListFrm1.DataContext = context;
            this.stockOutKBListFrm1.BindingSource.DataSource = from d in context.Stock_OutKBs orderby d.Date select d;
            this.stockBalanceKBListFrm1.DataContext = context;
            this.stockBalanceKBListFrm1.BindingSource.DataSource = from e in context.Stock_BalanceKBs orderby e.Date select e;

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            string excelFilePath = string.Empty;

            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                excelFilePath = openFileDialog1.FileName;
            }
            if (string.IsNullOrEmpty(excelFilePath)) return;
            isIMP = true;
            Excel.Application myExcel = new Excel.ApplicationClass();
            object oMissing = System.Reflection.Missing.Value;
            myExcel.Application.Workbooks.Open(excelFilePath, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing);
            Excel.Workbook myBook = myExcel.Workbooks[1];
            Excel.Worksheet mySheet = (Excel.Worksheet)myBook.Worksheets[1];
            Excel.Worksheet outSheet = (Excel.Worksheet)myBook.Worksheets[2];

            string BDate = "";
            string BPO_number = "";
            string BInvoice = "";
            string BSupplier = "";
            string BProject_No = "";
            string BMaterial_name = "";
            string BMaterial_Art = "";
            string BMaterial_Group = "";
            string BType = "";
            string BColor = "";
            string BSize = "";
            string BLot_no = "";
            string BUom = "";
            string BReceived = "";
            string BPrice = "";
            string BCurrency = "";
            string BRate = "";
            string BUSE_FULL = "";
            string BLoc = "";

            string BOutDate = "";
            string BOutPO_number = "";
            string BOutInvoice = "";
            string BOutSupplier = "";
            string BOutProject_No = "";
            string BOutMaterial_name = "";
            string BOutMaterial_Art = "";
            string BOutMaterial_Group = "";
            string BOutType = "";
            string BOutColor = "";
            string BOutSize = "";
            string BOutLot_no = "";
            string BOutUom = "";
            string BOutReceived = "";
            string BOutPrice = "";
            string BOutCurrency = "";
            string BOutRate = "";
            string BOutUSE_FULL = "";
            string BOutLoc = "";
            List<string> ssinfo = new List<string>();
            List<string> ssout = new List<string>();
            int i = 2;
            int InBanQty = 0;
            decimal InBanTotal = 0;
            decimal InBanTHBTotal = 0;
            int OutBanQty = 0;
            decimal OutBanTotal = 0;
            decimal OutBanTHBTotal = 0;
            int count = 0;
            do
            {
                for (int j = 1; j <= 24; j++)
                {
                    Excel.Range r = (Excel.Range)mySheet.Cells[i, j];
                    Excel.Range t = (Excel.Range)outSheet.Cells[i, j];
                    ssinfo.Add(r.Text.ToString());
                    ssout.Add(t.Text.ToString());
                }
                Stock_InKB stockin = (this.stockInKBListFrm1.BindingSource.AddNew() as Stock_InKB);
                stockin.Date = ssinfo[0].ToString().Trim();
                stockin.PO_number = ssinfo[1].ToString().Trim();
                stockin.Invoice = ssinfo[2].ToString().Trim();
                stockin.Supplier = ssinfo[3].ToString().Trim();
                stockin.Project_No = ssinfo[4].ToString().Trim();
                stockin.Material_name = ssinfo[5].ToString().Trim();
                stockin.Material_Art = ssinfo[6].ToString().Trim();
                stockin.Material_Group = ssinfo[7].ToString().Trim();
                stockin.Type = ssinfo[8].ToString().Trim();
                stockin.Color = ssinfo[9].ToString().Trim();
                stockin.Size = ssinfo[10].ToString().Trim();
                stockin.Lot_no = ssinfo[11].ToString().Trim();
                string ss = ssinfo[12].ToString().Trim();
                stockin.Qty = Convert.ToInt32(ssinfo[12].ToString().Trim());
                stockin.Uom = ssinfo[13].ToString().Trim();
                stockin.Received = ssinfo[14].ToString().Trim();
                stockin.Price = ssinfo[15].ToString().Trim();
                stockin.Currency = ssinfo[16].ToString().Trim();
                if (ssinfo[17].ToString().Trim().Equals("-"))
                {
                    stockin.Total = 0;
                }
                else
                {
                    stockin.Total = Convert.ToDecimal(ssinfo[17].ToString().Trim());
                }
                stockin.Rate = ssinfo[18].ToString().Trim();
                if (ssinfo[19].ToString().Trim().Equals("-"))
                {
                    stockin.Total_THB =0;
                }
                else 
                {
                    stockin.Total_THB = Convert.ToDecimal(ssinfo[19].ToString().Trim());
                }
                stockin.USE_FULL = ssinfo[20].ToString().Trim();
                stockin.Loc = ssinfo[21].ToString().Trim();
                    
                this.stockInKBListFrm1.BindingSource.EndEdit();

                Stock_OutKB stockout = (this.stockOutKBListFrm1.BindingSource.AddNew() as Stock_OutKB);
                stockout.Date = ssout[0].ToString().Trim();
                stockout.PO_number = ssout[1].ToString().Trim();
                stockout.Invoice = ssout[2].ToString().Trim();
                stockout.Supplier = ssout[3].ToString().Trim();
                stockout.Project_No = ssout[4].ToString().Trim();
                stockout.Material_name = ssout[5].ToString().Trim();
                stockout.Material_Art = ssout[6].ToString().Trim();
                stockout.Material_Group = ssout[7].ToString().Trim();
                stockout.Type = ssout[8].ToString().Trim();
                stockout.Color = ssout[9].ToString().Trim();
                stockout.Size = ssout[10].ToString().Trim();
                stockout.Lot_no = ssout[11].ToString().Trim();
                stockout.Qty = Convert.ToInt32(ssout[12].ToString().Trim());
                stockout.Uom = ssout[13].ToString().Trim();
                stockout.Received = ssout[14].ToString().Trim();
                stockout.Price = ssout[15].ToString().Trim();
                stockout.Currency = ssout[16].ToString().Trim();
                if (ssout[17].ToString().Trim().Equals("-"))
                {
                    stockout.Total = 0;
                }
                else
                {
                    stockout.Total = Convert.ToDecimal(ssout[17].ToString().Trim());
                }
                stockout.Rate = ssout[18].ToString().Trim();
                if (ssout[19].ToString().Trim().Equals("-"))
                {
                    stockout.Total_THB = 0;
                }
                else 
                {
                    stockout.Total_THB = Convert.ToDecimal(ssout[19].ToString().Trim());
                }
                stockout.USE_FULL = ssout[20].ToString().Trim();
                stockout.Loc = ssout[21].ToString().Trim();

                this.stockOutKBListFrm1.BindingSource.EndEdit();

                if (BDate.Equals(ssout[0].ToString().Trim()) && BPO_number.Equals(ssout[1].ToString().Trim()) && BInvoice.Equals(ssout[2].ToString().Trim())
                    && BSupplier.Equals(ssout[3].ToString().Trim())&&BType.Equals(ssout[8].ToString().Trim())&&BUom.Equals(ssout[13].ToString().Trim())
                    && BProject_No.Equals(ssout[4].ToString().Trim()) && BMaterial_name.Equals(ssinfo[5].ToString().Trim()) && BMaterial_Art.Equals(ssinfo[6].ToString().Trim())
                    && BColor.Equals(ssout[9].ToString().Trim()) && BSize.Equals(ssout[10].ToString().Trim()) && BReceived.Equals(ssout[14].ToString().Trim()))
                {
                    InBanQty += Convert.ToInt32(ssinfo[12].ToString().Trim());
                    if (!ssinfo[17].ToString().Trim().Equals("-"))
                    {
                        InBanTotal += Convert.ToDecimal(ssinfo[17].ToString().Trim());
                    }
                    if (!ssinfo[19].ToString().Trim().Equals("-"))
                    {
                        InBanTHBTotal += Convert.ToDecimal(ssinfo[19].ToString().Trim());
                    }
                    OutBanQty += Convert.ToInt32(ssout[12].ToString().Trim());
                    if (!ssout[17].ToString().Trim().Equals("-"))
                    {
                        OutBanTotal += Convert.ToDecimal(ssout[17].ToString().Trim());
                    }
                    if (!ssout[19].ToString().Trim().Equals("-"))
                    {
                        OutBanTHBTotal += Convert.ToDecimal(ssout[19].ToString().Trim());
                    }
                    count++;
                }
                else 
                {
                    if (!string.IsNullOrEmpty(BMaterial_Art) && !string.IsNullOrEmpty(BMaterial_Group) && !string.IsNullOrEmpty(BMaterial_name))
                    {
                        Stock_BalanceKB balance = (this.stockBalanceKBListFrm1.BindingSource.AddNew() as Stock_BalanceKB);
                        balance.Date = BDate;
                        balance.PO_number = BPO_number;
                        balance.Invoice = BInvoice;
                        balance.Supplier = BSupplier;
                        balance.Project_No = BProject_No;
                        balance.Material_name = BMaterial_name;
                        balance.Material_Art = BMaterial_Art;
                        balance.Material_Group = BMaterial_Group;
                        balance.Type = BType;
                        balance.Color = BColor;
                        balance.Size = BSize;
                        balance.Lot_no = BLot_no;
                        balance.Uom = BUom;
                        balance.Received = BReceived;
                        balance.Price = BPrice;
                        balance.Currency = BCurrency;
                        balance.Rate = BRate;
                        balance.USE_FULL = BUSE_FULL;
                        balance.Loc = BLoc;
                        if (BDate == BOutDate && BPO_number == BOutPO_number && BInvoice == BOutInvoice && BSupplier == BOutSupplier && BProject_No == BOutProject_No
                            && BMaterial_Art == BOutMaterial_Art && BMaterial_Group == BOutMaterial_Group && BMaterial_name == BOutMaterial_name && BType == BOutType
                            && BColor == BOutColor && BSize == BOutSize && BLot_no == BOutLot_no && BUom == BOutUom && BReceived == BOutReceived && BPrice == BOutPrice
                            && BCurrency == BOutCurrency && BRate == BOutRate && BUSE_FULL == BOutUSE_FULL && BLoc == BOutLoc)
                        {
                            balance.Qty = InBanQty - OutBanQty;
                            balance.Total = InBanTotal - OutBanTotal;
                            balance.Total_THB = InBanTHBTotal - OutBanTHBTotal;
                        }
                        this.stockBalanceKBListFrm1.BindingSource.EndEdit();
                        InBanQty = 0;
                        InBanTHBTotal = 0;
                        InBanTotal = 0;
                        OutBanQty = 0;
                        OutBanTHBTotal = 0;
                        OutBanTotal = 0;
                        count = 0;
                    }
                    if (count == 0) 
                    {
                        InBanQty = Convert.ToInt32(ssinfo[12].ToString().Trim());
                        if (ssinfo[17].ToString().Trim().Equals("-"))
                        {
                            InBanTotal = 0;
                        }
                        else
                        {
                            InBanTotal = Convert.ToDecimal(ssinfo[17].ToString().Trim());
                        }
                        if (ssinfo[19].ToString().Trim().Equals("-"))
                        {
                            InBanTHBTotal = 0;
                        }
                        else
                        {
                            InBanTHBTotal = Convert.ToDecimal(ssinfo[19].ToString().Trim());
                        }
                        OutBanQty = Convert.ToInt32(ssout[12].ToString().Trim());
                        if (ssout[17].ToString().Trim().Equals("-"))
                        {
                            OutBanTotal = 0;
                        }
                        else
                        {
                            OutBanTotal = Convert.ToDecimal(ssout[17].ToString().Trim());
                        }
                        if (ssout[19].ToString().Trim().Equals("-"))
                        {
                            OutBanTHBTotal = 0;
                        }
                        else
                        {
                            OutBanTHBTotal = Convert.ToDecimal(ssout[19].ToString().Trim());
                        }
                    }
 
                }
                (this.DataContext as HDODataContext).SubmitChanges();
                BDate = ssinfo[0].ToString().Trim();
                BPO_number = ssinfo[1].ToString().Trim();
                BInvoice = ssinfo[2].ToString().Trim();
                BSupplier = ssinfo[3].ToString().Trim();
                BProject_No = ssinfo[4].ToString().Trim();
                BMaterial_name = ssinfo[5].ToString().Trim();
                BMaterial_Art = ssinfo[6].ToString().Trim();
                BMaterial_Group = ssinfo[7].ToString().Trim();
                BType = ssinfo[8].ToString().Trim();
                BColor = ssinfo[9].ToString().Trim();
                BSize = ssinfo[10].ToString().Trim();
                BLot_no = ssinfo[11].ToString().Trim();
                BUom = ssinfo[13].ToString().Trim();
                BReceived = ssinfo[14].ToString().Trim();
                BPrice = ssinfo[15].ToString().Trim();
                BCurrency = ssinfo[16].ToString().Trim();
                BRate = ssinfo[18].ToString().Trim();
                BUSE_FULL = ssinfo[20].ToString().Trim();
                BLoc = ssinfo[21].ToString().Trim();

                BOutDate = ssout[0].ToString().Trim();
                BOutPO_number = ssout[1].ToString().Trim();
                BOutInvoice = ssout[2].ToString().Trim();
                BOutSupplier = ssout[3].ToString().Trim();
                BOutProject_No = ssout[4].ToString().Trim();
                BOutMaterial_name = ssout[5].ToString().Trim();
                BOutMaterial_Art = ssout[6].ToString().Trim();
                BOutMaterial_Group = ssout[7].ToString().Trim();
                BOutType = ssout[8].ToString().Trim();
                BOutColor = ssout[9].ToString().Trim();
                BOutSize = ssout[10].ToString().Trim();
                BOutLot_no = ssout[11].ToString().Trim();
                BOutUom = ssout[13].ToString().Trim();
                BOutReceived = ssout[14].ToString().Trim();
                BOutPrice = ssout[15].ToString().Trim();
                BOutCurrency = ssout[16].ToString().Trim();
                BOutRate = ssout[18].ToString().Trim();
                BOutUSE_FULL = ssout[20].ToString().Trim();
                BOutLoc = ssout[21].ToString().Trim();

                ssinfo.Clear();
                ssout.Clear();
                i++;
            }
            while (((Excel.Range)mySheet.Cells[i, 1]).Text.ToString().Trim() != string.Empty);

            Stock_BalanceKB balanceKb = (this.stockBalanceKBListFrm1.BindingSource.AddNew() as Stock_BalanceKB);
            balanceKb.Date = BDate;
            balanceKb.PO_number = BPO_number;
            balanceKb.Invoice = BInvoice;
            balanceKb.Supplier = BSupplier;
            balanceKb.Project_No = BProject_No;
            balanceKb.Material_name = BMaterial_name;
            balanceKb.Material_Art = BMaterial_Art;
            balanceKb.Material_Group = BMaterial_Group;
            balanceKb.Type = BType;
            balanceKb.Color = BColor;
            balanceKb.Size = BSize;
            balanceKb.Lot_no = BLot_no;
            balanceKb.Uom = BUom;
            balanceKb.Received = BReceived;
            balanceKb.Price = BPrice;
            balanceKb.Currency = BCurrency;
            balanceKb.Rate = BRate;
            balanceKb.USE_FULL = BUSE_FULL;
            balanceKb.Loc = BLoc;
            if (BDate == BOutDate && BPO_number == BOutPO_number && BInvoice == BOutInvoice && BSupplier == BOutSupplier && BProject_No == BOutProject_No
                && BMaterial_Art == BOutMaterial_Art && BMaterial_Group == BOutMaterial_Group && BMaterial_name == BOutMaterial_name && BType == BOutType
                && BColor == BOutColor && BSize == BOutSize && BLot_no == BOutLot_no && BUom == BOutUom && BReceived == BOutReceived && BPrice == BOutPrice
                && BCurrency == BOutCurrency && BRate == BOutRate && BUSE_FULL == BOutUSE_FULL && BLoc == BOutLoc)
            {
                balanceKb.Qty = InBanQty - OutBanQty;
                balanceKb.Total = InBanTotal - OutBanTotal;
                balanceKb.Total_THB = InBanTHBTotal - OutBanTHBTotal;
            }
            this.stockBalanceKBListFrm1.BindingSource.EndEdit();
            (this.DataContext as HDODataContext).SubmitChanges();

            myBook = null;
            mySheet = null;
            myExcel.Quit();
            myExcel = null;
        }

        private void barBtnPrintBase_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string strSql = "select Date,PO_number,Invoice,Supplier,Project_No,Material_name,Material_Art, " +
                          " Material_Group,Type,Received,Color,Size,Lot_no,Qty,Uom,Price, " +
                          " Currency,Total,Rate,Total_THB,USE_FULL, Loc from Stock_BalanceKB ";
            if (this.radioOrderLotNo.Checked) strSql = strSql + " order by Lot_No ";
            string material = radioGroupMater.Checked ? "0" : "1";
            string project_no = radioGroupPro.Checked ? "0" : "1";
            string Lot = radioOrderLotNo.Checked ? "0" : "1";
            string Stock_Tack = radioOrderStock.Checked ? "0" : "1";
            PH.HDO.BackEnd.Report.HDOStockExcelRpt rpt = new PH.HDO.BackEnd.Report.HDOStockExcelRpt(stock, material, project_no, Lot, Stock_Tack);
            rpt.DataSource = null;
            rpt.DataSource = context.ExecuteQuery<StockInfoOut>(strSql).ToList();
            isIMP = false;
            rpt.ShowPreviewDialog();
        }
    }
}
