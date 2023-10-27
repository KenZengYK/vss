using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;
using Excel = Microsoft.Office.Interop.Excel;
using System.Data.SqlClient;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.Utils;
using DevExpress.Data;
using DevExpress.XtraGrid;
using PH.LWPM.UI.Repository;
using PH.LWPM.UI.IRepository;
using DevExpress.XtraBars;
using PH.Platform.AuthMgr.BO;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;

namespace PH.LWPM.UI.WF
{
    public partial class WFPListFrm : ListForm
    {
        int TotalCount;
        int TotalCountDenominator;
        int[] ary = new int[100];
        int[] ary2 = new int[100];
        public string MenuName;
        public string ParaName;
        public string ReadOnlyParam;
        public string EmpType; //職員/工人
        IList<PH.LWPM.BO.WorkForce> li;

        private IWorkForceTrim iworkforcetrim;
        private IWFPList iwfplist;
        private IPublicLibrary ipubliclibrary;
        public WFPListFrm()
        {
            InitializeComponent();

        }
        public WFPListFrm(string WFParam, string Mname, string AReadOnlyParam)
        {
            ParaName = WFParam;
            this.MenuName = Mname;
            this.ReadOnlyParam = AReadOnlyParam;
            //this.EmpType = emptype;
            InitializeComponent();
            this.iworkforcetrim = new WorkForceTrim();
            this.iwfplist = new WFPList();
            this.ipubliclibrary = new PublicLibrary();

            this.barEnterByDept.ItemClick += new ItemClickEventHandler(Approval_ItemClick);
            this.barExitByDept.ItemClick += new ItemClickEventHandler(Approval_ItemClick);
            this.barTransferByDept.ItemClick += new ItemClickEventHandler(Approval_ItemClick);
            this.barEnterByHR.ItemClick += new ItemClickEventHandler(Approval_ItemClick);
            this.barExitByHR.ItemClick += new ItemClickEventHandler(Approval_ItemClick);
            this.barTransferByHR.ItemClick += new ItemClickEventHandler(Approval_ItemClick);
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();
            Dictionary<int, DevExpress.XtraBars.BarButtonItem> dic = new Dictionary<int, DevExpress.XtraBars.BarButtonItem>()
            {
                {0,barButtonItemImmHead},
                {1,barButtonItemBedHead},
                {2,barButtonItemHR}
            };
            ClsRight.GetUserRight(this.MenuID, "Confirm", dic, "RAP");

            this.barSecondment.Visibility = BarItemVisibility.Never;
            if (this.MenuName == "Staff" && (this.ParaName == "ALL" || this.ParaName == "Secondment"))  //只有Staff菜單才顯示Secondment按鈕
            {
                this.barSecondment.Visibility = BarItemVisibility.Always;
            }

            if (this.ParaName == "OffSite" || this.ParaName == "CrossRole" || this.ParaName == "2ndOffice" ||
                this.ParaName == "REC" || this.ParaName == "Secondment" || this.ParaName == "OpenVacancy" || this.ParaName == "BudgetVacancy")
            {
                this.barExportSummy.Visibility = BarItemVisibility.Never;
                this.barSubItem1.Visibility = BarItemVisibility.Never;
                this.barSubItemConfirm.Visibility = BarItemVisibility.Never;
                this.barImport.Visibility = BarItemVisibility.Never;
                this.barAttend.Visibility = BarItemVisibility.Never;
                this.barApproval.Visibility = BarItemVisibility.Never;

                this.barBtnAddNew.Visibility = BarItemVisibility.Never;
                this.barBtnDel.Visibility = BarItemVisibility.Never;
            }
        }

