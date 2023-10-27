using System;
using System.Runtime.InteropServices;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using DevExpress.XtraGrid.Views.Grid;


namespace PH.MobileQC.UI
{
    public partial class frmMain : DevExpress.XtraEditors.XtraForm
    {
        #region properties

        private MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        private QC_Master _Master;

        private QC_AlertMessage _QC_AlertMessage;


        private string _CustomerStyle = string.Empty;
        private IList<mobileqc> ls;
        private IList<workers> lsworks;
        private IList<machines> lsmachine;
        private IList<operation> lsoper;
        private IList<lines> lsline;
        private bool _online;
        private int _Seq;
        private string SaveTempDefectInfo = ""; //QC时临时保存Defect信息
        private string SaveTempOPNName = "";    //QC时临时保存工序名称

        BindingSource bs = new BindingSource();

        #endregion

        /// <summary>
        /// Xsj（補充說明）：檢驗輸入窗體
        /// </summary>
        /// <param name="online">是否是OnLine數據</param>
        public frmMain(bool online)
        {
            //离线作业检测:若选择离线作业,则将connection改为本地,并判斷是否已?进行初始化作业(已建立离线工作必需的表结构及下载所必需的基本资料)
            this._online = online;
            if (!online)   //Xsj:時候獲取離線數據
            {

                //System.Nullable<byte> IsSucc = null;
                context.Connection.ConnectionString = context.OfflineConnectionString;

            }


            InitializeComponent();

            // Xsj（補充說明）：工序名
            // Xsj（補充說明）：根據語言環境，隱藏或顯示工序下來框中的響應列
            this.edtW_procedure.Properties.ValueMember = "GXDH";
            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "en") //英
            {
                this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
                this.edtW_procedure.Properties.Columns["TGXM"].Visible = true;
                this.edtW_procedure.Properties.DisplayMember = "EGXM";
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "tw" ||
                PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "cn") //中
            {
                this.edtW_procedure.Properties.Columns["GXM"].Visible = true;
                this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
                this.edtW_procedure.Properties.DisplayMember = "GXM";
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "th") //泰
            {
                this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
                this.edtW_procedure.Properties.Columns["TGXM"].Visible = true;
                this.edtW_procedure.Properties.DisplayMember = "TGXM";
            }

            // Xsj（補充說明）：綁定檢測的工作時段 NOT Code。
            BandComBox();


            // Xsj（補充說明）：處理QN#下拉框相應行的背景色。
            this.edtQNNo.Properties.View.RowStyle += new RowStyleEventHandler(View_RowStyle);
        }


        /// <summary>
        /// Xsj（補充說明）:從INTERBASE數據庫中獲取Line信息
        /// </summary>
        private void PrepareFirstData()
        {
            string sqlstr = string.Empty;
            if (_online)
            {
                //sqlstr = @"select pline  from openquery(INTERBASE, 'select distinct pline from Mobile_QC where TPlant = ''{0}'' ')";
                sqlstr = @"select pline,tplant as factory  from openquery(INTERBASE, 'select distinct pline,tplant from Mobile_QC ')";
                // sqlstr = string.Format(sqlstr, PH.Platform.Common.SysParamHelper.Instance.Location);
            }
            else
            {
                sqlstr = "SELECT distinct pline FROM mobile_qc ORDER BY pline";
            }
            this.lsline = context.ExecuteQuery<lines>(sqlstr).ToList<lines>();
            this.edtLine.Properties.DataSource = lsline;
            this.edtLine.Properties.DisplayMember = "PLINE";
            this.edtLine.Properties.ValueMember = "PLINE";
        }

