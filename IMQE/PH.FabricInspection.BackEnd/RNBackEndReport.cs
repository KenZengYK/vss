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
using System.IO;

namespace PH.FabricInspection.BackEnd
{


    public class RNBackEndReport : PH.Platform.BackEnd.BO.IServerReport
    {
        private Form gridForm;

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;

        private DevExpress.XtraGrid.Columns.GridColumn Columns_RN_NO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Company;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Item_No;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_StockIn_Date;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Supplier_Length;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Insp_Length;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_IQC_Reference;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_RN_Confirm;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Receive_Qty;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Insp_Qty;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_QC_Summary;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Problem;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Shading_Problem;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Short_Length_Problem;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Narrow_Width_Problem;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Finishing_Problem;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Color_Problem;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Others_Problem;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;

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

            object objData = GetReportData();
            //XtraReport1 rpt = new XtraReport1(objData);
            XtraReport1 rpt = new XtraReport1();
           // MessageBox.Show("Path=" + Path.GetDirectoryName(Application.ExecutablePath));
            string strAppPath = Path.GetDirectoryName(Application.ExecutablePath) + "\\";

            if (strReportType.Equals(strAppPath+"ByRN"))
            {
                rpt.LoadLayout("rnBackEnd.repx");

            }
            //else
            //{
            //    rpt.LoadLayout("rnByShortLength.repx");
            //}
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


            ParseParam(parameters);

            return GetReportData();

        }

        private object GetReportData()
        {
            RN_HeaderList rn_HeaderList = new RN_HeaderList();            

            //ByRN

            //strParameter = "ByRN" + "\n"
            //        + strVersionNo + "\n"
            //        + this.objListGridView.ActiveFilterString() + "\n"
            //        + GetSortedColumnNames();

            this.gridControl1.DataSource = rn_HeaderList.GetRN_HeaderList();
            
            if (strActiveFilterString.Length > 0)
            {
                this.gridView1.ActiveFilterString = strActiveFilterString;

                SetSortedColumnNames(this.gridView1);

                List<object> IFilter = this.gridView1.FilteredList();
                List<RN_Header> q = new List<RN_Header>();
                foreach (RN_Header Rs in IFilter)
                {
                    q.Add(Rs);
                }


                //if (strReportType.Equals("ByRN"))
                //{
                return RNReportUtil.getDataByRNReport(strVersionNo, q);
                //}
                
                

            }
            else     //否則將整個數據源賦給報表
            {
                //return this.gridView1.DataSource;
                
                //if (strReportType.Equals("ByPiece"))
                //{
                SetSortedColumnNames(this.gridView1);
                return RNReportUtil.getDataByRNReport(strVersionNo, (List<RN_Header>)this.gridView1.DataSource); 
                //}
               
            }

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

