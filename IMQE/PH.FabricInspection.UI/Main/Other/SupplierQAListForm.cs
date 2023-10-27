using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using DevExpress.XtraGrid.Columns;

namespace PH.FabricInspection.UI
{
    public partial class SupplierQAListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public SupplierQAListForm()
        {
            //BO.FabricInspectionDataContext fd = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();
            //fd.ge
            InitializeComponent();
            //this.objListGridControl.DataSource=
           // this.objListGridView.FilteredList();
        }



        public override void DataBind()
        {
            PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.DataContext = context;

            List<Supplier_QA> dataList = context.ExecuteQuery<Supplier_QA>("Exec GET_SUPPLIERQA_DATA {0},{1},{2},{3}", "AAAA", "ZZZZ", "000000", "999999999").ToList<Supplier_QA>();


            this.BindingSource.DataSource = dataList;
            this.objListGridControl.DataSource = dataList;

        }


        private void objListGridControl_Load(object sender, EventArgs e)
        {

        }

        private void SupplierQAListForm_Load(object sender, EventArgs e)
        {
         //freddy -- for V2   
            //BO.FabricInspectionDataContext fd = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();
            //fd.CommandTimeout = 0;
            //this.objListGridControl.DataSource = fd.ExecuteQuery<Supplier_QA>("Exec GET_SUPPLIERQA_DATA {0},{1},{2},{3}", "AAAA", "ZZZZ", "000000", "999999999").ToList<Supplier_QA>();
        }

        private string GetSortedColumnNames()
        {
            string sortedColumns = "";

            foreach (GridColumn column in this.objListGridView.SortedColumns)
            {
                if (sortedColumns.Length > 0)
                {
                    sortedColumns += "\n";
                }
                sortedColumns += column.FieldName + ";" + column.SortOrder;
            }
            return sortedColumns;
        }


        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            try
            {
                string strVersionNo = "1";
                string strParameter = "SupplierQAList" + "\n"
                    + strVersionNo + "\n"
                    + this.objListGridView.ActiveFilterString + "\n"
                    + GetSortedColumnNames();

                //后臺報表主要通過反射來實習的，所以必須知道當前dll全名,報表全名
                PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                data.AssemblyName = "PH.FabricInspection.BackEnd.dll";　//當前dll全名
                data.ClassFullName = "PH.FabricInspection.BackEnd.SupplierQABackEndReport1";//報表全名
                data.JobName = "SupplierQAListBackEndReport1";//JOB名稱
                data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                data.Parameter = strParameter;//執行數據源時候需要使用的參數
                PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");


            }
            catch (Exception ex)
            {
                //this.Cursor = Cursors.Default;
                MessageBox.Show(ex.Message);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

            //freddy -- for V2
            //SupplierAnalyseReport1 report1 = null;
            
            //List<object> lsq = this.objListGridView.FilteredList();

            ////判斷報表是否已經存在且正在運行
            //if (report1 == null)
            //{

            //    report1 = new SupplierAnalyseReport1(lsq);
            //    report1.ShowPreview();
            //}
            //else
            //{
            //    report1.ClosePreview();
            //    report1.ShowPreview();

            //}
        }

        
    }
}
