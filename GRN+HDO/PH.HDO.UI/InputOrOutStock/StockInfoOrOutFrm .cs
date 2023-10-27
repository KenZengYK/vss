using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.HDO.BO;
using PH.Platform.UI.CS.UI0;
using Excel = Microsoft.Office.Interop.Excel;
using PH.Platform.BO;
using PH.Platform.UI.CS.UI2;
namespace PH.HDO.UI.InputOrOutStock
{
    public partial class StockInfoOrOutFrm : BlankForm
    {
        public StockInfoOrOutFrm()
        {
            InitializeComponent();
            this.bar1.Visible = false;
            this.DataBind();

        }
        DataSet myDs;
        DataSet stock;
        bool isIMP = false;
        private PH.HDO.BO.HDODataContext context = ContextBuilder.CreateContext<PH.HDO.BO.HDODataContext>();
        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = context;
            this.stockInListFrm1.DataContext = context;
            this.stockInListFrm1.BindingSource.DataSource = from c in context.Stock_Ins orderby c.Date select c;
            this.stockOutListFrm1.DataContext = context;
            this.stockOutListFrm1.BindingSource.DataSource = from d in context.Stock_Outs orderby d.Date select d;
            this.stockBalanceFrm1.DataContext = context;
            this.stockBalanceFrm1.BindingSource.DataSource = from e in context.Stock_Balances orderby e.Date select e;
        }
        private void barButtonPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {


            #region Stock_Balance表插入數據;
//            if (isIMP)
//            {
//                //string sql = "delete from Stock_Balance";
//                //int f = context.ExecuteCommand(sql);
//                foreach (DataRow infoStock in myDs.Tables[0].Rows)
//                {
//                    string date = infoStock[0].ToString();
//                    string PO_number = infoStock[1].ToString();
//                    string Invoice = infoStock[2].ToString();
//                    string Supplier = infoStock[3].ToString();
//                    string Project_No = infoStock[4].ToString();
//                    string mar_name = infoStock[5].ToString();
//                    string Mate_Art = infoStock[6].ToString();
//                    string Mate_Group = infoStock[7].ToString();
//                    string Type = infoStock[8].ToString();
//                    string Color = infoStock[9].ToString();
//                    string Size = infoStock[10].ToString();
//                    string Lot_no = infoStock[11].ToString();
//                    string Uom = infoStock[13].ToString();
//                    string Received = infoStock[14].ToString();
//                    string Price = infoStock[15].ToString();
//                    string Currency = infoStock[16].ToString();
//                    string Total_HKD = infoStock[17].ToString();
//                    string Rate = infoStock[18].ToString();
//                    string Total_THB = infoStock[19].ToString();
//                    string USE_FULL = infoStock[20].ToString();
//                    string Loc = infoStock[21].ToString();
//                    string Unit = infoStock[22].ToString();
//                    string Status = infoStock[23].ToString();
//                    int Qty = 0;
//                    double Total = 0.00;
//                    string Totalhkd = "";
//                    double TotalT = 0.00;
//                    string TotalTHB = "";
//                    string StockQty = "";
//                    bool IsInfo = false;
//                    foreach (DataRow outStock in myDs.Tables[1].Rows)
//                    {
//                        string dateu = outStock[0].ToString();
//                        string PO_numberu = outStock[1].ToString();
//                        string Invoiceu = outStock[2].ToString();
//                        string Supplieru = outStock[3].ToString();
//                        string Project_Nou = outStock[4].ToString();
//                        string mar_nameu = outStock[5].ToString();
//                        string Mate_Artu = outStock[6].ToString();
//                        string Mate_Groupu = outStock[7].ToString();
//                        string Typeu = outStock[8].ToString();
//                        string Coloru = outStock[9].ToString();
//                        string Sizeu = outStock[10].ToString();
//                        string Lot_nou = outStock[11].ToString();
//                        string Uomu = outStock[13].ToString();
//                        string Receivedu = outStock[14].ToString();
//                        string Priceu = outStock[15].ToString();
//                        string Currencyu = outStock[16].ToString();
//                        string Total_HKDu = outStock[17].ToString();
//                        string Rateu = outStock[18].ToString();
//                        string Total_THBu = outStock[19].ToString();
//                        string USE_FULLu = outStock[20].ToString();
//                        string Locu = outStock[21].ToString();
//                        string Unitu = outStock[22].ToString();
//                        string Statusu = outStock[23].ToString();
//                        if (date == dateu && PO_number == PO_numberu && Invoice == Invoiceu
//                             && Supplier == Supplieru && Project_No == Project_Nou && mar_name == mar_nameu
//                             && Mate_Art == Mate_Artu && Mate_Group == Mate_Groupu && Type == Typeu
//                             && Color == Coloru && Size == Sizeu && Lot_no == Lot_nou
//                             && Uom == Uomu && Received == Receivedu && Price == Priceu
//                             && Currency == Currencyu && Rate == Rateu
//                             && USE_FULL == USE_FULLu && Loc == Locu && Unit == Unitu && Status == Statusu)
//                        {
//                            IsInfo = true;
//                            Qty = Convert.ToInt16(infoStock[12]) - Convert.ToInt16(outStock[12]);
//                            Total = Convert.ToDouble(Total_HKD) - Convert.ToDouble(Total_HKDu);
//                            TotalT = Convert.ToDouble(Total_THB) - Convert.ToDouble(Total_THBu);
//                        }
//                    }
//                    if (IsInfo && (Qty > 0 || Total > 0 || TotalT > 0))
//                    {
//                        StockQty = Qty.ToString();
//                        Totalhkd = Total.ToString();
//                        TotalTHB = TotalT.ToString();
//                    }
//                    if (!IsInfo)
//                    {
//                        StockQty = infoStock[13].ToString();
//                        Totalhkd = Total_HKD.ToString();
//                        TotalTHB = Total_THB.ToString();
//                    }
//                    if ((IsInfo && (Qty > 0 || Total > 0 || TotalT > 0)) || !IsInfo)
//                    {
//                        //if (f != -1)
//                        //{
//                        string sql = string.Format("select Qty,Total,Total_THB from Stock_Balance where date='{0}' and PO_number='{1}' and Invoice='{2}' and " +
//                       " Supplier='{3}' and Project_No='{4}' and Material_name='{5}' and Material_Art='{6}' and Material_Group='{7}' and  " +
//                       " Type='{8}' and Received='{9}' and Color='{10}' and Size='{11}' and Lot_no='{12}' and Uom='{13}'  and Price='{14}' " +
//                       " and Currency='{15}' and Rate='{16}' and USE_FULL='{17}' and Loc='{18}' and Unit='{19}' and Status='{20}'", date, PO_number,
//                         Invoice, Supplier, Project_No, mar_name, Mate_Art, Mate_Group, Type, Received, Color, Size, Lot_no,
//                            Uom, Price, Currency, Rate, USE_FULL, Loc, Unit, Status);
//                        DataTable ds = context.ExecuteDataTable(sql, "stock");
//                        if (ds.Rows.Count > 0)
//                        {
//                            if (ds.Rows[0]["Qty"].ToString() != StockQty.ToString() || ds.Rows[0]["Total"].ToString() != Totalhkd.ToString() || ds.Rows[0]["Total_THB"].ToString() != TotalTHB.ToString())
//                            {
//                                context.ExecuteCommand(string.Format("update Stock_Balance set Qty='{0}',Total='{1}',Total_THB='{2}' where date='{3}'  " +
//                                   " and PO_number='{4}' and Invoice='{5}' and  Supplier='{6}' and Project_No='{7}' and Material_name='{8}'  " +
//                                   " and Material_Art='{9}' and Material_Group='{10}' and Type='{11}' and Received='{12}' and Color='{13}' and " +
//                                   " Size='{14}' and Lot_no='{15}' and Uom='{16}'  and Price='{17}' and Currency='{18}' and Rate='{19}' and " +
//                                   " USE_FULL='{20}' and Loc='{21}' and Unit='{22}' and Status='{23}'", StockQty, Totalhkd, TotalTHB, date,
//                                   PO_number, Invoice, Supplier, Project_No, mar_name, Mate_Art, Mate_Group, Type, Received, Color, Size,
//                                   Lot_no, Uom, Price, Currency, Rate, USE_FULL, Loc, Unit, Status));

//                            }
//                        }
//                        else
//                        {
//                            context.ExecuteCommand(string.Format(@"insert into Stock_Balance(Date,PO_number,Invoice,Supplier,Project_No,
//                                                           Material_name,Material_Art,Material_Group,Type,Received,Color,Size,Lot_no,Qty,Uom,
//                                                           Price,Currency,Total,Rate,Total_THB,USE_FULL,Loc,Unit,Status) 
//                                                           values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',
//                                                           '{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}')",
//                            date, PO_number, Invoice, Supplier, Project_No, mar_name, Mate_Art, Mate_Group, Type, Received, Color, Size, Lot_no, StockQty,
//                            Uom, Price, Currency, Totalhkd, Rate, TotalTHB, USE_FULL, Loc, Unit, Status));
//                        }
//                        //}
//                    }

//                }
//            }
            #endregion
            string strSql = "select a.Date,a.PO_number,a.Invoice,a.Supplier,a.Project_No,a.Material_name,a.Material_Art, "+
                            " a.Material_Group,a.Type,a.Received,a.Color,a.Size,a.Lot_no,a.Qty-b.Qty as Qty,a.Uom,a.Price, "+
                            " a.Currency,a.Total-b.Total as Total,a.Rate,a.Total_THB-b.Total_THB as Total_THB,a.USE_FULL, "+
                            " a.Loc,a.Unit,a.Status from Stock_In a,Stock_Out b  "+
                            " where a.Date=b.Date and a.PO_number=b.PO_number and a.Invoice=b.Invoice and a.Supplier=b.Supplier "+
                            " and a.Project_No=b.Project_No and a.Material_name=b.Material_name and a.Material_Art=b.Material_Art "+
                            " and a.Material_Group=b.Material_Group and a.Type=b.Type and a.Received=b.Received and a.Color=b.Color "+
                            " and a.Size=b.Size and a.Lot_no=b.Lot_no and a.Uom=b.Uom and a.Price=b.Price and a.Currency=b.Currency "+
                            " and a.Rate=b.Rate and a.USE_FULL=b.USE_FULL and a.Loc=b.Loc and a.Unit=b.Unit and a.Status=b.Status ";
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
        //List<StockInfoOut> StockinLst = new List<StockInfoOut>();
        //List<StockInfoOut> StockoutLst = new List<StockInfoOut>();

        private PH.HDO.BO.HDODataContext Context = ContextBuilder.CreateContext<PH.HDO.BO.HDODataContext>();
        private void simpleButton1_Click(object sender, EventArgs e)
        {

            #region Old
            //string excelFilePath = string.Empty;
            //if (openFileDialog1.ShowDialog() == DialogResult.OK)
            //{
            //    excelFilePath = openFileDialog1.FileName;
            //}
            //if (string.IsNullOrEmpty(excelFilePath)) return;
            //isIMP = true;
            //Excel.Application myExcel = new Excel.ApplicationClass();
            //object oMissing = System.Reflection.Missing.Value;
            //myExcel.Application.Workbooks.Open(excelFilePath, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing);
            //Excel.Workbook myBook = myExcel.Workbooks[1];
            //Excel.Worksheet mySheet = (Excel.Worksheet)myBook.Worksheets[1];
            //Excel.Worksheet outSheet = (Excel.Worksheet)myBook.Worksheets[2];

            //System.Data.DataTable dtinfo = new System.Data.DataTable("Stock_Info");
            //dtinfo.Columns.Add("Date", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("PO_number", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Invoice", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Supplier", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Project_No", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Material_name", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Material_Art", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Material_Group", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Type", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Color", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Size", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Lot_no", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Qty", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Uom", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Received", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Price", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Currency", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Total", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Rate", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Total_THB", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("USE_FULL", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Loc", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Unit", System.Type.GetType("System.String"));
            //dtinfo.Columns.Add("Status", System.Type.GetType("System.String"));
            //myDs = new DataSet();
            //myDs.Tables.Add(dtinfo);

            //System.Data.DataTable dtout = new System.Data.DataTable("Stock_Out");
            //dtout.Columns.Add("Date", System.Type.GetType("System.String"));
            //dtout.Columns.Add("PO_number", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Invoice", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Supplier", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Project_No", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Material_name", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Material_Art", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Material_Group", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Type", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Color", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Size", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Lot_no", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Qty", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Uom", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Received", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Price", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Currency", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Total", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Rate", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Total_THB", System.Type.GetType("System.String"));
            //dtout.Columns.Add("USE_FULL", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Loc", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Unit", System.Type.GetType("System.String"));
            //dtout.Columns.Add("Status", System.Type.GetType("System.String"));
            //myDs.Tables.Add(dtout);

            //DataRow myRow;
            //DataRow outRow;
            //myDs.Clear();

            //List<string> ssinfo = new List<string>();
            //List<string> ssout = new List<string>();
            //int i = 2;
            //do
            //{
            //    for (int j = 1; j <= 24; j++)
            //    {
            //        Excel.Range r = (Excel.Range)mySheet.Cells[i, j];
            //        Excel.Range t = (Excel.Range)outSheet.Cells[i, j];
            //        ssinfo.Add(r.Text.ToString());
            //        ssout.Add(t.Text.ToString());
            //    }
            //    myRow = dtinfo.NewRow();
            //    myRow[0] = ssinfo[0].ToString();
            //    myRow[1] = ssinfo[1].ToString();
            //    myRow[2] = ssinfo[2].ToString();
            //    myRow[3] = ssinfo[3].ToString();
            //    myRow[4] = ssinfo[4].ToString();
            //    myRow[5] = ssinfo[5].ToString();
            //    myRow[6] = ssinfo[6].ToString();
            //    myRow[7] = ssinfo[7].ToString();
            //    myRow[8] = ssinfo[8].ToString();
            //    myRow[9] = ssinfo[9].ToString();
            //    myRow[10] = ssinfo[10].ToString();
            //    myRow[11] = ssinfo[11].ToString();
            //    myRow[12] = ssinfo[12].ToString();
            //    myRow[13] = ssinfo[13].ToString();
            //    myRow[14] = ssinfo[14].ToString();
            //    myRow[15] = ssinfo[15].ToString();
            //    myRow[16] = ssinfo[16].ToString();
            //    myRow[17] = ssinfo[17].ToString();
            //    myRow[18] = ssinfo[18].ToString();
            //    myRow[19] = ssinfo[19].ToString();
            //    myRow[20] = ssinfo[20].ToString();
            //    myRow[21] = ssinfo[21].ToString();
            //    myRow[22] = ssinfo[22].ToString();
            //    myRow[23] = ssinfo[23].ToString();

            //    outRow = dtout.NewRow();
            //    outRow[0] = ssout[0].ToString();
            //    outRow[1] = ssout[1].ToString();
            //    outRow[2] = ssout[2].ToString();
            //    outRow[3] = ssout[3].ToString();
            //    outRow[4] = ssout[4].ToString();
            //    outRow[5] = ssout[5].ToString();
            //    outRow[6] = ssout[6].ToString();
            //    outRow[7] = ssout[7].ToString();
            //    outRow[8] = ssout[8].ToString();
            //    outRow[9] = ssout[9].ToString();
            //    outRow[10] = ssout[10].ToString();
            //    outRow[11] = ssout[11].ToString();
            //    outRow[12] = ssout[12].ToString();
            //    outRow[13] = ssout[13].ToString();
            //    outRow[14] = ssout[14].ToString();
            //    outRow[15] = ssout[15].ToString();
            //    outRow[16] = ssout[16].ToString();
            //    outRow[17] = ssout[17].ToString();
            //    outRow[18] = ssout[18].ToString();
            //    outRow[19] = ssout[19].ToString();
            //    outRow[20] = ssout[20].ToString();
            //    outRow[21] = ssout[21].ToString();
            //    outRow[22] = ssout[22].ToString();
            //    outRow[23] = ssout[23].ToString();

            //    dtinfo.Rows.Add(myRow);
            //    dtout.Rows.Add(outRow);
            //    ssinfo.Clear();
            //    ssout.Clear();
            //    i++;
            //}
            //while (((Excel.Range)mySheet.Cells[i, 1]).Text.ToString().Trim() != string.Empty);


           
            ////StockIn.DataSource = myDs.Tables[0];
            ////StockOut.DataSource = myDs.Tables[1];
            #endregion
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



            List<string> ssinfo = new List<string>();
            List<string> ssout = new List<string>();
            int i = 2;
            do
            {
                for (int j = 1; j <= 24; j++)
                {
                    Excel.Range r = (Excel.Range)mySheet.Cells[i, j];
                    Excel.Range t = (Excel.Range)outSheet.Cells[i, j];
                    ssinfo.Add(r.Text.ToString());
                    ssout.Add(t.Text.ToString());
                }
                Stock_In stockin = (this.stockInListFrm1.BindingSource.AddNew() as Stock_In);
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
                stockin.Qty = Convert.ToInt32(ssinfo[12].ToString().Trim());
                stockin.Uom = ssinfo[13].ToString().Trim();
                stockin.Received = ssinfo[14].ToString().Trim();
                stockin.Price = ssinfo[15].ToString().Trim();
                stockin.Currency = ssinfo[16].ToString().Trim();
                if (ssinfo[17].ToString().Equals("-"))
                {
                    stockin.Total = 0;
                }
                else 
                {
                    stockin.Total = Convert.ToDecimal(ssinfo[17].ToString().Trim());
                }
                stockin.Rate = ssinfo[18].ToString().Trim();
                stockin.Total_THB = Convert.ToDecimal(ssinfo[19].ToString().Trim());
                stockin.USE_FULL = ssinfo[20].ToString().Trim();
                stockin.Loc = ssinfo[21].ToString().Trim();
                stockin.Unit = ssinfo[22].ToString().Trim();
                stockin.Status = ssinfo[23].ToString().Trim();
                if (Context.Stock_Ins.Where(P => P.Date == stockin.Date && P.Lot_no == stockin.Lot_no).Count() < 0)
                {
                    this.stockInListFrm1.BindingSource.EndEdit();
                }
                Stock_Out stockout = (this.stockOutListFrm1.BindingSource.AddNew() as Stock_Out);
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
                if (ssout[17].ToString().Equals("-"))
                {
                    stockout.Total = 0;
                }
                else
                {
                    stockout.Total = Convert.ToDecimal(ssout[17].ToString().Trim());
                }
                stockout.Rate = ssout[18].ToString().Trim();
                stockout.Total_THB = Convert.ToDecimal(ssout[19].ToString().Trim());
                stockout.USE_FULL = ssout[20].ToString().Trim();
                stockout.Loc = ssout[21].ToString().Trim();
                stockout.Unit = ssout[22].ToString().Trim();
                stockout.Status = ssout[23].ToString().Trim();

                if (Context.Stock_Ins.Where(P => P.Date == stockout.Date && P.Lot_no == stockout.Lot_no).Count() < 0)
                {
                    this.stockOutListFrm1.BindingSource.EndEdit();
                }

                Stock_Balance balance = (this.stockBalanceFrm1.BindingSource.AddNew() as Stock_Balance);
                balance.Date = ssinfo[0].ToString().Trim();
                balance.PO_number = ssinfo[1].ToString().Trim();
                balance.Invoice = ssinfo[2].ToString().Trim();
                balance.Supplier = ssinfo[3].ToString().Trim();
                balance.Project_No = ssinfo[4].ToString().Trim();
                balance.Material_name = ssinfo[5].ToString().Trim();
                balance.Material_Art = ssinfo[6].ToString().Trim();
                balance.Material_Group = ssinfo[7].ToString().Trim();
                balance.Type = ssinfo[8].ToString().Trim();
                balance.Color = ssinfo[9].ToString().Trim();
                balance.Size = ssinfo[10].ToString().Trim();
                balance.Lot_no = ssinfo[11].ToString().Trim();
                balance.Uom = ssinfo[13].ToString().Trim();
                balance.Received = ssinfo[14].ToString().Trim();
                balance.Price = ssinfo[15].ToString().Trim();
                balance.Currency = ssinfo[16].ToString().Trim();
                balance.Rate = ssinfo[18].ToString().Trim();
                balance.USE_FULL = ssinfo[20].ToString().Trim();
                balance.Loc = ssinfo[21].ToString().Trim();
                balance.Unit = ssinfo[22].ToString().Trim();
                balance.Status = ssinfo[23].ToString().Trim();
                if (ssout[0].ToString() == ssinfo[0].ToString() && ssout[1].ToString() == ssinfo[1].ToString() && ssout[2].ToString() == ssinfo[2].ToString()
                    && ssout[3].ToString() == ssinfo[3].ToString() && ssout[4].ToString() == ssinfo[4].ToString() && ssout[5].ToString() == ssinfo[5].ToString()
                    && ssout[6].ToString() == ssinfo[6].ToString() && ssout[7].ToString() == ssinfo[7].ToString() && ssout[8].ToString() == ssinfo[8].ToString()
                    && ssout[9].ToString() == ssinfo[9].ToString() && ssout[10].ToString() == ssinfo[10].ToString() && ssout[11].ToString() == ssinfo[11].ToString()
                    && ssout[13].ToString() == ssinfo[13].ToString() && ssout[14].ToString() == ssinfo[14].ToString() && ssout[15].ToString() == ssinfo[15].ToString()
                    && ssout[16].ToString() == ssinfo[16].ToString() && ssout[18].ToString() == ssinfo[18].ToString() && ssout[20].ToString() == ssinfo[20].ToString()
                    && ssout[21].ToString() == ssinfo[21].ToString() && ssout[22].ToString() == ssinfo[22].ToString() && ssout[23].ToString() == ssinfo[23].ToString())
                {
                    balance.Qty = (Convert.ToInt32(ssinfo[12].ToString().Trim()) - Convert.ToInt32(ssout[12].ToString().Trim())).ToString();
                    if (ssinfo[17].ToString().Trim().Equals("-") || ssout[17].ToString().Trim().Equals("-"))
                    {
                        balance.Total = "-";
                    }
                    else 
                    {
                        balance.Total = (Convert.ToDecimal(ssinfo[17].ToString().Trim()) - Convert.ToDecimal(ssout[17].ToString().Trim())).ToString();
                    }
                    balance.Total_THB = (Convert.ToDecimal(ssinfo[19].ToString().Trim()) - Convert.ToDecimal(ssout[19].ToString().Trim())).ToString();
                }
                if (Context.Stock_Ins.Where(P => P.Date == balance.Date && P.Lot_no == balance.Lot_no).Count() < 0)
                {
                    this.stockBalanceFrm1.BindingSource.EndEdit();
                    (this.DataContext as HDODataContext).SubmitChanges();
                }
                ssinfo.Clear();
                ssout.Clear();
                i++;
            }
            while (((Excel.Range)mySheet.Cells[i, 1]).Text.ToString().Trim() != string.Empty);

            myBook = null;
            mySheet = null;
            myExcel.Quit();
            myExcel = null;
        }

        //private void exportToExcelToolStripMenuItem1_Click(object sender, EventArgs e)
        //{
        //    this.saveFileDialog1.Title = "导出到Excel";
        //    saveFileDialog1.Filter = "Excel文件(.xls)|*.xls";
        //    if (saveFileDialog1.ShowDialog() == DialogResult.OK)
        //    {
        //        this.StockIn.ExportToXls(saveFileDialog1.FileName);
        //        DevExpress.XtraEditors.XtraMessageBox.Show("保存成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //    }
        //}

        //private void exportToPDFToolStripMenuItem_Click(object sender, EventArgs e)
        //{
        //    this.saveFileDialog2.Title = "导出到PDF文件";
        //    saveFileDialog2.Filter = "PDF文件(.PDF)|*.pdf";
        //    if (saveFileDialog2.ShowDialog() == DialogResult.OK)
        //    {
        //        this.StockIn.ExportToPdf(saveFileDialog2.FileName);
        //        DevExpress.XtraEditors.XtraMessageBox.Show("保存成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //    }
        //}

        //private void exportToXLSToolStripMenuItem_Click(object sender, EventArgs e)
        //{
        //    this.saveFileDialog1.Title = "导出到Excel";
        //    saveFileDialog1.Filter = "Excel文件(.xls)|*.xls";
        //    if (saveFileDialog1.ShowDialog() == DialogResult.OK)
        //    {
        //        this.StockOut.ExportToXls(saveFileDialog1.FileName);
        //        DevExpress.XtraEditors.XtraMessageBox.Show("保存成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //    }
        //}

        //private void exportToPDFToolStripMenuItem1_Click(object sender, EventArgs e)
        //{
        //    this.saveFileDialog2.Title = "导出到PDF文件";
        //    saveFileDialog2.Filter = "PDF文件(.PDF)|*.pdf";
        //    if (saveFileDialog2.ShowDialog() == DialogResult.OK)
        //    {
        //        this.StockOut.ExportToPdf(saveFileDialog2.FileName);
        //        DevExpress.XtraEditors.XtraMessageBox.Show("保存成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //    }
        //}



    }
}
