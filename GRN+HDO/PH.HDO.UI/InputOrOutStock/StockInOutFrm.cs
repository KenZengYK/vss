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
    public partial class StockInOutFrm : ParentChildForm
    {
        public StockInOutFrm()
        {
            InitializeComponent();
        }
        bool isIMP = false;
        private PH.HDO.BO.HDODataContext context = ContextBuilder.CreateContext<PH.HDO.BO.HDODataContext>();
        DataSet stock;
        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = context;
            this.stockInListFrm1.DataContext = context;
            this.stockInListFrm1.BindingSource.DataSource = from c in context.Stock_Ins orderby c.Date select c;
            this.stockOutListFrm1.DataContext = context;
            this.stockOutListFrm1.BindingSource.DataSource = from d in context.Stock_Outs orderby d.Date select d;
           
            
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

                //string date = ssinfo[0].ToString();
                //string PO_number = ssinfo[1].ToString();
                //string Invoice = ssinfo[2].ToString();
                //string Supplier = ssinfo[3].ToString();
                //string Project_No = ssinfo[4].ToString();
                //string mar_name = ssinfo[5].ToString();
                //string Mate_Art = ssinfo[6].ToString();
                //string Mate_Group = ssinfo[7].ToString();
                //string Type = ssinfo[8].ToString();
                //string Color = ssinfo[9].ToString();
                //string Size = ssinfo[10].ToString();
                //string Lot_no = ssinfo[11].ToString();
                //string Qty = ssinfo[12].ToString();
                //string Uom = ssinfo[13].ToString();
                //string Received = ssinfo[14].ToString();
                //string Price = ssinfo[15].ToString();
                //string Currency = ssinfo[16].ToString();
                //string Total_HKD = ssinfo[17].ToString();
                //string Rate = ssinfo[18].ToString();
                //string Total_THB = ssinfo[19].ToString();
                //string USE_FULL = ssinfo[20].ToString();
                //string Loc = ssinfo[21].ToString();
                //string Unit = ssinfo[22].ToString();
                //string Status = ssinfo[23].ToString();

                Stock_In stockin = (this.stockInListFrm1.BindingSource.AddNew() as Stock_In);
                stockin.Date = ssinfo[0].ToString();
                stockin.PO_number = ssinfo[1].ToString();
                stockin.Invoice = ssinfo[2].ToString();
                stockin.Supplier = ssinfo[3].ToString();
                stockin.Project_No = ssinfo[4].ToString();
                stockin.Material_name = ssinfo[5].ToString();
                stockin.Material_Art = ssinfo[6].ToString();
                stockin.Material_Group = ssinfo[7].ToString();
                stockin.Type = ssinfo[8].ToString();
                stockin.Color = ssinfo[9].ToString();
                stockin.Size = ssinfo[10].ToString();
                stockin.Lot_no = ssinfo[11].ToString();
                stockin.Qty = Convert.ToInt32(ssinfo[12].ToString());
                stockin.Uom = ssinfo[13].ToString();
                stockin.Received = ssinfo[14].ToString();
                stockin.Price = ssinfo[15].ToString();
                stockin.Currency = ssinfo[16].ToString();
                stockin.Total = Convert.ToDecimal(ssinfo[17].ToString());
                stockin.Rate = ssinfo[18].ToString();
                stockin.Total_THB =Convert.ToDecimal(ssinfo[19].ToString());
                stockin.USE_FULL = ssinfo[20].ToString();
                stockin.Loc = ssinfo[21].ToString();
                stockin.Unit = ssinfo[22].ToString();
                stockin.Status = ssinfo[23].ToString();
                this.stockInListFrm1.BindingSource.EndEdit();

            

//                context.ExecuteCommand(string.Format(@"insert into Stock_In(Date,PO_number,Invoice,Supplier,Project_No,
//                                                           Material_name,Material_Art,Material_Group,Type,Received,Color,Size,Lot_no,Qty,Uom,
//                                                           Price,Currency,Total,Rate,Total_THB,USE_FULL,Loc,Unit,Status) 
//                                                           values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',
//                                                           '{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}')",
//                           date, PO_number, Invoice, Supplier, Project_No, mar_name, Mate_Art, Mate_Group, Type, Received, Color, Size, Lot_no, Qty,
//                           Uom, Price, Currency, Total_HKD, Rate, Total_THB, USE_FULL, Loc, Unit, Status));

                //string dateu = ssout[0].ToString();
                //string PO_numberu = ssout[1].ToString();
                //string Invoiceu = ssout[2].ToString();
                //string Supplieru = ssout[3].ToString();
                //string Project_Nou = ssout[4].ToString();
                //string mar_nameu = ssout[5].ToString();
                //string Mate_Artu = ssout[6].ToString();
                //string Mate_Groupu = ssout[7].ToString();
                //string Typeu = ssout[8].ToString();
                //string Coloru = ssout[9].ToString();
                //string Sizeu = ssout[10].ToString();
                //string Lot_nou = ssout[11].ToString();
                //string Qtyu = ssout[12].ToString();
                //string Uomu = ssout[13].ToString();
                //string Receivedu = ssout[14].ToString();
                //string Priceu = ssout[15].ToString();
                //string Currencyu = ssout[16].ToString();
                //string Total_HKDu = ssout[17].ToString();
                //string Rateu = ssout[18].ToString();
                //string Total_THBu = ssout[19].ToString();
                //string USE_FULLu = ssout[20].ToString();
                //string Locu = ssout[21].ToString();
                //string Unitu = ssout[22].ToString();
                //string Statusu = ssout[23].ToString();

                Stock_Out stockout = (this.stockOutListFrm1.BindingSource.AddNew() as Stock_Out);
                stockout.Date = ssout[0].ToString();
                stockout.PO_number = ssout[1].ToString();
                stockout.Invoice = ssout[2].ToString();
                stockout.Supplier = ssout[3].ToString();
                stockout.Project_No = ssout[4].ToString();
                stockout.Material_name = ssout[5].ToString();
                stockout.Material_Art = ssout[6].ToString();
                stockout.Material_Group = ssout[7].ToString();
                stockout.Type = ssout[8].ToString();
                stockout.Color = ssout[9].ToString();
                stockout.Size = ssout[10].ToString();
                stockout.Lot_no = ssout[11].ToString();
                stockout.Qty = Convert.ToInt32(ssout[12].ToString());
                stockout.Uom = ssout[13].ToString();
                stockout.Received = ssout[14].ToString();
                stockout.Price = ssout[15].ToString();
                stockout.Currency = ssout[16].ToString();
                stockout.Total = Convert.ToDecimal(ssout[17].ToString());
                stockout.Rate = ssout[18].ToString();
                stockout.Total_THB =Convert.ToDecimal(ssout[19].ToString());
                stockout.USE_FULL = ssout[20].ToString();
                stockout.Loc = ssout[21].ToString();
                stockout.Unit = ssout[22].ToString();
                stockout.Status = ssout[23].ToString();

                this.stockOutListFrm1.BindingSource.EndEdit();

                (this.DataContext as HDODataContext).SubmitChanges();
//                context.ExecuteCommand(string.Format(@"insert into Stock_Out(Date,PO_number,Invoice,Supplier,Project_No,
//                                                           Material_name,Material_Art,Material_Group,Type,Received,Color,Size,Lot_no,Qty,Uom,
//                                                           Price,Currency,Total,Rate,Total_THB,USE_FULL,Loc,Unit,Status) 
//                                                           values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',
//                                                           '{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}')",
//                            dateu, PO_numberu, Invoiceu, Supplieru, Project_Nou, mar_nameu, Mate_Artu, Mate_Groupu, Typeu, Receivedu, Coloru, Sizeu, Lot_nou, Qtyu,
//                            Uomu, Priceu, Currencyu, Total_HKDu, Rate, Total_THBu, USE_FULLu, Locu, Unitu, Statusu));
                //dtinfo.Rows.Add(myRow);
                //dtout.Rows.Add(outRow);
                ssinfo.Clear();
                ssout.Clear();
                i++;
            }
            while (((Excel.Range)mySheet.Cells[i, 1]).Text.ToString().Trim() != string.Empty);


           
        }

        private void barPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            #region  Old
            //            if (isIMP) 
            //            {
            //                string sql = "delete from Stock_Balance";
            //                int f = context.ExecuteCommand(sql);
            //                for (int j = 0; j < StockinLst.Count; j++)
            //                {
            //                    StockInfoOut StockInfo = StockinLst[j];
            //                    if (StockInfo == null) return;
            //                    string date = StockInfo.Date;
            //                    string PO_number = StockInfo.PO_number;
            //                    string Invoice = StockInfo.Invoice;
            //                    string Supplier = StockInfo.Supplier;
            //                    string Project_No = StockInfo.Project_No;
            //                    string mar_name = StockInfo.Material_name;
            //                    string Mate_Art = StockInfo.Material_Art;
            //                    string Mate_Group = StockInfo.Material_Group;
            //                    string Type = StockInfo.Type;
            //                    string Color = StockInfo.Color;
            //                    string Size = StockInfo.Size;
            //                    string Lot_no = StockInfo.Lot_no;
            //                    string Uom = StockInfo.Uom;
            //                    string Received = StockInfo.Received;
            //                    string Price = StockInfo.Price;
            //                    string Currency = StockInfo.Currency;
            //                    string Total_HKD = StockInfo.Total;
            //                    string Rate = StockInfo.Rate;
            //                    string Total_THB = StockInfo.Total_THB;
            //                    string USE_FULL = StockInfo.USE_FULL;
            //                    string Loc = StockInfo.Loc;
            //                    string Unit = StockInfo.Unit;
            //                    string Status = StockInfo.Status;
            //                    int Qty = 0;
            //                    double Total = 0.00;
            //                    string Totalhkd = "";
            //                    double TotalT = 0.00;
            //                    string TotalTHB = "";
            //                    string StockQty = "";
            //                    bool IsInfo = false;
            //                    for (int h = 0; h < StockoutLst.Count; h++)
            //                    {
            //                        StockInfoOut Stockoutfo = StockoutLst[h];
            //                        if (Stockoutfo == null) return;
            //                        string dateu = Stockoutfo.Date;
            //                        string PO_numberu = Stockoutfo.PO_number;
            //                        string Invoiceu = Stockoutfo.Invoice;
            //                        string Supplieru = Stockoutfo.Supplier;
            //                        string Project_Nou = Stockoutfo.Project_No;
            //                        string mar_nameu = Stockoutfo.Material_name;
            //                        string Mate_Artu = Stockoutfo.Material_Art;
            //                        string Mate_Groupu = Stockoutfo.Material_Group;
            //                        string Typeu = Stockoutfo.Type;
            //                        string Coloru = Stockoutfo.Color;
            //                        string Sizeu = Stockoutfo.Size;
            //                        string Lot_nou = Stockoutfo.Lot_no;
            //                        string Uomu = Stockoutfo.Uom;
            //                        string Receivedu = Stockoutfo.Received;
            //                        string Priceu = Stockoutfo.Price;
            //                        string Currencyu = Stockoutfo.Currency;
            //                        string Total_HKDu = Stockoutfo.Total;
            //                        string Rateu = Stockoutfo.Rate;
            //                        string Total_THBu = Stockoutfo.Total_THB;
            //                        string USE_FULLu = Stockoutfo.USE_FULL;
            //                        string Locu = Stockoutfo.Loc;
            //                        string Unitu = Stockoutfo.Unit;
            //                        string Statusu = Stockoutfo.Status;
            //                        if (date == dateu && PO_number == PO_numberu && Invoice == Invoiceu
            //                             && Supplier == Supplieru && Project_No == Project_Nou && mar_name == mar_nameu
            //                             && Mate_Art == Mate_Artu && Mate_Group == Mate_Groupu && Type == Typeu
            //                             && Color == Coloru && Size == Sizeu && Lot_no == Lot_nou
            //                             && Uom == Uomu && Received == Receivedu && Price == Priceu
            //                             && Currency == Currencyu && Rate == Rateu
            //                             && USE_FULL == USE_FULLu && Loc == Locu && Unit == Unitu && Status == Statusu)
            //                        {
            //                            IsInfo = true;
            //                            Qty = Convert.ToInt16(StockInfo.Qty) - Convert.ToInt16(Stockoutfo.Qty);
            //                            Total = Convert.ToDouble(Total_HKD) - Convert.ToDouble(Total_HKDu);
            //                            TotalT = Convert.ToDouble(Total_THB) - Convert.ToDouble(Total_THBu);
            //                        }

            //                        if (IsInfo && (Qty > 0 || Total > 0 || TotalT > 0))
            //                        {
            //                            StockQty = Qty.ToString();
            //                            Totalhkd = Total.ToString();
            //                            TotalTHB = TotalT.ToString();
            //                        }
            //                        if (!IsInfo)
            //                        {
            //                            StockQty = StockInfo.Qty;
            //                            Totalhkd = Total_HKD.ToString();
            //                            TotalTHB = Total_THB.ToString();
            //                        }
            //                        if ((IsInfo && (Qty > 0 || Total > 0 || TotalT > 0)) || !IsInfo)
            //                        {
            //                            if (f != -1)
            //                            {
            //                                context.ExecuteCommand(string.Format(@"insert into Stock_Balance(Date,PO_number,Invoice,Supplier,Project_No,
            //                                               Material_name,Material_Art,Material_Group,Type,Received,Color,Size,Lot_no,Qty,Uom,
            //                                               Price,Currency,Total,Rate,Total_THB,USE_FULL,Loc,Unit,Status) 
            //                                               values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',
            //                                               '{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}')",
            //                                date, PO_number, Invoice, Supplier, Project_No, mar_name, Mate_Art, Mate_Group, Type, Received, Color, Size, Lot_no, StockQty,
            //                                Uom, Price, Currency, Totalhkd, Rate, TotalTHB, USE_FULL, Loc, Unit, Status));
            //                            }
            //                        }
            //                    }
            //                }
            //            }
            #endregion

            #region Stock_Balance表插入數據;
  
                //string sql = "delete from Stock_Balance";
                //int f = context.ExecuteCommand(sql);
                
            #endregion
            string strSql = "select a.Date,a.PO_number,a.Invoice,a.Supplier,a.Project_No,a.Material_name,a.Material_Art,a.Material_Group,a.Type,a.Received,a.Color,a.Size,a.Lot_no,a.Qty-b.Qty as Qty,a.Uom,a.Price,a.Currency,a.Total-b.Total as Total,a.Rate,a.Total_THB-b.Total_THB as Total_THB,a.USE_FULL,a.Loc,a.Unit,a.Status from Stock_In a,Stock_Out b where a.Date=b.Date and a.PO_number=b.PO_number and a.Invoice=b.Invoice and a.Supplier=b.Supplier and a.Project_No=b.Project_No and a.Material_name=b.Material_name and a.Material_Art=b.Material_Art and a.Material_Group=b.Material_Group and a.Type=b.Type and a.Received=b.Received and a.Color=b.Color and a.Size=b.Size and a.Lot_no=b.Lot_no and a.Uom=b.Uom and a.Price=b.Price and a.Currency=b.Currency and a.Rate=b.Rate and a.USE_FULL=b.USE_FULL and a.Loc=b.Loc and a.Unit=b.Unit and a.Status=b.Status ";
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
