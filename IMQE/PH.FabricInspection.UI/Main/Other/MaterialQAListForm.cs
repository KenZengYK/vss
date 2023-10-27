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
    public partial class MaterialQAListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public MaterialQAListForm()
        {
            //freddy -- for V2
            BO.FabricInspectionDataContext fd = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();

            //fd.ge
            InitializeComponent();
            //this.objListGridControl.DataSource=
           // this.objListGridView.FilteredList();

            //freddy -- for V2
            //fd.CommandTimeout = 0;
            //this.objListGridControl.DataSource = fd.ExecuteQuery<Material_QA>("Exec GET_MATERIALQA_DATA ").ToList<Material_QA>();

        }


        public override void DataBind()
        {
            PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.DataContext = context;

            List<Material_QA> dataList = context.ExecuteQuery<Material_QA>("Exec GET_MATERIALQA_DATA ").ToList<Material_QA>();


            this.BindingSource.DataSource = dataList;
            this.objListGridControl.DataSource = dataList;

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
                string strParameter = "MaterialQAList" + "\n"
                    + strVersionNo + "\n"
                    + this.objListGridView.ActiveFilterString + "\n"
                    + GetSortedColumnNames();

                //后臺報表主要通過反射來實習的，所以必須知道當前dll全名,報表全名
                PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                data.AssemblyName = "PH.FabricInspection.BackEnd.dll";　//當前dll全名
                data.ClassFullName = "PH.FabricInspection.BackEnd.MaterialQAReport1";//報表全名
                data.JobName = "MaterialQAListBackEndReport1";//JOB名稱
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
            //MaterialQAReport1 report2 = null;
            
            //List<object> lsq = this.objListGridView.FilteredList();
            
            //string test=objListGridView.ActiveFilterCriteria.LegacyToString();

            ////判斷報表是否已經存在且正在運行
            ////if (report2 == null)
            ////{

            //    report2 = new MaterialQAReport1(lsq);
            //    report2.ShowPreview();
            ////}
            ////else
            ////{
            ////    report2.ClosePreview();
            ////    report2.ShowPreview();

            ////}
        }

        
    }
}