        public override void DataBind()
        {


            this.barBtnAddNew.Visibility = this.ReadOnlyParam == "ReadOnly" ? BarItemVisibility.Never : BarItemVisibility.Always;
            this.barBtnDel.Visibility = this.barBtnAddNew.Visibility;

            //PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser

            string[] Vacancy = { "Open Vacancy", "Replacement Vacancy", "Plan Vacancy" };
            WorkForceList Context = new WorkForceList();
            this.DataContext = Context.CurrentDataContext;
            //  this.SetDefaultSort();
            if (MenuName == "LongLeave" || MenuName == "REC" || MenuName == "LongLeaveAndREC" || MenuName == "Inactive" || MenuName == "Export")
            {
                if (MenuName == "REC")
                {
                    //  string scondition = string.Format("exists ({0}) and Inactive='0' and  (mtm='0' or mtm is null) and Len(RECEn)>0", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName");
                    //string scondition = string.Format("isprojection=0 and Vacancy!='sf'and exists ({0}) and Inactive='0' and  (mtm='0' or mtm is null) and Len(RECEn)>0", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName");
                    string scondition = "isprojection=0 and Vacancy!='sf' and Inactive='0' and (mtm='0' or mtm is null) and Len(RECEn)>0";
                    li = Context.GetDataByCondition(scondition).ToList();
                }

                if (MenuName == "LongLeave")
                {
                    li = Context.GetDataByCondition("isprojection=0 and LongLeave='1'  and (mtm='0' or mtm is null)").ToList();
                    // li = Context.GetDataByCondition("Vacancy!='sf' and LongLeave='1'  and (mtm='0' or mtm is null)").ToList();
                    this.BindingSource.DataSource = li;
                    //colLongLeaveStartDate.Visible = true;
                    //colLongLeaveStartDate.VisibleIndex = 75;
                    //colLongLeaveEndDate.Visible = true;
                    //colLongLeaveEndDate.VisibleIndex = 76;
                }

                if (MenuName == "LongLeaveAndREC")
                {
                    //li = Context.GetDataByCondition(string.Format("(Vacancy='' or Vacancy is  null) and ClsName in ({1}) and Inactive='0' and  (mtm='0' or mtm is null) and Len(RECEn)>0", "select Name from basecode where Type='WFPart'", "select Name from basecode where Type='WFclass'", "select Name from basecode where Type='Rec'")).ToList();
                    //li = Context.GetDataByCondition(string.Format("isprojection=0 and Vacancy!='sf' and exists ({0}) and Inactive='0' and  (mtm='0' or mtm is null) and Len(RECEn)>0", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName")).ToList();
                    li = Context.GetDataByCondition("isprojection=0 and Vacancy!='sf' and Inactive='0' and  (mtm='0' or mtm is null) and Len(RECEn)>0").ToList();
                    //  li = Context.GetDataByCondition(string.Format(" exists ({0}) and Inactive='0' and  (mtm='0' or mtm is null) and Len(RECEn)>0", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName")).ToList();
                    var a = Context.GetDataByCondition("isprojection=0 and LongLeave='1'  and (mtm='0' or mtm is null)");
                    foreach (var item in a)
                    {
                        li.Add(item);
                    }
                }

                if (MenuName == "Inactive")
                {
                    //li = Context.GetDataByCondition(string.Format(" ClsName in ({1}) and Inactive='1' and  mtm='1' ", "select Name from basecode where Type='WFPart'", "select Name from basecode where Type='WFclass'", "select Name from basecode where Type='Rec'")).ToList();
                    //li = Context.GetDataByCondition(string.Format("isprojection=0 and exists ({0}) and Inactive='1' and  mtm='1' ", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName")).ToList();
                    li = Context.GetDataByCondition("isprojection=0 and Vacancy!='sf' and Inactive='0' and  (mtm='0' or mtm is null) and Len(RECEn)>0").ToList();

                    //是否應該改為下面的條件呢？？？
                    //li = Context.GetDataByCondition("IsProjection=0 and Vacancy not in ('SF', 'OSF', 'OV', 'BV') and isnull(InActive, 0) = 1 and isnull(MTM, 0) = 1").ToList();
                }

                if (MenuName == "Export")
                {
                    SetDefaultSort(MenuName);
                    //li = Context.GetDataByCondition(string.Format(" ClsName in ({1}) and Inactive='1' and  mtm='1' ", "select Name from basecode where Type='WFPart'", "select Name from basecode where Type='WFclass'", "select Name from basecode where Type='Rec'")).ToList();
                    li = Context.GetDataByCondition(string.Format("isprojection=0 and Inactive='0' and  (mtm='0' or mtm is null) ")).ToList();
                }

                this.BindingSource.DataSource = li;

            }
            else if (Vacancy.Where(p => p.Contains(MenuName)).Count() > 0)
            {
                // li = Context.GetDataByCondition(string.Format("Vacancy='{0}' and  Inactive='0' and  (mtm='0' or mtm is null)", MenuName)).ToList();
                string strMenuName = ipubliclibrary.getSelectIndex("RAPMenuID", LangType.En, "", this.MenuID.ToString(), this.DataContext);
                String[] strName = strMenuName.Split(';');
                String[] strVacancy = ipubliclibrary.getItems("Vacancy", strName, this.DataContext);
                li = Context.GetDataByCondition(string.Format("isprojection=0 and Inactive='0' and  (mtm='0' or mtm is null)", MenuName)).ToList();
                li = li.Where(p => strVacancy.Contains(p.Vacancy)).ToList();
                this.BindingSource.DataSource = li;
                //colVacancy.Visible = true;
                //colVacancy.VisibleIndex = 65;
                //colVacancyDate.Visible = true;
                //colVacancyDate.VisibleIndex = 66;
            }
            else
            {


                if (MenuName == "Labor")
                {
                    //li = Context.GetDataByCondition(string.Format("WFPart in ({0}) and  ClsName in ({1}) and Inactive='0' and  (mtm='0' or mtm is null)", "select Name from basecode where Type='WFPart'", "select Name from basecode where Type='WFclass'")).ToList();

                    // li = Context.GetDataByCondition(string.Format(" Inactive='0' and  (mtm='0' or mtm is null) and ((exists ({0}) and  exists ({1}) and vacancy='LR') or vacancy='sf')", "select 1 from basecode where Type='WFPart' and Name=workforce.WFPart", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName")).ToList();



                    //li = Context.GetDataByCondition(string.Format("isprojection=0 and vacancy! ='SF' and exists ({0}) and  exists ({1}) and Inactive='0' and  (mtm='0' or mtm is null)", "select 1 from basecode where Type='WFPart' and Name=workforce.WFPart", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName")).ToList();
                    //string Condition = string.Format("isprojection=0 and (vacancy !='SF' and vacancy != 'OSF') and (ReDate is null or ReDate > getdate()) and exists ({0}) and  exists ({1}) and Inactive='0' and  (mtm='0' or mtm is null)", "select 1 from basecode where Type='WFPart' and Name=workforce.WFPart", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName");
                    string Condition = "isprojection=0 and Vacancy not in ('SF', 'OSF', 'OV', 'BV') and (ReDate is null or ReDate > getdate()) and isnull(InActive, 0) = 0 and isnull(MTM, 0) = 0";
                    if (ParaName == "CrossRole")
                    {
                        Condition += " and CrossRole = 1";
                    }
                    else if (ParaName == "REC")
                    {
                        Condition += " and (RecEn <> '' and RecEn is not null)";
                    }
                    else if (ParaName == "QuitList") //填了離職日期，但沒有標誌為離職狀態(Inactive = 0)
                    {
                        //Condition = string.Format("isprojection=0 and (vacancy !='SF' and vacancy != 'OSF') and ReDate <= getdate() and exists ({0}) and  exists ({1}) and Inactive='0' and  (mtm='0' or mtm is null)", "select 1 from basecode where Type='WFPart' and Name=workforce.WFPart", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName");
                        Condition = "isprojection=0 and Vacancy not in ('SF', 'OSF', 'OV', 'BV') and ReDate <= getdate() and Inactive='0' and  (mtm='0' or mtm is null)";
                    }
                    else if (ParaName.ToUpper() == "ALL")
                    {
                        //Condition = 
                    }
                    //處理Employee Cost for Management Account,  由David加入 2020-03-25
                    else if (ParaName == "hWF1+2")
                    {
                        Condition += " and NextLineCode in ('WFPart005', 'CJ00002568', 'CJ00002545')";
                        //Condition += string.Format(" and (WFPart like '%Sales Supportive Labors%' or WFPart like '%Head Office Labors%')");
                    }
                    //else if (ParaName == "Direct Manufacturing Labors (SAH)") //dWF(Deployment) 由David加入 2020-04-22
                    //{
                    //    Condition += string.Format(" and isnull(IsDeployment, 0) = 1 and NextLineCode = 'WFPart020'", ParaName);
                    //    //Condition += string.Format(" and isnull(IsDeployment, 0) = 1 and WFPart like 'Direct Manufacturing Labors%'", ParaName);
                    //}
                    //else if (ParaName == "Direct Manufacturing Labors (Non SAH)") //dWF(NonDeployment) 由David加入 2020-04-22
                    //{
                    //    Condition += string.Format(" and isnull(IsDeployment, 0) = 0 and NextLineCode = 'WFPart337'", ParaName);
                    //    //Condition += string.Format(" and isnull(IsDeployment, 0) = 0 and WFPart like 'Direct Manufacturing Labors%'", ParaName);
                    //}
                    else if (ParaName == "Direct Manufacturing Labors (SAH)") //dWF(Deployment) 由David加入 2020-04-22
                    {
                        Condition += string.Format(" and isnull(IsDeployment, 0) = 1 and NextLineCode in('WFPart020', 'WFPart337')", ParaName);
                        //Condition += string.Format(" and isnull(IsDeployment, 0) = 1 and WFPart like 'Direct Manufacturing Labors%'", ParaName);
                    }
                    else if (ParaName == "Direct Manufacturing Labors (Non SAH)") //dWF(NonDeployment) 由David加入 2020-04-22
                    {
                        Condition += string.Format(" and isnull(IsDeployment, 0) = 0 and NextLineCode in('WFPart020', 'WFPart337')", ParaName);
                        //Condition += string.Format(" and isnull(IsDeployment, 0) = 0 and WFPart like 'Direct Manufacturing Labors%'", ParaName);

                    }

                    else if (ParaName == "Indirect Manufacturing Labors")
                    {
                        Condition += string.Format(" and NextLineCode = 'WFPart025'", ParaName);
                    }
                    else if (ParaName == "Non Manufacturing Labors")
                    {
                        //Condition += string.Format(" and NextLineCode = 'WFPart030'", ParaName);
                        Condition += string.Format(" and NextLineCode in('WFPart030', 'CJ00002584')", ParaName);
                    }
                    else
                    {
                        Condition += string.Format(" and WFPart like '%{0}%'", ParaName);
                    }

                    li = Context.GetDataByCondition(Condition).ToList();
                    //this.colControlOrSupport.Visible = false;
                    this.BindingSource.DataSource = li;

                }

                else if (MenuName == "Staff")
                {
                    SetDefaultSort(MenuName);
                    //li = Context.GetDataByCondition(" isstaff=1 and Inactive='0' and  (mtm='0' or mtm is null)").ToList();

                    //li = Context.GetDataByCondition("isprojection=0 and vacancy like '%SF%'  and Inactive='0' and  (mtm='0' or mtm is null)").ToList();
                    string Condition = "IsProjection = 0 and (ReDate is null or ReDate > getdate()) and Vacancy in ('SF', 'OSF', 'OV', 'BV') and isnull(InActive, 0) = 0 and isnull(MTM, 0) = 0";

                    if (this.ParaName == "Remote") //以前這個參數是：OffSite， 由David修改 2020-03-25
                    {
                        //Condition = "IsProjection = 0 and (ReDate is null or ReDate > getdate()) and Vacancy = 'OSF'  and Inactive = '0' and (MTM = '0' or MTM is null)";
                        Condition += " and DeptName like '%Remote%'";
                    }
                    else if (this.ParaName == "CrossRole")
                    {
                        Condition += " and CrossRole = 1";
                    }
                    else if (this.ParaName == "2ndOffice")
                    {
                        Condition += " and (SecondOffice <> '' and SecondOffice <> '- -' and SecondOffice is not null)";
                    }
                    else if (this.ParaName == "REC")
                    {
                        Condition += " and (RecEn <> '' and RecEn is not null)";
                    }
                    else if (this.ParaName == "Secondment")
                    {
                        //Condition += " and exists (select 1 from Secondment where rtrim(WorkForceID) = rtrim(workforce.ID) and convert(varchar(100), getdate(), 23) between StartDate and isnull(ExpiredDate, convert(varchar(100), getdate(), 23)))";
                        Condition += " and exists (select 1 from Secondment where rtrim(WorkForceID) = rtrim(workforce.ID) and (isnull(ExpiredDate, getdate()) >= getdate()))";

                    }
                    else if (this.ParaName == "OpenVacancy")
                    {
                        Condition = "IsProjection = 0 and (ReDate is null or ReDate > getdate()) and Vacancy = 'OV'  and Inactive = '0' and (MTM = '0' or MTM is null)";
                    }
                    else if (this.ParaName == "BudgetVacancy")
                    {
                        Condition = "IsProjection = 0 and (ReDate is null or ReDate > getdate()) and Vacancy = 'BV'  and Inactive = '0' and (MTM = '0' or MTM is null)";
                    }

                    li = Context.GetDataByCondition(Condition).ToList();
                    this.BindingSource.DataSource = li;

                }
                else if (MenuName == "ALL") //Employee, 显示所有Staff和Labor的记录, 由david修改 2020-03-18
                {
                    //SetDefaultSort(MenuName);
                    //li = Context.GetDataByCondition(" isstaff=1 and Inactive='0' and  (mtm='0' or mtm is null)").ToList();
                    //li = Context.GetDataByCondition("isprojection=0 and Inactive='0' and (vacancy !='SF' and vacancy != 'OSF') and (ReDate is null or ReDate > getdate()) and  (mtm='0' or mtm is null)").ToList();
                    li = Context.GetDataByCondition("isprojection=0 and Inactive='0' and (ReDate is null or ReDate > getdate()) and  (mtm='0' or mtm is null)").ToList();
                    this.BindingSource.DataSource = li;

                }
                else
                {
                    //  li = Context.GetDataByCondition(string.Format("(Vacancy='' or Vacancy is  null) and WFPart='{0}' and  ClsName in ({1}) and Inactive='0' and  (mtm='0' or mtm is null)", MenuName, "select Name from basecode where Type='WFclass'")).ToList();
                    string strMenuName = ipubliclibrary.getSelectIndex("RAPMenuID", LangType.En, "", this.MenuID.ToString(), this.DataContext);
                    if (strMenuName != null)
                    {
                        String[] strName = strMenuName.Split(';');
                        String[] strWFPart = ipubliclibrary.getItems("WFPart", strName, this.DataContext);
                        if (this.MenuID.ToString() == "1865")
                        {
                            //li = Context.GetDataByCondition(string.Format("(Vacancy='' or Vacancy is  null)  and isrelated=1 and ClsName in ({1}) and Inactive='0' and  (mtm='0' or mtm is null)", MenuName, "select Name from basecode where Type='WFclass'")).ToList();                          
                            //li = Context.GetDataByCondition(string.Format("isprojection=0 and Inactive='0' and (mtm='0' or mtm is null) and isrelated=1 and exists ({0}) ", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName")).ToList();
                            li = Context.GetDataByCondition("isprojection=0 and Inactive='0' and (mtm='0' or mtm is null) and isrelated=1").ToList();

                            //string Condition = string.Format("isprojection=0 and (vacancy !='SF' and vacancy != 'OSF') and (ReDate is null or ReDate > getdate()) and exists ({0}) and  exists ({1}) and Inactive='0' and  (mtm='0' or mtm is null)", "select 1 from basecode where Type='WFPart' and Name=workforce.WFPart", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName");

                            //  li = Context.GetDataByCondition(string.Format(" Vacancy!='sf' and isrelated=1 and exists ({0}) and Inactive='0' and  (mtm='0' or mtm is null)", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName")).ToList();                          

                        }
                        else
                        {

                            // li = Context.GetDataByCondition(string.Format("(Vacancy='' or Vacancy is  null)  and  ClsName in ({1}) and Inactive='0' and  (mtm='0' or mtm is null)", MenuName, "select Name from basecode where Type='WFclass'")).ToList();
                            //string scondition = string.Format("isprojection=0 and Inactive='0' and  (mtm='0' or mtm is null) and  exists ({0}) ", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName");
                            string scondition = "isprojection=0 and Inactive='0' and (mtm='0' or mtm is null)";
                            // string scondition = string.Format("  Vacancy!='sf'  and  exists ({0}) and Inactive='0' and  (mtm='0' or mtm is null)", "select 1 from basecode where Type='WFclass' and Name=workforce.ClsName");
                            li = Context.GetDataByCondition(scondition).ToList();

                        }
                        li = li.Where(p => strWFPart.Contains(p.WFPart)).ToList();

                        this.BindingSource.DataSource = li;
                    }
                }
            }
            this.DataContext = Context.CurrentDataContext;
            base.DataBind();
            if (this.MenuName.ToLower() != "export")
                this.EditorTypeName = typeof(WFChildFrm).FullName;


            //Export Summy Permission process
            Auth_User au = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
            int ii = au.Auth_UserRole.Where(p => p.RoleName == "RAP_ExportSummy").Count();
            if (ii > 0 || au.IsAdministrator)
                this.barExportSummy.Visibility = BarItemVisibility.Always;

        }

