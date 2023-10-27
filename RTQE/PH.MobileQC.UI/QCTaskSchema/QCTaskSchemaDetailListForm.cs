using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using DevExpress.XtraGrid.Columns;

namespace PH.MobileQC.UI.QCTaskSchema
{
    public partial class QCTaskSchemaDetailListForm : PH.Platform.UI.CS.BaseListForm
    {
        public QC_TaskSchemaHeader HeaderBO
        {
            get
            {
                return this._headerBO;
            }
            set
            {
                if (this._headerBO != value)
                {
                    this._headerBO = value;
                    SetFilterCondition();
                    RecountChoseProcessCount();
                }
            }
        }
        private QC_TaskSchemaHeader _headerBO;



        public QCTaskSchemaDetailListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(QC_TaskSchemaDetail).FullName;
            this.sBtn_UnChoseALL.Enabled = false;
            this.sBtn_ChoseALL.Enabled = false;
            SetColColBgColor();
        }

        public override void DataBind()
        {
            this.imageComboBoxEdit_WorkShop.Properties.Items.Clear();
            if (this.HeaderBO != null)
            {
                this.BindingSource.DataSource = this.HeaderBO.QC_TaskSchemaDetails.ToList();
                this.objListGridView.RefreshData();
                SetFilterCondition();
            }
        }

