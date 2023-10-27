using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.HDO.BO;
using Excel = Microsoft.Office.Interop.Excel;
namespace PH.HDO.BackEnd.JOB
{
    public partial class HDOStockInfoFrm : UserControl,PH.Platform.BackEnd.BO.IParameterSetControl, PH.Platform.BackEnd.BO.IServerReport
    {
        public HDOStockInfoFrm()
        {
            InitializeComponent();
        }
        string _sparmer;

        public string SParmer
        {
            get { return _sparmer; }
            set { _sparmer = value; }
        }
        DataSet myDs;
        string _Material;
        string _Project_No;
        public string Material 
        {
            get 
            {
                if (this.radioGroupMater.Checked) return "0";
                else return "1";
            }
        }

        public string Project_No
        {
            get
            {
                if (this.radioGroupPro.Checked) return "0";
                else return "1";
            }
        }
        PH.HDO.BO.Command commd = new PH.HDO.BO.Command();
       private PH.HDO.BO.HDODataContext context = ContextBuilder.CreateContext<PH.HDO.BO.HDODataContext>();
        public string GetParameter()
        {
            string Material = this.radioGroupMater.Checked ? "0" : "1";
            string Project_No = this.radioGroupPro.Checked ? "0" : "1";
            string parem = string.Format("{0},{1}", Material, Project_No);
            return parem;
        }
        public UserControl ParameterControl(string parameters)
        {
            HDOStockForm hdosfrom = new HDOStockForm();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                if (paras[0] == "0") this.radioGroupMater.Checked = true ;
                if (paras[1] == "0") this.radioGroupPro.Checked=true;
            }
            return hdosfrom;
        }

        public int CheckDataSource(string parameters)
        {
            return -1;
        }

        public object GetReportDataSource(string parameters)
        {
            List<StockInfoOut> lstStock= commd.GetStockInfoOut(this._Material,this._Project_No);
            for (int i = 0; i < lstStock.Count; i++) 
            {
                StockInfoOut stock = lstStock[i];
                MessageBox.Show(stock.Project_No);
            }
            return lstStock;
        }
        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            Getoamer(parameters);
            DevExpress.XtraReports.UI.XtraReport hdorpt;
            hdorpt = new PH.HDO.BackEnd.Report.HDOStockTackRpt(this.Material,this.Project_No);
            hdorpt.PrintingSystem.ShowMarginsWarning = false;
            hdorpt.PrintingSystem.ContinuousPageNumbering = true;
            