        private void SetDefaultSort()
        {
            // colVacancy.SortOrder = ColumnSortOrder.Ascending;
            DevExpress.XtraGrid.Columns.GridColumn col = new DevExpress.XtraGrid.Columns.GridColumn();
            col.FieldName = "Jobtitle_SeqNo";
            this.objListGridView.Columns.Add(col);
            col.SortOrder = ColumnSortOrder.Ascending;

        }
        private void SetDefaultSort(string mtype)
        {
            if (MenuName.ToLower() == "staff")
            {
                DevExpress.XtraGrid.Columns.GridColumn col = new DevExpress.XtraGrid.Columns.GridColumn();
                col.FieldName = "Jobtitle_SeqNo";
                this.objListGridView.Columns.Add(col);
                col.SortOrder = ColumnSortOrder.Ascending;

                //DevExpress.XtraGrid.Columns.GridColumn colassign = new DevExpress.XtraGrid.Columns.GridColumn();
                //colassign.FieldName = "ControlOrSupport";
                //colassign.Caption = "U) Assign";
                //this.objListGridView.Columns.Add(colassign);
                //this.colControlOrSupport.Visible = true;

            }
            else
            {
                //this.colControlOrSupport.Visible = false;
                //this.colControlOrSupport.VisibleIndex = -1;
            }
            if (MenuName.ToLower() == "export")
            {
                DevExpress.XtraGrid.Columns.GridColumn col = new DevExpress.XtraGrid.Columns.GridColumn();
                col.FieldName = "SortID";
                this.objListGridView.Columns.Add(col);
                col.SortOrder = ColumnSortOrder.Ascending;

                DevExpress.XtraGrid.Columns.GridColumn col1 = new DevExpress.XtraGrid.Columns.GridColumn();
                col1.FieldName = "Jobtitle_SeqNo";
                this.objListGridView.Columns.Add(col1);
                col1.SortOrder = ColumnSortOrder.Ascending;
            }

        }

