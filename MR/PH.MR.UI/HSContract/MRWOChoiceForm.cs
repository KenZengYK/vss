using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;
using System.Data.SqlClient;

namespace PH.MR.UI.HSContract
{
    public partial class MRWOChoiceForm : Form
    {
        public List<string> AliveWONOs = new List<string>();
        public List<PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO> addWONOs = new List<PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO>();


        private PH.MR.BO.MRDataContext dcon
        {
            get
            {
                if (this._dcon == null)
                {
                    this._dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                    this._dcon.CommandTimeout = 60000;
                }
                return this._dcon;
            }
        }
        private PH.MR.BO.MRDataContext _dcon;

        public MRWOChoiceForm()
        {
            InitializeComponent();
        }

        private void MRWOChoiceForm_Load(object sender, EventArgs e)
        {
            InitCtrl();
        }

        private void sBtn_Refresh_Click(object sender, EventArgs e)
        {
            InitCtrl();
        }

        //Xsj:初始化任務下來列表
        private void InitCtrl()
        {
            List<AnticipantMR_HSCodeHeader> taskNOList = dcon.AnticipantMR_HSCodeHeaders.Where(p => p.Status == "OK").OrderByDescending(p => p.TaskNO).ToList();
            this.lookUpEdit_TaskNO.Properties.DataSource = taskNOList;
        }

        private void lookUpEdit_TaskNO_EditValueChanged(object sender, EventArgs e)
        {
            this.bindingSource_ALLProject.Clear();
            this.bindingSource_SelectProject.Clear();
            HSWOIssue.LoadingFormHelper helper = new PH.MR.UI.HSWOIssue.LoadingFormHelper();
            try
            {
                helper.ShowLoadingForm("獲取數據中.....");
                this.Cursor = Cursors.WaitCursor;
                if (this.lookUpEdit_TaskNO.EditValue == null) return;
                string taskNO = this.lookUpEdit_TaskNO.EditValue.ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "P_GetWONOFactory";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@TaskNO", SqlDbType.NVarChar, 20);
                cmd.Parameters["@TaskNO"].Value = taskNO;

                //cmd.Connection = new SqlConnection(this.dcon.Connection.ConnectionString);
                cmd.Connection = (SqlConnection)this.dcon.Connection;
                cmd.CommandTimeout = 60000;
                DataTable dt = new DataTable();
                SqlDataAdapter dap = new SqlDataAdapter();
                dap.SelectCommand = cmd;
                dap.Fill(dt);
                if (dt != null && dt.Rows.Count > 0)
                {
                    List<PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO> customerProjList = (from v in dt.AsEnumerable()
                                                                                                     select new PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO
                                                                                                     {
                                                                                                         Selected = false,
                                                                                                         Fty = v["Factory"].ToString(),
                                                                                                         Customer = v["Customer"].ToString(),
                                                                                                         ProjectNO = v["ProjectNO"].ToString(),
                                                                                                         WorkOrderNO = v["WorkOrderNO"].ToString(),
                                                                                                         ExftyDate = (v["ExftyDate"] == DBNull.Value ? (DateTime?)(null) : Convert.ToDateTime(v["ExftyDate"])),
                                                                                                         IsIssued = v["IsIssued"].ToString(),
                                                                                                         StyleNo = v["StyleNo"].ToString(),

                                                                                                         //prodcode add by shulin 20230-09-18
                                                                                                         Prodcode = v["Prodcode"].ToString()

                                                                                                     }).ToList();   //.Where(p=>!AliveWONOs.Contains(p.WorkOrderNO)).ToList();
                    this.bindingSource_ALLProject.DataSource = customerProjList;
                    this.gridControl_ALLCustomerProject.DataSource = this.bindingSource_ALLProject;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("系統錯誤：" + ex.ToString(), "系統提示");
            }
            finally
            {
                this.Cursor = Cursors.Default;
                helper.CloseLoadingForm();
            }
            this.gridView_ALLCustomerProject.RefreshData();
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

        private void checkEdit_SelectALLCustomer_CheckedChanged(object sender, EventArgs e)
        {
            if (this.checkEdit_SelectALLCustomer.Checked)
            {
                for (int i = 0; i < this.gridView_ALLCustomerProject.RowCount; i++)
                {
                    PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO bo = this.gridView_ALLCustomerProject.GetRow(i) as PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO;
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
                    PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO bo = this.gridView_SelectCustomerProject.GetRow(i) as PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO;
                    bo.Selected = true;
                }
            }
            this.gridView_SelectCustomerProject.RefreshData();
        }

        private void sBtn_UnSelect_Click(object sender, EventArgs e)
        {
            this.checkEdit_SelectALLCustomer.Checked = false;
            foreach (PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO item in this.bindingSource_ALLProject.List)
            {
                item.Selected = false;
            }
            this.gridView_ALLCustomerProject.RefreshData();
        }

        private void sBtn_UnSelectProject_Click(object sender, EventArgs e)
        {
            this.checkEdit_SelectALLProject.Checked = false;
            foreach (PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO item in this.bindingSource_SelectProject.List)
            {
                item.Selected = false;
            }
            this.gridView_SelectCustomerProject.RefreshData();
        }

        private void sBtn_Add_Click(object sender, EventArgs e)
        {
            List<PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO> selectedBOList = new List<PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO>();
            foreach (PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO item in this.bindingSource_ALLProject.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO item in selectedBOList)
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

        private void sBtn_Remove_Click(object sender, EventArgs e)
        {
            List<PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO> selectedBOList = new List<PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO>();
            foreach (PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO item in this.bindingSource_SelectProject.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO item in selectedBOList)
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

        private void sBtn_OK_Click(object sender, EventArgs e)
        {
            this.addWONOs.Clear();
            foreach (PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO item in this.bindingSource_SelectProject.List)
            {
                this.addWONOs.Add(item);
            }
            this.DialogResult = DialogResult.OK;
        }

        private void sBtn_TOExcel_Click(object sender, EventArgs e)
        {
            if (this.bindingSource_ALLProject.List.Count == 0) return;

            SaveFileDialog dial = new SaveFileDialog();
            dial.Filter = "*.xls|*.xls";
            if (dial.ShowDialog() == DialogResult.OK)
            {
                if (dial.FileName != null && dial.FileName.Trim() != "")
                {
                    this.gridView_ALLCustomerProject.ExportToXls(dial.FileName);
                    MessageBox.Show("導出數據完畢!", "系統提示");
                }
            }
        }
    }
}
