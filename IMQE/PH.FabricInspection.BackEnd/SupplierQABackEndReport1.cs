using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DevExpress.XtraReports.UI;
using System.Data.Linq;
using PH.Platform.ExtendLibrary;
using PH.FabricInspection.BO;
using DevExpress.XtraGrid.Views.Grid;
using System.Collections;
using DevExpress.XtraGrid.Columns;
using System.Windows.Forms;

namespace PH.FabricInspection.BackEnd
{

    public class SupplierQABackEndReport1 : PH.Platform.BackEnd.BO.IServerReport
    {
        private Form gridForm;

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn9;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn10;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn11;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn12;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn13;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn14;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn15;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn16;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn17;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn18;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn19;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn20;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn21;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn22;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn23;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn24;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn25;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn26;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn27;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn28;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn29;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn30;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn31;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn32;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn33;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn34;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn35;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn36;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn37;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn38;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn39;

        private string strReportType = "";
        private string strVersionNo = "";
        private string strActiveFilterString = "";
        private string strSortedColumnNames = "";

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

            InitializeGrid();

            //object objData = GetReportData();
            //XtraReport1 rpt = new XtraReport1(objData);
            XtraReport1 rpt = new XtraReport1();

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


            ParseParam(parameters);

            return GetReportData();

        }

        private object GetReportData()
        {

            //MaterialQAList
            //SupplierQAList

            //strParameter = "MaterialQAList" + "\n"
            //        + strVersionNo + "\n"
            //        + this.objListGridView.ActiveFilterString() + "\n"
            //        + GetSortedColumnNames();


            PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();