        public override OptionsLayoutGrid SetOptionLayout()
        {
            OptionsLayoutGrid opts = new OptionsLayoutGrid();
            // opts.StoreAllOptions = true; //default is false;
            // opts.StoreAppearance = true; //default is false;

            // opts.StoreVisualOptions = true; //default is true;
            //opts.StoreDataSettings = true; //default is true;
            // opts.Columns.StoreAllOptions = true; //default is false;

            opts.Columns.StoreAppearance = true; //default is false;
            opts.Columns.StoreLayout = true; //defautl value is true

            opts.Columns.AddNewColumns = true; //default is true
            opts.Columns.RemoveOldColumns = true; //default is true
            return opts;
        }

        protected override void OnClickDelete()
        {

            var CurWorkforce = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
            string sname = CurWorkforce.NameCn;
            if (this.ShowMessage("msgRapRemoveMember", new string[] { sname }) == DialogResult.No)
                return;

            CurWorkforce.MTM = true;
            CurWorkforce.InActive = true;
            string id = CurWorkforce.Id;
            (this.DataContext as RAPLQDataContext).SubmitChanges();
            (this.DataContext as RAPLQDataContext).ExecuteCommand(string.Format("delete workforceimg where id='{0}'", id));

            DevExpress.XtraGrid.Views.Base.ColumnView focuseview = ((DevExpress.XtraGrid.Views.Base.ColumnView)this.objListGridControl.FocusedView);
            int idx = focuseview.FocusedRowHandle;
            focuseview.DeleteRow(idx);
            focuseview.RefreshData();
        }