        protected override void OnClickAddNew()
        {
            if (this.HeaderBO == null)
            {
                MessageBox.Show("Master數據丟失，無法創建Detail信息。請退出界面重新操作!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            //if (this.HeaderBO.QC_TaskSchemaDetails.Count > 0)
            //{
            //    if (MessageBox.Show("日期[" + this.HeaderBO.QCActionDate.Value.ToString("yyyy-MM-dd") + "]已存在計劃內容，重新創建將會覆蓋這些內容，你是否要繼續？", "系統提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
            //    {
            //        return;
            //    }
            //}

            //Xsj:移除原有的Detail
            this.HeaderBO.QC_TaskSchemaDetails.Clear();
            PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
            DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm();
            waitform.Show();
            try
            {

                dcon.CommandTimeout = 10000;
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandTimeout = 10000;
                cmd.CommandText = "sp_aloperations";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@FTY", SqlDbType.NVarChar, 50);
                cmd.Parameters["@FTY"].Value = this.HeaderBO.Factory;
                cmd.Parameters.Add("@TaskType", SqlDbType.NVarChar, 20);
                cmd.Parameters["@TaskType"].Value = this.HeaderBO.TaskType;
                cmd.Parameters.Add("@MasterID", SqlDbType.UniqueIdentifier);
                cmd.Parameters["@MasterID"].Value = this.HeaderBO.MasterID;
                cmd.Connection = dcon.Connection as System.Data.SqlClient.SqlConnection;
                DataSet ds = new DataSet();
                System.Data.SqlClient.SqlDataAdapter dap = new System.Data.SqlClient.SqlDataAdapter();
                dap.SelectCommand = cmd;
                dap.Fill(ds);

                if (ds.Tables.Count > 0)
                {
                    foreach (DataRow item in ds.Tables[0].Rows)
                    {
                        PH.MobileQC.BO.QC_TaskSchemaDetail bo = new QC_TaskSchemaDetail();
                        bo.MasterID = this.HeaderBO.MasterID;
                        bo.DetailID = Guid.NewGuid();
                        bo.Factory = item["FTY"].ToString();
                        bo.WorkShop = item["TSHOP"].ToString();
                        bo.WorkLine = item["PLINE"].ToString();
                        bo.ProjectNO = item["J_NO"].ToString();
                        bo.WONO = item["J2_JOB"].ToString();
                        bo.RWONO = item["RWO"].ToString();
                        bo.ColorCode = item["ACOL"].ToString();
                        bo.QNNO = item["FCCS"].ToString();
                        bo.StyleNO = item["CSTYLE"].ToString();
                        if (item["QTY"] != null && item["QTY"] != DBNull.Value)
                        {
                            bo.QNQty = Convert.ToInt32(item["QTY"]);
                        }
                        bo.IsAuditedAtPreDay = (item["IsAuditedAtPreDay"].ToString() == "1");
                        bo.IsFalseAtPreDay = (item["IsFalseAtPreDay"].ToString() == "1");
                        bo.IsInSchema = (item["IsInSchema"].ToString() == "1");
                        if (item["PlanQty"] != null && item["PlanQty"] != DBNull.Value)
                        {
                            bo.PlanQty = Convert.ToInt32(item["PlanQty"]);
                        }
                        if (item["SchemaQty"] != null && item["SchemaQty"] != DBNull.Value)
                        {
                            bo.SchemaQty = Convert.ToInt32(item["SchemaQty"]);
                        }
                        else
                        {
                            bo.SchemaQty = 1; //默認為1
                        }
                        bo.IsCoreProcess = (item["IsCoreProcess"].ToString() == "Y");


                        if (item["ProcessSAH"] != null && item["ProcessSAH"] != DBNull.Value)
                        {
                            bo.ProcessSAH = Convert.ToDecimal(item["ProcessSAH"]);
                        }
                        if (item["DefaultAuditQty"] != null && item["DefaultAuditQty"] != DBNull.Value)
                        {
                            bo.DefaultAuditQty = Convert.ToInt32(item["DefaultAuditQty"]);
                        }
                        if (item["TotalAuditQty"] != null && item["TotalAuditQty"] != DBNull.Value)
                        {
                            bo.TotalAuditQty = Convert.ToInt32(item["TotalAuditQty"]);
                        }


                        if (item["gxh"] != null && item["gxh"] != DBNull.Value)
                        {
                            bo.ProcessSeq = Convert.ToInt32(item["gxh"]);
                        }
                        bo.ProcessCode = item["gxdh"].ToString();
                        bo.ProcessName = item["gxm"].ToString();
                        bo.ProcessStep = item["ProcessStep"].ToString();
                        bo.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                        bo.CreateDate = DateTime.Now;
                        this.HeaderBO.QC_TaskSchemaDetails.Add(bo);
                    }
                    this.DataContext.SubmitChanges();
                    DataBind();
                    MessageBox.Show("產生任務Detail明細信息完成!", "系統提示");
                }
                else
                {
                    dcon.Connection.Close();
                    MessageBox.Show("產生任務Detail明細信息結束，沒有獲取到任何資料!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch
            {
            }
            finally
            {
                waitform.Close();
            }
        }

        private void sBtn_Clear_Click(object sender, EventArgs e)
        {
            this.imageComboBoxEdit_WorkShop.EditValue = null;
            this.imageComboBoxEdit_WorkLine.EditValue = null;
            this.imageComboBoxEdit_ProcessStep.EditValue = null;
            this.textEdit_ProcessCode.EditValue = null;

            this.objListGridView.ActiveFilter.Clear();
        }

        private void DoFilter()
        {
            this.objListGridView.ActiveFilter.Clear();
            if (this.imageComboBoxEdit_WorkShop.EditValue != null)
            {
                string workShop = this.imageComboBoxEdit_WorkShop.EditValue.ToString();
                if (workShop.Trim() != "")
                {
                    this.objListGridView.Columns["WorkShop"].FilterInfo = new ColumnFilterInfo("[WorkShop] LIKE '" + workShop.Trim() + "%'");
                }
            }

            if (this.imageComboBoxEdit_WorkLine.EditValue != null)
            {
                string workLine = this.imageComboBoxEdit_WorkLine.EditValue.ToString();
                if (workLine.Trim() != "")
                {
                    this.objListGridView.Columns["WorkLine"].FilterInfo = new ColumnFilterInfo("[WorkLine] LIKE '" + workLine.Trim() + "%'");
                }
            }

            if (this.imageComboBoxEdit_ProcessStep.EditValue != null)
            {
                string processStep = this.imageComboBoxEdit_ProcessStep.EditValue.ToString();
                if (processStep.Trim() != "")
                {
                    this.objListGridView.Columns["ProcessStep"].FilterInfo = new ColumnFilterInfo("[ProcessStep] LIKE '" + processStep.Trim() + "%'");
                }
            }

            if (this.textEdit_ProcessCode.EditValue != null)
            {
                string processCode = this.textEdit_ProcessCode.EditValue.ToString();
                if (processCode.Trim() != "")
                {
                    this.objListGridView.Columns["ProcessCode"].FilterInfo = new ColumnFilterInfo("[ProcessCode] LIKE '" + processCode.Trim() + "%'");
                }
            }
        }

        private void SetFilterCondition()
        {

            if (this.HeaderBO != null)
            {
                //WorkShop
                List<String> workShopList = this.HeaderBO.QC_TaskSchemaDetails.Select(p => p.WorkShop).Distinct().ToList();
                workShopList.Add("");
                this.imageComboBoxEdit_WorkShop.Properties.Items.Clear();
                foreach (string item in workShopList.OrderBy(p => p).ToList())
                {
                    this.imageComboBoxEdit_WorkShop.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
                }

                //WorkLine
                List<String> workLineList = this.HeaderBO.QC_TaskSchemaDetails.Select(p => p.WorkLine).Distinct().ToList();
                workLineList.Add("");
                this.imageComboBoxEdit_WorkLine.Properties.Items.Clear();
                foreach (string item in workLineList.OrderBy(p => p).ToList())
                {
                    this.imageComboBoxEdit_WorkLine.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
                }

                //ProcessStep
                List<String> processStep = this.HeaderBO.QC_TaskSchemaDetails.Select(p => p.ProcessStep).Distinct().ToList();
                processStep.Add("");
                this.imageComboBoxEdit_ProcessStep.Properties.Items.Clear();
                foreach (string item in processStep.OrderBy(p => p).ToList())
                {
                    this.imageComboBoxEdit_ProcessStep.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
                }

            }
        }

        private Color bgColor = Color.FromArgb(210, 253, 253);

        public void SetColumnEditable()
        {
            this.objListGridView.OptionsBehavior.Editable = true;
            foreach (GridColumn item in this.objListGridView.Columns)
            {
                if (item.FieldName == "IsInSchema"
                    || item.FieldName == "IsCoreProcess"
                    || item.FieldName == "SchemaQty")
                {
                    item.OptionsColumn.AllowEdit = true;
                }
                else
                {
                    item.OptionsColumn.AllowEdit = false;
                }
            }

            this.sBtn_ChoseALL.Enabled = true;
            this.sBtn_UnChoseALL.Enabled = true;

        }

        private void SetColColBgColor()
        {
            foreach (GridColumn item in this.objListGridView.Columns)
            {
                if (item.FieldName != "IsInSchema"
                    && item.FieldName != "IsCoreProcess"
                    && item.FieldName != "SchemaQty")
                {
                    item.AppearanceCell.BackColor = Color.FromArgb(210, 253, 253);
                }
            }
        }

        public void SetColumnDisable()
        {
            this.sBtn_ChoseALL.Enabled = false;
            this.sBtn_UnChoseALL.Enabled = false;
            this.objListGridView.OptionsBehavior.Editable = false;
        }

        private void sBtn_ChoseALL_Click(object sender, EventArgs e)
        {
            SetInSchema(true);
        }

        private void sBtn_UnChoseALL_Click(object sender, EventArgs e)
        {
            SetInSchema(false);
        }

        private void SetInSchema(bool IsIn)
        {
            for (int i = 0; i < this.objListGridView.DataRowCount; i++)
            {
                QC_TaskSchemaDetail bo = (QC_TaskSchemaDetail)this.objListGridView.GetRow(this.objListGridView.GetVisibleRowHandle(i));
                if (bo != null)
                {
                    bo.IsInSchema = IsIn;
                }
            }
            this.objListGridView.RefreshData();
            RecountChoseProcessCount();
        }

        private void QCTaskSchemaDetailListFrom_Load(object sender, EventArgs e)
        {
            this.sBtn_ChoseALL.Refresh();
            this.sBtn_UnChoseALL.Refresh();
            this.sBtn_Clear.Refresh();

            if (this.FormState == PH.Platform.BO.Interface.WorkMode.Edit)
            {
                SetColumnEditable();
            }
        }

        private void imageComboBoxEdit_WorkShop_SelectedValueChanged(object sender, EventArgs e)
        {
            DoFilter();
        }

        private void imageComboBoxEdit_WorkLine_SelectedValueChanged(object sender, EventArgs e)
        {
            DoFilter();
        }

        private void imageComboBoxEdit_ProcessStep_SelectedValueChanged(object sender, EventArgs e)
        {
            DoFilter();
        }

        private void textEdit_ProcessCode_EditValueChanged(object sender, EventArgs e)
        {
            DoFilter();
        }

        private void objListGridView_RowUpdated(object sender, DevExpress.XtraGrid.Views.Base.RowObjectEventArgs e)
        {
            RecountChoseProcessCount();
        }

        private void RecountChoseProcessCount()
        {
            this.lblChoseProcessCount.Text = this.HeaderBO.QC_TaskSchemaDetails.Where(p => p.IsInSchema ?? true).Count().ToString();
        }



        private void barBtn_AttachQNTask_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.HeaderBO == null)
            {
                MessageBox.Show("Master數據丟失，無法創建Detail信息。請退出界面重新操作!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm();
            waitform.Show();
            try
            {
                PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
                dcon.CommandTimeout = 10000;
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandTimeout = 10000;
                cmd.CommandText = "sp_aloperations";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@FTY", SqlDbType.NVarChar, 50);
                cmd.Parameters["@FTY"].Value = this.HeaderBO.Factory;
                cmd.Parameters.Add("@TaskType", SqlDbType.NVarChar, 20);
                cmd.Parameters["@TaskType"].Value = this.HeaderBO.TaskType;
                cmd.Parameters.Add("@MasterID", SqlDbType.UniqueIdentifier);
                cmd.Parameters["@MasterID"].Value = this.HeaderBO.MasterID;
                cmd.Connection = dcon.Connection as System.Data.SqlClient.SqlConnection;
                DataSet ds = new DataSet();
                System.Data.SqlClient.SqlDataAdapter dap = new System.Data.SqlClient.SqlDataAdapter();
                dap.SelectCommand = cmd;
                dap.Fill(ds);

                if (ds.Tables.Count > 0)
                {
                    foreach (DataRow item in ds.Tables[0].Rows)
                    {
                        PH.MobileQC.BO.QC_TaskSchemaDetail bo = new QC_TaskSchemaDetail();
                        bo.MasterID = this.HeaderBO.MasterID;
                        bo.DetailID = Guid.NewGuid();
                        bo.Factory = item["FTY"].ToString();
                        bo.WorkShop = item["TSHOP"].ToString();
                        bo.WorkLine = item["PLINE"].ToString();
                        bo.ProjectNO = item["J_NO"].ToString();
                        bo.WONO = item["J2_JOB"].ToString();
                        bo.RWONO = item["RWO"].ToString();
                        bo.ColorCode = item["ACOL"].ToString();
                        bo.QNNO = item["FCCS"].ToString();
                        bo.StyleNO = item["CSTYLE"].ToString();
                        if (item["QTY"] != DBNull.Value)
                        {
                            bo.QNQty = Convert.ToInt32(item["QTY"]);
                        }
                        bo.IsAuditedAtPreDay = (item["IsAuditedAtPreDay"].ToString() == "1");
                        bo.IsFalseAtPreDay = (item["IsFalseAtPreDay"].ToString() == "1");
                        bo.IsInSchema = (item["IsInSchema"].ToString() == "1");
                        if (item["PlanQty"] != DBNull.Value)
                        {
                            bo.PlanQty = Convert.ToInt32(item["PlanQty"]);
                        }
                        if (item["SchemaQty"] != DBNull.Value)
                        {
                            bo.PlanQty = Convert.ToInt32(item["SchemaQty"]);
                        }
                        else
                        {
                            bo.SchemaQty = 1; //默認為1
                        }
                        bo.IsCoreProcess = (item["IsCoreProcess"].ToString() == "Y");


                        if (item["ProcessSAH"] != DBNull.Value)
                        {
                            bo.ProcessSAH = Convert.ToDecimal(item["ProcessSAH"]);
                        }
                        if (item["DefaultAuditQty"] != DBNull.Value)
                        {
                            bo.DefaultAuditQty = Convert.ToInt32(item["DefaultAuditQty"]);
                        }
                        if (item["TotalAuditQty"] != DBNull.Value)
                        {
                            bo.TotalAuditQty = Convert.ToInt32(item["TotalAuditQty"]);
                        }


                        if (item["gxh"] != DBNull.Value)
                        {
                            bo.ProcessSeq = Convert.ToInt32(item["gxh"]);
                        }
                        bo.ProcessCode = item["gxdh"].ToString();
                        bo.ProcessName = item["gxm"].ToString();
                        bo.ProcessStep = item["ProcessStep"].ToString();
                        bo.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                        bo.CreateDate = DateTime.Now;
                        this.HeaderBO.QC_TaskSchemaDetails.Add(bo);
                    }
                    this.DataContext.SubmitChanges();
                    DataBind();
                    MessageBox.Show("產生任務Detail明細信息完成!", "系統提示");
                }
                else
                {
                    MessageBox.Show("產生任務Detail明細信息結束，沒有獲取到任何資料!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            finally
            {
                waitform.Close();
            }
        }
    }
}