            this.Columns_RN_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Item_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_StockIn_Date = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Supplier_Length = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Insp_Length = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_IQC_Reference = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_RN_Confirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Receive_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Insp_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_QC_Summary = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Shading_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Short_Length_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Narrow_Width_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Finishing_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Color_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Others_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();


            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Company,
            this.Columns_RN_NO,
            this.Columns_Item_No,
            this.Columns_StockIn_Date,
            this.Columns_Supplier_Length,
            this.Columns_Insp_Length,
            this.Columns_IQC_Reference,
            this.Columns_RN_Confirm,
            this.Columns_Receive_Qty,
            this.Columns_Insp_Qty,
            this.Columns_QC_Summary,
            this.Columns_Defect_Problem,
            this.Columns_Shading_Problem,
            this.Columns_Short_Length_Problem,
            this.Columns_Narrow_Width_Problem,
            this.Columns_Finishing_Problem,
            this.Columns_Color_Problem,
            this.Columns_Others_Problem,
            this.gridColumn1});
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsPrint.AutoWidth = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;


            // 
            // Columns_RN_NO
            // 
            this.Columns_RN_NO.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_RN_NO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_RN_NO.Caption = "RN NO";
            this.Columns_RN_NO.FieldName = "RN_number";
            this.Columns_RN_NO.Name = "Columns_RN_NO";
            this.Columns_RN_NO.Visible = true;
            this.Columns_RN_NO.VisibleIndex = 0;
            // 
            // Columns_Company
            // 
            this.Columns_Company.Caption = "Company";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            this.Columns_Company.Visible = true;
            this.Columns_Company.VisibleIndex = 1;
            // 
            // Columns_Item_No
            // 
            this.Columns_Item_No.Caption = "Item No";
            this.Columns_Item_No.FieldName = "Item_No";
            this.Columns_Item_No.Name = "Columns_Item_No";
            this.Columns_Item_No.Visible = true;
            this.Columns_Item_No.VisibleIndex = 2;
            // 
            // Columns_StockIn_Date
            // 
            this.Columns_StockIn_Date.Caption = "Stock In Date";
            this.Columns_StockIn_Date.FieldName = "Stock_In_Date";
            this.Columns_StockIn_Date.Name = "Columns_StockIn_Date";
            // 
            // Columns_Supplier_Length
            // 
            this.Columns_Supplier_Length.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Supplier_Length.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Supplier_Length.Caption = "Supplier Length";
            this.Columns_Supplier_Length.FieldName = "Supplier_Length";
            this.Columns_Supplier_Length.Name = "Columns_Supplier_Length";
            // 
            // Columns_Insp_Length
            // 
            this.Columns_Insp_Length.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Insp_Length.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Insp_Length.Caption = "Insp Length";
            this.Columns_Insp_Length.FieldName = "Insp_Length";
            this.Columns_Insp_Length.Name = "Columns_Insp_Length";
            // 
            // Columns_IQC_Reference
            // 
            this.Columns_IQC_Reference.Caption = "IQC Reference";
            this.Columns_IQC_Reference.FieldName = "IQC_Reference";
            this.Columns_IQC_Reference.Name = "Columns_IQC_Reference";
            this.Columns_IQC_Reference.Visible = true;
            this.Columns_IQC_Reference.VisibleIndex = 3;
            // 
            // Columns_RN_Confirm
            // 
            this.Columns_RN_Confirm.Caption = "RN Confirm";
            this.Columns_RN_Confirm.FieldName = "RN_confirm";
            this.Columns_RN_Confirm.Name = "Columns_RN_Confirm";
            this.Columns_RN_Confirm.Visible = true;
            this.Columns_RN_Confirm.VisibleIndex = 4;
            // 
            // Columns_Receive_Qty
            // 
            this.Columns_Receive_Qty.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Receive_Qty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Receive_Qty.Caption = "Receive Qty";
            this.Columns_Receive_Qty.FieldName = "Receive_Qty";
            this.Columns_Receive_Qty.Name = "Columns_Receive_Qty";
            this.Columns_Receive_Qty.Visible = true;
            this.Columns_Receive_Qty.VisibleIndex = 5;
            // 
            // Columns_Insp_Qty
            // 
            this.Columns_Insp_Qty.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Insp_Qty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Insp_Qty.Caption = "Insp Qty";
            this.Columns_Insp_Qty.FieldName = "Insp_Qty";
            this.Columns_Insp_Qty.Name = "Columns_Insp_Qty";
            this.Columns_Insp_Qty.Visible = true;
            this.Columns_Insp_Qty.VisibleIndex = 6;
            // 
            // Columns_QC_Summary
            // 
            this.Columns_QC_Summary.Caption = "QC Summary";
            this.Columns_QC_Summary.FieldName = "QC_Summary";
            this.Columns_QC_Summary.Name = "Columns_QC_Summary";
            this.Columns_QC_Summary.Visible = true;
            this.Columns_QC_Summary.VisibleIndex = 7;
            // 
            // Columns_Defect_Problem
            // 
            this.Columns_Defect_Problem.Caption = "Defects_Problem";
            this.Columns_Defect_Problem.FieldName = "Major_Problem1_Checked";
            this.Columns_Defect_Problem.Name = "Columns_Defect_Problem";
            this.Columns_Defect_Problem.Visible = true;
            this.Columns_Defect_Problem.VisibleIndex = 8;
            // 
            // Columns_Shading_Problem
            // 
            this.Columns_Shading_Problem.Caption = "Shading_Problem";
            this.Columns_Shading_Problem.FieldName = "Major_Problem2_Checked";
            this.Columns_Shading_Problem.Name = "Columns_Shading_Problem";
            this.Columns_Shading_Problem.Visible = true;
            this.Columns_Shading_Problem.VisibleIndex = 11;
            // 
            // Columns_Short_Length_Problem
            // 
            this.Columns_Short_Length_Problem.Caption = "Short Length_Problem";
            this.Columns_Short_Length_Problem.FieldName = "Major_Problem3_Checked";
            this.Columns_Short_Length_Problem.Name = "Columns_Short_Length_Problem";
            this.Columns_Short_Length_Problem.Visible = true;
            this.Columns_Short_Length_Problem.VisibleIndex = 9;
            // 
            // Columns_Narrow_Width_Problem
            // 
            this.Columns_Narrow_Width_Problem.Caption = "Narrow Width_Problem";
            this.Columns_Narrow_Width_Problem.FieldName = "Major_Problem4_Checked";
            this.Columns_Narrow_Width_Problem.Name = "Columns_Narrow_Width_Problem";
            this.Columns_Narrow_Width_Problem.Visible = true;
            this.Columns_Narrow_Width_Problem.VisibleIndex = 10;
            // 
            // Columns_Finishing_Problem
            // 
            this.Columns_Finishing_Problem.Caption = "Finishing_Problem";
            this.Columns_Finishing_Problem.FieldName = "Major_Problem5_Checked";
            this.Columns_Finishing_Problem.Name = "Columns_Finishing_Problem";
            this.Columns_Finishing_Problem.Visible = true;
            this.Columns_Finishing_Problem.VisibleIndex = 13;
            // 
            // Columns_Color_Problem
            // 
            this.Columns_Color_Problem.Caption = "Off Color_Problem";
            this.Columns_Color_Problem.FieldName = "Major_Problem6_Checked";
            this.Columns_Color_Problem.Name = "Columns_Color_Problem";
            this.Columns_Color_Problem.Visible = true;
            this.Columns_Color_Problem.VisibleIndex = 12;
            // 
            // Columns_Others_Problem
            // 
            this.Columns_Others_Problem.Caption = "Others_Problem";
            this.Columns_Others_Problem.FieldName = "Major_Problem7_Checked";
            this.Columns_Others_Problem.Name = "Columns_Others_Problem";
            this.Columns_Others_Problem.Visible = true;
            this.Columns_Others_Problem.VisibleIndex = 14;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "gridColumn1";
            this.gridColumn1.FieldName = "RN_confirm";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 15;

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