        private void barBtnReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WorkFilter wf = new WorkFilter();
            wf.Context = this.DataContext as RAPLQDataContext;
            if (wf.ShowDialog() == DialogResult.OK)
            {
                if (MenuName == "dWF-Core Production")
                {
                    WFPoolReportNew wfpt1 = new WFPoolReportNew(wf.T_factory.Text.Trim(), wf.T_line.Text.Trim(), wf.T_location.Text.Trim(), wf.T_Dept.Text.Trim(), wf.T_JobtitleEn.Text.Trim(), wf.T_Id.Text.Trim(),
                        wf.T_Area.Text.Trim(), wf.T_WorkerTyle.Text.Trim(), MenuName + "-" + (wf.T_WorkerTyle.Text.ToString().TrimEnd() != "" ? wf.T_WorkerTyle.Text.ToString().TrimEnd() : "All"), this.DataContext as RAPLQDataContext);
                    wfpt1.ShowPreviewDialog();

                }
                else
                {
                    Report.WFrpt wfpt2 = new PH.LWPM.UI.WF.Report.WFrpt(wf.T_factory.Text.Trim(), wf.T_line.Text.Trim(), wf.T_location.Text.Trim(), wf.T_Dept.Text.Trim(), wf.T_JobtitleEn.Text.Trim(), wf.T_Id.Text.Trim(),
                        wf.T_Area.Text.Trim(), wf.T_WorkerTyle.Text.Trim(), MenuName + "-" + (wf.T_WorkerTyle.Text.ToString().TrimEnd() != "" ? wf.T_WorkerTyle.Text.ToString().TrimEnd() : "All"));
                    wfpt2.ShowPreviewDialog();
                }
            }
        }

