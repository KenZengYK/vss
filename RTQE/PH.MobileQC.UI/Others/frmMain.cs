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
using PH.DefectCode.BO;
using DevExpress.XtraGrid.Views.Grid;
using PH.MobileQC.UI.Helper;
using System.Reflection;
using DevExpress.Data.Filtering;
using DevExpress.XtraEditors.Repository;


namespace PH.MobileQC.UI
{
    public partial class frmMain : DevExpress.XtraEditors.XtraForm
    {
        #region properties

        private MobileQCDataContext _context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();

        private QC_Master _qc_Master;

        private QC_AlertMessage _QC_AlertMessage;


        private string _CustomerStyle = string.Empty;
        private IList<mobileqc> ls;
        private IList<workers> lsworks;
        private IList<machines> lsmachine;
        private IList<operation> lsoper;
        private IList<lines> _allline;
        private bool _isOnline;
        private int _Seq;
        private string SaveTempDefectInfo = ""; //QC时临时保存Defect信息
        private string SaveTempOPNName = "";    //QC时临时保存工序名称

        BindingSource bs = new BindingSource();


        /// 提示用戶可QC的數量
        /// <summary>
        /// 提示用戶可QC的數量(QC明細數量不能大於這個數)
        /// </summary>
        public int QCLightCount
        {
            get
            {
                if (this._qc_Master == null)
                {
                    return 0;
                }

                int temp = 0;
                foreach (QC_Detail obj in this._qc_Master.QC_Details)
                {
                    temp += obj.LightCount ?? 0;
                }

                return (this._qc_Master.QCCount ?? 0) - temp;
            }
        }


        #endregion

        /// <summary>
        /// Xsj（補充說明）：檢驗輸入窗體
        /// </summary>
        /// <param name="online">是否是OnLine數據</param>
        public frmMain(bool online)
        {
            //离线作业检测:若选择离线作业,则将connection改为本地,并判斷是否已?进行初始化作业(已建立离线工作必需的表结构及下载所必需的基本资料)
            this._isOnline = online;
            if (!online)   //Xsj:時候獲取離線數據
            {
                //System.Nullable<byte> IsSucc = null;
                _context.Connection.ConnectionString = _context.OfflineConnectionString;
            }
            InitializeComponent();

            PrepareFirstData();
        }



        // Xsj(補充說明):窗體加載事件
        private void frmMain_Load(object sender, EventArgs e)
        {
            //this.AutoHideTaskbar(true);

             if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                labelControl36.Visible = true; lblLineSpend.Visible = true;
                labelControl35.Visible = true; lblQnSpend.Visible = true;
                labelControl37.Visible = true; lblOperSpend.Visible = true;
                labelControl38.Visible = true; lblWorkSpend.Visible = true;
                lblChange.Visible = true; lblChangeSpend.Visible = true;
            }
            this.TabControlWizard.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;

            ////Xsj(補充說明):初始化QC時間為當前時間
            //this.edtQC_Time.EditValue = DateTime.Now.ToString("yyyy-MM-dd HH:mm:00");

            // Xsj（補充說明）:從INTERBASE數據庫中獲取Line信息 
            //PrepareFirstData(); 

            //// Xsj（補充說明）:顯示檢驗員名字。
            //this.lblFirstQCMan.Text = "Quality Auditor: " + PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID; //PH.AuthManage.Utils.AuthController.UserID;
            //this.lblSecondQCMan.Text = this.lblFirstQCMan.Text; 
        }




        ///// <summary>
        ///// Xsj（補充說明）:從INTERBASE數據庫中獲取Line信息
        ///// </summary>
        //private void PrepareFirstData()
        //{
        //string sqlstr = string.Empty;
        //if (_isOnline)
        //{
        //    //sqlstr = @"select pline  from openquery(INTERBASE, 'select distinct pline from Mobile_QC where TPlant = ''{0}'' ')";
        //    sqlstr = @"select pline,tplant as factory  from openquery(INTERBASE, 'select distinct pline,tplant from Mobile_QC ')";
        //    // sqlstr = string.Format(sqlstr, PH.Platform.Common.SysParamHelper.Instance.Location);
        //}
        //else
        //{
        //    sqlstr = "SELECT distinct pline FROM mobile_qc ORDER BY pline";
        //}
        //this.lsline = context.ExecuteQuery<lines>(sqlstr).ToList<lines>();
        //this.edtLine.Properties.DataSource = lsline;
        //this.edtLine.Properties.DisplayMember = "PLINE";
        //this.edtLine.Properties.ValueMember = "PLINE";

        //}

        #region 初始化界面

        /// <summary>
        /// Xsj20141224:初始化控件
        /// </summary>
        private void PrepareFirstData()
        {
            // Xsj（補充說明）：工序名
            // Xsj（補充說明）：根據語言環境，隱藏或顯示工序下來框中的響應列
            //this.edtW_procedure.Properties.ValueMember = "GXDH";
            //if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "en") //英
            //{
            //    this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
            //    this.edtW_procedure.Properties.Columns["TGXM"].Visible = true;
            //    this.edtW_procedure.Properties.DisplayMember = "EGXM";
            //}

            //if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "tw" ||
            //    PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "cn") //中
            //{
            //    this.edtW_procedure.Properties.Columns["GXM"].Visible = true;
            //    this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
            //    this.edtW_procedure.Properties.DisplayMember = "GXM";
            //}

            //if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "th") //泰
            //{
            //    this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
            //    this.edtW_procedure.Properties.Columns["TGXM"].Visible = true;
            //    this.edtW_procedure.Properties.DisplayMember = "TGXM";
            //} 


            PH.MobileQC.UI.Helper.WProcedureHelper wprocHelper = new PH.MobileQC.UI.Helper.WProcedureHelper();
            wprocHelper.InitW_ProcedureCtrl(this.edtW_procedure);
            wprocHelper.InitW_ProcedureCtrl(this.lookUpEdit_QCDetailDetailOpt);
            wprocHelper.InitW_ProcedureCtrl(this.repositoryItemLookUpEdit_WProcedure);

            // Xsj（補充說明）：綁定檢測的工作時段 NOT Code。
            BandOTNComBox();

            // Xsj（補充說明）：處理QN#下拉框相應行的背景色。
            this.edtQNNo.Properties.View.RowStyle += new RowStyleEventHandler(View_RowStyle);

            // Xsj20141224:從INTERBASE數據庫中獲取Line信息
            //this.PrepareFirstData();

            //Xsj(補充說明):初始化QC時間為當前時間
            this.edtQC_Time.EditValue = DateTime.Now.ToString("yyyy-MM-dd HH:mm:00");

            // Xsj（補充說明）:顯示檢驗員名字。
            this.lblFirstQCMan.Text = "審定員: " + PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID; //PH.AuthManage.Utils.AuthController.UserID;
            this.lblSecondQCMan.Text = this.lblFirstQCMan.Text;

            //Xsj20141224:line下拉框
            LineHelper lineHelper = new LineHelper();
            lineHelper.Context = this._context;

            //PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.DE
            this.edtLine.Properties.AutoSearchColumnIndex = 0;
            DateTime start = DateTime.Now;
            this._allline = lineHelper.GetLineInfo(this._isOnline);
            this.edtLine.Properties.DataSource = _allline;
            this.edtLine.Properties.DisplayMember = "PLINE";
            this.edtLine.Properties.ValueMember = "PLINE";
            lblLineSpend.Text = this.GetDiffTime(start).ToString();


        }


