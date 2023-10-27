using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DevExpress.XtraReports.UI;
using System.Data.Linq;
using PH.Platform.ExtendLibrary;
using PH.FabricInspection.BO;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Columns;
using System.Collections;
using System.Windows.Forms;

namespace PH.FabricInspection.BackEnd
{


    public class ByPieceBackEndReport : PH.Platform.BackEnd.BO.IServerReport
    {
        private Form gridForm;

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;

        private string strReportType = "";
        private string strVersionNo = "";
        private string strActiveFilterString = "";
        private string strSortedColumnNames = "";

        /******判斷是否啟用后臺報表執行******/
        public int CheckDataSource(string parameters)
        {
            //根據報表具體情況，確定該報表時候采用后臺執行方式。　一般通過傳入的參數來判斷執行時間是否比較長，如果返回結果為0，就是默認采用后臺報表方式　
            //return parameters.Count();
            //return 0;
            
            //立即执行
            return -1;
        }

        /******后臺報表顯示實際設計報表******/
        public XtraReport CreateReport(string parameters)
        {
            
            ParseParam(parameters);

            InitializeGrid();

            object objData = GetReportData();
            //XtraReport1 rpt = new XtraReport1(objData);
            XtraReport1 rpt = new XtraReport1();

            if (strReportType.Equals("ByPiece"))
            {
                rpt.LoadLayout("informationByPiece.repx");

            }
            else if (strReportType.Equals("ByLot"))
            {
                rpt.LoadLayout("informationBylot.repx");
            }
            rpt.DataSource = objData;


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

        }

        /******報表的數據源******/
        public object GetReportDataSource(string parameters)
        {
            //string sql = string.Format("select top {0} * from View_POPC_PUR ", parameters);
            ////　返回報表文件的具體數據源            
            //return DB.GetDB(sql);

            MessageBox.Show("GetReportDataSource for by lot");
            ParseParam(parameters);

            return GetReportData();

        }

        private object GetReportData()
        {
            Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();

            //ByPiece
            //ByLot
            //SuppliersQA
            //MaterialsQA

            //strParameter = "ByPiece" + "\n"
            //        + strVersionNo + "\n"
            //        + this.objListGridView.ActiveFilterString() + "\n"
            //        + GetSortedColumnNames();
            
            this.gridControl1.DataSource = fabric_Insp_HeaderList.GetFabric_Insp_HeaderList();
            
            if (strActiveFilterString.Length > 0)
            {
                this.gridView1.ActiveFilterString = strActiveFilterString;

                SetSortedColumnNames(this.gridView1);

                List<object> IFilter = this.gridView1.FilteredList();
                List<Fabric_Insp_Header> q = new List<Fabric_Insp_Header>();
                foreach (Fabric_Insp_Header Rs in IFilter)
                {
                    q.Add(Rs);
                }
                //return q;
                
                if (strReportType.Equals("ByPiece")) {
                    return ByPieceByLotReportUtil.getDataByPiece(strVersionNo, q);
                }
                else if (strReportType.Equals("ByLot"))
                {
                    return ByPieceByLotReportUtil.getDataByLot(strVersionNo, q);
                }
                

            }
            else     //否則將整個數據源賦給報表
            {
                //return this.gridView1.DataSource;
                
                if (strReportType.Equals("ByPiece"))
                {
                    return ByPieceByLotReportUtil.getDataByPiece(strVersionNo, (List<Fabric_Insp_Header>)this.gridView1.DataSource);
                }
                else if (strReportType.Equals("ByLot"))
                {
                    return (List<MaterialByLot>)ByPieceByLotReportUtil.getDataByLot(strVersionNo, (List<Fabric_Insp_Header>)this.gridView1.DataSource);
                }
            }

            return null; ;
        }

        private void SetSortedColumnNames(GridView objListGridView)
        {
            Hashtable hsSortedColumns = new Hashtable();


            if (strSortedColumnNames.Length > 0)
            {
                string[] sortedColumns = strSortedColumnNames.Split(';');
                foreach (string tempSortedColumnInfo in sortedColumns)
                {
                    string[] sortedColumnInfos = tempSortedColumnInfo.Split(',');
                    if (sortedColumnInfos.Length >= 2)
                    {
                        hsSortedColumns.Add(sortedColumnInfos[0], sortedColumnInfos[1]);
                    }
                }
            }

            foreach (GridColumn column in objListGridView.Columns)
            {
                if (hsSortedColumns.Contains(column.FieldName))
                {
                    if (hsSortedColumns[column.FieldName].Equals(DevExpress.Data.ColumnSortOrder.Ascending.ToString()))
                    {
                        column.SortOrder = DevExpress.Data.ColumnSortOrder.Ascending;
                    }
                    else
                        if (hsSortedColumns[column.FieldName].Equals(DevExpress.Data.ColumnSortOrder.Descending.ToString()))
                        {
                            column.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
                        }
                }

            }
            

        }

        private void InitializeGrid()
        {
            this.gridForm = new Form();

            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            

            // 
            // gridControl1
            // 
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(223, 57);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(400, 200);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            
            
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();

            this.gridForm.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.gridForm.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.gridForm.Controls.Add(this.gridControl1);
            this.gridForm.Size = new System.Drawing.Size(1159, 491);
            this.gridForm.Controls.SetChildIndex(this.gridControl1, 0);


        }
   
    
    
    
    } 

}
