using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;
using PH.Platform.BO;
using PH.MR.UI.HSWOIssue;
using System.Data.SqlClient;
using PH.MR.BO.Common;

namespace PH.MR.UI.Report
{
    public partial class MidcHSCodeByMRReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public MidcHSCodeByMRReport()
        {
            InitializeComponent();
            InitCtrl();
        }

        //Xsj:初始化任務下來列表
        private void InitCtrl()
        {
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            List<AnticipantMR_HSCodeHeader> taskNOList = dcon.AnticipantMR_HSCodeHeaders.Where(p => p.Status == "OK").OrderByDescending(p => p.TaskNO).ToList();
            this.lookUpEdit_TaskNO.Properties.DataSource = taskNOList;
            this.lookUpEdit_TaskNO_ALL.Properties.DataSource = taskNOList;
            this.edt_TaskNOAll.Properties.DataSource = taskNOList;
        }

        //Xsj:Print By Order DeliveryDate
        private void sBtn_CreateRpt_Click(object sender, EventArgs e)
        {
            if (!CheckInput("DeliveryDate"))
            {
                return;
            }
            //Xsj:Create BackEnd Job
            CreateBackEndJob();
        }

        private void sBtn_CreateRpt_ByProject_Click(object sender, EventArgs e)
        {
            if (!CheckInput("Project"))
            {
                return;
            }
            //Xsj:Create BackEnd Job 
            CreateBackEndJobByProject();
        }

        //Xsj:Print By Old TaskNO
        private void sBtn_PrintByTaskNO_Click(object sender, EventArgs e)
        {
            if (!CheckInput("OldTaskNO"))
            {
                return;
            }
            //Xsj:Print Report  By Alive TaskNO
            string taskNO = this.lookUpEdit_TaskNO.EditValue.ToString();
            PrintReportByTaskNO(GetTaskNO(taskNO));
        }

        //Xsj:Refresh TaskNO List
        private void sBtn_Refresh_Click(object sender, EventArgs e)
        {
            InitCtrl();
        }

        //Xsj20150822:啟用後臺作業任務
        private void CreateBackEndJob()
        {
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.MR.BackEnd.dll";
            data.ClassFullName = typeof(PH.MR.BackEnd.JobMidcHSCodeByMRReport).FullName;
            data.JobName = "MR H.S Code Report";
            data.ProgramCode = this.SideProgramID;
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;


            data.Parameter = GetRptConition();

            PH.Platform.BackEnd.BO.SReport.InsertData(data);
        }

        private void CreateBackEndJobByProject()
        {
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.MR.BackEnd.dll";
            data.ClassFullName = typeof(PH.MR.BackEnd.JobMidcHSCodeByMRReport).FullName;
            data.JobName = "MR H.S Code Report";
            data.ProgramCode = this.SideProgramID;
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;


            data.Parameter = GetRptConitionByProject();
            PH.Platform.BackEnd.BO.SReport.InsertData(data);

        }



