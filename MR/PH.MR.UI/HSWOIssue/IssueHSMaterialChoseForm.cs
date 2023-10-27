using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;
using PH.MR.BackEnd.Report.HSWOIssue;

namespace PH.MR.UI.HSWOIssue
{
    public partial class IssueHSMaterialChoseForm : Form
    {
        //Xsj:MR資料的任務號
        private string _taskNO;
        private List<PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO> _selectedProjWOList;
        private List<HSWOIssueMaterialType> _summaryBOList = new List<HSWOIssueMaterialType>();


        private BindingSource _outDataSource;


        public IssueHSMaterialChoseForm(string TaskNO, List<PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO> SelectedProjWOList, BindingSource OutDataSource)
        {
            InitializeComponent();
            this._taskNO = TaskNO;
            this._selectedProjWOList = SelectedProjWOList;
            this._outDataSource = OutDataSource;
        }

        private void IssueHSMaterialChoseForm_Load(object sender, EventArgs e)
        {
            DataBind();
        }

        private void DataBind()
        {
            HSWOIssue.LoadingFormHelper helper = new LoadingFormHelper();
            try
            {
                helper.ShowLoadingForm("獲取海關物料信息中.....");
                foreach (PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO item in this._selectedProjWOList)
                {
                    #region
                    helper.RefreshNoteString("獲取工單[" + item.WorkOrderNO + "]海關物料信息中.....");
                    //Xsj:Customers
                    string projects = item.ProjectNO;
                    string wos = item.WorkOrderNO;

                    PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                    dct.CommandTimeout = 10000;

                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                    cmd.CommandTimeout = 10000;
                    cmd.CommandText = "P_GetMidcHSWOIssueMaterialType";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@TaskNO", SqlDbType.NVarChar, 50);
                    cmd.Parameters["@TaskNO"].Value = this._taskNO;
                    cmd.Parameters.Add("@Projects", SqlDbType.NVarChar);
                    cmd.Parameters["@Projects"].Value = projects;
                    cmd.Parameters.Add("@WOs", SqlDbType.NVarChar);
                    cmd.Parameters["@WOs"].Value = wos;
                    cmd.Connection = dct.Connection as System.Data.SqlClient.SqlConnection;

                    DataSet ds = new DataSet();
                    System.Data.SqlClient.SqlDataAdapter dap = new System.Data.SqlClient.SqlDataAdapter();
                    dap.SelectCommand = cmd;
                    dap.Fill(ds);

                    DataTable dt = ds.Tables[0];
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        #region
                        PH.MR.BO.HSWOIssueMaterialType bo = new PH.MR.BO.HSWOIssueMaterialType();
                        bo.IsSelected = true;
                        bo.Workorderno = item.WorkOrderNO;
                        bo.Fty = item.Fty;
                        bo.ExFtyDate = item.ExftyDate;
                        bo.Styleno = dt.Rows[i]["Styleno"] == DBNull.Value ? "" : dt.Rows[i]["Styleno"].ToString();
                        bo.HSTypeName = dt.Rows[i]["HSTypeName"] == DBNull.Value ? "" : dt.Rows[i]["HSTypeName"].ToString();
                        bo.Projectno = dt.Rows[i]["Projectno"] == DBNull.Value ? "" : dt.Rows[i]["Projectno"].ToString();
                        bo.HSItemSeq = dt.Rows[i]["HSItemSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["HSItemSeq"]);
                        bo.HSItemCode = dt.Rows[i]["HSItemCode"] == DBNull.Value ? "" : dt.Rows[i]["HSItemCode"].ToString();
                        bo.HSItemMaterialName = dt.Rows[i]["HSItemMaterialName"] == DBNull.Value ? "" : dt.Rows[i]["HSItemMaterialName"].ToString();
                        bo.HSItemMemo = dt.Rows[i]["HSItemMemo"] == DBNull.Value ? "" : dt.Rows[i]["HSItemMemo"].ToString();
                        this._summaryBOList.Add(bo);
                        #endregion
                    }

                    cmd.Connection.Close();
                    #endregion
                }
            }
            finally
            {
                helper.CloseLoadingForm();
            }

            this.bindingSource_BO.DataSource = this._summaryBOList;

        }

        private void sBtn_Create_Click(object sender, EventArgs e)
        {
            this.gridView_MRHSCodeRptBO.CloseEditor();
            this.bindingSource_BO.EndEdit();
            CreateIssueWO();
        }


        //Xsj:生成發料單信息
        private void CreateIssueWO()
        {
            //Xsj20160604:獲取發料的HS物料種類 
            List<HSWOIssueMaterialType> selectBOS = this._summaryBOList.Where(p => p.IsSelected).ToList();
            if (selectBOS.Count == 0)
            {
                MessageBox.Show("請選擇物料!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            HSWOIssue.LoadingFormHelper loadingHelper = new LoadingFormHelper();
            try
            {
                loadingHelper.ShowLoadingForm("創建發料表數據中.....");

                HSWOIssueHelper helper = new HSWOIssueHelper();
                //Xsj:創建發料單信息 
                List<HSWOIssueHeader> result = helper.CreateIssueWO(this._taskNO, selectBOS);

                //Xsj:從界面清除已經發料的記錄
                int cnt = this._summaryBOList.RemoveAll(p => selectBOS.Contains(p));
                this.gridView_MRHSCodeRptBO.RefreshData();


                loadingHelper.CloseLoadingForm();


                foreach (HSWOIssueHeader headerItem in result)
                {
                    foreach (PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO item in this._outDataSource.List)
                    {
                        if (item.WorkOrderNO == headerItem.WorkOrder)
                        {
                            item.IsIssued = "Y";
                        }
                    }
                }

                loadingHelper.ShowLoadingForm("生成發料報表中....");
                //Xsj:顯示海關物料發料單報表
                HSIssueSummaryReport rpt = PreView(result);

                loadingHelper.CloseLoadingForm(); 
            }
            finally
            {
                loadingHelper.CloseLoadingForm();
            }
        }

        //Xsj:顯示海關物料發料單報表
        private HSIssueSummaryReport PreView(List<HSWOIssueHeader> HeaderBOs)
        {
            HSWOIssueHelper helper = new HSWOIssueHelper();
            string issueNOs = "";
            string workOrders = "";
            //Xsj:獲取涉及到的發料單號，工單號
            foreach (HSWOIssueHeader item in HeaderBOs)
            {
                issueNOs += item.IssueNO + ",";
                workOrders += item.WorkOrder + ",";
            }
            if (issueNOs != "")
            {
                issueNOs = issueNOs.Substring(0, issueNOs.Length - 1);
                workOrders = workOrders.Substring(0, workOrders.Length - 1);
            }

            List<PH.MR.BO.MRHSCodeRptBO> rptDataSource = helper.GetIssueSummaryInfo(issueNOs);
            HSIssueSummaryReport rpt = new HSIssueSummaryReport();
            rpt.HeaderBOList = rptDataSource;
            rpt.RptType = "Issue";
            rpt.WOs = workOrders;
            rpt.ShowPreview();
            rpt.BringToFront();
            return rpt;
        }

        private void sBtn_Cancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

    }
}