        #region 錄入驗證
        ///  驗證輸入的資料是否合法
        /// <summary>
        ///  驗證輸入的資料是否合法
        /// </summary>
        /// <returns></returns>
        private bool CheckFirstInputData()
        {
            if (string.IsNullOrEmpty(this.edtLine.Text))
            {
                MessageBox.Show("Please choice line!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (string.IsNullOrEmpty(this.edtProject.Text))
            {
                MessageBox.Show("Please choice project!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (string.IsNullOrEmpty(this.edtWO.Text))
            {
                MessageBox.Show("Please choice WO!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (string.IsNullOrEmpty(this.edtRWO.Text))
            {
                MessageBox.Show("Please choice RWO!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (string.IsNullOrEmpty(this.edtStyle.Text))
            {
                MessageBox.Show("Please choice Style!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            //if (string.IsNullOrEmpty(this.edtW_procedure.Text))
            if (this.edtW_procedure.EditValue == null || string.IsNullOrEmpty(this.edtW_procedure.EditValue.ToString()))
            {
                MessageBox.Show("Please choice operation!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            //if (string.IsNullOrEmpty(this.edtWorker.Text))
            if (this.edtWorker.EditValue == null || string.IsNullOrEmpty(this.edtWorker.EditValue.ToString()))
            {
                MessageBox.Show("Please choice worker!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (string.IsNullOrEmpty(this.edtQC_Time.Text))
            {
                MessageBox.Show("Please input QC time!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            if (string.IsNullOrEmpty(this.edtQCCount.Text))
            {
                MessageBox.Show("Please input QC Qty!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            try
            {
                Convert.ToInt32(this.edtQCCount.Text);
            }
            catch
            {
                MessageBox.Show("QC Qty only integer!", "int", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }

            try
            {
                Convert.ToDateTime(this.edtQC_Time.Text);
            }
            catch
            {
                MessageBox.Show("Please input qc time format: yyyy-MM-dd HH:mm", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            return true;
        }

        #endregion

        /// <summary>
        /// 準備資料
        /// </summary>
        private void PrepareSecondData()
        {
            PH.DefectCode.BO.FabricInspectionDataContext context2 = PH.Platform.BO.ContextBuilder.CreateContext<PH.DefectCode.BO.FabricInspectionDataContext>();//.PHQCDefectList list = new PH.DefectCode.BO.PHQCDefectList();
            var defect_Code = from c in context2.PHQCDefects select c;

            this.edtDefetct_Code.Properties.Columns.Clear();
            this.edtDefetct_Code.Properties.DataSource = defect_Code;
            this.edtDefetct_Code.Properties.ValueMember = "PHDefectCode";
            switch (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID)
            {
                case "EN":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectEnglishName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    this.edtDefetct_Code.Properties.DisplayMember = "DefectEnglishName";
                    break;
                case "TW":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });
                    this.edtDefetct_Code.Properties.DisplayMember = "DefectChineseName";
                    break;
                case "CN":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });
                    this.edtDefetct_Code.Properties.DisplayMember = "DefectChineseName";
                    break;
                case "TH":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5), 
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectThaiName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    this.edtDefetct_Code.Properties.DisplayMember = "DefectThaiName";
                    break;

                default:
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectEnglishName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    this.edtDefetct_Code.Properties.DisplayMember = "DefectEnglishName";
                    break;
            }


            var problem = from a in context.QC_Defects where a.Defect_Type == 2 select a;
            this.edtProblem.Properties.DataSource = problem;
            this.edtProblem.Properties.DisplayMember = "Defect_Spec";
            this.edtProblem.Properties.ValueMember = "Defect_Code";

            var action_Taken = from a in context.QC_Defects where a.Defect_Type == 3 select a;
            this.edtAction_Taken.Properties.DataSource = action_Taken;
            this.edtAction_Taken.Properties.DisplayMember = "Defect_Spec";
            this.edtAction_Taken.Properties.ValueMember = "Defect_Code";

            var solution = from a in context.QC_Defects where a.Defect_Type == 4 select a;

            this.edtSolution.Properties.DataSource = solution;
            this.edtSolution.Properties.DisplayMember = "Defect_Spec";
            this.edtSolution.Properties.ValueMember = "Defect_Code";

            //add cause by joseph 08-09-10
            var cause = from a in context.QC_Defects where a.Defect_Type == 6 select a;
            this.edtCause.Properties.DataSource = cause;
            this.edtCause.Properties.DisplayMember = "Defect_Spec";
            this.edtCause.Properties.ValueMember = "Defect_Code";

            this.edtLightCount.Text = QCLightCount.ToString();
        }

        /// 提示用戶可QC的數量
        /// <summary>
        /// 提示用戶可QC的數量(QC明細數量不能大於這個數)
        /// </summary>
        public int QCLightCount
        {
            get
            {
                if (this._Master == null)
                {
                    return 0;
                }

                int temp = 0;
                foreach (QC_Detail obj in this._Master.QC_Details)
                {
                    temp += obj.LightCount ?? 0;
                }

                return (this._Master.QCCount ?? 0) - temp;
            }
        }

        /// <summary>
        /// 驗證輸入的資料是否合法
        /// </summary>
        /// <returns></returns>
        private bool CheckSecondInputData()
        {
            if (this.radQC_Light.SelectedIndex == -1)
            {
                MessageBox.Show("Please choice QC result!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.radQC_Light.Focus();
                return false;
            }
            if (this.edtLightCount.Text == "")
            {
                MessageBox.Show("Please input QC Qty!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtLightCount.Focus();
                return false;
            }

            if (this.radQC_Light.SelectedIndex > 0 && this.radioGroupFStatus.SelectedIndex > 0) //QC結果不是Pass的時候，一定要錄入Defect等內容
            {
                if (this.edtDefetct_Code.Text == "")
                {
                    MessageBox.Show("Please choice defect!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.edtDefetct_Code.Focus();
                    return false;
                }

                if (this.edtProblem.Text == "")
                {
                    MessageBox.Show("Please choice defect position!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.edtProblem.Focus();
                    return false;
                }

                if (this.edtCause.Text == "")
                {
                    MessageBox.Show("Please choice defect cause!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.edtCause.Focus();
                    return false;
                }

                if (this.edtAction_Taken.Text == "")
                {
                    MessageBox.Show("Please choice defect correct!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.edtAction_Taken.Focus();
                    return false;
                }

                if (this.edtSolution.Text == "")
                {
                    MessageBox.Show("Please choice defect prevent!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.edtSolution.Focus();
                    return false;
                }

                if (this.edtOnOffLine.Text == "")
                {
                    MessageBox.Show("Please choice on/off line! ", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.edtOnOffLine.Focus();
                    return false;
                }
            }

            try
            {
                Convert.ToInt32(this.edtLightCount.Text);
            }
            catch
            {
                MessageBox.Show("QC Qty only integer!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtLightCount.Focus();
                return false;
            }

            if (Convert.ToInt32(this.edtLightCount.Text) == 0)
            {
                MessageBox.Show("QC Qty must greater than 0 ", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtLightCount.Focus();
                return false;
            }

            if (Convert.ToInt32(this.edtLightCount.Text) > QCLightCount)
            {
                MessageBox.Show("QC Qty can't greater than " + QCLightCount.ToString(), "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtLightCount.Focus();
                return false;
            }


            //Xsj:檢驗信號燈信息是否已經選取
            if (!CheckTrafficLightFlagInput())
            {
                MessageBox.Show("Please Choose Traffic Light !", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.radioGroupFStatus.Focus();
                return false;
            }


            return true;
        }




        /// 保存QC明細資料
        /// <summary>
        /// 保存QC明細資料
        /// </summary>
        /// <param name="ASaveToSession">是否保存到Session</param>
        private bool SaveQCDeatilData()
        {
            bool result = true;
            QC_Detail detail = new QC_Detail();
            detail.QC_Light = Convert.ToChar(this.radQC_Light.Properties.Items[this.radQC_Light.SelectedIndex].Value);
            detail.LightCount = Convert.ToInt32(this.edtLightCount.Text);
            detail.Defect_Code = this.edtDefetct_Code.EditValue == null ? "" : this.edtDefetct_Code.EditValue.ToString();
            detail.Problem = this.edtProblem.EditValue == null ? "" : this.edtProblem.EditValue.ToString();
            detail.Action_Taken = this.edtAction_Taken.EditValue == null ? "" : this.edtAction_Taken.EditValue.ToString();
            detail.SolutionCode = this.edtSolution.EditValue == null ? "" : this.edtSolution.EditValue.ToString();
            detail.OnOffLine = this.edtOnOffLine.EditValue == null ? "" : this.edtOnOffLine.EditValue.ToString();
            detail.MasterID = this._Master.MasterID;
            detail.Cause = edtCause.Text;
            detail.ID = Guid.NewGuid();

            //Xsj20140702:保存信號燈信息
            SaveTrafficLightFlag(detail);


            //////////////////////////////////////////////////////////////

            //临时保存Alert Email的Send Time/Defect Qty信息和工序名称
            if (this.radQC_Light.SelectedIndex > 0)
            {
                this.SaveTempDefectInfo += this.edtDefetct_Code.Text + " " +
                                       this.edtLightCount.Text +
                                       (this.edtLightCount.Text == "1" ? "pc  " : "pc(s)  ");

                this.SaveTempOPNName = this.edtW_procedure.Text;
            }

            try
            {
                this._Master.QC_Details.Add(detail);
                //context.SubmitChanges();
            }
            catch (Exception ex)
            {
                result = false;
                this._Master.QC_Details.Remove(detail);
                throw new Exception(ex.Message, ex);
            }

            return result;
        }

        private void SaveAlertMessage()
        {
            this._QC_AlertMessage = new QC_AlertMessage();
            this._QC_AlertMessage.ID = Guid.NewGuid();
            this._QC_AlertMessage.Line = this._Master.Line;
            this._QC_AlertMessage.Project = this._Master.Project;
            this._QC_AlertMessage.Style = this._Master.Style;
            this._QC_AlertMessage.Color = this._Master.Color;
            this._QC_AlertMessage.OPNCode = this._Master.W_procedure;
            this._QC_AlertMessage.OPNName = this.SaveTempOPNName;
            this._QC_AlertMessage.SendTime = DateTime.Now;
            this._QC_AlertMessage.Defect = this.SaveTempDefectInfo;
            context.QC_AlertMessages.InsertOnSubmit(this._QC_AlertMessage);
        }

        /// <summary>
        /// Xsj(補充說明):從平臺的數據字典中獲取數據，綁定 NOT code數據源。（工作時間段）
        /// </summary>
        private void BandComBox()
        {
            this.edtOTN.Properties.DataSource = PublicServices.GetSys_BaseData("PH.MobileQC.OTN");
            this.edtOTN.EditValue = PublicServices.ReturnOTNValue();
        }

        private void BandComBoxWorkforceAndMachine()
        {
            if (_online)
            {
                if (this.edtW_procedure.EditValue == null)
                {
                    return;
                }

                PH.LWPM.BO.RAPLQDataContext contextLWPM = PH.Platform.BO.ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();

                //contextLWPM.CommandTimeout = 8000;

                //                string SqlStr = @"SELECT  WorkerId,WorkerName,addworkerId1,addworker1,addworkerId2, addworker2,addworkerId3,addworker3,MachineId,addMachineId1, addMachineId2,addMachineId3
                //                                    FROM Lb5Matching WHERE LineCode = '{0}' AND J2_job = '{1}' AND Qn= '{2}' AND Rwo = '{3}' AND Date = '{4}' AND j_NO = '{5}' AND OTN = '{6}' AND OperationCode = '{7}'";
                //                SqlStr = string.Format(SqlStr, this.edtLine.Text, this.edtWO.Text, this.edtQNNo.Text, this.edtRWO.Text, DateTime.Now.ToString("yyyy-MM-dd"), this.edtProject.Text, this.edtOTN.Text, this.edtW_procedure.Text);
                //                DataTable dt = contextLWPM.ExecuteDataTable(SqlStr, "LB5Matching");

                this.context.CommandTimeout = 8000;
                string SqlStr = "EXEC GetWorkerAndMachince '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}'";
                lines _li = this.lsline.First(p => p.PLINE == this.edtLine.Text);


                //SqlStr = string.Format(SqlStr, PH.Platform.Common.SysParamHelper.Instance.Location,
                //    this.edtLine.Text, this.edtWO.Text, this.edtQNNo.Text, this.edtRWO.Text,
                //    //DateTime.Now.ToString("yyyy-MM-dd"), 
                //             edtQC_Time.DateTime.ToString("yyyy-MM-dd"),
                //             this.edtProject.Text, this.edtOTN.Text, this.edtW_procedure.EditValue.ToString());

                SqlStr = string.Format(SqlStr, _li.FACTORY,
                    this.edtLine.Text, this.edtWO.Text, this.edtQNNo.Text, this.edtRWO.Text,
                    //DateTime.Now.ToString("yyyy-MM-dd"), 
                             edtQC_Time.DateTime.ToString("yyyy-MM-dd"),
                             this.edtProject.Text, this.edtOTN.Text, this.edtW_procedure.EditValue.ToString());

                DataTable dt = this.context.ExecuteDataTable(SqlStr, "LB5Matching");

                if (dt.Rows.Count <= 0)
                {
                    this.edtWorker.Properties.DataSource = null;
                    return;
                }

                // 從LB5中得到員工和機器
                this.edtWorker.Properties.DisplayMember = "Id";
                this.edtWorker.Properties.ValueMember = "Id";

                this.edtMachinePlace.Properties.DisplayMember = "Id";
                this.edtMachinePlace.Properties.ValueMember = "Id";

                List<workers> workList = new List<workers>();
                List<machines> machineList = new List<machines>();
                //foreach (var obj in workforceList)
                foreach (DataRow obj in dt.Rows)
                {
                    workList.Add(new workers() { Id = obj["WorkerId"].ToString(), NameCn = obj["WorkerName"].ToString().Trim() });
                    if (obj["addworkerId1"].ToString() != "")
                    {
                        workList.Add(new workers() { Id = obj["addworkerId1"].ToString(), NameCn = obj["addworker1"].ToString().Trim() });
                    }
                    if (obj["addworkerId2"].ToString() != "")
                    {
                        workList.Add(new workers() { Id = obj["addworkerId2"].ToString(), NameCn = obj["addworker2"].ToString().Trim() });
                    }
                    if (obj["addworkerId3"].ToString() != "")
                    {
                        workList.Add(new workers() { Id = obj["addworkerId3"].ToString(), NameCn = obj["addworker3"].ToString().Trim() });
                    }

                    var mac = (from a in contextLWPM.Machines
                               where a.Id == obj["MachineId"].ToString()
                               select new { a.Name }).FirstOrDefault();

                    if (mac != null)
                    {
                        machineList.Add(new machines() { Id = obj["MachineId"].ToString(), Name = mac.Name.Trim() });
                        if (obj["addMachineId1"].ToString() != "")
                        {
                            var machine = (from a in contextLWPM.Machines
                                           where a.Id == obj["MachineId"].ToString()
                                           select new { a.Name }).FirstOrDefault();
                            machineList.Add(new machines() { Id = obj["addMachineId1"].ToString(), Name = machine.Name.Trim() });
                        }
                        if (obj["addMachineId2"].ToString() != "")
                        {
                            var machine = (from a in contextLWPM.Machines
                                           where a.Id == obj["MachineId"].ToString()
                                           select new { a.Name }).FirstOrDefault();
                            machineList.Add(new machines() { Id = obj["addMachineId2"].ToString(), Name = machine.Name.Trim() });
                        }
                        if (obj["addMachineId3"].ToString() != "")
                        {
                            var machine = (from a in contextLWPM.Machines
                                           where a.Id == obj["MachineId"].ToString()
                                           select new { a.Name }).FirstOrDefault();
                            machineList.Add(new machines() { Id = obj["addMachineId3"].ToString(), Name = machine.Name.Trim() });
                        }
                    }
                }

                workList = workList.Distinct(new workComparer()).ToList();
                machineList = machineList.Distinct(new machineCompare()).ToList();
                this.edtWorker.Properties.DataSource = workList;
                this.edtMachinePlace.Properties.DataSource = machineList;

                if (workList.Count() == 1) //如果一個工序只有一個員工,就在選工序時直接給員工賦值,多个员工时让用户自己选择
                {
                    this.edtWorker.EditValue = workList.FirstOrDefault().Id;
                }
                else
                {
                    this.edtWorker.EditValue = "";
                }

                if (machineList.Count() == 1) //如果一個工序只有一台衣車,就在選工序時直接給衣車賦值,多个员工时让用户自己选择
                {
                    this.edtMachinePlace.EditValue = machineList[0].Id;
                }
                else
                {
                    this.edtMachinePlace.EditValue = "";
                }
            }
            else //离线时(umpc环境)从本地获取员工资料
            {
                string sqlstr = string.Format("SELECT  id as WorkerId ,namecn as WorkerName  FROM workforce where linecode='{0}'", this.edtLine.Text);
                this.lsworks = context.ExecuteQuery<workers>(sqlstr).ToList<workers>();
                this.edtWorker.Properties.DataSource = lsworks;

                string sqlstr2 = string.Format(@"SELECT Id ,Name FROM Machine where line='{0}'", this.edtLine.Text);
                this.lsmachine = context.ExecuteQuery<machines>(sqlstr2).ToList<machines>();
                this.edtMachinePlace.Properties.DataSource = lsmachine;
            }
        }


        // Xsj(補充說明):窗體加載事件
        private void frmMain_Load(object sender, EventArgs e)
        {
            //this.AutoHideTaskbar(true);
            this.TabControlWizard.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;

            //Xsj(補充說明):初始化QC時間為當前時間
            this.edtQC_Time.EditValue = DateTime.Now.ToString("yyyy-MM-dd HH:mm:00");

            // Xsj（補充說明）:從INTERBASE數據庫中獲取Line信息
            this.PrepareFirstData();

            // Xsj（補充說明）:顯示檢驗員名字。
            this.lblFirstQCMan.Text = "Quality Auditor: " + PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID; //PH.AuthManage.Utils.AuthController.UserID;
            this.lblSecondQCMan.Text = this.lblFirstQCMan.Text;
        }



        ///  保存 & 輸入下一條QC明細
        /// <summary>
        ///  保存 & 輸入下一條QC明細
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSaveAndNext_Click(object sender, EventArgs e)
        {
            if (CheckSecondInputData())
            {
                if (this.SaveQCDeatilData())
                {
                    this.edtLightCount.Text = this.QCLightCount.ToString();
                    this.radQC_Light.SelectedIndex = -1;
                    this.edtDefetct_Code.EditValue = null;
                    this.edtProblem.EditValue = null;
                    this.edtAction_Taken.EditValue = null;
                    this.edtSolution.EditValue = null;
                    this.edtOnOffLine.EditValue = null;
                    this.edtCause.EditValue = null;

                    if (this.QCLightCount == 0)
                    {
                        if (this.SaveTempDefectInfo != "")
                        {
                            this.SaveAlertMessage();
                        }

                        context.SubmitChanges();

                        if (this.SaveTempDefectInfo != "")
                        {
                            this.SendAlertEmail(SendMailFlag.SysAuto);
                            this.SaveTempDefectInfo = "";
                        }
                        MessageBox.Show("QC deatil completed!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        this.TabControlWizard.SelectedTabPageIndex = 0;
                        this.edtQC_Time.EditValue = DateTime.Now.ToString("yyyy-MM-dd HH:mm:00");
                        this.edtWorker.EditValue = null;
                        this.edtW_procedure.EditValue = null;
                        this.ControlManualSendMailButton();
                    }

                    //Xsj20140702:復位TrafficLight控件
                    ResetTrafficLightCtrl();
                }
            }
        }

        ///  Save & Complete
        /// <summary>
        ///  Save & Complete
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSaveAndComp_Click(object sender, EventArgs e)
        {
            if (!this.CheckSecondInputData()) return;

            if (Convert.ToInt32(this.edtLightCount.Text) < QCLightCount)
            {
                MessageBox.Show("QC detail is not complete!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            else
            {

                if (this.SaveQCDeatilData())
                {
                    if (this.SaveTempDefectInfo != "")
                    {
                        this.SaveAlertMessage();
                    }

                    context.SubmitChanges();

                    if (this.SaveTempDefectInfo != "")
                    {
                        this.SendAlertEmail(SendMailFlag.SysAuto);
                        this.SaveTempDefectInfo = "";
                    }

                    MessageBox.Show("QC detail is completed!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                    this.TabControlWizard.SelectedTabPageIndex = 0;
                    this.edtQC_Time.EditValue = DateTime.Now.ToString("yyyy-MM-dd HH:mm:00");
                    this.edtWorker.EditValue = null;
                    this.edtW_procedure.EditValue = null;
                    this.ControlManualSendMailButton();
                }
            }
        }

        /// 查询Size信息
        /// <summary>
        /// 查询Size信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSize_Click(object sender, EventArgs e)
        {
            //if (string.IsNullOrEmpty(this._CustomerStyle))
            if (string.IsNullOrEmpty(this.edtStyle.Text))
            {
                MessageBox.Show("Please choice Style", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
            string SqlStr = string.Format("EXEC [MobileQC_QuerySize] '{0}'", this.edtSize.Text);
            DataTable dt = context.ExecuteDataTable(SqlStr, "Size");


            //DataTable dt = PH.MobileQC.BO.SqlDataHelper.EXECMobileQC_QuerySize(this.edtStyle.Text);

            if (dt.Rows.Count == 0)
            {
                MessageBox.Show("No size information", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            SizeForm sizeForm = new SizeForm(dt);   //("28260-4-0-LA");
            sizeForm.ShowDialog();

        }



        // Xsj(補充說明): Line#更改事件---互動與Line相關的資料:從INTERBASE數據庫獲取生產信息。
        private void edtLine_EditValueChanged(object sender, EventArgs e)
        {
            string SqlStr = string.Empty;
            if (_online)
                SqlStr = string.Format("Exec sp_getmobileqcinfo '{0}'", this.edtLine.Text);
            else
                SqlStr = string.Format("SELECT FCCS,J_NO,J2_JOB,CWO,RWO,ACOL,CSTYLE FROM Mobile_QC where  pline= '{0}'", this.edtLine.Text);

            ls = context.ExecuteQuery<mobileqc>(SqlStr).ToList<mobileqc>();
            _Seq = ls[0].Seq;

            bs.DataSource = ls;

            //Xsj(補充說明):綁定QN
            this.edtQNNo.Properties.DataSource = bs;
            this.edtQNNo.Properties.DisplayMember = "FCCS";
            this.edtQNNo.Properties.ValueMember = "FCCS";

            edtQNNo.DataBindings.Clear();
            edtQNNo.DataBindings.Add("Text", bs, "FCCS");


            //Xsj (補充說明):綁定WOc、ProjectNO、WO、RWO、Color、Style

            //edtWOc.DataBindings.Clear();
            this.edtProject.DataBindings.Clear();
            this.edtWO.DataBindings.Clear();
            this.edtWOc.DataBindings.Clear();
            this.edtRWO.DataBindings.Clear();
            this.edtColor.DataBindings.Clear();
            this.edtStyle.DataBindings.Clear();

            //this.edtWOc.DataBindings.Add("EditValue", bs, "CWO");
            //this.edtProject.DataBindings.Add("EditValue", bs, "J_NO");
            //this.edtWO.DataBindings.Add("EditValue", bs, "J2_JOB");
            //this.edtRWO.DataBindings.Add("EditValue", bs, "RWO");
            //this.edtColor.DataBindings.Add("EditValue", bs, "ACOL");
            //this.edtStyle.DataBindings.Add("EditValue", bs, "CSTYLE");

            this.edtWOc.DataBindings.Add(new Binding("EditValue", bs, "CWO", true));
            this.edtProject.DataBindings.Add(new Binding("EditValue", bs, "J_NO", true));
            this.edtWO.DataBindings.Add(new Binding("EditValue", bs, "J2_JOB", true));
            this.edtRWO.DataBindings.Add(new Binding("EditValue", bs, "RWO", true));
            this.edtColor.DataBindings.Add(new Binding("EditValue", bs, "ACOL", true));
            this.edtStyle.DataBindings.Add(new Binding("EditValue", bs, "CSTYLE", true));


            edtQNNo_EditValueChanged(this, e);
        }


        /// <summary>
        /// Xsj (補充說明):QN#更改事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void edtQNNo_EditValueChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.edtStyle.Text))
                return;

            // Xsj(補充說明):從平臺的數據字典中獲取數據，綁定 NOT code數據源。（工作時間段）
            BandComBox();

            //BandComBoxWorkforceAndMachine();

            // Xsj(補充說明)：如下代碼可能是多餘的，與構造函數中的邏輯重復
            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "en") //英
            {
                this.edtW_procedure.Properties.Columns[1].Visible = true;
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "tw" ||
                PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "cn") //中
            {
                this.edtW_procedure.Properties.Columns[2].Visible = true;
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "th") //泰
            {
                this.edtW_procedure.Properties.Columns[3].Visible = true;
            }

            DataTable dt = SqlDataHelper.EXECGetSize(this.edtLine.Text, _Seq);
            foreach (DataRow item in dt.Rows)
            {
                this.edtSize.Properties.Items.Add(item["PSIZ"]);
            }
        }

        private void edtStyle_EditValueChanged(object sender, EventArgs e)
        {
            string SqlStr = string.Empty;
            if (_online)
                SqlStr = string.Format(@"SELECT GXH,GXDH,GXM,Yzjb,Zkcc,Mx,EGXM,TGXM FROM [PHGDB2].dbo.Mobile_QC_GX WHERE CStyle = '{0}' OR CStyle1 = '{0}' 
                                 OR CStyle2 = '{0}' OR CStyle3 = '{0}' OR CStyle4 = '{0}' OR CStyle5 = '{0}' ORDER BY gxh", this.edtStyle.Text);
            else
                SqlStr = string.Format(@"SELECT GXH,GXDH,GXM,Yzjb,Zkcc,Mx,EGXM,TGXM FROM Mobile_QC_GX WHERE CStyle = '{0}' OR CStyle1 = '{0}' OR CStyle2 = '{0}' 
                                        OR CStyle3 = '{0}' OR CStyle4 = '{0}' OR CStyle5 = '{0}' ORDER BY gxh", this.edtStyle.Text);

            this.lsoper = context.ExecuteQuery<operation>(SqlStr).ToList<operation>();
            this.edtW_procedure.Properties.DataSource = lsoper;

            //this.edtW_procedure.Properties.ValueMember = "GXDH";
            //this.edtW_procedure.Properties.DisplayMember = "GXDH";
        }

        private void edtW_procedure_EditValueChanged(object sender, EventArgs e)
        {
            this.BandComBoxWorkforceAndMachine();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (this.CheckFirstInputData())
            {
                try
                {
                    this._Master = new QC_Master();
                    this._Master.Line = this.edtLine.Text;

                    lines li = this.lsline.First(p => p.PLINE == this.edtLine.Text);
                    this._Master.Factory = li.FACTORY;

                    this._Master.Project = this.edtProject.Text;
                    this._Master.Style = this.edtStyle.Text;
                    this._Master.W_procedure = this.edtW_procedure.EditValue.ToString();
                    this._Master.Worker = this.edtWorker.EditValue.ToString();//this.edtWorker.Text;
                    this._Master.QC_time = this.edtQC_Time.DateTime;
                    this._Master.QCCount = Convert.ToInt32(this.edtQCCount.Text);
                    this._Master.QNNo = this.edtQNNo.Text;
                    this._Master.BoxNo = this.edtBoxNo.Text;
                    //this._Master.BindNo = this.edtBindNo.Text;
                    this._Master.MachinePlace = this.edtMachinePlace.Text;
                    this._Master.WO = this.edtWO.Text;
                    this._Master.RWO = this.edtRWO.Text;
                    this._Master.OTN = this.edtOTN.Text;
                    this._Master.QCMan = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    //add by joseph 08-09-11
                    this._Master.Color = edtColor.Text;
                    this._Master.Size = edtSize.Text;
                    this._Master.WOc = this.edtWOc.Text;
                    this._Master.BoxNo = this.edtBoxNo.Text;
                    this._Master.MasterID = Guid.NewGuid();
                    ///////////////////////////////////

                    QC_Detail detail = new QC_Detail();
                    detail.QC_Light = 'P';
                    detail.LightCount = Convert.ToInt32(this.edtQCCount.Text);
                    detail.MasterID = this._Master.MasterID;
                    detail.Cause = this.edtCause.Text;
                    detail.ID = Guid.NewGuid();

                    this._Master.QC_Details.Add(detail);
                    context.QC_Masters.InsertOnSubmit(this._Master);
                    context.SubmitChanges();

                    MessageBox.Show("Save successfully!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                    //this.edtQC_Time.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm");
                    this.edtQC_Time.EditValue = DateTime.Now.ToString("yyyy-MM-dd HH:mm:00");
                    this.edtWorker.EditValue = null;
                    this.edtW_procedure.EditValue = null;
                    this.ControlManualSendMailButton();
                }
                catch (Exception ex)
                {
                    foreach (object obj in context.GetChangeSet().Inserts)
                    {
                        if (obj is QC_Master)
                        {
                            context.QC_Masters.DeleteOnSubmit(obj as QC_Master);
                        }
                        else if (obj is QC_Detail)
                        {
                            context.QC_Details.DeleteOnSubmit(obj as QC_Detail);
                        }
                    }
                    throw new Exception(ex.Message, ex);

                    //this._Master.QC_Details.Clear();
                    //if (context.GetChangeSet().Inserts.Count > 0)
                    //{
                    //    context.QC_Masters.DeleteOnSubmit(this._Master);
                    //}
                    //throw new Exception(ex.Message, ex);
                }
            }
        }

        private void btnQCDetail_Click(object sender, EventArgs e)
        {
            #region
            if (this.CheckFirstInputData())
            {
                try
                {
                    this._Master = new QC_Master();
                    this._Master.Line = this.edtLine.Text;

                    //add by joseph
                    lines li = this.lsline.First(p => p.PLINE == this.edtLine.Text);
                    this._Master.Factory = li.FACTORY;

                    this._Master.Project = this.edtProject.Text;
                    this._Master.Style = this.edtStyle.Text;
                    this._Master.W_procedure = this.edtW_procedure.EditValue.ToString();
                    this._Master.Worker = this.edtWorker.Text;
                    this._Master.QC_time = this.edtQC_Time.DateTime;
                    this._Master.QCCount = Convert.ToInt32(this.edtQCCount.Text);
                    this._Master.QCMan = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    this._Master.WO = this.edtWO.Text;
                    this._Master.RWO = this.edtRWO.Text;
                    this._Master.Color = edtColor.Text;
                    this._Master.Size = edtSize.Text;
                    this._Master.QNNo = this.edtQNNo.Text;
                    this._Master.WOc = this.edtWOc.Text;
                    this._Master.OTN = this.edtOTN.Text;
                    this._Master.MachinePlace = this.edtMachinePlace.Text;
                    this._Master.BoxNo = this.edtBoxNo.Text;
                    this._Master.MasterID = Guid.NewGuid();
                    ////////////////////////////

                    context.QC_Masters.InsertOnSubmit(this._Master);
                    //context.SubmitChanges();

                    TabControlWizard.SelectedTabPageIndex = 1;
                    this.PrepareSecondData();
                }
                catch (Exception ex)
                {
                    if (context.GetChangeSet().Inserts.Count > 0)
                    {
                        context.QC_Masters.DeleteOnSubmit(this._Master);
                    }
                    throw new Exception(ex.Message, ex);
                }
            }
            #endregion
        }

        private void edtWorker_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if (this.edtWorker.Properties.DataSource != null)
            {
                (this.edtWorker.Properties.DataSource as List<workers>).Add(new workers() { Id = e.DisplayValue.ToString(), NameCn = "" });
                e.Handled = true;
            }
            else
            {
                this.edtWorker.EditValue = e.DisplayValue;
                this.edtWorker.Text = e.DisplayValue.ToString();
            }
        }

        private void edtMachinePlace_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if (this.edtMachinePlace.Properties.DataSource != null)
            {
                (this.edtMachinePlace.Properties.DataSource as List<machines>).Add(new machines() { Id = e.DisplayValue.ToString(), Name = "" });
                e.Handled = true;
            }
            else
            {
                this.edtMachinePlace.EditValue = e.DisplayValue;
                this.edtMachinePlace.Text = e.DisplayValue.ToString();
            }
        }

        #region 處理下一個QN用顔色標記出來
        void View_RowStyle(object sender, RowStyleEventArgs e)
        {
            GridView view = sender as GridView;
            if (e.RowHandle >= 0)
            {
                string flag = view.GetRowCellDisplayText(e.RowHandle, view.Columns["FLAG"]);
                if (flag.ToUpper() == "N")
                {
                    e.Appearance.BackColor = Color.Yellow;
                }
            }
        }
        #endregion

        #region 選擇QC Result時的介面控制

        private void radQC_Light_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Xsj:添加以下代碼，用於顯示檢測狀態及顯示信號燈
            TrafficLightShow();


            this.ControlShowInterface();
        }







        #region

        //Xsj:20141219控制交通燈變化后的控件狀態
        void ControlReAuditStatus()
        {
            this.edtDefetct_Code.Enabled = this.radioGroupFStatus.SelectedIndex != 0;
            this.edtProblem.Enabled = this.edtDefetct_Code.Enabled;
            this.edtCause.Enabled = this.edtDefetct_Code.Enabled;
            this.edtAction_Taken.Enabled = this.edtDefetct_Code.Enabled;
            this.edtSolution.Enabled = this.edtDefetct_Code.Enabled;
            this.edtOnOffLine.Enabled = this.edtDefetct_Code.Enabled;

            if (this.radQC_Light.SelectedIndex == 0)
            {
                this.edtDefetct_Code.EditValue = null;
                this.edtProblem.EditValue = null;
                this.edtCause.EditValue = null;
                this.edtAction_Taken.EditValue = null;
                this.edtSolution.EditValue = null;
                this.edtOnOffLine.EditValue = null;

            }
        }


        /// <summary>
        /// Xsj:ProcessCheckBox狀態變化事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void checkEditProcessed_CheckedChanged(object sender, EventArgs e)
        {
            if (this.checkEditProcessed.Checked)
            {
                this.radioGroupFStatus.Visible = true;
            }
            else
            {
                this.radioGroupFStatus.EditValue = null;
                this.radioGroupFStatus.Visible = false;

                TrafficLightShow();

            }
        }


        /// <summary>
        /// Xsj:添加以下代碼，用於顯示檢測狀態及顯示信號燈
        /// </summary>
        private void TrafficLightShow()
        {
            if (this.radQC_Light.EditValue == null) return;

            if (this.radQC_Light.EditValue.ToString() == "P") //Pass：綠色
            {
                this.lblTrafficShow.BackColor = Color.Green;
                this.checkEditProcessed.EditValue = null;
                this.checkEditProcessed.Enabled = false;
                this.radioGroupFStatus.Visible = false;
            }
            //else if (this.radQC_Light.EditValue.ToString() == "F") //False
            //{
            //    this.lblTrafficShow.BackColor = Color.Transparent;
            //    this.radioGroupFStatus.Visible = true;
            //}
            //else if (this.radQC_Light.EditValue.ToString() == "U") //Unclassified
            //{
            //    this.lblTrafficShow.BackColor = Color.Transparent;
            //    this.radioGroupFStatus.Visible = false;
            //}
            //else if (this.radQC_Light.EditValue.ToString() == "S") //Scrap
            //{
            //    this.lblTrafficShow.BackColor = Color.Red;
            //    this.radioGroupFStatus.Visible = false;
            //}
            else if (this.radQC_Light.EditValue.ToString() == "F"
                || this.radQC_Light.EditValue.ToString() == "U"
                || this.radQC_Light.EditValue.ToString() == "S") //Not Pass :黃色
            {
                //Xsj20140707:應jackson和王生的要求，對第一次檢測為Not P的，顯示為黃色。
                this.lblTrafficShow.BackColor = Color.Yellow;
                this.checkEditProcessed.Enabled = true;
            }


            this.checkEditProcessed.Checked = false;
            this.radioGroupFStatus.EditValue = null;
        }

        private void radioGroupFStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.radioGroupFStatus.EditValue == null) return;

            if (this.radioGroupFStatus.EditValue.ToString() == "A") //放行
            {
                this.lblTrafficShow.BackColor = Color.Green;
            }
            else if (this.radioGroupFStatus.EditValue.ToString() == "B") //待檢
            {
                this.lblTrafficShow.BackColor = Color.Yellow;
            }
            else if (this.radioGroupFStatus.EditValue.ToString() == "C") //完結
            {
                this.lblTrafficShow.BackColor = Color.Red;
            }

            ControlReAuditStatus();
        }

        /// <summary>
        /// Xsj:2014-07-02檢測信號燈信息是否已經錄入
        /// </summary>
        /// <returns></returns>
        private bool CheckTrafficLightFlagInput()
        {
            bool result = true;

            //if (this.radQC_Light.EditValue.ToString() == "F")
            if (this.checkEditProcessed.Checked)
            {
                if (this.radioGroupFStatus.EditValue == null)
                {
                    result = false;
                }
            }

            return result;
        }


        /// <summary>
        /// Xsj20140702:保存TrafficLight信號
        /// </summary>
        /// <param name="CurrentDetail"></param>
        private void SaveTrafficLightFlag(QC_Detail CurrentDetail)
        {
            //Xsj:是否二次檢測
            if (this.checkEditProcessed.Checked)
            {
                CurrentDetail.Processed = true;
                CurrentDetail.TrafficLightFlag = this.radioGroupFStatus.EditValue.ToString();
            }
            else
            {
                CurrentDetail.Processed = false;
                if (this.radQC_Light.EditValue.ToString() == "P") //Pass：綠色
                {
                    CurrentDetail.TrafficLightFlag = "A";
                }
                else  //Not Pass:黃色
                {
                    CurrentDetail.TrafficLightFlag = "B";
                }
            }




            //if (this.radioGroupFStatus.EditValue == null)
            //{
            //    CurrentDetail.TrafficLightFlag = null;
            //}
            //else
            //{
            //    CurrentDetail.TrafficLightFlag = this.radioGroupFStatus.EditValue.ToString();
            //}
        }


        /// <summary>
        /// Xsj20140702:復位TrafficLight控件
        /// </summary>
        private void ResetTrafficLightCtrl()
        {
            this.lblTrafficShow.BackColor = Color.Transparent;
            this.radioGroupFStatus.Visible = false;
            this.radioGroupFStatus.EditValue = null;
            this.checkEditProcessed.EditValue = null;

        }

        #endregion




        void ControlShowInterface()
        {
            this.edtDefetct_Code.Enabled = this.radQC_Light.SelectedIndex != 0;
            this.edtProblem.Enabled = this.edtDefetct_Code.Enabled;
            this.edtCause.Enabled = this.edtDefetct_Code.Enabled;
            this.edtAction_Taken.Enabled = this.edtDefetct_Code.Enabled;
            this.edtSolution.Enabled = this.edtDefetct_Code.Enabled;
            this.edtOnOffLine.Enabled = this.edtDefetct_Code.Enabled;

            if (this.radQC_Light.SelectedIndex == 0)
            {
                this.edtDefetct_Code.EditValue = null;
                this.edtProblem.EditValue = null;
                this.edtCause.EditValue = null;
                this.edtAction_Taken.EditValue = null;
                this.edtSolution.EditValue = null;
                this.edtOnOffLine.EditValue = null; 
            }
        }

        #endregion

        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (this.QCLightCount > 0)
            {
                string Str = "The QC is not completed.\n Are you sure exit?\n Choice \"OK\" to Exit\n Choice \"Cancel\" continue QC";
                if (MessageBox.Show(Str, "Choice", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
                {
                    e.Cancel = true;
                }
            }
        }

        private void btnAlertEmail_Click(object sender, EventArgs e)
        {
            this.SendAlertEmail(SendMailFlag.Manual);


        }

        private void SendAlertEmail(SendMailFlag ASendMailFlag)
        {
            EmailHelper email = new EmailHelper();
            email.SendAlertMail(ASendMailFlag, this._QC_AlertMessage.EmailTitle, this._QC_AlertMessage.EmailRemindCount,
                this._QC_AlertMessage.Line, this._QC_AlertMessage.Project, this._QC_AlertMessage.Style,
                this._QC_AlertMessage.Color, this._QC_AlertMessage.OPNName, this._QC_AlertMessage.EmailDefectInfo);

        }

        #region 控制手动发送Alert邮件按钮的显示
        private void ControlManualSendMailButton()
        {
            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();


            QC_AlertEmail obj = (from a in context.QC_AlertEmails
                                 select a).FirstOrDefault();
            int RemindCount = obj.AlertSwitch ?? 0;

            this.btnAlertEmail.Enabled = this._QC_AlertMessage != null &&
                                         this._QC_AlertMessage.EmailRemindCount < RemindCount;

            this.btnAlertEmail.ForeColor = this.btnAlertEmail.Enabled ? Color.Blue : Color.Silver;

        }
        #endregion


        //private string _style;
        private string _worker;
        private DateTime _qc_time;

        private void simpleButton1_Click(object sender, EventArgs e)
        {

            //this._style=this.edtStyle .Text;
            _worker = this.edtWorker.Text;
            _qc_time = this.edtQC_Time.DateTime;

            QCRate_View qv = new QCRate_View(_worker, _qc_time);

            qv.ShowDialog();

        }


    }

    #region 用於比較的類
    public class workComparer : IEqualityComparer<workers>
    {
        #region IEqualityComparer<workers> 成员

        bool IEqualityComparer<workers>.Equals(workers x, workers y)
        {
            return x.Id == y.Id;
        }

        int IEqualityComparer<workers>.GetHashCode(workers obj)
        {
            return obj.ToString().ToLower().GetHashCode();
        }

        #endregion
    }

    public class machineCompare : IEqualityComparer<machines>
    {
        #region IEqualityComparer<machines> 成员

        bool IEqualityComparer<machines>.Equals(machines x, machines y)
        {
            return x.Id == y.Id;
        }

        int IEqualityComparer<machines>.GetHashCode(machines obj)
        {
            return obj.ToString().ToLower().GetHashCode();
        }

        #endregion
    }
    #endregion


}