                if (strReportType.Equals("MaterialQAList"))
                {
                    List<Material_QA> dataList = context.ExecuteQuery<Material_QA>("Exec GET_MATERIALQA_DATA ").ToList<Material_QA>();
                    this.gridControl1.DataSource = dataList;
                    if (strActiveFilterString.Length > 0)
                    {
                        this.gridView1.ActiveFilterString = strActiveFilterString;

                        SetSortedColumnNames(this.gridView1);

                        List<object> IFilter = this.gridView1.FilteredList();
                        List<Material_QA> q = new List<Material_QA>();
                        foreach (Material_QA Rs in IFilter)
                        {
                            q.Add(Rs);
                        }
                        return q;
                    }else     //否則將整個數據源賦給報表
                    {
                        return this.gridView1.DataSource;

                    }
                }
                else if (strReportType.Equals("SupplierQAList"))
                {
                    List<Supplier_QA> dataList = context.ExecuteQuery<Supplier_QA>("Exec GET_SUPPLIERQA_DATA {0},{1},{2},{3}", "AAAA", "ZZZZ", "000000", "999999999").ToList<Supplier_QA>();
                    this.gridControl1.DataSource = dataList;
                    if (strActiveFilterString.Length > 0)
                    {
                        this.gridView1.ActiveFilterString = strActiveFilterString;
                        SetSortedColumnNames(this.gridView1);

                        List<object> IFilter = this.gridView1.FilteredList();
                        List<Supplier_QA> q = new List<Supplier_QA>();
                        foreach (Supplier_QA Rs in IFilter)
                        {
                            q.Add(Rs);
                        }
                        return q;
                    }else     //否則將整個數據源賦給報表
                    {
                        return this.gridView1.DataSource;

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
            gridForm = new Form();

            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();


            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn9 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn12 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn13 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn14 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn15 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn16 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn17 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn18 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn19 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn20 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn21 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn22 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn23 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn24 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn25 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn26 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn27 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn28 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn29 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn30 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn31 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn32 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn33 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn34 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn35 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn36 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn37 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn38 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn39 = new DevExpress.XtraGrid.Columns.GridColumn();

            // 
            // objListGridView
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5,
            this.gridColumn6,
            this.gridColumn7,
            this.gridColumn8,
            this.gridColumn9,
            this.gridColumn10,
            this.gridColumn11,
            this.gridColumn12,
            this.gridColumn13,
            this.gridColumn14,
            this.gridColumn15,
            this.gridColumn16,
            this.gridColumn17,
            this.gridColumn18,
            this.gridColumn19,
            this.gridColumn20,
            this.gridColumn21,
            this.gridColumn22,
            this.gridColumn23,
            this.gridColumn24,
            this.gridColumn25,
            this.gridColumn26,
            this.gridColumn27,
            this.gridColumn28,
            this.gridColumn29,
            this.gridColumn30,
            this.gridColumn31,
            this.gridColumn32,
            this.gridColumn33,
            this.gridColumn34,
            this.gridColumn35,
            this.gridColumn36,
            this.gridColumn37,
            this.gridColumn38,
            this.gridColumn39});
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsPrint.AutoWidth = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "供應商";
            this.gridColumn1.FieldName = "SupplierCode";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 0;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "回料總數";
            this.gridColumn2.FieldName = "TotalQty";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 1;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "拒收數量";
            this.gridColumn3.FieldName = "RefuseQTY";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 2;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "拒收率";
            this.gridColumn4.FieldName = "RefusePercent";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 3;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "散佈型疵點名稱1";
            this.gridColumn5.FieldName = "SpreadName1";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 4;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "散佈型疵點數量1";
            this.gridColumn6.FieldName = "SpreadQTY1";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Visible = true;
            this.gridColumn6.VisibleIndex = 5;
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "散佈型疵點名稱2";
            this.gridColumn7.FieldName = "SpreadName2";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Visible = true;
            this.gridColumn7.VisibleIndex = 6;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "散佈型疵點數量2";
            this.gridColumn8.FieldName = "SpreadQTY2";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Visible = true;
            this.gridColumn8.VisibleIndex = 7;
            // 
            // gridColumn9
            // 
            this.gridColumn9.Caption = "散佈型疵點名稱3";
            this.gridColumn9.FieldName = "SpreadName3";
            this.gridColumn9.Name = "gridColumn9";
            this.gridColumn9.Visible = true;
            this.gridColumn9.VisibleIndex = 8;
            // 
            // gridColumn10
            // 
            this.gridColumn10.Caption = "散佈型疵點數量3";
            this.gridColumn10.FieldName = "SpreadQTY3";
            this.gridColumn10.Name = "gridColumn10";
            this.gridColumn10.Visible = true;
            this.gridColumn10.VisibleIndex = 9;
            // 
            // gridColumn11
            // 
            this.gridColumn11.Caption = "散佈型疵點名稱4";
            this.gridColumn11.FieldName = "SpreadName4";
            this.gridColumn11.Name = "gridColumn11";
            this.gridColumn11.Visible = true;
            this.gridColumn11.VisibleIndex = 10;
            // 
            // gridColumn12
            // 
            this.gridColumn12.Caption = "散佈型疵點數量4";
            this.gridColumn12.FieldName = "SpreadQTY4";
            this.gridColumn12.Name = "gridColumn12";
            this.gridColumn12.Visible = true;
            this.gridColumn12.VisibleIndex = 11;
            // 
            // gridColumn13
            // 
            this.gridColumn13.Caption = "散佈型疵點名稱5";
            this.gridColumn13.FieldName = "SpreadName5";
            this.gridColumn13.Name = "gridColumn13";
            this.gridColumn13.Visible = true;
            this.gridColumn13.VisibleIndex = 12;
            // 
            // gridColumn14
            // 
            this.gridColumn14.Caption = "散佈型疵點數量5";
            this.gridColumn14.FieldName = "SpreadQTY5";
            this.gridColumn14.Name = "gridColumn14";
            this.gridColumn14.Visible = true;
            this.gridColumn14.VisibleIndex = 13;
            // 
            // gridColumn15
            // 
            this.gridColumn15.Caption = "其他散佈型疵點數量";
            this.gridColumn15.FieldName = "SpreadQtyOther";
            this.gridColumn15.Name = "gridColumn15";
            this.gridColumn15.Visible = true;
            this.gridColumn15.VisibleIndex = 14;
            // 
            // gridColumn16
            // 
            this.gridColumn16.Caption = "局部型疵點名稱1";
            this.gridColumn16.FieldName = "PartName1";
            this.gridColumn16.Name = "gridColumn16";
            this.gridColumn16.Visible = true;
            this.gridColumn16.VisibleIndex = 15;
            // 
            // gridColumn17
            // 
            this.gridColumn17.Caption = "局部型疵點數量1";
            this.gridColumn17.FieldName = "PartQTY1";
            this.gridColumn17.Name = "gridColumn17";
            this.gridColumn17.Visible = true;
            this.gridColumn17.VisibleIndex = 16;
            // 
            // gridColumn18
            // 
            this.gridColumn18.Caption = "局部型疵點名稱2";
            this.gridColumn18.FieldName = "PartName2";
            this.gridColumn18.Name = "gridColumn18";
            this.gridColumn18.Visible = true;
            this.gridColumn18.VisibleIndex = 17;
            // 
            // gridColumn19
            // 
            this.gridColumn19.Caption = "局部型疵點數量2";
            this.gridColumn19.FieldName = "PartQTY2";
            this.gridColumn19.Name = "gridColumn19";
            this.gridColumn19.Visible = true;
            this.gridColumn19.VisibleIndex = 18;
            // 
            // gridColumn20
            // 
            this.gridColumn20.Caption = "局部型疵點名稱3";
            this.gridColumn20.FieldName = "PartName3";
            this.gridColumn20.Name = "gridColumn20";
            this.gridColumn20.Visible = true;
            this.gridColumn20.VisibleIndex = 19;
            // 
            // gridColumn21
            // 
            this.gridColumn21.Caption = "局部型疵點數量3";
            this.gridColumn21.FieldName = "PartQTY3";
            this.gridColumn21.Name = "gridColumn21";
            this.gridColumn21.Visible = true;
            this.gridColumn21.VisibleIndex = 20;
            // 
            // gridColumn22
            // 
            this.gridColumn22.Caption = "局部型疵點名稱4";
            this.gridColumn22.FieldName = "PartName4";
            this.gridColumn22.Name = "gridColumn22";
            this.gridColumn22.Visible = true;
            this.gridColumn22.VisibleIndex = 21;
            // 
            // gridColumn23
            // 
            this.gridColumn23.Caption = "局部型疵點數量4";
            this.gridColumn23.FieldName = "PartQTY4";
            this.gridColumn23.Name = "gridColumn23";
            this.gridColumn23.Visible = true;
            this.gridColumn23.VisibleIndex = 22;
            // 
            // gridColumn24
            // 
            this.gridColumn24.Caption = "局部型疵點名稱5";
            this.gridColumn24.FieldName = "PartName5";
            this.gridColumn24.Name = "gridColumn24";
            this.gridColumn24.Visible = true;
            this.gridColumn24.VisibleIndex = 23;
            // 
            // gridColumn25
            // 
            this.gridColumn25.Caption = "局部型疵點數量5";
            this.gridColumn25.FieldName = "PartQTY5";
            this.gridColumn25.Name = "gridColumn25";
            this.gridColumn25.Visible = true;
            this.gridColumn25.VisibleIndex = 24;
            // 
            // gridColumn26
            // 
            this.gridColumn26.Caption = "局部型疵點名稱6";
            this.gridColumn26.FieldName = "PartName6";
            this.gridColumn26.Name = "gridColumn26";
            this.gridColumn26.Visible = true;
            this.gridColumn26.VisibleIndex = 25;
            // 
            // gridColumn27
            // 
            this.gridColumn27.Caption = "局部型疵點數量6";
            this.gridColumn27.FieldName = "PartQTY6";
            this.gridColumn27.Name = "gridColumn27";
            this.gridColumn27.Visible = true;
            this.gridColumn27.VisibleIndex = 26;
            // 
            // gridColumn28
            // 
            this.gridColumn28.Caption = "局部型疵點名稱7";
            this.gridColumn28.FieldName = "PartName7";
            this.gridColumn28.Name = "gridColumn28";
            this.gridColumn28.Visible = true;
            this.gridColumn28.VisibleIndex = 27;
            // 
            // gridColumn29
            // 
            this.gridColumn29.Caption = "局部型疵點數量7";
            this.gridColumn29.FieldName = "PartQTY7";
            this.gridColumn29.Name = "gridColumn29";
            this.gridColumn29.Visible = true;
            this.gridColumn29.VisibleIndex = 28;
            // 
            // gridColumn30
            // 
            this.gridColumn30.Caption = "局部型疵點名稱8";
            this.gridColumn30.FieldName = "PartName8";
            this.gridColumn30.Name = "gridColumn30";
            this.gridColumn30.Visible = true;
            this.gridColumn30.VisibleIndex = 29;
            // 
            // gridColumn31
            // 
            this.gridColumn31.Caption = "局部型疵點數量8";
            this.gridColumn31.FieldName = "PartQTY8";
            this.gridColumn31.Name = "gridColumn31";
            this.gridColumn31.Visible = true;
            this.gridColumn31.VisibleIndex = 30;
            // 
            // gridColumn32
            // 
            this.gridColumn32.Caption = "局部型疵點名稱9";
            this.gridColumn32.FieldName = "PartName9";
            this.gridColumn32.Name = "gridColumn32";
            this.gridColumn32.Visible = true;
            this.gridColumn32.VisibleIndex = 31;
            // 
            // gridColumn33
            // 
            this.gridColumn33.Caption = "局部型疵點數量9";
            this.gridColumn33.FieldName = "PartQTY9";
            this.gridColumn33.Name = "gridColumn33";
            this.gridColumn33.Visible = true;
            this.gridColumn33.VisibleIndex = 32;
            // 
            // gridColumn34
            // 
            this.gridColumn34.Caption = "局部型疵點名稱10";
            this.gridColumn34.FieldName = "PartName10";
            this.gridColumn34.Name = "gridColumn34";
            this.gridColumn34.Visible = true;
            this.gridColumn34.VisibleIndex = 33;
            // 
            // gridColumn35
            // 
            this.gridColumn35.Caption = "局部型疵點數量10";
            this.gridColumn35.FieldName = "PartQTY10";
            this.gridColumn35.Name = "gridColumn35";
            this.gridColumn35.Visible = true;
            this.gridColumn35.VisibleIndex = 34;
            // 
            // gridColumn36
            // 
            this.gridColumn36.Caption = "其他局部型疵點數量";
            this.gridColumn36.FieldName = "OtherPartQTY";
            this.gridColumn36.Name = "gridColumn36";
            this.gridColumn36.Visible = true;
            this.gridColumn36.VisibleIndex = 35;
            // 
            // gridColumn37
            // 
            this.gridColumn37.Caption = "短碼數量";
            this.gridColumn37.FieldName = "ActualQty";
            this.gridColumn37.Name = "gridColumn37";
            this.gridColumn37.Visible = true;
            this.gridColumn37.VisibleIndex = 36;
            // 
            // gridColumn38
            // 
            this.gridColumn38.Caption = "Mould Trail";
            this.gridColumn38.FieldName = "MouldTrail";
            this.gridColumn38.Name = "gridColumn38";
            this.gridColumn38.Visible = true;
            this.gridColumn38.VisibleIndex = 37;
            // 
            // gridColumn39
            // 
            this.gridColumn39.Caption = "不顏色";
            this.gridColumn39.FieldName = "FabricColor";
            this.gridColumn39.Name = "gridColumn39";
            this.gridColumn39.Visible = true;
            this.gridColumn39.VisibleIndex = 38;





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
