using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DevExpress.XtraReports.UI;
using System.Data.Linq;
using PH.Platform.ExtendLibrary;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.BackEnd
{


    public class SupplierQABackEndReport : PH.Platform.BackEnd.BO.IServerReport
    {

        //private DevExpress.XtraGrid.GridControl gridControl1;
        //private DevExpress.XtraGrid.Views.Grid.GridView gridView1;

        private string strReportType = "";
        private string strVersionNo = "";
        private string strActiveFilterString = "";
        private string strSortedColumnNames = "";

        private string a = "1";
        private string b = "2";
        private string c = "0";
        private string d = "9";

        private List<SupplierQA> mmm = null;
        private string period = "";

        /******判斷是否啟用后臺報表執行******/
        public int CheckDataSource(string parameters)
        {
            //根據報表具體情況，確定該報表時候采用后臺執行方式。　一般通過傳入的參數來判斷執行時間是否比較長，如果返回結果為0，就是默認采用后臺報表方式　
            //return parameters.Count();
            return 0;

            //立即执行
            //return -1;

        }

        /******后臺報表顯示實際設計報表******/
        public XtraReport CreateReport(string parameters)
        {
            ParseParam(parameters);

            //InitializeGrid();

            mmm = (List<SupplierQA>)GetReportData();
            SupplierAnalyseReport rpt = new SupplierAnalyseReport(mmm, period);

            return rpt;

       
        }

        private void ParseParam(string parameters)
        {
    //        string strParameter = "ByPiece" + "\n"
    //+ strVersionNo + "\n"
    //+ this.objListGridView.ActiveFilterString() + "\n"
    //+ GetSortedColumnNames();


            string[] reportParams = parameters.Split('\n');
            if (reportParams.Length > 0)
            {
                strReportType = reportParams[0];

            }

            if (reportParams.Length > 1)
            {
                strVersionNo = reportParams[1];

            }

            if (reportParams.Length > 2)
            {
                strActiveFilterString = reportParams[2];

            }

            if (reportParams.Length > 3)
            {
                strSortedColumnNames = reportParams[3];

            }

            if (reportParams.Length > 4)
            {
                a = reportParams[4];

            }

            if (reportParams.Length > 5)
            {
                b = reportParams[5];

            }

            if (reportParams.Length > 6)
            {
                c = reportParams[6];

            }

            if (reportParams.Length > 7)
            {
                d = reportParams[7];

            }

        }

        /******報表的數據源******/
        public object GetReportDataSource(string parameters)
        {
            //string sql = string.Format("select top {0} * from View_POPC_PUR ", parameters);
            ////　返回報表文件的具體數據源            
            //return DB.GetDB(sql);


            ParseParam(parameters);

            return GetReportData();

        }

        private object GetReportData()
        {

            //ByPiece
            //ByLot
            //SuppliersQA
            //MaterialsQA

            //strParameter = "ByPiece" + "\n"
            //        + strVersionNo + "\n"
            //        + this.objListGridView.ActiveFilterString() + "\n"
            //        + GetSortedColumnNames();

            //Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
            //this.gridControl1.DataSource = fabric_Insp_HeaderList.GetFabric_Insp_HeaderList();
            
            List<Supplier_QA> lsq = new List<Supplier_QA>();
            PH.FabricInspection.BO.FabricInspectionDataContext dc1 = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            dc1.CommandTimeout = 0;
            lsq = dc1.ExecuteQuery<Supplier_QA>("Exec GET_SUPPLIERQA_DATA {0},{1},{2},{3}", a, b, c, d).ToList<Supplier_QA>();


            period = string.Empty;
            if (c != null && c != string.Empty && c.Length >= 6)
                period = "From " + " 20" + c.Substring(0, 2) + "/" + c.Substring(2, 2);
            if (d != null && d != string.Empty && d.Length >= 6)
                period = period + " To " + " 20" + d.Substring(0, 2) + "/" + d.Substring(2, 2);

            if (c == "0" && d == "9")
            { period = "All"; }

             mmm = new List<SupplierQA>();
            foreach (var l in lsq)
            {
                SupplierQA s = new SupplierQA(l.SupplierCode, l.SupplierName, l.MCount, l.TotalQty, l.RefuseQTY, l.RefusePercent, l.SpreadName1, l.SpreadQTY1, l.SpreadName2, l.SpreadQTY2, l.SpreadName3, l.SpreadQTY3, l.SpreadName4, l.SpreadQTY4, l.SpreadName5, l.SpreadQTY5, l.OtherSpreadQTY, l.PartName1, l.PartQTY1, l.PartName2, l.PartQTY2, l.PartName3, l.PartQTY3, l.PartName4, l.PartQTY4, l.PartName5, l.PartQTY5, l.PartName6, l.PartQTY6, l.PartName7, l.PartQTY7, l.PartName8, l.PartQTY8, l.PartName9, l.PartQTY9, l.PartName10, l.PartQTY10, l.OtherPartQTY, l.ActualQty, l.MouldTrail, l.FabricColor);
                mmm.Add(s);
            }


            return mmm;
        }

        //private void InitializeGrid()
        //{
        //    this.gridControl1 = new DevExpress.XtraGrid.GridControl();
        //    this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
        //    //((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
        //    //((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
        //    //this.SuspendLayout();

        //    // 
        //    // gridControl1
        //    // 
        //    this.gridControl1.EmbeddedNavigator.Name = "";
        //    this.gridControl1.Location = new System.Drawing.Point(223, 57);
        //    this.gridControl1.MainView = this.gridView1;
        //    this.gridControl1.Name = "gridControl1";
        //    this.gridControl1.Size = new System.Drawing.Size(400, 200);
        //    this.gridControl1.TabIndex = 0;
        //    this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
        //    this.gridView1});
        //    // 
        //    // gridView1
        //    // 
        //    this.gridView1.GridControl = this.gridControl1;
        //    this.gridView1.Name = "gridView1";
            
            
        //    //((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
        //    //((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
        //    //this.ResumeLayout(false);

        //}
   
    
    
    
    } 

}
