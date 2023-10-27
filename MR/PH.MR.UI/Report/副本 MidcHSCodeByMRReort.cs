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

namespace PH.MR.UI.Report
{
    public partial class MidcHSCodeByMRReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public MidcHSCodeByMRReport()
        {
            InitializeComponent();
            InitCtrl();
        }

        private void InitCtrl()
        {
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            List<AnticipantMR_HSCodeHeader> taskNOList = dcon.AnticipantMR_HSCodeHeaders.Where(p => p.Status == "OK").OrderByDescending(p => p.TaskNO).ToList();
            this.lookUpEdit_TaskNO.Properties.DataSource = taskNOList;
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


        //Xsj:Print By Old TaskNO
        private void sBtn_PrintByTaskNO_Click(object sender, EventArgs e)
        {
            if (!CheckInput("OldTaskNO"))
            {
                return;
            }

            //Xsj:Print Report  By Alive TaskNO
            PrintReportByTaskNO(GetTaskNO());
        }

        //Xsj:Refresh TaskNO List
        private void sBtn_Refresh_Click(object sender, EventArgs e)
        {
            InitCtrl();
        }
        

        //Xsj20150822:add
        private void CreateBackEndJob()
        {
            //Xsj:啟用後臺作業任務
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.MR.BackEnd.dll";
            data.ClassFullName = typeof(PH.MR.BackEnd.JobMidcHSCodeByMRReport).FullName;
            data.JobName = "MR H.S Code Report";
            data.ProgramCode = this.SideProgramID;
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            data.Parameter = GetRptConition();
            PH.Platform.BackEnd.BO.SReport.InsertData(data);

        }


        //Xsj:驗證輸入
        private bool CheckInput(string PrintType)
        {
            bool result = true;

            //Xsj:報表類型
            if (!this.chk_MRSummary.Checked && !this.chk_MRHSDetail.Checked)
            {
                MessageBox.Show("請選擇你要生成的報表類型！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.chk_MRSummary.Focus();
                result = false;
            }
            else
            {
                switch (PrintType)
                {
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

                        bool isProjectChoose = false;
                        foreach (customerProjectBO item in this.bindingSource_SelectProject)
                        {
                            isProjectChoose = true;
                        }
                        if (!isProjectChoose)
                        {
                            MessageBox.Show("請選擇[Project]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            result = false;
                        }

                        break;

                }
            }
            return result;
        }

        //Xsj:獲取報表條件
        private string GetRptConition()
        {
            string fromDay = ((DateTime)this.dateEdit_From.EditValue).ToString("yyyyMMdd");
            string toDay = ((DateTime)this.dateEdit_TO.EditValue).ToString("yyyyMMdd");

            int rptType = 0;

            rptType += (this.chk_MRHSDetail.Checked ? 1 : 0);
            rptType += (this.chk_MRSummary.Checked ? 2 : 0);

            return fromDay + "," + toDay + "," + rptType.ToString();
        }

        private AnticipantMR_HSCodeHeader GetTaskNO()
        {
            string taskNO = this.lookUpEdit_TaskNO.EditValue.ToString();

            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            AnticipantMR_HSCodeHeader taskHeaderBO = dcon.AnticipantMR_HSCodeHeaders.Where(p => p.TaskNO == taskNO).FirstOrDefault();

            return taskHeaderBO;
        }

        private string _taskNO;
        private void PrintReport(string parameters)
        {
            //PH.MR.BO.MidcHSCodeWithMRWeightEntity rptDataSource = new MidcHSCodeWithMRWeightEntity();
            //rptDataSource.SummaryList = new List<MidcHSCodeWithMRWeightSummaryHeaderEntity>();
            //rptDataSource.DetailList = new List<MidcHSCodeWithMRWeightSummaryDetailEntity>();

            List<PH.MR.BO.MRHSCodeDetailRptBO> rptDataSource = new List<PH.MR.BO.MRHSCodeDetailRptBO>();
            try
            {
                string[] pars = parameters.Split(',');
                string fromDay = pars[0];
                string toDay = pars[1];
                string taskNO = DateTime.Now.ToString("yyMMddhhmmssfff");
                this._taskNO = taskNO;

                PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                dct.CommandTimeout = 4000;

                string sqlString = "";

                sqlString = string.Format(@"SELECT DISTINCT ordn55 
                                                                    FROM [AS400DB].dbo.oep55 
                                                                        Inner Join [AS400DB].dbo.oep40 on [AS400DB].dbo.oep55.cono55=[AS400DB].dbo.oep40.cono40
                                                                         and [AS400DB].dbo.oep55.ordn55=[AS400DB].dbo.oep40.ordn40
                                                                    WHERE cono55='P1' 
                                                                        AND dtdr55+19000000>={0} 
                                                                        AND dtdr55+19000000<={1}
                                                                        AND dtlc55=0 AND stat55<>'X' 
                                                                        AND stat55<>'C' And CUSN40 not like 'CRTE%'", fromDay, toDay);

                //this._taskNO = "150908062519917";

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                sqlString = "exec P_GetMidcHSCodeByMR '" + this._taskNO + "'";

                DataSet ds = dct.ExecuteDataSet(sqlString, new DataSet(), "Ds");

                //Detial
                DataTable dt = ds.Tables[0];
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    PH.MR.BO.MRHSCodeDetailRptBO bo = new MRHSCodeDetailRptBO();

                    bo.Customer = dt.Rows[i]["Customer"] == DBNull.Value ? "" : dt.Rows[i]["Customer"].ToString();
                    bo.SalesOrder = dt.Rows[i]["SalesOrder"] == DBNull.Value ? "" : dt.Rows[i]["SalesOrder"].ToString();
                    bo.StyleHSCode = dt.Rows[i]["StyleHSCode"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSCode"].ToString();
                    bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();
                    bo.PHStyleNo = dt.Rows[i]["PHStyleNo"] == DBNull.Value ? "" : dt.Rows[i]["PHStyleNo"].ToString();
                    bo.StyleName = dt.Rows[i]["StyleName"] == DBNull.Value ? "" : dt.Rows[i]["StyleName"].ToString();
                    bo.ProductUnit = dt.Rows[i]["ProductUnit"] == DBNull.Value ? "" : dt.Rows[i]["ProductUnit"].ToString();
                    bo.ProductQty = dt.Rows[i]["ProductQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty"]);
                    bo.ProductWeightPer = dt.Rows[i]["ProductWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["ProductWeightPer"]);

                    bo.ItemHSCode = dt.Rows[i]["ItemHSCode"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSCode"].ToString();
                    bo.ItemHSUnit = dt.Rows[i]["ItemHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSUnit"].ToString();
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

                    //rptDataSource.DetailList.Add(bo);

                    rptDataSource.Add(bo);
                }

            }
            catch (Exception ex)
            {
            }


            string[] pars1 = parameters.Split(',');
            string fromDay1 = pars1[0];
            string toDay1 = pars1[1];
            //PH.MR.BackEnd.MRHSCodeReport rpt = new PH.MR.BackEnd.MRHSCodeReport();


            //PH.MR.BackEnd.MidcHSCodeByMRDetailReort rpt = new MidcHSCodeByMRDetailReort();
            //rpt.FromDay = fromDay1;
            //rpt.TODay = toDay1;


            //List<PH.MR.BO.MidcHSCodeWithMRWeightEntity> rptDataSourceList = new List<MidcHSCodeWithMRWeightEntity>();
            //rptDataSourceList.Add(rptDataSource);

            PH.MR.BackEnd.MidcHSCodeByMRDetailReort rpt = new PH.MR.BackEnd.MidcHSCodeByMRDetailReort();
            rpt.FromDay = fromDay1;
            rpt.TODay = toDay1;
            //rpt.DataSource = rptDataSourceList;
            rpt.DataSource = rptDataSource;
            rpt.ShowPreviewDialog();

        }

        private void PrintReportByTaskNO(AnticipantMR_HSCodeHeader TaskHeaderBO)
        {
            this.Cursor = Cursors.WaitCursor;
            int rptType = 0;
            List<PH.MR.BO.MRHSCodeRptBO> rptDataSourceList = new List<PH.MR.BO.MRHSCodeRptBO>();
            PH.MR.BO.MRHSCodeRptBO rptDataSource = new PH.MR.BO.MRHSCodeRptBO();
            rptDataSourceList.Add(rptDataSource);
            try
            {
                #region
                rptType += (this.chk_MRHSDetail.Checked ? 1 : 0);
                rptType += (this.chk_MRSummary.Checked ? 2 : 0);

                //Xsj:TaskNO
                this._taskNO = TaskHeaderBO.TaskNO;

                //Xsj:Customers
                string projects = "";
                foreach (customerProjectBO item in this.bindingSource_SelectProject.List)
                {
                    //projects += (projects == "" ? item.ProjectNO.Replace(" ", "") : "," + item.ProjectNO.Replace(" ", ""));
                    projects += (projects == "" ? item.ProjectNO : "," + item.ProjectNO);
                }


                PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                dct.CommandTimeout = 10000;

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandTimeout = 10000;
                cmd.CommandText = "P_GetMidcHSCodeByMR";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@TaskNO", SqlDbType.NVarChar, 50);
                cmd.Parameters["@TaskNO"].Value = this._taskNO;
                cmd.Parameters.Add("@Projects", SqlDbType.NVarChar);
                cmd.Parameters["@Projects"].Value = projects;
                cmd.Connection = dct.Connection as System.Data.SqlClient.SqlConnection;
                //cmd.Connection = new System.Data.SqlClient.SqlConnection(dct.Connection.ConnectionString);  
                //cmd.Connection.Open();

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
                    bo.StyleHSCode = dt.Rows[i]["StyleHSCode"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSCode"].ToString();
                    bo.StyleHSName = dt.Rows[i]["StyleHSName"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSName"].ToString();
                    bo.StyleHSDesc = dt.Rows[i]["StyleHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSDesc"].ToString();
                    //bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();
                    bo.ProductQty = dt.Rows[i]["ProductQty"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ProductQty"]);
                    //bo.ProductUnit = dt.Rows[i]["ProductUnit"] == DBNull.Value ? "" : dt.Rows[i]["ProductUnit"].ToString();
                    bo.StyleHSUnit = dt.Rows[i]["StyleHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["StyleHSUnit"].ToString();

                    bo.ItemHSCodeSeq = dt.Rows[i]["ItemHSCodeSeq"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["ItemHSCodeSeq"]);
                    bo.ItemHSCode = dt.Rows[i]["ItemHSCode"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSCode"].ToString();
                    bo.ItemHSName = dt.Rows[i]["ItemHSName"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSName"].ToString();
                    bo.ItemHSDesc = dt.Rows[i]["ItemHSDesc"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSDesc"].ToString();
                    bo.ItemHSUnit = dt.Rows[i]["ItemHSUnit"] == DBNull.Value ? "" : dt.Rows[i]["ItemHSUnit"].ToString();

                    bo.SalesOrderItemTotalWeight = dt.Rows[i]["SalesOrderItemTotalWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalWeight"]);
                    bo.SalesOrderWastage = dt.Rows[i]["SalesOrderWastage"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderWastage"]);

                    bo.SalesOrderItemTotalNetWeight = dt.Rows[i]["SalesOrderItemTotalNetWeight"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalNetWeight"]);
                    bo.SalesOrderItemNetWeightPer = dt.Rows[i]["SalesOrderItemNetWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemNetWeightPer"]);
                    bo.SalesOrderItemTotalWeightPer = dt.Rows[i]["SalesOrderItemTotalWeightPer"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["SalesOrderItemTotalWeightPer"]);

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

            string fromDay1 = TaskHeaderBO.FromDate.Value.ToString("yyyy-MM-dd");
            string toDay1 = TaskHeaderBO.EndDate.Value.ToString("yyyy-MM-dd");

            PH.MR.BackEnd.MidcHSCodeMRReport rpt = new PH.MR.BackEnd.MidcHSCodeMRReport();
            rpt.FromDay = fromDay1;
            rpt.TODay = toDay1;
            rpt.RptType = rptType.ToString(); 
            rpt.DataSource = rptDataSourceList;
            rpt.ShowPreviewDialog();

        }


        //Xsj20151023:獲取客戶列表
        class customerProjectBO
        {
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
        }

        private void lookUpEdit_TaskNO_EditValueChanged(object sender, EventArgs e)
        {
            this.sBtn_PrintByTaskNO.Enabled = false;
            this.bindingSource_ALLProject.Clear();
            this.bindingSource_SelectProject.Clear();
            try
            {
                if (this.lookUpEdit_TaskNO.EditValue == null) return;
                string taskNO = this.lookUpEdit_TaskNO.EditValue.ToString();
                PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                dcon.CommandTimeout = 60000;
                AnticipantMR_HSCodeHeader headerBO = dcon.AnticipantMR_HSCodeHeaders.Where(p => p.TaskNO == taskNO).FirstOrDefault();
                if (headerBO != null)
                {
                    //List<string> projectNos =  headerBO.AnticipantMR_HSCodeDetails.Select(p=>p.Projectno).Distinct().ToList();
                    //foreach (string item in projectNos)
                    //{ 
                    //}

                    List<customerProjectBO> customerProjList = headerBO.AnticipantMR_HSCodeDetails.Select(p => p.Projectno).Distinct()
                                                               .Select(p => new customerProjectBO { Selected = false, Customer = p.Substring(0, 4), ProjectNO = p }).ToList();
                    this.bindingSource_ALLProject.DataSource = customerProjList;
                    this.gridControl_ALLCustomerProject.DataSource = this.bindingSource_ALLProject;

                }
            }
            finally
            {
                this.sBtn_PrintByTaskNO.Enabled = true;
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
                    customerProjectBO bo = this.gridView_ALLCustomerProject.GetRow(i) as customerProjectBO;
                    bo.Selected = true;
                }

                //foreach (customerProjectBO item in this.bindingSource_ALLProject.List)
                //{
                //    item.Selected = true;
                //}
            }
            this.gridView_ALLCustomerProject.RefreshData();
        }

        private void checkEdit_SelectALLProject_CheckedChanged(object sender, EventArgs e)
        {
            if (this.checkEdit_SelectALLProject.Checked)
            {
                for (int i = 0; i < this.gridView_SelectCustomerProject.RowCount; i++)
                {
                    customerProjectBO bo = this.gridView_SelectCustomerProject.GetRow(i) as customerProjectBO;
                    bo.Selected = true;
                }
                //foreach (customerProjectBO item in this.bindingSource_SelectProject.List)
                //{
                //    item.Selected = true;
                //}
            }
            this.gridView_SelectCustomerProject.RefreshData();
 
        }

        private void sBtn_UnSelect_Click(object sender, EventArgs e)
        {
            this.checkEdit_SelectALLCustomer.Checked = false;
            foreach (customerProjectBO item in this.bindingSource_ALLProject.List)
            {
                item.Selected = false;
            }
            this.gridView_ALLCustomerProject.RefreshData();

        }

        private void sBtn_UnSelectProject_Click(object sender, EventArgs e)
        {
            this.checkEdit_SelectALLProject.Checked = false;
            foreach (customerProjectBO item in this.bindingSource_SelectProject.List)
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
            List<customerProjectBO> selectedBOList = new List<customerProjectBO>();
            foreach (customerProjectBO item in this.bindingSource_ALLProject.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (customerProjectBO item in selectedBOList)
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
            List<customerProjectBO> selectedBOList = new List<customerProjectBO>();
            foreach (customerProjectBO item in this.bindingSource_SelectProject.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (customerProjectBO item in selectedBOList)
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

    }
}