        private void barBtnSumRpt_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WFFilter wf = new WFFilter { Context = this.DataContext as RAPLQDataContext };
            if (wf.ShowDialog() == DialogResult.OK)
            {
                if (wf.rdbWFDept.Checked == true && wf.T_factory.Text.Trim() != "")
                {
                    Report.WFSummaryTotalRpt wst = new PH.LWPM.UI.WF.Report.WFSummaryTotalRpt(wf.T_factory.Text.Trim(), wf.T_DeptGroup.Text.Trim(), "EN");
                    wst.ShowPreviewDialog();
                }
                else if (wf.rdbWFJobTitle.Checked == true && wf.T_factory.Text.Trim() != "")
                {
                    Report.dWFSummaryRpt dwf = new PH.LWPM.UI.WF.Report.dWFSummaryRpt(wf.T_factory.Text.Trim(), "EN");
                    dwf.ShowPreviewDialog();
                }
                else if (wf.rdbWFDeptCn.Checked == true && wf.T_factory.Text.Trim() != "")
                {
                    Report.WFSummaryTotalRpt wst = new PH.LWPM.UI.WF.Report.WFSummaryTotalRpt(wf.T_factory.Text.Trim(), wf.T_DeptGroup.Text.Trim(), "CN");
                    wst.ShowPreviewDialog();
                }
                else if (wf.rdbWFJobTitleCn.Checked == true && wf.T_factory.Text.Trim() != "")
                {
                    Report.dWFSummaryRpt dwf = new PH.LWPM.UI.WF.Report.dWFSummaryRpt(wf.T_factory.Text.Trim(), "CN");
                    dwf.ShowPreviewDialog();
                }
                else
                {

                }


            }


        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            if (e.SummaryProcess == CustomSummaryProcess.Start)
            {
                TotalCount = 0;
                TotalCountDenominator = 0;

            }
            if (e.SummaryProcess == CustomSummaryProcess.Calculate)
            {
                if (e.FieldValue != null)
                {
                    //由David修改算法 2020-03-26
                    bool HeadCount = e.GetValue("HeadCount") == null ? false : Convert.ToBoolean(e.GetValue("HeadCount"));
                    if (HeadCount)
                    {
                        TotalCount++;
                    }
                    TotalCountDenominator++;


                    //bool? isheadcount = li.Where(p => p.Id == e.FieldValue.ToString()).Select(s => s.HeadCount).FirstOrDefault();
                    //if (isheadcount == true)
                    //{
                    //    TotalCount++;
                    //}
                    //TotalCountDenominator++;
                }
            }
            if (e.IsGroupSummary)
            {
                if (e.GroupLevel == 0)
                {
                    //e.TotalValue = string.Format("   - [ # of headcount: {0} ({1} )   # of post: {2} ]", TotalCount, (ary[0] > 0 ? TotalCount * 1.0 / ary[0] : 0).ToString("0.00%"), TotalCountDenominator);
                    e.TotalValue = string.Format("   - [ # of headcount: {0}   # of post: {1} ]", TotalCount, TotalCountDenominator);
                    ary[0] = TotalCount;
                    ary2[0] = TotalCountDenominator;
                }

                for (int i = 1; i < objListGridView.GroupCount; i++)
                {
                    DevExpress.XtraGrid.GridGroupSummaryItem t = e.Item as DevExpress.XtraGrid.GridGroupSummaryItem;
                    if (e.GroupLevel == i)
                    {
                        //string Flag = "";
                        e.TotalValue = string.Format("   - [ # of headcount: {0} ({1})   # of post: {2} ]", TotalCount,
                            (ary[i - 1] > 0 ? TotalCount * 1.0 / ary[i - 1] : 0).ToString("0.00%"), TotalCountDenominator);

                        //ary[i] = TotalCountDenominator;
                        ary2[i] = TotalCountDenominator;
                        ary[i] = TotalCount;

                        //if (objListGridView.GroupedColumns[i].FieldName == "WFWhere" || objListGridView.GroupedColumns[i].FieldName == "WFWhereCn")
                        //{
                        //    Flag = " by sect";
                        //    e.TotalValue = string.Format("   - [ # of headcount: {0} ({1}{3})   # of post: {2} ]", TotalCount,
                        //        (ary[i - 1] > 0 ? TotalCount * 1.0 / ary[i - 1] : 0).ToString("0.00%"), TotalCountDenominator, Flag);
                        //}
                        //else if (objListGridView.GroupedColumns[i].FieldName == "WFWhere_1" || objListGridView.GroupedColumns[i].FieldName == "WFWhere_1Cn" ||
                        //         objListGridView.GroupedColumns[i].FieldName == "WFWhere_1Cn_Disp")
                        //{
                        //    Flag = " by team";
                        //    e.TotalValue = string.Format("   - [ # of headcount: {0} ({1}{3})   # of post: {2} ]", TotalCount,
                        //        (ary[i - 1] > 0 ? TotalCount * 1.0 / ary[i - 1] : 0).ToString("0.00%"), TotalCountDenominator, Flag);
                        //}
                        //else if (objListGridView.GroupedColumns[i].FieldName == "Disp_EmpType" || objListGridView.GroupedColumns[i].FieldName == "Disp_EmpType")
                        //{
                        //    Flag = " by employee";
                        //    e.TotalValue = string.Format("   - [ # of headcount: {0} {1}   # of post: {2} ]", TotalCount, Flag, TotalCountDenominator);
                        //}
                        //else
                        //{
                        //    e.TotalValue = string.Format("   - [ # of headcount: {0} ({1})   # of post: {2} ]", TotalCount,
                        //        (ary[i - 1] > 0 ? TotalCount * 1.0 / ary[i - 1] : 0).ToString("0.00%"), TotalCountDenominator);
                        //}

                    }

                    //if (objListGridView.GroupedColumns[i - 1].FieldName == "SortID")
                    //{
                    //    //e.TotalValue = "Employee Type:TEST";

                    //    // objListGridView.Columns["SortID"].Caption = objListGridView.Columns["SortID"].Caption + ":TEST";
                    //}
                }
            }
        }

        private void barBtndWFPool_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Report.WorkForcePoolSewingSummary rpt = new PH.LWPM.UI.WF.Report.WorkForcePoolSewingSummary(this.DataContext as RAPLQDataContext, MenuName);
            rpt.ShowPreview();
        }

        private void barButtonWF_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WorkFilter wf = new WorkFilter { Context = this.DataContext as RAPLQDataContext };
            if (wf.ShowDialog() == DialogResult.OK)
            {
                Report.WFSummeryReport rpt = new PH.LWPM.UI.WF.Report.WFSummeryReport(wf.T_factory.Text.Trim());
                rpt.ShowPreview();
            }
        }

        private void barButtonNewInfo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            InputExlFrm frm = new InputExlFrm { context = this.DataContext as RAPLQDataContext };
            frm.ShowDialog();
        }
        private void barButtonActive_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            InputInActiveExcelFrm frm = new InputInActiveExcelFrm { context = this.DataContext as RAPLQDataContext };
            frm.ShowDialog();
        }

        private void barButtonChange_ItemClick_1(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            InputChangeInfoExcelFrm frm = new InputChangeInfoExcelFrm();
            frm.context = this.DataContext as RAPLQDataContext;
            frm.ShowDialog();
        }

        private void barButtonRestore_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            InpurtRestoreWorkerFrm frm = new InpurtRestoreWorkerFrm();
            frm.context = this.DataContext as RAPLQDataContext;
            frm.ShowDialog();
        }

        private void barAttend_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            InputAttendanceExcelFrm frm = new InputAttendanceExcelFrm();
            frm.context = this.DataContext as RAPLQDataContext;
            frm.ShowDialog();
        }
        private void barButtonItemImmHead_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            iwfplist.Confirm(Barbtitem.ImmHead, this.BindingSource, this.DataContext);
        }

        private void barButtonItemBedHead_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            iwfplist.Confirm(Barbtitem.BedHead, this.BindingSource, this.DataContext);
        }
        private void barButtonItemHR_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            iwfplist.Confirm(Barbtitem.HR, this.BindingSource, this.DataContext);
        }

        private void objListGridControl_Click(object sender, EventArgs e)
        {
        }

        private void barExportSummy_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.objListGridView.ExpandAllGroups();
            int rowcount = objListGridView.RowCount;
            int groupcount = objListGridView.GroupCount;

            SaveFileDialog sfd = new SaveFileDialog();
            sfd.DefaultExt = ".xls";
            sfd.Filter = "xls Files(*.xls)|*.xls";
            sfd.FilterIndex = 1;
            sfd.RestoreDirectory = true;
            DialogResult dlgr = sfd.ShowDialog();
            if (dlgr != DialogResult.Cancel)
            {
                // long start = DateTime.Now.Ticks;
                string dateDiff = null;
                TimeSpan ts1 = new TimeSpan(DateTime.Now.Ticks);

                try
                {
                    this.objListGridView.ExportToXls(sfd.FileName);

                    // this.objListGridView.ExportToXls(sfd.FileName, new DevExpress.XtraPrinting.XlsExportOptions(false, false));

                    this.ipubliclibrary.ExportXlsSummy(sfd.FileName, groupcount, rowcount);
                    TimeSpan ts2 = new TimeSpan(DateTime.Now.Ticks);
                    TimeSpan ts = ts1.Subtract(ts2).Duration();
                    dateDiff = ts.Days.ToString() + "天"
                        + ts.Hours.ToString() + "小時"
                        + ts.Minutes.ToString() + "分"
                        + ts.Seconds.ToString() + "秒";

                    MessageBox.Show(string.Format("Export group summy success!Wast total:'{0}'", dateDiff));
                }
                catch
                {
                    throw new Exception("Export fail!");
                }
            }

        }

        #region Approval Enter/Exit/Transfer
        private void ApprovalEnable(string role)
        {
            PH.LWPM.BO.WorkForce wf = this.objListGridView.GetRow(objListGridView.FocusedRowHandle) as PH.LWPM.BO.WorkForce;

            //this.barApproval.Enabled = false;
            this.barEnterByDept.Enabled = false;
            this.barExitByDept.Enabled = false;
            this.barTransferByDept.Enabled = false;

            this.barEnterByHR.Enabled = false;
            this.barExitByHR.Enabled = false;
            this.barTransferByHR.Enabled = false;


            if (role.Contains("rap_approval_dept") && !role.Contains("rap_approval_hr"))
            {
                this.barApproval.Enabled = true;
                this.barEnterByDept.Enabled = true;
                this.barExitByDept.Enabled = true;
                this.barTransferByDept.Enabled = true;

            }
            if (role.Contains("rap_approval_hr") && !role.Contains("rap_approval_dept"))
            {
                this.barApproval.Enabled = true;
                if (wf.ApprovalEnterByDept != null)
                    this.barEnterByHR.Enabled = true;

                if (wf.ApprovalExitByDept != null)
                    this.barExitByHR.Enabled = true;

                if (wf.ApprovalTransferByDept != null)
                    this.barTransferByHR.Enabled = true;

            }

            if (role.Contains("rap_approval_hr") && role.Contains("rap_approval_dept"))
            {
                this.barApproval.Enabled = true;

                this.barEnterByDept.Enabled = true;
                this.barExitByDept.Enabled = true;
                this.barTransferByDept.Enabled = true;

                this.barEnterByHR.Enabled = true;
                this.barExitByHR.Enabled = true;
                this.barTransferByHR.Enabled = true;

            }

        }


        private void ApprovalUpdate(string action, string role)
        {
            RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;

            if (this.objListGridView.FocusedRowHandle < 0)
            {
                MessageBox.Show("Please select a employee to executed the action!");
                return;
            }
            bool isapproval = true;

            PH.LWPM.BO.WorkForce wf = this.objListGridView.GetRow(objListGridView.FocusedRowHandle) as PH.LWPM.BO.WorkForce;
            if (action.ToLower() == "lb_join")
            {
                if (role.Contains("rap_approval_dept"))
                {
                    if (!string.IsNullOrEmpty(wf.ApprovalEnterByDept))
                        MessageBox.Show("The record has been approvaled by:" + wf.ApprovalEnterByDept);
                    else
                        isapproval = false;
                }

                if (role.Contains("rap_approval_hr"))
                {
                    if (!string.IsNullOrEmpty(wf.ApprovalEnterByHR))
                        MessageBox.Show("The record has been approvaled by:" + wf.ApprovalEnterByHR);
                    else
                        isapproval = false;
                }

            }
            else if (action.ToLower() == "lb_exit")
            {
                if (role.Contains("rap_approval_dept") && !role.Contains("rap_approval_hr"))
                {
                    if (!string.IsNullOrEmpty(wf.ApprovalExitByDept))
                        MessageBox.Show("The record has been approvaled by:" + wf.ApprovalExitByDept);
                    else
                        isapproval = false;
                }


                if (role.Contains("rap_approval_hr") && !role.Contains("rap_approval_dept"))
                {
                    if (string.IsNullOrEmpty(wf.ApprovalExitByDept))
                        MessageBox.Show("Must approvaled first by head of department !");
                    else
                        isapproval = false;
                }

                if (role.Contains("rap_approval_hr") && role.Contains("rap_approval_dept"))
                    isapproval = false;


            }
            else if (action.ToLower() == "lb_transfer")
            {
                if (role.Contains("rap_approval_dept"))
                {
                    if (!string.IsNullOrEmpty(wf.ApprovalTransferByDept))
                        MessageBox.Show("The record has been approvaled by:" + wf.ApprovalTransferByDept);
                    else
                        isapproval = false;
                }

                if (role.Contains("rap_approval_hr"))
                {
                    if (!string.IsNullOrEmpty(wf.ApprovalTransferByHR))
                        MessageBox.Show("The record has been approvaled by:" + wf.ApprovalTransferByHR);
                    else
                        isapproval = false;
                }


            }
            if (isapproval)
                return;

            string userid = PH.Platform.Common.SysParamHelper.Instance.UserID;


            if (wf != null)
            {

                switch (action.ToLower())
                {
                    case "lb_join":
                        if (role.Contains("rap_approval_dept"))
                            wf.ApprovalEnterByDept = userid;
                        else
                            wf.ApprovalEnterByHR = userid;
                        rqc.SubmitChanges();
                        break;
                    case "lb_exit":
                        if (role.Contains("rap_approval_dept") && !role.Contains("rap_approval_hr")
                            && string.IsNullOrEmpty(wf.ApprovalEnterByDept))
                        {
                            wf.ApprovalExitByDept = userid;
                            rqc.SubmitChanges();
                        }
                        //else
                        if (role.Contains("rap_approval_hr") && !role.Contains("rap_approval_dept")
                            && string.IsNullOrEmpty(wf.ApprovalEnterByHR))
                        {
                            wf.ApprovalExitByHR = userid;
                            this.OnClickDelete();
                        }
                        if (role.Contains("rap_approval_hr") && role.Contains("rap_approval_dept")
                            && string.IsNullOrEmpty(wf.ApprovalEnterByHR))
                        {
                            wf.ApprovalExitByHR = userid;
                            wf.ApprovalEnterByDept = userid;
                            this.OnClickDelete();
                        }


                        break;
                    case "lb_transfer":
                        if (role.Contains("rap_approval_dept"))
                            wf.ApprovalTransferByDept = userid;
                        else
                            wf.ApprovalTransferByHR = userid;
                        rqc.SubmitChanges();
                        break;
                    default:
                        break;
                }



            }


        }

        private void barApproval_Popup(object sender, EventArgs e)
        {

            //this.barApproval.Enabled = true;
            //if (this.objListGridView.FocusedRowHandle < 0)
            //{
            //    this.barApproval.Enabled = false;
            //}
            //else
            //{

            //    this.barApproval.Enabled = true;

            Auth_User cuser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
            StringBuilder sb = new StringBuilder();
            foreach (Auth_Role arole in cuser.Roles)
            {
                sb.Append(arole.RoleName.ToLower());
                sb.Append(";");
            }
            _curroles = sb.ToString();
            ApprovalEnable(_curroles);
            //}

        }


        private string _curroles;
        void Approval_ItemClick(object sender, ItemClickEventArgs e)
        {
            string action = e.Item.Tag != null ? e.Item.Tag.ToString() : string.Empty;
            if (!string.IsNullOrEmpty(action))
            {
                ApprovalUpdate(action, _curroles);

            }

        }

        #endregion

        ToolTip tt = new ToolTip();
        private void objListGridView_MouseMove(object sender, MouseEventArgs e)
        {
            //Point po = this.objListGridView.GridControl.PointToClient(Control.MousePosition);
            //GridHitInfo gridinfo = objListGridView.CalcHitInfo(po);
            //if (gridinfo.InColumn && gridinfo.Column.FieldName == "CheckFlag")
            //if (this.BindingSource.Count>0&&gridinfo.InRow)
            //{
            //DataRow dr = this.objListGridView.GetDataRow(gridinfo.RowHandle);
            // gridinfo

            //PH.LWPM.BO.WorkForce wf = this.objListGridView.GetRow(gridinfo.RowHandle) as PH.LWPM.BO.WorkForce;


            //if (wf != null)
            //{
            //    string info = wf.ApprovalEnterByDept != null ? wf.ApprovalEnterByDept : "Non";
            //    tt.SetToolTip(this, "Audit by departal:" + wf.ApprovalEnterByDept != null ? wf.ApprovalEnterByDept : "Non");
            //    tt.AutomaticDelay = 5;
            //    tt.Show(info, this, po);


            //}
            //gridinfo.Column.ToolTip = "Audit by departal:"+wf.ApprovalEnterByDept!=null?wf.ApprovalEnterByDept:"Non";

            // }
        }

        private void objListGridView_CustomDrawGroupRow(object sender, DevExpress.XtraGrid.Views.Base.RowObjectCustomDrawEventArgs e)
        {
            GridView view = sender as GridView;
            GridGroupRowInfo groupRowInfo = e.Info as GridGroupRowInfo;
            if (groupRowInfo.Column.FieldName == "SortID")
            {
                //  string ss =groupRowInfo.ViewInfo.GetGroupPanelText();
                PH.LWPM.BO.WorkForce wf = view.GetRow(e.RowHandle) as PH.LWPM.BO.WorkForce;
                groupRowInfo.GroupText = "Employee Type:" + (wf.SortID == 1 ? "Staff" : (wf.SortID == 2 ? "Labor" : "Temp Labor"));
            }

        }

        private void barSecondment_ItemClick(object sender, ItemClickEventArgs e)
        {
            PH.LWPM.BO.WorkForce obj = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
            if (obj == null) return;
            this.CreateProgramForm(typeof(SecondmendListForm),
                                   "Secondment Maintenance - [" + obj.Id + " " + obj.NameCn + "]",
                                   true,
                                   new object[] { obj.Id },
                                   null);
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            colConfirm.Visible = false; //隐藏Imm Head Confirm功能, 由David加入 2023-10-09
        }



    }


}