        //Xsj:驗證輸入
        private bool CheckInput(string PrintType)
        {
            bool result = true;

            //Xsj:報表類型
            if (!this.chk_MRSummary.Checked && !this.chk_MRHSDetail.Checked && !this.chkProjectWorkOrder.Checked)
            {
                MessageBox.Show("請選擇你要生成的報表類型！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.chk_MRSummary.Focus();
                result = false;
            }
            else
            {
                switch (PrintType)
                {
                    case "Project":

                        if (string.IsNullOrEmpty(this.txtProjectNo.Text))
                        {
                            MessageBox.Show("請輸入[Project No]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            result = false;
                        }
                        break;

                    case "DeliveryDate":
                        #region
                        if (this.dateEdit_From.EditValue == null)
                        {
                            MessageBox.Show("請輸入[From Date]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            this.dateEdit_From.Focus();
                            result = false;
                        }
                        else if (this.dateEdit_TO.EditValue == null)
                        {
                            MessageBox.Show("請輸入[TO Date]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            this.dateEdit_TO.Focus();
                            result = false;
                        }

                        DateTime fromDay = Convert.ToDateTime(this.dateEdit_From.EditValue);
                        DateTime toDay = Convert.ToDateTime(this.dateEdit_TO.EditValue);

                        if (fromDay > toDay)
                        {
                            MessageBox.Show("[From Day]必須 <= [TO Day]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            result = false;
                        }
                        break;
                        #endregion

                    case "OldTaskNO":
                        if (this.lookUpEdit_TaskNO.EditValue == null)
                        {
                            MessageBox.Show("[TaskNO]不能為空，請確認!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            result = false;
                        }

                        bool isProjectChoose = this.bindingSource_SelectProject.List.Count > 0;
                        if (!isProjectChoose)
                        {
                            MessageBox.Show("請選擇[Project]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            result = false;
                        }

                        break;

                    case "OldTaskNO_ALL":
                        if (this.lookUpEdit_TaskNO_ALL.EditValue == null)
                        {
                            MessageBox.Show("[TaskNO]不能為空，請確認!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            result = false;
                        }

                        isProjectChoose = (this.bindingSource_SelectProject_ALL.List.Count > 0);
                        if (!isProjectChoose)
                        {
                            MessageBox.Show("請選擇[Project]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            result = false;
                        }

                        break;

                    case "All":
                        if (this.edt_TaskNOAll.EditValue == null)
                        {
                            MessageBox.Show("[TaskNO]不能為空，請確認!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            result = false;
                        }

                        isProjectChoose = (this.bsSelect.List.Count > 0);
                        if (!isProjectChoose)
                        {
                            MessageBox.Show("請選擇[Project]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            result = false;
                        }
                        ;
                        break;


                }
            }
            return result;
        }

        //Xsj:獲取報表條件
        //private string GetRptConition()
        //{
        //    string fromDay = ((DateTime)this.dateEdit_From.EditValue).ToString("yyyyMMdd");
        //    string toDay = ((DateTime)this.dateEdit_TO.EditValue).ToString("yyyyMMdd");

        //    int rptType = 0;

        //    rptType += (this.chk_MRHSDetail.Checked ? 1 : 0);
        //    rptType += (this.chk_MRSummary.Checked ? 2 : 0);          
        //    return fromDay + "," + toDay + "," + rptType.ToString();

        //}

        private string GetRptConition()
        {
            string fromDay = ((DateTime)this.dateEdit_From.EditValue).ToString("yyyyMMdd");
            string toDay = ((DateTime)this.dateEdit_TO.EditValue).ToString("yyyyMMdd");

            int rptType = 0;

            rptType += (this.chk_MRHSDetail.Checked ? 1 : 0);
            rptType += (this.chk_MRSummary.Checked ? 2 : 0);

            return fromDay + "," + toDay + "," + rptType.ToString();

        }

        private string GetRptConitionByProject()
        {
            string ProjectNo = this.txtProjectNo.Text;
            int rptType = 0;

            rptType += (this.chk_MRHSDetail.Checked ? 1 : 0);
            rptType += (this.chk_MRSummary.Checked ? 2 : 0);

            return ProjectNo + "," + rptType.ToString();

        }



        //Xsj:獲取選定的任務
        private AnticipantMR_HSCodeHeader GetTaskNO(string taskNO)
        {
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            AnticipantMR_HSCodeHeader taskHeaderBO = dcon.AnticipantMR_HSCodeHeaders.Where(p => p.TaskNO == taskNO).FirstOrDefault();
            return taskHeaderBO;
        }


        public static PH.MR.BO.MRDataContext edc
        {
            get
            {
                return _edc;
            }
        }
        private static PH.MR.BO.MRDataContext _edc = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();

        private string _taskNO;


        private List<PH.MR.BO.MRHSCodeRptBO> _rptDataSourceList = new List<PH.MR.BO.MRHSCodeRptBO>();
        //Xsj:準備數據源
        private void PrepareDateSource(AnticipantMR_HSCodeHeader TaskHeaderBO)
        {
            this._rptDataSourceList.Clear();
            PH.MR.BO.MRHSCodeRptBO rptDataSource = new PH.MR.BO.MRHSCodeRptBO();
            _rptDataSourceList.Add(rptDataSource);
            try
            {
                #region

                //Xsj:TaskNO
                this._taskNO = TaskHeaderBO.TaskNO;

                //Xsj:Customers
                string projects = "";
                string wos = "";
                foreach (CustomerProjectBO item in this.bindingSource_SelectProject.List)
                {
                    if (projects.IndexOf(item.ProjectNO.Trim()) == -1)
                    {
                        projects += (projects == "" ? item.ProjectNO.Trim() : "," + item.ProjectNO.Trim());
                    }

                    wos += (wos == "" ? item.WorkOrderNO : "," + item.WorkOrderNO);
                }


                PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                dct.CommandTimeout = 10000;

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandTimeout = 10000;
                cmd.CommandText = "P_GetMidcHSCodeByMRWithWO";
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


                //Detial
                DataTable dt = ds.Tables[0];
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    #region
                    PH.MR.BO.MRHSCodeDetailRptBO bo = new MRHSCodeDetailRptBO();

                    bo.Customer = dt.Rows[i]["Customer"] == DBNull.Value ? "" : dt.Rows[i]["Customer"].ToString();
                    bo.SalesOrder = dt.Rows[i]["SalesOrder"] == DBNull.Value ? "" : dt.Rows[i]["SalesOrder"].ToString();
                    bo.StyleType = dt.Rows[i]["StyleType"] == DBNull.Value ? "" : dt.Rows[i]["StyleType"].ToString();
                    bo.StyleHSCode = dt.Rows[i]["StyleHSCode"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSCode"].ToString();
                    bo.PHStyleNo = dt.Rows[i]["PHStyleNo"] == DBNull.Value ? "" : dt.Rows[i]["PHStyleNo"].ToString();
                    bo.StyleName = dt.Rows[i]["StyleName"] == DBNull.Value ? "" : dt.Rows[i]["StyleName"].ToString();
                    bo.ProductUnit = dt.Rows[i]["ProductUnit"] == DBNull.Value ? "" : dt.Rows[i]["ProductUnit"].ToString();
                    bo.ProductQty = dt.Rows[i]["ProductQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty"]);
                    bo.ProductWeightPer = dt.Rows[i]["ProductWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["ProductWeightPer"]);

                    bo.ItemHSCode = dt.Rows[i]["ItemHSCode"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSCode"].ToString();
                    bo.PHItemNO = dt.Rows[i]["PHItemNO"] == DBNull.Value ? "" : dt.Rows[i]["PHItemNO"].ToString();
                    bo.ItemName = dt.Rows[i]["ItemName"] == DBNull.Value ? "" : dt.Rows[i]["ItemName"].ToString();
                    bo.ItemWeightPer = dt.Rows[i]["ItemWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["ItemWeightPer"]);

                    bo.WeightHsCode = dt.Rows[i]["WeightHsCode"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["WeightHsCode"]);
                    bo.TotalWeight = dt.Rows[i]["TotalWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["TotalWeight"]);
                    bo.TotalMRQty = dt.Rows[i]["TotalMRQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["TotalMRQty"]);
                    bo.MRPer = dt.Rows[i]["MRPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["MRPer"]);

                    bo.PHUnit = dt.Rows[i]["PHUnit"] == DBNull.Value ? "" : dt.Rows[i]["PHUnit"].ToString();
                    bo.Currency = dt.Rows[i]["Currency"] == DBNull.Value ? "" : dt.Rows[i]["Currency"].ToString();
                    bo.IsPurchaseItem = dt.Rows[i]["IsPurchaseItem"] == DBNull.Value ? "" : dt.Rows[i]["IsPurchaseItem"].ToString();


                    bo.FabricRate = dt.Rows[i]["FabricRate"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["FabricRate"]);
                    bo.Wastage = dt.Rows[i]["Wastage"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["Wastage"]);
                    bo.ItemNetWeight = dt.Rows[i]["NetWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["NetWeight"]);
                    bo.ProductQty_Purchase = dt.Rows[i]["ProductQty_Purchase"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty_Purchase"]);

                    //Xsj:Style HS Info
                    bo.StyleHSCodeSeq = dt.Rows[i]["StyleHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeSeq"]);
                    bo.StyleHSName = dt.Rows[i]["StyleHSName"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSName"].ToString();
                    bo.StyleHSDesc = dt.Rows[i]["StyleHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSDesc"].ToString();
                    bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();

                    //Xsj:Item HS Info
                    bo.ItemHSCodeSeq = dt.Rows[i]["ItemHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeSeq"]);
                    bo.ItemHSName = dt.Rows[i]["ItemHSName"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSName"].ToString();
                    bo.ItemHSDesc = dt.Rows[i]["ItemHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSDesc"].ToString();
                    bo.ItemHSUnit = dt.Rows[i]["ItemHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSUnit"].ToString();


                    rptDataSource.DetailList.Add(bo);
                    #endregion
                }

                //Summary 
                dt = ds.Tables[1];
                for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                {
                    #region
                    PH.MR.BO.MRHSCodeSummaryRptBO bo = new MRHSCodeSummaryRptBO();

                    bo.StyleType = dt.Rows[i]["StyleType"] == DBNull.Value ? "" : dt.Rows[i]["StyleType"].ToString();
                    bo.StyleHSCodeSeq = dt.Rows[i]["StyleHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeSeq"]);
                    bo.StyleHSCodeIndexValue = dt.Rows[i]["StyleHSCodeIndexValue"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeIndexValue"]);

                    bo.StyleHSCode = dt.Rows[i]["StyleHSCode"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSCode"].ToString();
                    bo.StyleHSName = dt.Rows[i]["StyleHSName"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSName"].ToString();
                    bo.StyleHSDesc = dt.Rows[i]["StyleHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSDesc"].ToString();
                    bo.ProductQty = dt.Rows[i]["ProductQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty"]);
                    bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();

                    bo.ItemHSCodeSeq = dt.Rows[i]["ItemHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeSeq"]);
                    bo.ItemHSCodeIndexValue = dt.Rows[i]["ItemHSCodeIndexValue"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeIndexValue"]);

                    bo.ItemHSCode = dt.Rows[i]["ItemHSCode"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSCode"].ToString();
                    bo.ItemHSName = dt.Rows[i]["ItemHSName"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSName"].ToString();
                    bo.ItemHSDesc = dt.Rows[i]["ItemHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSDesc"].ToString();
                    bo.ItemHSUnit = dt.Rows[i]["ItemHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSUnit"].ToString();

                    bo.SalesOrderItemTotalWeight = dt.Rows[i]["SalesOrderItemTotalWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalWeight"]);
                    bo.SalesOrderWastage = dt.Rows[i]["SalesOrderWastage"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderWastage"]);

                    bo.SalesOrderItemTotalNetWeight = dt.Rows[i]["SalesOrderItemTotalNetWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalNetWeight"]);
                    bo.SalesOrderItemNetWeightPer = dt.Rows[i]["SalesOrderItemNetWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemNetWeightPer"]);
                    bo.SalesOrderItemTotalWeightPer = dt.Rows[i]["SalesOrderItemTotalWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalWeightPer"]);


                    bo.Currency = dt.Rows[i]["Currency"] == DBNull.Value ? "" : dt.Rows[i]["Currency"].ToString();

                    rptDataSource.SummaryList.Add(bo);
                    #endregion
                }

                cmd.Connection.Close();
                #endregion
            }
            catch (Exception ex)
            {
                MessageBox.Show("產生報表失敗：" + ex.ToString(), "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        //Xsj:準備數據源
        private void PrepareDateSource_ALL(AnticipantMR_HSCodeHeader TaskHeaderBO)
        {
            this._rptDataSourceList.Clear();
            PH.MR.BO.MRHSCodeRptBO rptDataSource = new PH.MR.BO.MRHSCodeRptBO();
            _rptDataSourceList.Add(rptDataSource);
            try
            {
                #region

                //Xsj:TaskNO
                this._taskNO = TaskHeaderBO.TaskNO;

                //Xsj:Customers
                string projects = "";
                //string wos = "";
                foreach (CustomerProjectBO item in this.bindingSource_SelectProject_ALL.List)
                {
                    if (projects.IndexOf(item.ProjectNO.Trim()) == -1)
                    {
                        projects += (projects == "" ? item.ProjectNO.Trim() : "," + item.ProjectNO.Trim());
                    }

                    //wos += (wos == "" ? item.WorkOrderNO : "," + item.WorkOrderNO);
                }


                PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                dct.CommandTimeout = 10000;

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandTimeout = 10000;
                cmd.CommandText = "P_GetMidcHSCodeByMRWithProject";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@TaskNO", SqlDbType.NVarChar, 50);
                cmd.Parameters["@TaskNO"].Value = this._taskNO;
                cmd.Parameters.Add("@Projects", SqlDbType.NVarChar);
                cmd.Parameters["@Projects"].Value = projects;
                //cmd.Parameters.Add("@WOs", SqlDbType.NVarChar);
                //cmd.Parameters["@WOs"].Value = wos;
                cmd.Connection = dct.Connection as System.Data.SqlClient.SqlConnection;

                DataSet ds = new DataSet();
                System.Data.SqlClient.SqlDataAdapter dap = new System.Data.SqlClient.SqlDataAdapter();
                dap.SelectCommand = cmd;
                dap.Fill(ds);


                //Detial
                DataTable dt = ds.Tables[0];
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    #region
                    PH.MR.BO.MRHSCodeDetailRptBO bo = new MRHSCodeDetailRptBO();

                    bo.Customer = dt.Rows[i]["Customer"] == DBNull.Value ? "" : dt.Rows[i]["Customer"].ToString();
                    bo.SalesOrder = dt.Rows[i]["SalesOrder"] == DBNull.Value ? "" : dt.Rows[i]["SalesOrder"].ToString();
                    bo.StyleType = dt.Rows[i]["StyleType"] == DBNull.Value ? "" : dt.Rows[i]["StyleType"].ToString();
                    bo.StyleHSCode = dt.Rows[i]["StyleHSCode"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSCode"].ToString();
                    bo.PHStyleNo = dt.Rows[i]["PHStyleNo"] == DBNull.Value ? "" : dt.Rows[i]["PHStyleNo"].ToString();
                    bo.StyleName = dt.Rows[i]["StyleName"] == DBNull.Value ? "" : dt.Rows[i]["StyleName"].ToString();
                    bo.ProductUnit = dt.Rows[i]["ProductUnit"] == DBNull.Value ? "" : dt.Rows[i]["ProductUnit"].ToString();
                    bo.ProductQty = dt.Rows[i]["ProductQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty"]);
                    bo.ProductWeightPer = dt.Rows[i]["ProductWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["ProductWeightPer"]);

                    bo.ItemHSCode = dt.Rows[i]["ItemHSCode"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSCode"].ToString();
                    bo.PHItemNO = dt.Rows[i]["PHItemNO"] == DBNull.Value ? "" : dt.Rows[i]["PHItemNO"].ToString();
                    bo.ItemName = dt.Rows[i]["ItemName"] == DBNull.Value ? "" : dt.Rows[i]["ItemName"].ToString();
                    bo.ItemWeightPer = dt.Rows[i]["ItemWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["ItemWeightPer"]);

                    bo.WeightHsCode = dt.Rows[i]["WeightHsCode"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["WeightHsCode"]);
                    bo.TotalWeight = dt.Rows[i]["TotalWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["TotalWeight"]);
                    bo.TotalMRQty = dt.Rows[i]["TotalMRQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["TotalMRQty"]);
                    bo.MRPer = dt.Rows[i]["MRPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["MRPer"]);

                    bo.PHUnit = dt.Rows[i]["PHUnit"] == DBNull.Value ? "" : dt.Rows[i]["PHUnit"].ToString();
                    bo.Currency = dt.Rows[i]["Currency"] == DBNull.Value ? "" : dt.Rows[i]["Currency"].ToString();
                    bo.IsPurchaseItem = dt.Rows[i]["IsPurchaseItem"] == DBNull.Value ? "" : dt.Rows[i]["IsPurchaseItem"].ToString();


                    bo.FabricRate = dt.Rows[i]["FabricRate"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["FabricRate"]);
                    bo.Wastage = dt.Rows[i]["Wastage"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["Wastage"]);
                    bo.ItemNetWeight = dt.Rows[i]["NetWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["NetWeight"]);
                    bo.ProductQty_Purchase = dt.Rows[i]["ProductQty_Purchase"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty_Purchase"]);

                    //Xsj:Style HS Info
                    bo.StyleHSCodeSeq = dt.Rows[i]["StyleHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeSeq"]);
                    bo.StyleHSName = dt.Rows[i]["StyleHSName"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSName"].ToString();
                    bo.StyleHSDesc = dt.Rows[i]["StyleHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSDesc"].ToString();
                    bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();

                    //Xsj:Item HS Info
                    bo.ItemHSCodeSeq = dt.Rows[i]["ItemHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeSeq"]);
                    bo.ItemHSName = dt.Rows[i]["ItemHSName"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSName"].ToString();
                    bo.ItemHSDesc = dt.Rows[i]["ItemHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSDesc"].ToString();
                    bo.ItemHSUnit = dt.Rows[i]["ItemHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSUnit"].ToString();


                    rptDataSource.DetailList.Add(bo);
                    #endregion
                }

                //Summary 
                dt = ds.Tables[1];
                for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                {
                    #region
                    PH.MR.BO.MRHSCodeSummaryRptBO bo = new MRHSCodeSummaryRptBO();

                    bo.StyleType = dt.Rows[i]["StyleType"] == DBNull.Value ? "" : dt.Rows[i]["StyleType"].ToString();
                    bo.StyleHSCodeSeq = dt.Rows[i]["StyleHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeSeq"]);
                    bo.StyleHSCodeIndexValue = dt.Rows[i]["StyleHSCodeIndexValue"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeIndexValue"]);
                    bo.StyleHSCode = dt.Rows[i]["StyleHSCode"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSCode"].ToString();
                    bo.StyleHSName = dt.Rows[i]["StyleHSName"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSName"].ToString();
                    bo.StyleHSDesc = dt.Rows[i]["StyleHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSDesc"].ToString();
                    bo.ProductQty = dt.Rows[i]["ProductQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty"]);
                    bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();

                    bo.ItemHSCodeSeq = dt.Rows[i]["ItemHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeSeq"]);
                    bo.ItemHSCodeIndexValue = dt.Rows[i]["ItemHSCodeIndexValue"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeIndexValue"]);
                    bo.ItemHSCode = dt.Rows[i]["ItemHSCode"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSCode"].ToString();
                    bo.ItemHSName = dt.Rows[i]["ItemHSName"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSName"].ToString();
                    bo.ItemHSDesc = dt.Rows[i]["ItemHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSDesc"].ToString();
                    bo.ItemHSUnit = dt.Rows[i]["ItemHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSUnit"].ToString();

                    bo.SalesOrderItemTotalWeight = dt.Rows[i]["SalesOrderItemTotalWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalWeight"]);
                    bo.SalesOrderWastage = dt.Rows[i]["SalesOrderWastage"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderWastage"]);

                    bo.SalesOrderItemTotalNetWeight = dt.Rows[i]["SalesOrderItemTotalNetWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalNetWeight"]);
                    bo.SalesOrderItemNetWeightPer = dt.Rows[i]["SalesOrderItemNetWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemNetWeightPer"]);
                    bo.SalesOrderItemTotalWeightPer = dt.Rows[i]["SalesOrderItemTotalWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalWeightPer"]);


                    bo.Currency = dt.Rows[i]["Currency"] == DBNull.Value ? "" : dt.Rows[i]["Currency"].ToString();

                    rptDataSource.SummaryList.Add(bo);
                    #endregion
                }

                cmd.Connection.Close();
                #endregion
            }
            catch (Exception ex)
            {
                MessageBox.Show("產生報表失敗：" + ex.ToString(), "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }


        //Xsj:打印Report
        private void PrintReportByTaskNO(AnticipantMR_HSCodeHeader TaskHeaderBO)
        {
            this.Cursor = Cursors.WaitCursor;
            int rptType = 0;
            rptType += (this.chk_MRHSDetail.Checked ? 1 : 0);
            rptType += (this.chk_MRSummary.Checked ? 2 : 0);

            this._rptDataSourceList.Clear();
            PrepareDateSource(TaskHeaderBO);



            PH.MR.BackEnd.MidcHSCodeMRReport rpt = new PH.MR.BackEnd.MidcHSCodeMRReport();
            if (string.IsNullOrEmpty(TaskHeaderBO.ProjectNo))
            {
                string fromDay1 = TaskHeaderBO.FromDate.Value.ToString("yyyy-MM-dd");
                string toDay1 = TaskHeaderBO.EndDate.Value.ToString("yyyy-MM-dd");

                rpt.FromDay = fromDay1;
                rpt.TODay = toDay1;
            }
            else
            {
                rpt.RptProjectNo = TaskHeaderBO.ProjectNo;
            }

            rpt.RptType = rptType.ToString();
            rpt.DataSource = this._rptDataSourceList;

            if (chkProjectWorkOrder.Checked)
            {

                List<MRSummaryWithProjectWorkOrderRptBO> Alist = PrintMRSummaryWithProjectWorkOrderDataSource(TaskHeaderBO, 1);

                MRSummaryWithProjectWorkOrder SProejctWorkOrderRpt = new MRSummaryWithProjectWorkOrder(Alist);
                rpt.xrMRSummarywithProjectWorkOrder.ReportSource = SProejctWorkOrderRpt;
            }

            rpt.ShowPreviewDialog();
        }

        public List<MRSummaryWithProjectWorkOrderRptBO> PrintMRSummaryWithProjectWorkOrderDataSource(AnticipantMR_HSCodeHeader TaskHeaderBO, int FormType)
        {
            PH.MR.BO.MRDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            string projects = "";
            string wos = "";

            //this.bindingSource_SelectProject_ALL.List
            //foreach (CustomerProjectBO item in this.bsSelect.List)
            //FormType
            BindingSource BS = new BindingSource();

            BS = FormType == 1 ? this.bindingSource_SelectProject : (FormType == 2 ? this.bindingSource_SelectProject_ALL : this.bsSelect);

            foreach (CustomerProjectBO item in BS.List)
            {
                if (projects.IndexOf(item.ProjectNO.Trim()) == -1)
                {
                    projects += (projects == "" ? item.ProjectNO.Trim() : "," + item.ProjectNO.Trim());
                }

                wos += (wos == "" ? item.WorkOrderNO : "," + item.WorkOrderNO);
            }
            string StrSQl = "exec [P_GetMidcHSCodeSummatyByProjectWorkOrder] '{0}','{1}','{2}','{3}'";
            StrSQl = string.Format(StrSQl, TaskHeaderBO.TaskNO, projects, wos, FormType);

            List<MRSummaryWithProjectWorkOrderRptBO> AList = db.ExecuteDataSet(StrSQl, new DataSet(), "Opts").Tables[0].AsEnumerable().Select(dr => new MRSummaryWithProjectWorkOrderRptBO
            {
                StyleHSCodeIndexValue = dr["StyleHSCodeIndexValue"].ToString(),
                StyleHSCode = dr["StyleHSCode"].ToString(),
                StyleHSName = dr["StyleHSName"].ToString(),
                ProjectNO_PQ = dr["ProjectNO_PQ"].ToString(),
                WorkOrderNO = dr["WorkOrderNO"].ToString(),
                ProductQty_PQ = Convert.ToDecimal(dr["ProductQty_PQ"].ToString()),

                ProdCode = dr["ProdCode"].ToString() //Add by shulin 2023-09-18

            }).ToList();

            return AList;

        }



        //Xsj:打印Report
        private void PrintReportByTaskNO_ALL(AnticipantMR_HSCodeHeader TaskHeaderBO)
        {
            this.Cursor = Cursors.WaitCursor;
            int rptType = 0;
            rptType += (this.chk_MRHSDetail.Checked ? 1 : 0);
            rptType += (this.chk_MRSummary.Checked ? 2 : 0);

            PrepareDateSource_ALL(TaskHeaderBO);

            PH.MR.BackEnd.MidcHSCodeMRReport rpt = new PH.MR.BackEnd.MidcHSCodeMRReport();
            if (string.IsNullOrEmpty(TaskHeaderBO.ProjectNo))
            {

                string fromDay1 = TaskHeaderBO.FromDate.Value.ToString("yyyy-MM-dd");
                string toDay1 = TaskHeaderBO.EndDate.Value.ToString("yyyy-MM-dd");


                rpt.FromDay = fromDay1;
                rpt.TODay = toDay1;

            }
            else
            {
                rpt.RptProjectNo = TaskHeaderBO.ProjectNo;
            }

            rpt.RptType = rptType.ToString();
            rpt.DataSource = this._rptDataSourceList;
            rpt.ShowPreviewDialog();

        }



        //Xsj20151023:獲取客戶列表
        public class CustomerProjectBO
        {
            //prodcode add by shulin 20230-09-18
            public string Prodcode { get;  set; }

            public string StyleNo { get; set; }

            public bool Selected
            {
                get;
                set;
            }
            public string Customer
            {
                get;
                set;
            }
            public string ProjectNO
            {
                get;
                set;
            }

            public string WorkOrderNO
            {
                get;
                set;
            }

            //Xsj:工單生產的廠別
            public string Fty
            {
                get;
                set;
            }
            //public string Fty
            //{
            //    get
            //    {
            //        if (this._fty == null && !string.IsNullOrEmpty(this.WorkOrderNO))
            //        {
            //            MidcHSCodeByMRReport.edc.P_GetWOFty(this.WorkOrderNO, ref this._fty);
            //            if (this._fty == null)
            //            {
            //                this._fty = "";
            //            }
            //        }
            //        return this._fty;
            //    }
            //    set
            //    {
            //        this._fty = value;
            //    }
            //}
            //private string _fty = null;


            public static PH.RWO.BO.RWOSOPCDataContext rowEdc = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            //Xsj:離廠日期
            public DateTime? ExftyDate
            {
                get;
                set;
            }
            //public DateTime? ExftyDate
            //{
            //    get
            //    {
            //        if (this._exftyDate == null)
            //        {
            //            PH.RWO.BO.WorkOrder bo = rowEdc.WorkOrders.Where(p => p.WorkOrderNo == this.WorkOrderNO).FirstOrDefault();
            //            if (bo != null)
            //            {
            //                this._exftyDate = bo.LCLExFtyShipCompleted;
            //            }
            //        }
            //        return this._exftyDate;
            //    }
            //    set
            //    {
            //        this._exftyDate = value;
            //    }
            //}
            //private DateTime? _exftyDate = null;

            //Xsj:是否已經發料
            public string IsIssued
            {
                get;
                set;
            }

            ////Xsj:是否已經發料
            //public string IsIssued
            //{
            //    get
            //    {
            //        if (this._isIssued == null)
            //        {
            //            PH.MR.BO.HSWOIssueDetail bo = MidcHSCodeByMRReport.edc.HSWOIssueDetails.Where(p => p.WorkOrderNO == this.WorkOrderNO).FirstOrDefault();
            //            if (bo != null)
            //            {
            //                this._isIssued = "Y";
            //            }
            //            else
            //            {
            //                this._isIssued = "";
            //            }
            //        }
            //        return this._isIssued;
            //    }
            //    set
            //    {
            //        this._isIssued = value;
            //    }
            //}
            //private string _isIssued = null;

        }

        private void lookUpEdit_TaskNO_EditValueChanged(object sender, EventArgs e)
        {
            if (this.lookUpEdit_TaskNO.EditValue == null) return;
            this.sBtn_PrintByTaskNO.Enabled = false;
            this.bindingSource_ALLProject.Clear();
            this.bindingSource_SelectProject.Clear();
            HSWOIssue.LoadingFormHelper helper = new LoadingFormHelper();
            try
            {
                helper.ShowLoadingForm("獲取數據中.....");
                this.Cursor = Cursors.WaitCursor;
                if (this.lookUpEdit_TaskNO.EditValue == null) return;
                string taskNO = this.lookUpEdit_TaskNO.EditValue.ToString();
                PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                dcon.CommandTimeout = 60000;
                AnticipantMR_HSCodeHeader headerBO = dcon.AnticipantMR_HSCodeHeaders.Where(p => p.TaskNO == taskNO).FirstOrDefault();
                if (headerBO != null)
                {
                    string sqlstr = dcon.Connection.ConnectionString;
                    SqlDataAdapter da = new SqlDataAdapter();
                    SqlConnection cn = dcon.Connection as System.Data.SqlClient.SqlConnection;
                    DataSet ds = new DataSet();

                    da.SelectCommand = new SqlCommand("P_GetParentWorkOrderInfoFromMR", cn);
                    da.SelectCommand.CommandType = CommandType.StoredProcedure;
                    da.SelectCommand.Parameters.Add(new SqlParameter("@TaskNO", SqlDbType.VarChar, 50));
                    da.SelectCommand.Parameters["@TaskNO"].Value = headerBO.TaskNO;

                    // 是否排除合同中有的WO，由David加入 2019-10-22
                    da.SelectCommand.Parameters.Add(new SqlParameter("@ExcludeHasContractWO", SqlDbType.Bit));
                    da.SelectCommand.Parameters["@ExcludeHasContractWO"].Value = chkExcludeHasContractWO.Checked;

                    da.SelectCommand.CommandTimeout = 8000;
                    cn.Open();
                    da.Fill(ds);
                    if (ds.Tables.Count != 1)
                    {
                        MessageBox.Show("數據異常！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }
                    DataTable dt = ds.Tables[0];
                    List<CustomerProjectBO> customerProjList = (from v in dt.AsEnumerable()
                                                                select new CustomerProjectBO
                                                                {
                                                                    Selected = (Convert.ToInt32(v["Selected"]) == 1),
                                                                    Customer = v["Customer"].ToString(),
                                                                    ProjectNO = v["ProjectNO"].ToString(),
                                                                    WorkOrderNO = v["WorkOrderNO"].ToString(),
                                                                    ExftyDate = v["ExftyDate"] == DBNull.Value ? (DateTime?)(null) : Convert.ToDateTime(v["ExftyDate"]),
                                                                    Fty = v["Fty"].ToString(),

                                                                    //prodcode add by shulin 20230-09-18
                                                                    Prodcode = v["Prodcode"].ToString()

                                                                }).ToList();
                    this.bindingSource_ALLProject.DataSource = customerProjList;
                    this.gridControl_ALLCustomerProject.DataSource = this.bindingSource_ALLProject;
                }
            }
            finally
            {
                this.sBtn_PrintByTaskNO.Enabled = true;
                this.Cursor = Cursors.Default;
                helper.CloseLoadingForm();
            }
            this.gridView_ALLCustomerProject.RefreshData();
            this.gridView_SelectCustomerProject.RefreshData();
        }

        private void checkEdit_SelectALLCustomer_CheckedChanged(object sender, EventArgs e)
        {
            if (this.checkEdit_SelectALLCustomer.Checked)
            {
                for (int i = 0; i < this.gridView_ALLCustomerProject.RowCount; i++)
                {
                    CustomerProjectBO bo = this.gridView_ALLCustomerProject.GetRow(i) as CustomerProjectBO;
                    bo.Selected = true;
                }
            }
            this.gridView_ALLCustomerProject.RefreshData();
        }

        private void checkEdit_SelectALLProject_CheckedChanged(object sender, EventArgs e)
        {
            if (this.checkEdit_SelectALLProject.Checked)
            {
                for (int i = 0; i < this.gridView_SelectCustomerProject.RowCount; i++)
                {
                    CustomerProjectBO bo = this.gridView_SelectCustomerProject.GetRow(i) as CustomerProjectBO;
                    bo.Selected = true;
                }
            }
            this.gridView_SelectCustomerProject.RefreshData();

        }

        private void sBtn_UnSelect_Click(object sender, EventArgs e)
        {
            this.checkEdit_SelectALLCustomer.Checked = false;
            foreach (CustomerProjectBO item in this.bindingSource_ALLProject.List)
            {
                item.Selected = false;
            }
            this.gridView_ALLCustomerProject.RefreshData();
        }

        private void sBtn_UnSelectProject_Click(object sender, EventArgs e)
        {
            this.checkEdit_SelectALLProject.Checked = false;
            foreach (CustomerProjectBO item in this.bindingSource_SelectProject.List)
            {
                item.Selected = false;
            }
            this.gridView_SelectCustomerProject.RefreshData();
        }

        private void bindingSource_ALLProject_ListChanged(object sender, ListChangedEventArgs e)
        {
            this.lblALLCustomerProject.Text = this.bindingSource_ALLProject.List.Count.ToString();
        }

        private void bindingSource_SelectProject_ListChanged(object sender, ListChangedEventArgs e)
        {
            this.lblSelectCustomerProject.Text = this.bindingSource_SelectProject.List.Count.ToString();
        }

        //Add
        private void sBtn_Add_Click(object sender, EventArgs e)
        {
            List<CustomerProjectBO> selectedBOList = new List<CustomerProjectBO>();
            foreach (CustomerProjectBO item in this.bindingSource_ALLProject.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (CustomerProjectBO item in selectedBOList)
            {
                item.Selected = false;
                this.bindingSource_SelectProject.Add(item);
                this.bindingSource_ALLProject.Remove(item);
            }
            this.gridView_ALLCustomerProject.RefreshData();
            this.gridView_SelectCustomerProject.RefreshData();
            this.checkEdit_SelectALLCustomer.Checked = false;
            this.checkEdit_SelectALLProject.Checked = false;
        }

        //Remove
        private void sBtn_Remove_Click(object sender, EventArgs e)
        {
            List<CustomerProjectBO> selectedBOList = new List<CustomerProjectBO>();
            foreach (CustomerProjectBO item in this.bindingSource_SelectProject.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (CustomerProjectBO item in selectedBOList)
            {
                item.Selected = false;
                this.bindingSource_ALLProject.Add(item);
                this.bindingSource_SelectProject.Remove(item);
            }
            this.gridView_ALLCustomerProject.RefreshData();
            this.gridView_SelectCustomerProject.RefreshData();
            this.checkEdit_SelectALLCustomer.Checked = false;
            this.checkEdit_SelectALLProject.Checked = false;
        }


        private List<CustomerProjectBO> GetCustomerProjList(string TaskNO)
        {
            List<CustomerProjectBO> customerProjList = null;
            HSWOIssue.LoadingFormHelper helper = new LoadingFormHelper();
            try
            {
                helper.ShowLoadingForm("獲取數據中.....");
                this.Cursor = Cursors.WaitCursor;
                if (TaskNO == null) return null;
                PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                dcon.CommandTimeout = 60000;
                AnticipantMR_HSCodeHeader headerBO = dcon.AnticipantMR_HSCodeHeaders.Where(p => p.TaskNO == TaskNO).FirstOrDefault();
                if (headerBO != null)
                {
                    string sqlstr = dcon.Connection.ConnectionString;
                    SqlDataAdapter da = new SqlDataAdapter();
                    SqlConnection cn = dcon.Connection as System.Data.SqlClient.SqlConnection;
                    DataSet ds = new DataSet();

                    da.SelectCommand = new SqlCommand("P_GetParentWorkOrderInfoFromMR", cn);
                    da.SelectCommand.CommandType = CommandType.StoredProcedure;
                    da.SelectCommand.Parameters.Add(new SqlParameter("@TaskNO", SqlDbType.VarChar, 50));
                    da.SelectCommand.Parameters["@TaskNO"].Value = headerBO.TaskNO;
                    da.SelectCommand.CommandTimeout = 8000;
                    cn.Open();
                    da.Fill(ds);
                    if (ds.Tables.Count != 1)
                    {
                        MessageBox.Show("數據異常！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return null;
                    }
                    DataTable dt = ds.Tables[0];
                    customerProjList = (from v in dt.AsEnumerable()
                                        select new CustomerProjectBO
                                        {
                                            Selected = (Convert.ToInt32(v["Selected"]) == 1),
                                            Customer = v["Customer"].ToString(),
                                            ProjectNO = v["ProjectNO"].ToString(),
                                            WorkOrderNO = v["WorkOrderNO"].ToString(),
                                            ExftyDate = v["ExftyDate"] == DBNull.Value ? (DateTime?)(null) : Convert.ToDateTime(v["ExftyDate"]),
                                            Fty = v["Fty"].ToString(),
                                        }).ToList();
                }
            }
            finally
            {
                helper.CloseLoadingForm();
                this.Cursor = Cursors.Default;
            }
            return customerProjList;
        }

        private void lookUpEdit_TaskNO_ALL_EditValueChanged(object sender, EventArgs e)
        {
            this.sBtn_PrintByTaskNO_ALL.Enabled = false;
            this.bindingSource_ALLProject_ALL.Clear();
            this.bindingSource_SelectProject_ALL.Clear();
            if (this.lookUpEdit_TaskNO_ALL.EditValue == null) return;
            string taskNO = this.lookUpEdit_TaskNO_ALL.EditValue.ToString();
            //List<CustomerProjectBO> customerProjList = GetCustomerProjList(taskNO);
            List<CustomerProjectBO> customerProjList = new List<CustomerProjectBO>();
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            AnticipantMR_HSCodeHeader headerBO = dcon.AnticipantMR_HSCodeHeaders.Where(p => p.TaskNO == taskNO).FirstOrDefault();

            //Xsj:附加没有安排工单的Project信息
            List<CustomerProjectBO> notWOs = headerBO.AnticipantMR_HSCodeDetails
                .Where(p => p.Workorderno == null || p.Workorderno.Trim() == "")
                .GroupBy(p => p.Projectno).Distinct().Select(p => new CustomerProjectBO
                {
                    Selected = false,
                    Customer = p.Key == null ? "" : p.Key.Substring(0, 4),
                    ProjectNO = p.Key,
                    WorkOrderNO = null,
                    ExftyDate = null,
                    Fty = "",
                    Prodcode = null,
                }).ToList();
            customerProjList.AddRange(notWOs);

            this.bindingSource_ALLProject_ALL.DataSource = customerProjList;
            this.gridControl_ALLCustomerProject_ALL.DataSource = this.bindingSource_ALLProject_ALL;

            this.sBtn_PrintByTaskNO_ALL.Enabled = true;

            this.gridView_ALLCustomerProject_ALL.RefreshData();
            this.gridView_SelectCustomerProject_ALL.RefreshData();
        }


        private void checkEdit_SelectALLCustomer_ALL_CheckedChanged(object sender, EventArgs e)
        {
            if (this.checkEdit_SelectALLCustomer_ALL.Checked)
            {
                for (int i = 0; i < this.gridView_ALLCustomerProject_ALL.RowCount; i++)
                {
                    CustomerProjectBO bo = this.gridView_ALLCustomerProject_ALL.GetRow(i) as CustomerProjectBO;
                    bo.Selected = true;
                }
            }
            this.gridView_ALLCustomerProject_ALL.RefreshData();
        }

        private void checkEdit_SelectALLProject_ALL_CheckedChanged(object sender, EventArgs e)
        {
            if (this.checkEdit_SelectALLProject_ALL.Checked)
            {
                for (int i = 0; i < this.gridView_SelectCustomerProject_ALL.RowCount; i++)
                {
                    CustomerProjectBO bo = this.gridView_SelectCustomerProject_ALL.GetRow(i) as CustomerProjectBO;
                    bo.Selected = true;
                }
            }
            this.gridView_SelectCustomerProject_ALL.RefreshData();

        }

        private void sBtn_UnSelect_ALL_Click(object sender, EventArgs e)
        {
            this.checkEdit_SelectALLCustomer_ALL.Checked = false;
            foreach (CustomerProjectBO item in this.bindingSource_ALLProject_ALL.List)
            {
                item.Selected = false;
            }
            this.gridView_ALLCustomerProject_ALL.RefreshData();
        }

        private void sBtn_UnSelectProject_ALL_Click(object sender, EventArgs e)
        {
            this.checkEdit_SelectALLProject_ALL.Checked = false;
            foreach (CustomerProjectBO item in this.bindingSource_SelectProject_ALL.List)
            {
                item.Selected = false;
            }
            this.gridView_SelectCustomerProject_ALL.RefreshData();
        }

        private void bindingSource_ALLProject_ALL_ListChanged(object sender, ListChangedEventArgs e)
        {
            this.lblALLCustomerProject_ALL.Text = this.bindingSource_ALLProject_ALL.List.Count.ToString();
        }

        private void bindingSource_SelectProject_ALL_ListChanged(object sender, ListChangedEventArgs e)
        {
            this.lblSelectCustomerProject_ALL.Text = this.bindingSource_SelectProject_ALL.List.Count.ToString();
        }

        private void sBtn_Add_ALL_Click(object sender, EventArgs e)
        {
            List<CustomerProjectBO> selectedBOList = new List<CustomerProjectBO>();
            foreach (CustomerProjectBO item in this.bindingSource_ALLProject_ALL.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (CustomerProjectBO item in selectedBOList)
            {
                item.Selected = false;
                this.bindingSource_SelectProject_ALL.Add(item);
                this.bindingSource_ALLProject_ALL.Remove(item);
            }
            this.gridView_ALLCustomerProject_ALL.RefreshData();
            this.gridView_SelectCustomerProject_ALL.RefreshData();
            this.checkEdit_SelectALLCustomer_ALL.Checked = false;
            this.checkEdit_SelectALLProject_ALL.Checked = false;
        }

        private void sBtn_Remove_ALL_Click(object sender, EventArgs e)
        {
            List<CustomerProjectBO> selectedBOList = new List<CustomerProjectBO>();
            foreach (CustomerProjectBO item in this.bindingSource_SelectProject_ALL.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (CustomerProjectBO item in selectedBOList)
            {
                item.Selected = false;
                this.bindingSource_ALLProject_ALL.Add(item);
                this.bindingSource_SelectProject_ALL.Remove(item);
            }
            this.gridView_ALLCustomerProject_ALL.RefreshData();
            this.gridView_SelectCustomerProject_ALL.RefreshData();
            this.checkEdit_SelectALLCustomer_ALL.Checked = false;
            this.checkEdit_SelectALLProject_ALL.Checked = false;
        }

        private void sBtn_PrintByTaskNO_ALL_Click(object sender, EventArgs e)
        {
            if (!CheckInput("OldTaskNO_ALL"))
            {
                return;
            }
            //Xsj:Print Report  By Alive TaskNO
            string taskNO = this.lookUpEdit_TaskNO_ALL.EditValue.ToString();
            PrintReportByTaskNO_ALL(GetTaskNO(taskNO));
        }

        private void edt_TaskNOAll_EditValueChanged(object sender, EventArgs e)
        {
            if (this.edt_TaskNOAll.EditValue == null) return;
            string taskNO = this.edt_TaskNOAll.EditValue.ToString();
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            AnticipantMR_HSCodeHeader headerBO = dcon.AnticipantMR_HSCodeHeaders.Where(p => p.TaskNO == taskNO).FirstOrDefault();
            if (headerBO == null) return;

            this.btnUnSelectALL.Enabled = false;
            this.bsAll.Clear();
            this.bsSelect.Clear();
            HSWOIssue.LoadingFormHelper helper = new LoadingFormHelper();
            try
            {
                helper.ShowLoadingForm("獲取數據中.....");
                this.Cursor = Cursors.WaitCursor;
                dcon.CommandTimeout = 80000;

                string sqlstr = dcon.Connection.ConnectionString;
                SqlDataAdapter da = new SqlDataAdapter();
                SqlConnection cn = dcon.Connection as System.Data.SqlClient.SqlConnection;
                DataSet ds = new DataSet();

                da.SelectCommand = new SqlCommand("P_GetParentWorkOrderInfoFromMR", cn);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.Add(new SqlParameter("@TaskNO", SqlDbType.VarChar, 50));
                da.SelectCommand.Parameters["@TaskNO"].Value = headerBO.TaskNO;

                // 是否排除合同中有的WO，由David加入 2019-10-22
                da.SelectCommand.Parameters.Add(new SqlParameter("@ExcludeHasContractWO", SqlDbType.Bit));
                da.SelectCommand.Parameters["@ExcludeHasContractWO"].Value = this.chkExcludeHasContractWOAll.Checked;

                da.SelectCommand.CommandTimeout = 8000;
                cn.Open();
                da.Fill(ds);
                if (ds.Tables.Count != 1)
                {
                    MessageBox.Show("數據異常！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                DataTable dt = ds.Tables[0];
                List<CustomerProjectBO> customerProjList = (from v in dt.AsEnumerable()
                                                            select new CustomerProjectBO
                                                            {
                                                                Selected = (Convert.ToInt32(v["Selected"]) == 1),
                                                                Customer = v["Customer"].ToString(),
                                                                ProjectNO = v["ProjectNO"].ToString(),
                                                                WorkOrderNO = v["WorkOrderNO"].ToString(),
                                                                ExftyDate = v["ExftyDate"] == DBNull.Value ? (DateTime?)(null) : Convert.ToDateTime(v["ExftyDate"]),
                                                                Fty = v["Fty"].ToString(),

                                                                //prodcode add by shulin 20230-09-18
                                                                Prodcode = v["Prodcode"].ToString()


                                                            }).ToList();


                //附加没有安排工单的Project信息
                List<CustomerProjectBO> notWOs = headerBO.AnticipantMR_HSCodeDetails
                    .Where(p => p.Workorderno == null || p.Workorderno.Trim() == "")
                    .GroupBy(p => p.Projectno).Distinct().Select(p => new CustomerProjectBO
                    {
                        Selected = false,
                        Customer = p.Key == null ? "" : p.Key.Substring(0, 4),
                        ProjectNO = p.Key,
                        WorkOrderNO = null,
                        ExftyDate = null,
                        Fty = "",
                        Prodcode = null,
                    }).ToList();
                customerProjList.AddRange(notWOs);

                this.bsAll.DataSource = customerProjList;
            }
            finally
            {
                this.btnUnSelectALL.Enabled = true;
                this.Cursor = Cursors.Default;
                helper.CloseLoadingForm();
            }
            this.gridAll.RefreshData();
            this.gridSelect.RefreshData();
        }

        private void btnAllPrint_Click(object sender, EventArgs e)
        {
            if (!CheckInput("All"))
            {
                return;
            }

            string taskNO = this.edt_TaskNOAll.EditValue.ToString();
            PrintReportAll(GetTaskNO(taskNO));


            //    if (!CheckInput("All"))
            //    {
            //        return;
            //    }

            //    string taskNO = this.edt_TaskNOAll.EditValue.ToString();
            //    AnticipantMR_HSCodeHeader TaskHeaderBO = GetTaskNO(taskNO);

            //    this.Cursor = Cursors.WaitCursor;
            //    int rptType = 0;
            //    rptType += (this.chk_MRHSDetail.Checked ? 1 : 0);
            //    rptType += (this.chk_MRSummary.Checked ? 2 : 0);

            //    this._rptDataSourceList.Clear();
            //    MRHSCodeRptBO ReportBO = new MRHSCodeRptBO();
            //    PH.MR.BackEnd.MidcHSCodeMRReport rpt = new PH.MR.BackEnd.MidcHSCodeMRReport();

            //    PrepareDateSource(TaskHeaderBO, ReportBO);
            //    PrepareDateSource_ALL(TaskHeaderBO, ReportBO);

            //    var SummaryList = ReportBO.SummaryList.GroupBy(p => p.StyleHSCode, p => p.StyleHSName, p => p.StyleHSDesc);

            //    string fromDay1 = TaskHeaderBO.FromDate.Value.ToString("yyyy-MM-dd");
            //    string toDay1 = TaskHeaderBO.EndDate.Value.ToString("yyyy-MM-dd");
            //    rpt.FromDay = fromDay1;
            //    rpt.TODay = toDay1;
            //    rpt.RptType = rptType.ToString();
            //    rpt.DataSource = this._rptDataSourceList;
            //    rpt.ShowPreviewDialog();
        }

        private void PrintReportAll(AnticipantMR_HSCodeHeader TaskHeaderBO)
        {
            this.Cursor = Cursors.WaitCursor;
            int rptType = 0;
            rptType += (this.chk_MRHSDetail.Checked ? 1 : 0);
            rptType += (this.chk_MRSummary.Checked ? 2 : 0);

            this._rptDataSourceList.Clear();
            PrepareDataSourceAll(TaskHeaderBO);



            PH.MR.BackEnd.MidcHSCodeMRReport rpt = new PH.MR.BackEnd.MidcHSCodeMRReport();

            if (string.IsNullOrEmpty(TaskHeaderBO.ProjectNo))
            {
                string fromDay1 = TaskHeaderBO.FromDate.Value.ToString("yyyy-MM-dd");
                string toDay1 = TaskHeaderBO.EndDate.Value.ToString("yyyy-MM-dd");

                rpt.FromDay = fromDay1;
                rpt.TODay = toDay1;
            }
            else
            {
                rpt.RptProjectNo = TaskHeaderBO.ProjectNo;
            }

            rpt.RptType = rptType.ToString();
            rpt.DataSource = this._rptDataSourceList;
            rpt.ShowPreviewDialog();
        }

        //Xsj:準備數據源
        private void PrepareDataSourceAll(AnticipantMR_HSCodeHeader TaskHeaderBO)
        {
            this._rptDataSourceList.Clear();
            PH.MR.BO.MRHSCodeRptBO rptDataSource = new PH.MR.BO.MRHSCodeRptBO();
            _rptDataSourceList.Add(rptDataSource);
            try
            {
                #region

                this._taskNO = TaskHeaderBO.TaskNO;
                string projects = "";
                string wos = "";
                foreach (CustomerProjectBO item in this.bsSelect.List)
                {
                    if (projects.IndexOf(item.ProjectNO.Trim()) == -1)
                    {
                        projects += (projects == "" ? item.ProjectNO.Trim() : "," + item.ProjectNO.Trim());
                    }

                    if (!string.IsNullOrEmpty(item.WorkOrderNO))
                    {
                        wos += (wos == "" ? item.WorkOrderNO : "," + item.WorkOrderNO);
                    }
                }


                PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                dct.CommandTimeout = 10000;

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandTimeout = 10000;
                cmd.CommandText = "P_GetMidcHSCodeByMRAll";
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


                //Detial
                DataTable dt = ds.Tables[0];
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    #region
                    PH.MR.BO.MRHSCodeDetailRptBO bo = new MRHSCodeDetailRptBO();

                    bo.Customer = dt.Rows[i]["Customer"] == DBNull.Value ? "" : dt.Rows[i]["Customer"].ToString();
                    bo.SalesOrder = dt.Rows[i]["SalesOrder"] == DBNull.Value ? "" : dt.Rows[i]["SalesOrder"].ToString();
                    bo.StyleType = dt.Rows[i]["StyleType"] == DBNull.Value ? "" : dt.Rows[i]["StyleType"].ToString();
                    bo.StyleHSCode = dt.Rows[i]["StyleHSCode"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSCode"].ToString();
                    bo.PHStyleNo = dt.Rows[i]["PHStyleNo"] == DBNull.Value ? "" : dt.Rows[i]["PHStyleNo"].ToString();
                    bo.StyleName = dt.Rows[i]["StyleName"] == DBNull.Value ? "" : dt.Rows[i]["StyleName"].ToString();
                    bo.ProductUnit = dt.Rows[i]["ProductUnit"] == DBNull.Value ? "" : dt.Rows[i]["ProductUnit"].ToString();
                    bo.ProductQty = dt.Rows[i]["ProductQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty"]);
                    bo.ProductWeightPer = dt.Rows[i]["ProductWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["ProductWeightPer"]);

                    bo.ItemHSCode = dt.Rows[i]["ItemHSCode"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSCode"].ToString();
                    bo.PHItemNO = dt.Rows[i]["PHItemNO"] == DBNull.Value ? "" : dt.Rows[i]["PHItemNO"].ToString();
                    bo.ItemName = dt.Rows[i]["ItemName"] == DBNull.Value ? "" : dt.Rows[i]["ItemName"].ToString();
                    bo.ItemWeightPer = dt.Rows[i]["ItemWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["ItemWeightPer"]);

                    bo.WeightHsCode = dt.Rows[i]["WeightHsCode"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["WeightHsCode"]);
                    bo.TotalWeight = dt.Rows[i]["TotalWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["TotalWeight"]);
                    bo.TotalMRQty = dt.Rows[i]["TotalMRQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["TotalMRQty"]);
                    bo.MRPer = dt.Rows[i]["MRPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["MRPer"]);

                    bo.PHUnit = dt.Rows[i]["PHUnit"] == DBNull.Value ? "" : dt.Rows[i]["PHUnit"].ToString();
                    bo.Currency = dt.Rows[i]["Currency"] == DBNull.Value ? "" : dt.Rows[i]["Currency"].ToString();
                    bo.IsPurchaseItem = dt.Rows[i]["IsPurchaseItem"] == DBNull.Value ? "" : dt.Rows[i]["IsPurchaseItem"].ToString();


                    bo.FabricRate = dt.Rows[i]["FabricRate"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["FabricRate"]);
                    bo.Wastage = dt.Rows[i]["Wastage"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["Wastage"]);
                    bo.ItemNetWeight = dt.Rows[i]["NetWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["NetWeight"]);
                    bo.ProductQty_Purchase = dt.Rows[i]["ProductQty_Purchase"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty_Purchase"]);

                    //Xsj:Style HS Info
                    bo.StyleHSCodeSeq = dt.Rows[i]["StyleHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeSeq"]);
                    bo.StyleHSName = dt.Rows[i]["StyleHSName"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSName"].ToString();
                    bo.StyleHSDesc = dt.Rows[i]["StyleHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSDesc"].ToString();
                    bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();

                    //Xsj:Item HS Info
                    bo.ItemHSCodeSeq = dt.Rows[i]["ItemHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeSeq"]);
                    bo.ItemHSName = dt.Rows[i]["ItemHSName"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSName"].ToString();
                    bo.ItemHSDesc = dt.Rows[i]["ItemHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSDesc"].ToString();
                    bo.ItemHSUnit = dt.Rows[i]["ItemHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSUnit"].ToString();


                    rptDataSource.DetailList.Add(bo);
                    #endregion
                }

                //Summary 
                dt = ds.Tables[1];
                for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                {
                    #region
                    PH.MR.BO.MRHSCodeSummaryRptBO bo = new MRHSCodeSummaryRptBO();

                    bo.StyleType = dt.Rows[i]["StyleType"] == DBNull.Value ? "" : dt.Rows[i]["StyleType"].ToString();
                    bo.StyleHSCodeSeq = dt.Rows[i]["StyleHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeSeq"]);
                    bo.StyleHSCodeIndexValue = dt.Rows[i]["StyleHSCodeIndexValue"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["StyleHSCodeIndexValue"]);

                    bo.StyleHSCode = dt.Rows[i]["StyleHSCode"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSCode"].ToString();
                    bo.StyleHSName = dt.Rows[i]["StyleHSName"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSName"].ToString();
                    bo.StyleHSDesc = dt.Rows[i]["StyleHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSDesc"].ToString();
                    bo.ProductQty = dt.Rows[i]["ProductQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty"]);
                    bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();

                    bo.ItemHSCodeSeq = dt.Rows[i]["ItemHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeSeq"]);
                    bo.ItemHSCodeIndexValue = dt.Rows[i]["ItemHSCodeIndexValue"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeIndexValue"]);

                    bo.ItemHSCode = dt.Rows[i]["ItemHSCode"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSCode"].ToString();
                    bo.ItemHSName = dt.Rows[i]["ItemHSName"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSName"].ToString();
                    bo.ItemHSDesc = dt.Rows[i]["ItemHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSDesc"].ToString();
                    bo.ItemHSUnit = dt.Rows[i]["ItemHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSUnit"].ToString();

                    bo.SalesOrderItemTotalWeight = dt.Rows[i]["SalesOrderItemTotalWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalWeight"]);
                    bo.SalesOrderWastage = dt.Rows[i]["SalesOrderWastage"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderWastage"]);

                    bo.SalesOrderItemTotalNetWeight = dt.Rows[i]["SalesOrderItemTotalNetWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalNetWeight"]);
                    bo.SalesOrderItemNetWeightPer = dt.Rows[i]["SalesOrderItemNetWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemNetWeightPer"]);
                    bo.SalesOrderItemTotalWeightPer = dt.Rows[i]["SalesOrderItemTotalWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalWeightPer"]);


                    bo.Currency = dt.Rows[i]["Currency"] == DBNull.Value ? "" : dt.Rows[i]["Currency"].ToString();

                    rptDataSource.SummaryList.Add(bo);
                    #endregion
                }

                cmd.Connection.Close();
                #endregion
            }
            catch (Exception ex)
            {
                MessageBox.Show("產生報表失敗：" + ex.ToString(), "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        private void bsAll_ListChanged(object sender, ListChangedEventArgs e)
        {
            this.lbALL.Text = this.bsAll.List.Count.ToString();

        }

        private void btnAddAll_Click(object sender, EventArgs e)
        {
            List<CustomerProjectBO> selectedBOList = new List<CustomerProjectBO>();
            foreach (CustomerProjectBO item in this.bsAll.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (CustomerProjectBO item in selectedBOList)
            {
                item.Selected = false;
                this.bsSelect.Add(item);
                this.bsAll.Remove(item);
            }
            this.gridAll.RefreshData();
            this.gridSelect.RefreshData();
            this.chkAll.Checked = false;
            this.chkSelect.Checked = false;
        }

        private void btnSelectRemove_Click(object sender, EventArgs e)
        {
            List<CustomerProjectBO> selectedBOList = new List<CustomerProjectBO>();
            foreach (CustomerProjectBO item in this.bsSelect.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (CustomerProjectBO item in selectedBOList)
            {
                item.Selected = false;
                this.bsAll.Add(item);
                this.bsSelect.Remove(item);
            }
            this.gridAll.RefreshData();
            this.gridSelect.RefreshData();
            this.chkAll.Checked = false;
            this.chkSelect.Checked = false;
        }

        private void bsSelect_ListChanged(object sender, ListChangedEventArgs e)
        {
            this.lbSelect.Text = this.bsSelect.Count.ToString();
        }

        private void btnUnSelectALL_Click(object sender, EventArgs e)
        {
            this.chkAll.Checked = false;
            foreach (CustomerProjectBO item in this.bsAll.List)
            {
                item.Selected = false;
            }
            this.gridAll.RefreshData();
        }

        private void chkAll_CheckedChanged(object sender, EventArgs e)
        {
            if (this.chkAll.Checked)
            {
                for (int i = 0; i < this.gridAll.RowCount; i++)
                {
                    CustomerProjectBO bo = this.gridAll.GetRow(i) as CustomerProjectBO;
                    bo.Selected = true;
                }
            }
            this.gridAll.RefreshData();
        }

        private void btnSelectUnselect_Click(object sender, EventArgs e)
        {
            this.chkSelect.Checked = false;
            foreach (CustomerProjectBO item in this.bsSelect.List)
            {
                item.Selected = false;
            }
            this.gridSelect.RefreshData();

        }

        private void chkSelect_CheckedChanged(object sender, EventArgs e)
        {
            if (this.chkSelect.Checked)
            {
                for (int i = 0; i < this.gridSelect.RowCount; i++)
                {
                    CustomerProjectBO bo = this.gridSelect.GetRow(i) as CustomerProjectBO;
                    bo.Selected = true;
                }
            }
            this.gridSelect.RefreshData();
        }

        private void btnAllRefresh_Click(object sender, EventArgs e)
        {
            InitCtrl();
        }

        private void chkExcludeHasContractWO_CheckedChanged(object sender, EventArgs e)
        {
            this.lookUpEdit_TaskNO_EditValueChanged(this.lookUpEdit_TaskNO, null);
        }

        private void chkExcludeHasContractWOAll_CheckedChanged(object sender, EventArgs e)
        {
            this.edt_TaskNOAll_EditValueChanged(this.edt_TaskNOAll, null);
        }

        private void xtraTabControl1_SelectedPageChanged(object sender, DevExpress.XtraTab.TabPageChangedEventArgs e)
        {
             this.chkProjectWorkOrder.Visible =  this.xtraTabControl1.SelectedTabPageIndex==1;
             this.chkProjectWorkOrder.Checked = false;
        }
    }
}