        /// <summary>
        /// 準備資料，通過代碼綁定控件數據源。
        /// </summary>
        /// 

        
        // add by joseph
        IList<QC_Defect> problem = new List<QC_Defect>();
        IList<QC_Defect> action_Taken = new List<QC_Defect>();
        IList<QC_Defect> solution = new List<QC_Defect>();
        IList<QC_Defect> cause = new List<QC_Defect>();
        IList<PHQCDefect_Disp> defect_Code = new List<PHQCDefect_Disp>();

        PH.DefectCode.BO.FabricInspectionDataContext context2;

        private void PrepareSecondData()
        {
            problem = (from a in _context.QC_Defects where a.Defect_Type == 2 select a).ToList();
           action_Taken = (from a in _context.QC_Defects where a.Defect_Type == 3 select a).ToList();
           solution = (from a in _context.QC_Defects where a.Defect_Type == 4 select a).ToList();

           edtOnOffLine.EditValue = "On";

           cause = (from a in _context.QC_Defects where a.Defect_Type == 6 select a).ToList();            

           context2 = ContextBuilder.CreateContext<FabricInspectionDataContext>();
           var defects = from c in context2.PHQCDefects select new {c.PHDefectCode,c.DefectChineseName};
        
           foreach (var r in defects)
           { 
               PHQCDefect_Disp obj=new PHQCDefect_Disp();
               obj.PHDefectCode = r.PHDefectCode;
               obj.DefectChineseName =r.DefectChineseName;
               defect_Code.Add(obj);
           }
              


            this.edtDefetct_Code.Properties.Columns.Clear();


            //gluDefetct_Code.Properties.DataSource = defect_Code;
            //gluDefetct_Code.Properties.ValueMember = "PHDefectCode";
            //gluDefetct_Code.Properties.DisplayMember = "DefectChineseName";

            //Xsj:表格顯示Defect
            this.repositoryItemLookUpEdit_DefectCode.Columns.Clear();
            this.repositoryItemLookUpEdit_DefectCode.DataSource = defect_Code;
            this.repositoryItemLookUpEdit_DefectCode.ValueMember = "PHDefectCode";


            switch (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID)
            {
                case "EN":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 10),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    this.edtDefetct_Code.Properties.DisplayMember = "DefectChineseName";

                    //Xsj:表格顯示Defect
                    this.repositoryItemLookUpEdit_DefectCode.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 10),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    // this.repositoryItemLookUpEdit_DefectCode.DisplayMember = "DefectEnglishName";
                    break;
                case "TW":

                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 10),
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

                    this.edtDefetct_Code.Properties.DisplayMember = "DefectChineseName";

                    //Xsj:表格顯示Defect
                    this.repositoryItemLookUpEdit_DefectCode.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 10),
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });
                    this.repositoryItemLookUpEdit_DefectCode.DisplayMember = "DefectChineseName";
                    break;
                case "CN":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 10),
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });
                    this.edtDefetct_Code.Properties.DisplayMember = "DefectChineseName";

                    //Xsj:表格顯示Defect
                    this.repositoryItemLookUpEdit_DefectCode.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 10),
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });
                    this.repositoryItemLookUpEdit_DefectCode.DisplayMember = "DefectChineseName";
                    break;
                case "TH":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 10), 
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    this.edtDefetct_Code.Properties.DisplayMember = "DefectChineseName";

                    //Xsj:表格顯示Defect
                    this.repositoryItemLookUpEdit_DefectCode.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 10), 
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    this.repositoryItemLookUpEdit_DefectCode.DisplayMember = "DefectChineseName";
                    break;

                default:
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 10),
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    this.edtDefetct_Code.Properties.DisplayMember = "DefectChineseName";

                    //Xsj:表格顯示Defect
                    this.repositoryItemLookUpEdit_DefectCode.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code",10),
                      new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    this.repositoryItemLookUpEdit_DefectCode.DisplayMember = "DefectChineseName";
                    break;
            }
            this.edtDefetct_Code.Properties.AutoSearchColumnIndex = 0;
            this.edtDefetct_Code.Properties.DataSource = defect_Code;
            this.edtDefetct_Code.Properties.ValueMember = "PHDefectCode";
            //this.edtDefetct_Code.Properties.DisplayMember = "DefectChineseName";
            this.edtDefetct_Code.Properties.DisplayMember = "PHDefectCode";


           // var problem = from a in _context.QC_Defects where a.Defect_Type == 2 select a;
            this.edtProblem.Properties.DataSource = problem;
            this.edtProblem.Properties.DisplayMember = "Defect_Spec";
            this.edtProblem.Properties.ValueMember = "Defect_Code";

            //Xsj:表格顯示Problem
            this.repositoryItemLookUpEdit_Problem.DataSource = problem;
            this.repositoryItemLookUpEdit_Problem.DisplayMember = "Defect_Spec";
            this.repositoryItemLookUpEdit_Problem.ValueMember = "Defect_Code";


           // var action_Taken = from a in _context.QC_Defects where a.Defect_Type == 3 select a;
            this.edtAction_Taken.Properties.DataSource = action_Taken;
            this.edtAction_Taken.Properties.DisplayMember = "Defect_Spec";
            this.edtAction_Taken.Properties.ValueMember = "Defect_Code";
            


           // var solution = from a in _context.QC_Defects where a.Defect_Type == 4 select a;
            this.edtSolution.Properties.DataSource = solution;
            this.edtSolution.Properties.DisplayMember = "Defect_Spec";
            this.edtSolution.Properties.ValueMember = "Defect_Code";


            //add cause by joseph 08-09-10
          //  var cause = from a in _context.QC_Defects where a.Defect_Type == 6 select a;
            this.edtCause.Properties.DataSource = cause;
            this.edtCause.Properties.DisplayMember = "Defect_Spec";
            this.edtCause.Properties.ValueMember = "Defect_Code";

            //Xsj:表格顯示Problem
            this.repositoryItemLookUpEdit_edtCause.DataSource = cause;
            this.repositoryItemLookUpEdit_edtCause.DisplayMember = "Defect_Spec";
            this.repositoryItemLookUpEdit_edtCause.ValueMember = "Defect_Code";


            this.edtLightCount.Text = QCLightCount.ToString();


            //Xsj: 綁定DefectGridView
            this.gridControl_QC_Detail_Detail.DataSource = this._qc_Detail_DetailList;

            edtAction_Taken.EditValue = action_Taken[0].Defect_Code;
            edtSolution.EditValue = solution[0].Defect_Code;
        }




        #endregion


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
                this.edtLine.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(this.edtProject.Text))
            {
                MessageBox.Show("Please choice project!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtProject.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(this.edtWO.Text))
            {
                MessageBox.Show("Please choice WO!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtWO.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(this.edtRWO.Text))
            {
                MessageBox.Show("Please choice RWO!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtRWO.Focus();
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
                this.edtW_procedure.Focus();
                return false;
            }

            //shelley zhang建議取消審查員工 15/11/20
            if (this.edtWorker.EditValue == null || string.IsNullOrEmpty(this.edtWorker.EditValue.ToString()))
          //  if (string.IsNullOrEmpty(this.edtWorker.Text.Trim()))
            {
                MessageBox.Show("請錄入員工ID!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtWorker.Focus();
                return false;
            }
            else if (edtWorker.EditValue.ToString().Trim().Length != 7)
            {
                MessageBox.Show("員工ID長度必須為7位!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtWorker.Focus();
                return false;              
            }
            if (string.IsNullOrEmpty(this.edtQC_Time.Text))
            {
                MessageBox.Show("Please input QC time!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtQC_Time.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(this.edtQCCount.Text))
            {
                MessageBox.Show("Please input QC Qty!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtQCCount.Focus();
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




        /// <summary>
        /// 驗證頁面2輸入的資料是否合法
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

            if (this.radQC_Light.SelectedIndex > 0)   //Not Pass
            {
                //Xsj20141224:取消以下驗證，相關驗證動作放置到第三層處理。
                //if (this.edtDefetct_Code.Text == "")
                //{
                //    MessageBox.Show("Please choice defect!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                //    this.edtDefetct_Code.Focus();
                //    return false;
                //}

                //if (this.edtProblem.Text == "")
                //{
                //    MessageBox.Show("Please choice defect position!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                //    this.edtProblem.Focus();
                //    return false;
                //}

                //if (this.edtCause.Text == "")
                //{
                //    MessageBox.Show("Please choice defect cause!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                //    this.edtCause.Focus();
                //    return false;
                //}

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


            //Xsj20141224:所有的件數必須有defect記錄
            int maxIndex = Convert.ToInt32(this.edtLightCount.Text);
            if (this.radQC_Light.SelectedIndex > 0)   //Not Pass
            {
                if (this.gridView_QC_Detail_Detail.RowCount == 0)
                {
                    MessageBox.Show("缺少Defect記錄。請填寫！", "缺少數據提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

                for (int i = 1; i <= maxIndex; i++)
                {
                    MobileQC.BO.QC_Detail_Detail qcDDetail = this._qc_Detail_DetailList.Where(p => p.ProductSeq == i).FirstOrDefault();
                    if (qcDDetail == null)
                    {
                        MessageBox.Show("第[" + i.ToString() + "]產品，缺少Defect記錄。請填寫！", "缺少數據提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                int? maxSeq = this._qc_Detail_DetailList.Max(p => p.ProductSeq);
                if ((maxSeq ?? 0) > maxIndex)
                {
                    MessageBox.Show("Defect記錄的產品序號[" + maxSeq.ToString() + "]大於記錄產品數[" + maxIndex.ToString() + "]。請修正！", "數據錯誤提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

            }


            return true;
        }


        //Xsj:檢驗頁面3的輸入合法性
        private bool CheckThirdInputData()
        {
            bool result = true;
            if (this.checkedComboBoxEdit_ProductSeq.EditValue == null)
            {
                MessageBox.Show("[Product Seq]不能為空。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.checkedComboBoxEdit_ProductSeq.Focus();
                result = false;
            }
            else if (this.lookUpEdit_QCDetailDetailOpt.EditValue == null)
            {
                MessageBox.Show("[Operation Desc.]不能為空。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.lookUpEdit_QCDetailDetailOpt.Focus();
                result = false;
            }
            else if (this.edtDefetct_Code.EditValue == null)
            {
                MessageBox.Show("[Defect Desc.]不能為空。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edtDefetct_Code.Focus();
                result = false;
            }
            else if (this.edtProblem.EditValue == null)
            {
                MessageBox.Show("[Defect Position Desc.]不能為空。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edtProblem.Focus();
                result = false;
            }
            else if (this.edtCause.EditValue == null)
            {
                MessageBox.Show("[Defect Cause Desc.]不能為空。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edtCause.Focus();
                result = false;
            }
            else if (this.spinEdit_DefectQty.EditValue == null || Convert.ToInt32(this.spinEdit_DefectQty.EditValue) < 0)
            {
                MessageBox.Show("[Defect Cause Desc.]不能為空或小於0。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.spinEdit_DefectQty.Focus();
                result = false;
            }
            return result;
        }


        #endregion




        /// 保存QC明細資料
        /// <summary>
        /// 保存QC明細資料
        /// </summary>
        /// <param name="ASaveToSession">是否保存到Session</param>
        private bool SaveQCDeatilData()
        {
            bool result = true;
            QC_Detail detail = new QC_Detail();
            detail.QC_Light = Convert.ToString(this.radQC_Light.Properties.Items[this.radQC_Light.SelectedIndex].Value);
            detail.LightCount = Convert.ToInt32(this.edtLightCount.Text);
            detail.Defect_Code = this.edtDefetct_Code.EditValue == null ? "" : this.edtDefetct_Code.EditValue.ToString();
            detail.Problem = this.edtProblem.EditValue == null ? "" : this.edtProblem.EditValue.ToString();
            detail.Action_Taken = this.edtAction_Taken.EditValue == null ? "" : this.edtAction_Taken.EditValue.ToString();
            detail.SolutionCode = this.edtSolution.EditValue == null ? "" : this.edtSolution.EditValue.ToString();
            detail.OnOffLine = this.edtOnOffLine.EditValue == null ? "" : this.edtOnOffLine.EditValue.ToString();
            detail.MasterID = this._qc_Master.MasterID;
            detail.Cause = edtCause.Text;
            detail.ID = Guid.NewGuid();

            //Xsj20140702:保存信號燈信息
            SaveTrafficLightFlag(detail);


            //////////////////////////////////////////////////////////////

            //临时保存Alert Email的Send Time/Defect Qty信息和工序名称
            if (this.radQC_Light.SelectedIndex > 0)
            {

                PHQCDefect_Disp disp = defect_Code.First(p => p.PHDefectCode == edtDefetct_Code.Text.Trim());
                string _defectname = "";
                if (disp != null)
                    _defectname = disp.DefectChineseName;
                else
                    _defectname = "Unknow";

                this.SaveTempDefectInfo += this.edtDefetct_Code.Text + "(" +_defectname + ")"
                                         + " " +
                                       this.edtLightCount.Text +
                                       (this.edtLightCount.Text == "1" ? "pc  " : "pc(s)  ");

                this.SaveTempOPNName = this.edtW_procedure.Text;
            }

            try
            {
                this._qc_Master.QC_Details.Add(detail);
               // _context.SubmitChanges();

                //Xsj:保存第三層QC_Detail_Detail數據
                SaveQCDetailDetail(detail);
            }
            catch (Exception ex)
            {
                result = false;
                this._qc_Master.QC_Details.Remove(detail);
                throw new Exception(ex.Message, ex);
            }

            return result;
        }

        private void SaveAlertMessage()
        {
            this._QC_AlertMessage = new QC_AlertMessage();
            this._QC_AlertMessage.ID = Guid.NewGuid();
            this._QC_AlertMessage.Line = this._qc_Master.Line;
            this._QC_AlertMessage.Project = this._qc_Master.Project;
            this._QC_AlertMessage.Style = this._qc_Master.Style;
            this._QC_AlertMessage.Color = this._qc_Master.Color;
            this._QC_AlertMessage.OPNCode = this._qc_Master.W_procedure;
            this._QC_AlertMessage.OPNName = this.SaveTempOPNName;
            this._QC_AlertMessage.SendTime = DateTime.Now;
            this._QC_AlertMessage.Defect = this.SaveTempDefectInfo;
            _context.QC_AlertMessages.InsertOnSubmit(this._QC_AlertMessage);
        }

        /// <summary>
        /// Xsj(補充說明):從平臺的數據字典中獲取數據，綁定 NOT code數據源。（工作時間段）
        /// </summary>
        private void BandOTNComBox()
        {
            this.edtOTN.Properties.DataSource = PublicServices.GetOTNData();   // PublicServices.GetSys_BaseData("PH.MobileQC.OTN");
            this.edtOTN.EditValue = PublicServices.ReturnOTNValue();
        }


        //Xsj(補):綁定員工和機器
        private void BandComBoxWorkforceAndMachine()
        {
            if (_isOnline)
            {
                if (this.edtW_procedure.EditValue == null)
                {
                    return;
                }

                DateTime t2 = DateTime.Now;
                PH.LWPM.BO.RAPLQDataContext contextLWPM = PH.Platform.BO.ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();

                //contextLWPM.CommandTimeout = 8000;

                //                string SqlStr = @"SELECT  WorkerId,WorkerName,addworkerId1,addworker1,addworkerId2, addworker2,addworkerId3,addworker3,MachineId,addMachineId1, addMachineId2,addMachineId3
                //                                    FROM Lb5Matching WHERE LineCode = '{0}' AND J2_job = '{1}' AND Qn= '{2}' AND Rwo = '{3}' AND Date = '{4}' AND j_NO = '{5}' AND OTN = '{6}' AND OperationCode = '{7}'";
                //                SqlStr = string.Format(SqlStr, this.edtLine.Text, this.edtWO.Text, this.edtQNNo.Text, this.edtRWO.Text, DateTime.Now.ToString("yyyy-MM-dd"), this.edtProject.Text, this.edtOTN.Text, this.edtW_procedure.Text);
                //                DataTable dt = contextLWPM.ExecuteDataTable(SqlStr, "LB5Matching");



                this._context.CommandTimeout = 8000;
                string SqlStr = "EXEC GetWorkerAndMachince '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}'";
                lines _li = this._allline.First(p => p.PLINE == this.edtLine.Text);


                //SqlStr = string.Format(SqlStr, PH.Platform.Common.SysParamHelper.Instance.Location,
                //    this.edtLine.Text, this.edtWO.Text, this.edtQNNo.Text, this.edtRWO.Text,
                //    //DateTime.Now.ToString("yyyy-MM-dd"), 
                //             edtQC_Time.DateTime.ToString("yyyy-MM-dd"),
                //             this.edtProject.Text, this.edtOTN.Text, this.edtW_procedure.EditValue.ToString());

                //Xsj(補）：依Line，WO，QN，RWO，QCTime，Project，OTN，工序獲取數據
                SqlStr = string.Format(SqlStr, _li.FACTORY,
                             this.edtLine.Text, this.edtWO.Text, this.edtQNNo.Text, this.edtRWO.Text,
                             edtQC_Time.DateTime.ToString("yyyy-MM-dd"),
                             this.edtProject.Text, this.edtOTN.Text, this.edtW_procedure.EditValue.ToString());

                DataTable dt = this._context.ExecuteDataTable(SqlStr, "LB5Matching");

                this.lblWorkSpend.Text = GetDiffTime(t2).ToString();

                if (dt.Rows.Count <= 0)
                {
                    this.edtWorker.Properties.DataSource = null;

                    //Xsj:添加第三層數據
                    this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource = null;

                    return;
                }

                // 從LB4中得到員工和機器
                this.edtWorker.Properties.DisplayMember = "NameCn"; // "Id";
                this.edtWorker.Properties.ValueMember = "Id";

                //Xsj:添加第三層數據
                this.lookUpEdit_QCDetailDetailWorker.Properties.DisplayMember = "NameCn"; // "Id";
                this.lookUpEdit_QCDetailDetailWorker.Properties.ValueMember = "Id";

                this.edtMachinePlace.Properties.DisplayMember = "Id";
                this.edtMachinePlace.Properties.ValueMember = "Id";

                List<workers> workList = new List<workers>();
                List<machines> machineList = new List<machines>();
                //foreach (var obj in workforceList)
                foreach (DataRow obj in dt.Rows)
                {
                    workList.Add(new workers() { Id = obj["WorkerId"].ToString(), NameCn = obj["WorkerId"].ToString().Trim()+"_"+obj["WorkerName"].ToString().Trim() });
                    if (obj["addworkerId1"].ToString() != "")
                    {
                        workList.Add(new workers() { Id = obj["addworkerId1"].ToString(), NameCn = obj["addworkerId1"].ToString().Trim()+"_"+obj["addworker1"].ToString().Trim() });
                    }
                    if (obj["addworkerId2"].ToString() != "")
                    {
                        workList.Add(new workers() { Id = obj["addworkerId2"].ToString(), NameCn = obj["addworkerId2"].ToString().Trim()+"_"+obj["addworker2"].ToString().Trim() });
                    }
                    if (obj["addworkerId3"].ToString() != "")
                    {
                        workList.Add(new workers() { Id = obj["addworkerId3"].ToString(), NameCn = obj["addworkerId3"].ToString().Trim()+"_"+obj["addworker3"].ToString().Trim() });
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

                //Xsj:添加第三層數據
                this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource = workList;

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
                this.lsworks = _context.ExecuteQuery<workers>(sqlstr).ToList<workers>();
                this.edtWorker.Properties.DataSource = lsworks;

                //Xsj:添加第三層數據
                this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource = lsworks;

                string sqlstr2 = string.Format(@"SELECT Id ,Name FROM Machine where line='{0}'", this.edtLine.Text);
                this.lsmachine = _context.ExecuteQuery<machines>(sqlstr2).ToList<machines>();
                this.edtMachinePlace.Properties.DataSource = lsmachine;
            }
        }





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

                        _context.SubmitChanges();

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

                    _context.SubmitChanges();

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
                 //   this.ControlManualSendMailButton();
                }
            }
        }

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
            if (_isOnline)
                SqlStr = string.Format("Exec sp_getmobileqcinfo '{0}'", this.edtLine.Text);
            else
                SqlStr = string.Format("SELECT FCCS,J_NO,J2_JOB,CWO,RWO,ACOL,CSTYLE FROM Mobile_QC where  pline= '{0}'", this.edtLine.Text);


            DateTime t1 = DateTime.Now;
            ls = _context.ExecuteQuery<mobileqc>(SqlStr).ToList<mobileqc>();
            _Seq = ls[0].Seq;

            bs.DataSource = ls;

            //Xsj(補充說明):綁定QN
            this.edtQNNo.Properties.DataSource = bs;
            this.edtQNNo.Properties.DisplayMember = "FCCS";
            this.edtQNNo.Properties.ValueMember = "Seq";
            this.lblQnSpend.Text = this.GetDiffTime(t1).ToString();

            //edtQNNo.DataBindings.Clear();

            //edtQNNo.DataBindings.Add("Text", bs, "FCCS");

            //Xsj (補充說明):綁定WOc、ProjectNO、WO、RWO、Color、Style

            //edtWOc.DataBindings.Clear();
            //this.edtProject.DataBindings.Clear();
            //this.edtWO.DataBindings.Clear();
            //this.edtWOc.DataBindings.Clear();
            //this.edtRWO.DataBindings.Clear();
            //this.edtColor.DataBindings.Clear();
            //this.edtStyle.DataBindings.Clear();

            //this.edtWOc.DataBindings.Add("EditValue", bs, "CWO");
            //this.edtProject.DataBindings.Add("EditValue", bs, "J_NO");
            //this.edtWO.DataBindings.Add("EditValue", bs, "J2_JOB");
            //this.edtRWO.DataBindings.Add("EditValue", bs, "RWO");
            //this.edtColor.DataBindings.Add("EditValue", bs, "ACOL");
            //this.edtStyle.DataBindings.Add("EditValue", bs, "CSTYLE");

            //this.edtProject.DataBindings.Add(new Binding("EditValue", bs, "J_NO", true));
            //this.edtWO.DataBindings.Add(new Binding("EditValue", bs, "J2_JOB", true));
            //this.edtWOc.DataBindings.Add(new Binding("EditValue", bs, "CWO", true));
            //this.edtRWO.DataBindings.Add(new Binding("EditValue", bs, "RWO", true));
            //this.edtColor.DataBindings.Add(new Binding("EditValue", bs, "ACOL", true));
            //this.edtStyle.DataBindings.Add(new Binding("EditValue", bs, "CSTYLE", true));


            //edtQNNo_EditValueChanged(this, e);
            QNNOChanged();
        }


        /// <summary>
        /// Xsj (補充說明):QN#更改事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void edtQNNo_EditValueChanged(object sender, EventArgs e)
        {
            QNNOChanged();
        }
        private void QNNOChanged()
        {

            if (string.IsNullOrEmpty(this.edtQNNo.Text))
                return;

            this.edtWorker.EditValue = null;
            this.edtW_procedure.EditValue = null;

            mobileqc m = bs.Current as mobileqc;
            SetQNInfor(m);            

            DataTable dt = PH.MobileQC.BO.SqlDataHelper.EXECGetSize(this.edtLine.Text, m.Seq);
            this.edtSize.Properties.Items.Clear();
            foreach (DataRow item in dt.Rows)
            {
                this.edtSize.Properties.Items.Add(item["PSIZ"]);
            }


        }
        private void SetQNInfor(mobileqc m)
        {
            this.edtProject.EditValue = m.J_NO;
            this.edtWO.EditValue = m.J2_JOB;
            this.edtWOc.EditValue = m.CWO;
            this.edtRWO.EditValue = m.RWO;
            this.edtColor.EditValue = m.ACOL;
            this.edtStyle.EditValue = m.CSTYLE;

        }
        private void edtStyle_EditValueChanged(object sender, EventArgs e)
        {
            //Xsj:注釋掉上面的代碼，添加以下代碼
            edtW_procedure.Properties.DataSource = null;
            DateTime _t1 = DateTime.Now;
            WProcedureHelper wproHelper = new WProcedureHelper();
            wproHelper.Context = this._context;
            this.lsoper = wproHelper.BindingDataSoureW_ProcedureCtrl(this._isOnline, this.edtStyle.Text);
            this.edtW_procedure.Properties.DataSource = lsoper;
            this.lookUpEdit_QCDetailDetailOpt.Properties.DataSource = lsoper;
            this.repositoryItemLookUpEdit_WProcedure.DataSource = lsoper;
            this.lblOperSpend.Text = GetDiffTime(_t1).ToString();
        }

        private void edtW_procedure_EditValueChanged(object sender, EventArgs e)
        {
            this.BandComBoxWorkforceAndMachine();

            //Xsj:把第一層的值帶到第三層
            this.lookUpEdit_QCDetailDetailOpt.EditValue = this.edtW_procedure.EditValue;

        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (this.CheckFirstInputData())
            {
                try
                {
                    this._qc_Master = new QC_Master();
                    this._qc_Master.Line = this.edtLine.Text;

                    lines li = this._allline.First(p => p.PLINE == this.edtLine.Text);
                    this._qc_Master.Factory = li.FACTORY;

                    this._qc_Master.Project = this.edtProject.Text;
                    this._qc_Master.Style = this.edtStyle.Text;
                    this._qc_Master.W_procedure = this.edtW_procedure.EditValue.ToString();
                    this._qc_Master.Worker = this.edtWorker.EditValue.ToString();//this.edtWorker.Text;
                    this._qc_Master.QC_time = this.edtQC_Time.DateTime;
                    this._qc_Master.QCCount = Convert.ToInt32(this.edtQCCount.Text);
                    this._qc_Master.QNNo = this.edtQNNo.Text;
                    this._qc_Master.BoxNo = this.edtBoxNo.Text;
                    //this._Master.BindNo = this.edtBindNo.Text;
                    this._qc_Master.MachinePlace = this.edtMachinePlace.Text;
                    this._qc_Master.WO = this.edtWO.Text;
                    this._qc_Master.RWO = this.edtRWO.Text;
                    this._qc_Master.OTN = this.edtOTN.Text;
                    this._qc_Master.QCMan = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    //add by joseph 08-09-11
                    this._qc_Master.Color = edtColor.Text;
                    this._qc_Master.Size = edtSize.Text;
                    this._qc_Master.WOc = this.edtWOc.Text;
                    this._qc_Master.BoxNo = this.edtBoxNo.Text;
                    this._qc_Master.MasterID = Guid.NewGuid();
                    ///////////////////////////////////

                    QC_Detail detail = new QC_Detail();
                    detail.QC_Light = "P";
                    detail.LightCount = Convert.ToInt32(this.edtQCCount.Text);
                    detail.MasterID = this._qc_Master.MasterID;
                    detail.Cause = this.edtCause.Text;
                    detail.ID = Guid.NewGuid();

                    this._qc_Master.QC_Details.Add(detail);
                    _context.QC_Masters.InsertOnSubmit(this._qc_Master);
                    _context.SubmitChanges();

                    MessageBox.Show("Save successfully!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                    //this.edtQC_Time.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm");
                    this.edtQC_Time.EditValue = DateTime.Now.ToString("yyyy-MM-dd HH:mm:00");
                    this.edtWorker.EditValue = null;
                    this.edtW_procedure.EditValue = null;
                    this.ControlManualSendMailButton();
                }
                catch (Exception ex)
                {
                    foreach (object obj in _context.GetChangeSet().Inserts)
                    {
                        if (obj is QC_Master)
                        {
                            _context.QC_Masters.DeleteOnSubmit(obj as QC_Master);
                        }
                        else if (obj is QC_Detail)
                        {
                            _context.QC_Details.DeleteOnSubmit(obj as QC_Detail);
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
            if (this.CheckFirstInputData()) //Xsj20141224:驗證第一頁的必輸欄位。
            {
                try
                {
                    //Xsj20141224:生成QC_Master實體。
                    this._qc_Master = new QC_Master();
                    this._qc_Master.Line = this.edtLine.Text;

                    //add by joseph
                    lines li = this._allline.First(p => p.PLINE == this.edtLine.Text);
                    this._qc_Master.Factory = li.FACTORY;

                    this._qc_Master.Project = this.edtProject.Text;
                    this._qc_Master.Style = this.edtStyle.Text;
                    this._qc_Master.W_procedure = this.edtW_procedure.EditValue.ToString();
                    //this._qc_Master.Worker = this.edtWorker.Text; remark by joseph
                    this._qc_Master.Worker = this.edtWorker.EditValue.ToString();
                    this._qc_Master.QC_time = this.edtQC_Time.DateTime;
                    this._qc_Master.QCCount = Convert.ToInt32(this.edtQCCount.Text);
                    this._qc_Master.QCMan = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    this._qc_Master.WO = this.edtWO.Text;
                    this._qc_Master.RWO = this.edtRWO.Text;
                    this._qc_Master.Color = edtColor.Text;
                    this._qc_Master.Size = edtSize.Text;
                    this._qc_Master.QNNo = this.edtQNNo.Text;
                    this._qc_Master.WOc = this.edtWOc.Text;
                    this._qc_Master.OTN = this.edtOTN.Text;
                    this._qc_Master.MachinePlace = this.edtMachinePlace.Text;
                    this._qc_Master.BoxNo = this.edtBoxNo.Text;
                    this._qc_Master.MasterID = Guid.NewGuid();

                    _context.QC_Masters.InsertOnSubmit(this._qc_Master);
                    //context.SubmitChanges();

                    //Xsj20141224:顯示第二頁。
                    DateTime dt = DateTime.Now;
                    this.PrepareSecondData();
                    TabControlWizard.SelectedTabPageIndex = 1;
                    lblChangeSpend.Text = this.GetDiffTime(dt).ToString();
                }
                catch (Exception ex)
                {
                    if (_context.GetChangeSet().Inserts.Count > 0)
                    {
                        _context.QC_Masters.DeleteOnSubmit(this._qc_Master);
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

        /// <summary>
        /// Xsj:ProcessCheckBox狀態變化事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void checkEditProcessed_CheckedChanged(object sender, EventArgs e)
        {
            TrafficLightShow();
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
            }
            else if (!this.checkEditProcessed.Checked)
            {
                //Xsj20140707:應jackson和王生的要求，對第一次檢測為Not P的，顯示為黃色。
                this.lblTrafficShow.BackColor = Color.Yellow;
            }
            else
            {
                this.lblTrafficShow.BackColor = Color.Red;
            }
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
                if (this.radQC_Light.EditValue.ToString() == "P") //Pass：綠色
                {
                    CurrentDetail.TrafficLightFlag = "A";
                }
                else  //Not Pass:紅色
                {
                    CurrentDetail.TrafficLightFlag = "C";
                }
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
        }


        /// <summary>
        /// Xsj20140702:復位TrafficLight控件
        /// </summary>
        private void ResetTrafficLightCtrl()
        {
            this.lblTrafficShow.BackColor = Color.Transparent;
            this.checkEditProcessed.EditValue = null;

            this._qc_Detail_DetailList.Clear();
            this.gridView_QC_Detail_Detail.RefreshData();
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
            //Xsj20141224:add
            this.sBtn_AddDefect.Enabled = this.edtDefetct_Code.Enabled;
            this.sBtn_EditDefect.Enabled = this.edtDefetct_Code.Enabled;
            this.sBtn_DelDefect.Enabled = this.edtDefetct_Code.Enabled;

            if (this.radQC_Light.SelectedIndex == 0)
            {
                this.edtDefetct_Code.EditValue = null;
                this.edtProblem.EditValue = null;
                this.edtCause.EditValue = null;
                this.edtAction_Taken.EditValue = null;
                this.edtSolution.EditValue = null;
                this.edtOnOffLine.EditValue = null;


                //Xsj20141224:add
                this._qc_Detail_DetailList.Clear();
                this.gridView_QC_Detail_Detail.RefreshData();
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



        //-------------Xsj20141223:應王生的要求，增加QC_Detail_Detail層，用於記錄Defect的具體信息。取消原來件數的限定。

        List<PH.MobileQC.BO.QC_Detail_Detail> _qc_Detail_DetailList = new List<QC_Detail_Detail>();
        //Xsj:標識是否正在進行新增Defect操作
        bool _isAddDefect = false;

        PH.MobileQC.BO.QC_Detail_Detail _currQCDetailDetail = new QC_Detail_Detail();


        //Xsj:Add Defect 
        private void sBtn_AddDefect_Click(object sender, EventArgs e)
        {
            //Xsj20141224:顯示第三頁。  
            if (this.edtLightCount.EditValue == null || Convert.ToInt32(this.edtLightCount.EditValue) <= 0)
            {
                MessageBox.Show("[Defect Qty (PCS)]必須大於0，同時小於或等於" + this._qc_Master.QCCount.Value.ToString(), "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            this.checkedComboBoxEdit_ProductSeq.EditValue = null;
            this.lookUpEdit_QCDetailDetailOpt.EditValue = this._qc_Master.W_procedure;

            //this.lookUpEdit_QCDetailDetailWorker.EditValue = this._qc_Master.Worker;
            InitlookUpEdit_QCDetailDetailWorker(this._qc_Master.Worker);

            this.edtDefetct_Code.EditValue = null;
            this.edtProblem.EditValue = null;
            this.edtCause.EditValue = null;

            this._isAddDefect = true;
            TabControlWizard.SelectedTabPageIndex = 2;


        }

        //Xsj:Edit Defect
        private void sBtn_EditDefect_Click(object sender, EventArgs e)
        {
            //Xsj20141224:顯示第二頁。 
            if (this.gridView_QC_Detail_Detail.FocusedRowHandle < 0)
            {
                return;
            }

            MobileQC.BO.QC_Detail_Detail qcDetailDetail = this.gridView_QC_Detail_Detail.GetFocusedRow() as MobileQC.BO.QC_Detail_Detail;
            if (qcDetailDetail == null)
            {
                return;
            }

            this._currQCDetailDetail = qcDetailDetail;

            //Xsj:Product_Seq
            for (int i = 1; i <= this.checkedComboBoxEdit_ProductSeq.Properties.Items.Count; i++)
            {
                if (qcDetailDetail.ProductSeq == i)
                {
                    //this.imgComBoxEdit_ProductSeq.SelectedItem = qcDetailDetail.ProductSeq;
                    this.checkedComboBoxEdit_ProductSeq.EditValue = i;
                }
            }



            this.lookUpEdit_QCDetailDetailOpt.EditValue = qcDetailDetail.W_procedure;

            //this.lookUpEdit_QCDetailDetailWorker.EditValue = qcDetailDetail.Worker;
            InitlookUpEdit_QCDetailDetailWorker(qcDetailDetail.Worker);

            this.edtDefetct_Code.EditValue = qcDetailDetail.DefectCode;
            this.edtProblem.EditValue = qcDetailDetail.Problem;
            this.edtCause.EditValue = qcDetailDetail.Cause;

            this._isAddDefect = false;
            TabControlWizard.SelectedTabPageIndex = 2;
        }


        private void InitlookUpEdit_QCDetailDetailWorker(string Worker)
        {
            if (this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource != null)
            {
                List<workers> workers = this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource as List<workers>;
                if (workers != null)
                {
                    workers ws = workers.Where(p => p.Id == Worker).FirstOrDefault();
                    if (ws != null)
                    {
                        this.lookUpEdit_QCDetailDetailWorker.EditValue = ws.Id;
                    }
                    else
                    {
                        (this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource as List<workers>).Add(new workers() { Id = Worker, NameCn = "" });
                    }
                }
            }
            else
            {
                List<workers> workers = new List<workers>();
                workers.Add(new workers() { Id = Worker, NameCn = "" });
                this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource = workers;
                this.lookUpEdit_QCDetailDetailWorker.EditValue = Worker;
                //this.lookUpEdit_QCDetailDetailWorker.Text = Worker;

            }
        }


        //Xsj:Delete Defect 
        private void sBtn_DelDefect_Click(object sender, EventArgs e)
        {
            //Xsj20141224:顯示第二頁。 
            if (this.gridView_QC_Detail_Detail.FocusedRowHandle < 0)
            {
                return;
            }

            MobileQC.BO.QC_Detail_Detail qcDetailDetail = this.gridView_QC_Detail_Detail.GetFocusedRow() as MobileQC.BO.QC_Detail_Detail;

            if (qcDetailDetail == null)
            {
                return;
            }

            if (MessageBox.Show("你確定要刪除當前Defect記錄嗎？", "刪除提示", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.No)
            {
                return;
            }


            this._isAddDefect = false;
            this._qc_Detail_DetailList.Remove(qcDetailDetail);
            this.gridView_QC_Detail_Detail.RefreshData();
        }

        //Xsj:Cancel Input Defect
        private void sBtn_CancelQCDetailDetail_Click(object sender, EventArgs e)
        {
            //Xsj20141224:顯示第二頁。 
            this._isAddDefect = false;
            TabControlWizard.SelectedTabPageIndex = 1;
        }



        //Xsj:Save Input Defect
        private void sBtn_OKQCDetailDetail_Click(object sender, EventArgs e)
        {
            //Xsj20141224:顯示第二頁。 
            if (!CheckThirdInputData()) return;

            string[] seqVals = this.checkedComboBoxEdit_ProductSeq.EditValue.ToString().Split(',');
            foreach (string item in seqVals)
            {
                int productSeq = Convert.ToInt32(item);
                string wProcedure = this.lookUpEdit_QCDetailDetailOpt.EditValue.ToString();
                string worker = this._qc_Master.Worker;
                if (this.lookUpEdit_QCDetailDetailWorker.EditValue != null)
                {
                    worker = this.lookUpEdit_QCDetailDetailWorker.EditValue.ToString();
                }
                string defectCode = this.edtDefetct_Code.EditValue.ToString();
                string problem = this.edtProblem.EditValue.ToString();
                string cause = this.edtCause.EditValue.ToString();
                int defectQty = Convert.ToInt32(this.spinEdit_DefectQty.EditValue);

                if (this._isAddDefect)
                {
                    //Xsj:檢測是否重複錄入了相同的記錄
                    MobileQC.BO.QC_Detail_Detail aliveQCDDetail = this._qc_Detail_DetailList.Where(p => p.ProductSeq == productSeq
                        && p.W_procedure == wProcedure && p.Worker == worker && p.DefectCode == defectCode && p.Problem == problem && p.Cause == cause).FirstOrDefault();
                    if (aliveQCDDetail != null)
                    {
                        MessageBox.Show("當前記錄已經存在，不能重複錄入相同的記錄。", "重複提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        // return;
                        continue;
                    }

                    MobileQC.BO.QC_Detail_Detail qcDetailDetail = new QC_Detail_Detail();
                    qcDetailDetail.ID = System.Guid.NewGuid();
                    qcDetailDetail.MasterID = this._qc_Master.MasterID;
                    qcDetailDetail.ProductSeq = productSeq;
                    qcDetailDetail.W_procedure = wProcedure;
                    qcDetailDetail.Worker = worker;
                    qcDetailDetail.DefectCode = defectCode;
                    qcDetailDetail.Problem = problem;
                    qcDetailDetail.Cause = cause;
                    qcDetailDetail.DefectQty = defectQty;
                    qcDetailDetail.CreateUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    qcDetailDetail.CreateDate = DateTime.Now;

                    qcDetailDetail.IsFindAtSameTime = !(qcDetailDetail.W_procedure == this._qc_Master.W_procedure);
                    this._qc_Detail_DetailList.Add(qcDetailDetail);
                }
                else
                {
                    //Xsj:檢測是否重複錄入了相同的記錄
                    MobileQC.BO.QC_Detail_Detail aliveQCDDetail = this._qc_Detail_DetailList.Where(p => p.ProductSeq == productSeq
                        && p.W_procedure == wProcedure && p.Worker == worker && p.DefectCode == defectCode && p.Problem == problem
                        && p.Cause == cause && p.ID != this._currQCDetailDetail.ID).FirstOrDefault();
                    if (aliveQCDDetail != null)
                    {
                        MessageBox.Show("當前記錄已經存在，不能重複錄入相同的記錄。", "重複提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        // return;
                        continue;
                    }

                    MobileQC.BO.QC_Detail_Detail qcDetailDetail = this._currQCDetailDetail;
                    qcDetailDetail.ProductSeq = productSeq;
                    qcDetailDetail.Worker = worker;
                    qcDetailDetail.W_procedure = wProcedure;
                    qcDetailDetail.DefectCode = defectCode;
                    qcDetailDetail.Problem = problem;
                    qcDetailDetail.Cause = cause;
                    qcDetailDetail.DefectQty = defectQty;
                    qcDetailDetail.AlterUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    qcDetailDetail.AlterDate = DateTime.Now;
                    qcDetailDetail.IsFindAtSameTime = !(qcDetailDetail.W_procedure == this._qc_Master.W_procedure);
                }
            }
            this.gridView_QC_Detail_Detail.RefreshData();

            TabControlWizard.SelectedTabPageIndex = 1;
        }

        //Xsj:把第一層的工號帶到底三層
        private void edtWorker_EditValueChanged(object sender, EventArgs e)
        {
            if (this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource == null && this.edtWorker.EditValue != null)
            {
                //Xsj:把第一層的值帶到第三層 
                this.lookUpEdit_QCDetailDetailWorker.Properties.DisplayMember = "Id";
                this.lookUpEdit_QCDetailDetailWorker.Properties.ValueMember = "Id";
                List<workers> workerList = new List<workers>();
                workerList.Add(new workers() { Id = this.edtWorker.EditValue.ToString(), NameCn = "" });
                this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource = workerList;
            }
            else if (this.edtWorker.EditValue != null)
            {
                List<workers> workerList = this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource as List<workers>;
                workers wks = workerList.Where(p => p.Id == this.edtWorker.EditValue.ToString()).FirstOrDefault();
                if (wks == null)
                {
                    workerList.Add(new workers() { Id = this.edtWorker.EditValue.ToString(), NameCn = "" });
                }
            }
        }

        private void edtDefetct_Code_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if (this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource != null)
            {
                (this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource as List<workers>).Add(new workers() { Id = e.DisplayValue.ToString(), NameCn = "" });
                e.Handled = true;
            }
            else
            {
                this.lookUpEdit_QCDetailDetailWorker.EditValue = e.DisplayValue;
                this.lookUpEdit_QCDetailDetailWorker.Text = e.DisplayValue.ToString();
            }
        }

        private void edtLightCount_EditValueChanged(object sender, EventArgs e)
        {

            this.checkedComboBoxEdit_ProductSeq.Properties.Items.Clear();
            int qcCount = Convert.ToInt32(this.edtLightCount.EditValue);
            for (int i = 1; i <= qcCount; i++)
            {
                this.checkedComboBoxEdit_ProductSeq.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(i.ToString(), i));
            }
            this.checkedComboBoxEdit_ProductSeq.Update();
        }


        //Xsj20141224:統計Defect的數量，一行為一個defect值。
        private void gridView_QC_Detail_Detail_RowCountChanged(object sender, EventArgs e)
        {
            this.spinEdit_DefectPoint.Value = this.gridView_QC_Detail_Detail.RowCount;
        }

        private void lookUpEdit_QCDetailDetailWorker_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if (this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource != null)
            {
                (this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource as List<workers>).Add(new workers() { Id = e.DisplayValue.ToString(), NameCn = "" });
                e.Handled = true;
            }
            else
            {
                this.lookUpEdit_QCDetailDetailWorker.EditValue = e.DisplayValue;
                this.lookUpEdit_QCDetailDetailWorker.Text = e.DisplayValue.ToString();
            }
        }

        //Xsj:保存第三層數據QC_Detail_Detail
        private void SaveQCDetailDetail(QC_Detail Detail)
        {

           // Detail.QC_Detail_Details.AddRange(_qc_Detail_DetailList);
            
            foreach (MobileQC.BO.QC_Detail_Detail item in this._qc_Detail_DetailList)
            {
                
                Detail.QC_Detail_Details.Add(item);
 
            }
             
        }

        private void lookUpEdit_QCDetailDetailOpt_EditValueChanged(object sender, EventArgs e)
        {
            BandComBoxWorkforceAndMachine_Page3();
        }


        //Xsj(補):綁定員工和機器
        private void BandComBoxWorkforceAndMachine_Page3()
        {
            if (_isOnline)
            {
                if (this.lookUpEdit_QCDetailDetailOpt.EditValue == null)
                {
                    return;
                }

                PH.LWPM.BO.RAPLQDataContext contextLWPM = PH.Platform.BO.ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
                this._context.CommandTimeout = 8000;
                string SqlStr = "EXEC GetWorkerAndMachince '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}'";
                lines _li = this._allline.First(p => p.PLINE == this.edtLine.Text);

                //Xsj(補）：依Line，WO，QN，RWO，QCTime，Project，OTN，工序獲取數據
                SqlStr = string.Format(SqlStr, _li.FACTORY,
                             this.edtLine.Text, this.edtWO.Text, this.edtQNNo.Text, this.edtRWO.Text,
                             edtQC_Time.DateTime.ToString("yyyy-MM-dd"),
                             this.edtProject.Text, this.edtOTN.Text, this.lookUpEdit_QCDetailDetailOpt.EditValue.ToString());

                DataTable dt = this._context.ExecuteDataTable(SqlStr, "LB5Matching");

                if (dt.Rows.Count <= 0)
                {
                    //Xsj:添加第三層數據
                    this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource = null;
                    return;
                }

                // 從LB5中得到員工和機器 
                //Xsj:添加第三層數據
                this.lookUpEdit_QCDetailDetailWorker.Properties.DisplayMember = "Id";
                this.lookUpEdit_QCDetailDetailWorker.Properties.ValueMember = "Id";

                List<workers> workList = new List<workers>();
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
                }

                workList = workList.Distinct(new workComparer()).ToList();
                //Xsj:添加第三層數據
                this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource = workList;

                if (workList.Count() == 1) //如果一個工序只有一個員工,就在選工序時直接給員工賦值,多个员工时让用户自己选择
                {
                    this.lookUpEdit_QCDetailDetailWorker.EditValue = workList.FirstOrDefault().Id;
                }
                else
                {
                    this.lookUpEdit_QCDetailDetailWorker.EditValue = "";
                }

            }
            else //离线时(umpc环境)从本地获取员工资料
            {
                string sqlstr = string.Format("SELECT  id as WorkerId ,namecn as WorkerName  FROM workforce where linecode='{0}'", this.edtLine.Text);
                this.lsworks = _context.ExecuteQuery<workers>(sqlstr).ToList<workers>();
                //Xsj:添加第三層數據
                this.lookUpEdit_QCDetailDetailWorker.Properties.DataSource = lsworks;

            }
        }

        //private void edtW_procedure_Popup(object sender, EventArgs e)
        //{
        //    //當處于中文模式時隱藏工序英文名稱
        //    if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID == "TW" || PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID == "CN")
        //    {
        //        this.edtW_procedure.Properties.Columns[2].Visible = false;
        //    }
        //}

        private void btnCancel_Click(object sender, EventArgs e)
        {


            //int mcount = Convert.ToInt32(this.edtLightCount.Text);


            //if (gridView_QC_Detail_Detail.RowCount < mcount)

            //TabControlWizard.SelectedTabPageIndex = 0;
        }

        private void btnLine_Click(object sender, EventArgs e)
        {

        }

        private void lookUpEdit_QCDetailDetailOpt_Popup(object sender, EventArgs e)
        {

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "tw" ||
                PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "cn")
                lookUpEdit_QCDetailDetailOpt.Properties.Columns["EGXM"].Visible = false;

        }

        //-------------End


        //開始時間與當前時間之間的差值
        private double GetDiffTime(DateTime start)
        {
            System.TimeSpan mvalue = DateTime.Now - start;
            return mvalue.TotalSeconds;
        }


        private void FilterLookup(object sender)
        {

            //LookUpEdit edit = sender as LookUpEdit;

            GridLookUpEdit edit = sender as GridLookUpEdit;
            GridView gridView = edit.Properties.View as GridView;

            //FieldInfo fi = edit.GetType().GetField("extraFilter", BindingFlags.NonPublic | BindingFlags.Instance);
            FieldInfo fi = gridView.GetType().GetField("extraFilter", BindingFlags.NonPublic | BindingFlags.Instance);

            BinaryOperator op1 = new BinaryOperator("PHDefectCode", "%" + edit.AutoSearchText + "%", BinaryOperatorType.Like);

            BinaryOperator op2 = new BinaryOperator("DefectChineseName", "%" + edit.AutoSearchText + "%", BinaryOperatorType.Like);

            string filterCondition = new GroupOperator(GroupOperatorType.Or, new CriteriaOperator[] { op1, op2 }).ToString();
            fi.SetValue(edit, filterCondition);

            MethodInfo mi = edit.GetType().GetMethod("ApplyColumnsFilterEx", BindingFlags.NonPublic | BindingFlags.Instance);
            mi.Invoke(edit, null);
        }

        private void edtDefetct_Code_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void gluDefetct_Code_EditValueChanged(object sender, EventArgs e)
        {
            //this.BeginInvoke(new System.Windows.Forms.MethodInvoker(delegate
            //{
            //    FilterLookup(sender);
            //}));
        }

        private void edtW_procedure_CustomDisplayText(object sender, DevExpress.XtraEditors.Controls.CustomDisplayTextEventArgs e)
        {
            //RepositoryItemLookUpEdit props;
            RepositoryItemLookUpEdit props = (sender as LookUpEdit).Properties;

          //  if (props != null && (e.Value is int))
            if (props != null && (e.Value is int))
            {
                object row = props.GetDataSourceRowByKeyValue(e.Value);
                if (row != null)
                {
                    operation opt = row as operation;
                    e.DisplayText = opt.GXDH + "_" + opt.GXM;
                }

            }
        }

        private void edtW_procedure_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            //DataRow Row;

            //RepositoryItemLookUpEdit Edit;

            //Edit = ((LookUpEdit)sender).Properties;

            //using (Form2 f = new Form2())
            //{

            //    f.ItemID = "(Auto Number)";

            //    f.ItemName = e.DisplayValue.ToString();

            //    if (f.ShowDialog(this) == System.Windows.Forms.DialogResult.OK)
            //    {

            //        e.DisplayValue = f.ItemName;

            //        Row = LookupTable.NewRow();

            //        Row["Name"] = f.ItemName;

            //        LookupTable.Rows.Add(Row);

            //    }

            //}

            //e.Handled = True;
        }

        private void labelControl18_Click(object sender, EventArgs e)
        {

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