            //hdorpt.ExportOptions.PrintPreview.DefaultFileName = string.Format("'{0}' - PH Garment Mfg Co Ltd (HK)", this.hdotxtcompany.Text);
            return hdorpt;
        }

        private void Getoamer(string parameters)
        {
            this._sparmer = parameters;
            if (string.IsNullOrEmpty(_sparmer)) return;
            string[] ts = parameters.Split(',');
            this._Material = ts[0];
            this._Project_No = ts[1];
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            string excelFilePath = string.Empty;
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                excelFilePath = openFileDialog1.FileName;
            }
            if (string.IsNullOrEmpty(excelFilePath)) return;
            Excel.Application myExcel = new Excel.ApplicationClass();
            object oMissing = System.Reflection.Missing.Value;
            myExcel.Application.Workbooks.Open(excelFilePath, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing);
            Excel.Workbook myBook = myExcel.Workbooks[1];
            Excel.Worksheet mySheet = (Excel.Worksheet)myBook.Worksheets[1];
            Excel.Worksheet outSheet = (Excel.Worksheet)myBook.Worksheets[2];
            System.Data.DataTable dtinfo = new System.Data.DataTable("Stock_Info");
            dtinfo.Columns.Add("Date", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("PO_number", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Invoice", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Supplier", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Project_No", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Material_name", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Material_Art", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Material_Group", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Type", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Color", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Size", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Lot_no", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Qty", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Uom", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Received", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Price", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Currency", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Total", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Rate", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Total_THB", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("USE_FULL", System.Type.GetType("System.String"));
            dtinfo.Columns.Add("Loc", System.Type.GetType("System.String"));
            myDs = new DataSet();
            myDs.Tables.Add(dtinfo);

            System.Data.DataTable dtout = new System.Data.DataTable("Stock_Out");
            dtout.Columns.Add("Date", System.Type.GetType("System.String"));
            dtout.Columns.Add("PO_number", System.Type.GetType("System.String"));
            dtout.Columns.Add("Invoice", System.Type.GetType("System.String"));
            dtout.Columns.Add("Supplier", System.Type.GetType("System.String"));
            dtout.Columns.Add("Project_No", System.Type.GetType("System.String"));
            dtout.Columns.Add("Material_name", System.Type.GetType("System.String"));
            dtout.Columns.Add("Material_Art", System.Type.GetType("System.String"));
            dtout.Columns.Add("Material_Group", System.Type.GetType("System.String"));
            dtout.Columns.Add("Type", System.Type.GetType("System.String"));
            dtout.Columns.Add("Color", System.Type.GetType("System.String"));
            dtout.Columns.Add("Size", System.Type.GetType("System.String"));
            dtout.Columns.Add("Lot_no", System.Type.GetType("System.String"));
            dtout.Columns.Add("Qty", System.Type.GetType("System.String"));
            dtout.Columns.Add("Uom", System.Type.GetType("System.String"));
            dtout.Columns.Add("Received", System.Type.GetType("System.String"));
            dtout.Columns.Add("Price", System.Type.GetType("System.String"));
            dtout.Columns.Add("Currency", System.Type.GetType("System.String"));
            dtout.Columns.Add("Total", System.Type.GetType("System.String"));
            dtout.Columns.Add("Rate", System.Type.GetType("System.String"));
            dtout.Columns.Add("Total_THB", System.Type.GetType("System.String"));
            dtout.Columns.Add("USE_FULL", System.Type.GetType("System.String"));
            dtout.Columns.Add("Loc", System.Type.GetType("System.String"));
            myDs.Tables.Add(dtout);

            DataRow myRow;
            DataRow outRow;
            myDs.Clear();
            List<string> ssinfo = new List<string>();
            List<string> ssout = new List<string>();
            int i = 2;
            do
            {
                for (int j = 1; j <= 22; j++)
                {
                    Excel.Range r = (Excel.Range)mySheet.Cells[i, j];
                    Excel.Range t = (Excel.Range)outSheet.Cells[i, j];
                    ssinfo.Add(r.Text.ToString());
                    ssout.Add(t.Text.ToString());
                }
                myRow = dtinfo.NewRow();
                myRow[0] = ssinfo[0].ToString();
                myRow[1] = ssinfo[1].ToString();
                myRow[2] = ssinfo[2].ToString();
                myRow[3] = ssinfo[3].ToString();
                myRow[4] = ssinfo[4].ToString();
                myRow[5] = ssinfo[5].ToString();
                myRow[6] = ssinfo[6].ToString();
                myRow[7] = ssinfo[7].ToString();
                myRow[8] = ssinfo[8].ToString();
                myRow[9] = ssinfo[9].ToString();
                myRow[10] = ssinfo[10].ToString();
                myRow[11] = ssinfo[11].ToString();
                myRow[12] = ssinfo[12].ToString();
                myRow[13] = ssinfo[13].ToString();
                myRow[14] = ssinfo[14].ToString();
                myRow[15] = ssinfo[15].ToString();
                myRow[16] = ssinfo[16].ToString();
                myRow[17] = ssinfo[17].ToString();
                myRow[18] = ssinfo[18].ToString();
                myRow[19] = ssinfo[19].ToString();
                myRow[20] = ssinfo[20].ToString();
                myRow[21] = ssinfo[21].ToString();

                outRow = dtout.NewRow();
                outRow[0] = ssout[0].ToString();
                outRow[1] = ssout[1].ToString();
                outRow[2] = ssout[2].ToString();
                outRow[3] = ssout[3].ToString();
                outRow[4] = ssout[4].ToString();
                outRow[5] = ssout[5].ToString();
                outRow[6] = ssout[6].ToString();
                outRow[7] = ssout[7].ToString();
                outRow[8] = ssout[8].ToString();
                outRow[9] = ssout[9].ToString();
                outRow[10] = ssout[10].ToString();
                outRow[11] = ssout[11].ToString();
                outRow[12] = ssout[12].ToString();
                outRow[13] = ssout[13].ToString();
                outRow[14] = ssout[14].ToString();
                outRow[15] = ssout[15].ToString();
                outRow[16] = ssout[16].ToString();
                outRow[17] = ssout[17].ToString();
                outRow[18] = ssout[18].ToString();
                outRow[19] = ssout[19].ToString();
                outRow[20] = ssout[20].ToString();
                outRow[21] = ssout[21].ToString();
                dtinfo.Rows.Add(myRow);
                dtout.Rows.Add(outRow);
                ssinfo.Clear();
                ssout.Clear();
                i++;
            }
            while (((Excel.Range)mySheet.Cells[i, 1]).Text.ToString().Trim() != string.Empty);

            string sql = "delete from Stock_Balance";
            int f = context.ExecuteCommand(sql);
            foreach (DataRow infoStock in myDs.Tables[0].Rows)
            {
                string date = infoStock[0].ToString();
                string PO_number = infoStock[1].ToString();
                string Invoice = infoStock[2].ToString();
                string Supplier = infoStock[3].ToString();
                string Project_No = infoStock[4].ToString();
                string mar_name = infoStock[5].ToString();
                string Mate_Art = infoStock[6].ToString();
                string Mate_Group = infoStock[7].ToString();
                string Type = infoStock[8].ToString();
                string Color = infoStock[9].ToString();
                string Size = infoStock[10].ToString();
                string Lot_no = infoStock[11].ToString();
                string Uom = infoStock[13].ToString();
                string Received = infoStock[14].ToString();
                string Price = infoStock[15].ToString();
                string Currency = infoStock[16].ToString();
                string Total_HKD = infoStock[17].ToString();
                string Rate = infoStock[18].ToString();
                string Total_THB = infoStock[19].ToString();
                string USE_FULL = infoStock[20].ToString();
                string Loc = infoStock[21].ToString();
                int Qty = 0;
                double Total = 0.00;
                string Totalhkd = "";
                double TotalT = 0.00;
                string TotalTHB = "";
                string StockQty = "";
                bool IsInfo = false;
                foreach (DataRow outStock in myDs.Tables[1].Rows)
                {
                    string dateu = outStock[0].ToString();
                    string PO_numberu = outStock[1].ToString();
                    string Invoiceu = outStock[2].ToString();
                    string Supplieru = outStock[3].ToString();
                    string Project_Nou = outStock[4].ToString();
                    string mar_nameu = outStock[5].ToString();
                    string Mate_Artu = outStock[6].ToString();
                    string Mate_Groupu = outStock[7].ToString();
                    string Typeu = outStock[8].ToString();
                    string Coloru = outStock[9].ToString();
                    string Sizeu = outStock[10].ToString();
                    string Lot_nou = outStock[11].ToString();
                    string Uomu = outStock[13].ToString();
                    string Receivedu = outStock[14].ToString();
                    string Priceu = outStock[15].ToString();
                    string Currencyu = outStock[16].ToString();
                    string Total_HKDu = outStock[17].ToString();
                    string Rateu = outStock[18].ToString();
                    string Total_THBu = outStock[19].ToString();
                    string USE_FULLu = outStock[20].ToString();
                    string Locu = outStock[21].ToString();
                    if (date == dateu && PO_number == PO_numberu && Invoice == Invoiceu
                         && Supplier == Supplieru && Project_No == Project_Nou && mar_name == mar_nameu
                         && Mate_Art == Mate_Artu && Mate_Group == Mate_Groupu && Type == Typeu
                         && Color == Coloru && Size == Sizeu && Lot_no == Lot_nou
                         && Uom == Uomu && Received == Receivedu && Price == Priceu
                         && Currency == Currencyu && Rate == Rateu
                         && USE_FULL == USE_FULLu && Loc == Locu)
                    {
                        IsInfo = true;
                        Qty = Convert.ToInt16(infoStock[12]) - Convert.ToInt16(outStock[12]);
                        Total = Convert.ToDouble(Total_HKD) - Convert.ToDouble(Total_HKDu);
                        TotalT = Convert.ToDouble(Total_THB) - Convert.ToDouble(Total_THBu);
                    }
                }
                if (IsInfo && (Qty > 0 || Total > 0 || TotalT > 0))
                {
                    StockQty = Qty.ToString();
                    Totalhkd = Total.ToString();
                    TotalTHB = TotalT.ToString();
                }
                if (!IsInfo)
                {
                    StockQty = infoStock[13].ToString();
                    Totalhkd = Total_HKD.ToString();
                    TotalTHB = Total_THB.ToString();
                }
                if ((IsInfo && (Qty > 0 || Total > 0 || TotalT > 0)) || !IsInfo)
                {
                    if (f != -1)
                    {
                        context.ExecuteCommand(string.Format(@"insert into Stock_Balance(Date,PO_number,Invoice,Supplier,Project_No,
                                               Material_name,Material_Art,Material_Group,Type,Received,Color,Size,Lot_no,Qty,Uom,
                                               Price,Currency,Total,Rate,Total_THB,USE_FULL,Loc) 
                                               values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',
                                               '{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}')",
                        date, PO_number, Invoice, Supplier, Project_No, mar_name, Mate_Art, Mate_Group, Type, Received, Color, Size, Lot_no, StockQty,
                        Uom, Price, Currency, Totalhkd, Rate, TotalTHB, USE_FULL, Loc));
                    }
                }

            }
            myBook = null;
            mySheet = null;
            myExcel.Quit();
            myExcel = null;
            gridControl1.DataSource = myDs.Tables[0];
            gridControl2.DataSource = myDs.Tables[1];
        }
    }
}
