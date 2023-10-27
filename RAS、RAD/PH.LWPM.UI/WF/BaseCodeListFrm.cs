using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using System.Diagnostics;
using DevExpress.XtraTreeList;
using DevExpress.XtraTreeList.Nodes;
using PH.Platform.AuthMgr.BO;
using DevExpress.Data;
using PH.LWPM.UI.WF.Report;
using PH.LWPM.UI.MC;
using PH.LWPM.UI.MC.Report;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraEditors;
using PH.Platform.ExtendLibrary;
using PH.Platform.BO;
using PH.LWPM.UI.MasterDB;

namespace PH.LWPM.UI.WF
{
    public partial class BaseCodeListFrm : PH.Platform.UI.CS.UI2.ListForm
    {
        public string TypeList, DesciptionList, MParam;
        public List<DataTypes> AllTypes = new List<DataTypes>();
        private IRepository.IPublicLibrary publicLibary;
        //IList<PH.LWPM.BO.WorkForce> li;

        private static object objlock = new object();

        public BaseCodeListFrm()
        {
            InitializeComponent();
            publicLibary = new Repository.PublicLibrary();

        }

        public BaseCodeListFrm(string param, string lstdesc)
        {
            // TypeList = lsttypes;
            // DesciptionList = lstdesc;
            MParam = param;
            InitializeComponent();
            publicLibary = new Repository.PublicLibrary();
        }

        private void GetAllType()
        {
            bcl = new BaseCodeList();
            List<BaseCode> typelist = bcl.GetDataByCondition("Type='SystemType'").ToList();

            for (int j = 0; j < typelist.Count; j++)
            {
                DataTypes dt = new DataTypes();
                dt.TypeValue = typelist[j].Name; dt.TypeDesc = typelist[j].Description;
                dt.TypeCode = typelist[j].Code;
                AllTypes.Add(dt);
            }
        }

        BaseCodeList bcl;
        public override void DataBind()
        {

            this.GetAllType();
            this.lueAllTypes.Properties.DisplayMember = "TypeDesc";
            this.lueAllTypes.Properties.ValueMember = "TypeValue";
            this.lueAllTypes.Properties.DataSource = AllTypes;
            this.colType.FieldName = "Type";
            this.colName.FieldName = "Name";
            this.colNameCn.FieldName = "Description";
            this.colNameBd.FieldName = "NameBd";
            this.colCode.FieldName = "Lang";
            this.colSeqNo.FieldName = "SortID";

            //加入Grade的選擇 由David加入 2018-02-27
            this.edtGrade.DisplayMember = "GradeCode";
            this.edtGrade.ValueMember = "GradeCode";
            var lists = bcl.CurrentDataContext.BaseCodes.Where(p => p.Type == "Grade")
                .Select(p => new { GradingSeq = p.SortID, GradeCode = p.Lang, Name = p.Name }).ToList();
            lists.Insert(0, null);
            this.edtGrade.DataSource = lists;


            this.edtGrade.View.Columns[0].Caption = "Seq\r\nNo.";
            this.edtGrade.View.Columns[1].Caption = "Code";
            this.edtGrade.View.Columns[2].Caption = "Name";

            this.edtGrade.View.Columns[0].Width = 90;
            this.edtGrade.View.Columns[1].Width = 90;
            this.edtGrade.View.Columns[2].Width = 120;



            this.DataContext = bcl.CurrentDataContext;
            string scondition = "1=0";

            this.BindingSource.DataSource = bcl.GetDataByCondition(scondition);
            this.EditorTypeName = typeof(BaseCodeEdtFrm).FullName;
            this.objListGridControl.Dock = DockStyle.Fill;
            // rbMain.Checked = true;


            if (!PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                IEnumerable<Auth_RoleBORight> lst = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetRoleBORight();

                if (lst.Where(p => p.BO.ToLower() == "departalsort" && p.BORight == "Read").Count() > 0)
                {
                    if (lst.Where(p => p.BO.ToLower() == "departalsort" && p.BORight != "Read").Count() == 0)
                    {
                        this.gdvDepartal.OptionsBehavior.Editable = false;
                        gdvDepartal.OptionsNavigation.EnterMoveNextColumn = false;
                    }
                }

                if (lst.Where(p => p.BO.ToLower() == "master_data_for_job_title" && p.BORight == "Read").Count() > 0)
                {
                    if (lst.Where(p => p.BO.ToLower() == "master_data_for_job_title" && p.BORight != "Read").Count() == 0)
                    {
                        this.gdvTtitletype.OptionsBehavior.Editable = false;
                        // gdvDepartal.OptionsNavigation.EnterMoveNextColumn = false;
                    }
                }
            }


                this.btnPrint.Visible = true;
            if (MParam == "A")
            {
                radio_CheckedChanged(rbMain, new EventArgs());
                // rbMain.Checked = true;
            }
            else if (MParam == "B")
            {
                radio_CheckedChanged(rbDepartment, new EventArgs());
                //rbDepartment.Checked = true;
            }
            else if (MParam == "C")
            {
                radio_CheckedChanged(rbRegion, new EventArgs());
                // rbRegion.Checked = true;            
                this.btnPrint.Visible = false;  //由David加入 2020-03-05
            }
            else if (MParam == "E")
            {
                radio_CheckedChanged(rbMcGroupType, new EventArgs());
                //this.btnPrint.Visible = false;  //由David加入 2020-03-05
            }
        }

        public bool isregion;
        public bool isgroupb;
        public bool isgroupa;
        private void radio_CheckedChanged(object sender, EventArgs e)
        {

            this.lueAllTypes.Properties.DisplayMember = "TypeDesc";
            this.lueAllTypes.Properties.ValueMember = "TypeValue";
            //if (!(sender as System.Windows.Forms.RadioButton).Checked)
            //    return;


            this.lueAllTypes.Properties.DataSource = null;
            if ((sender as System.Windows.Forms.RadioButton).Name == this.rbMain.Name)
            {
                this.lueAllTypes.Properties.DataSource = AllTypes.Where(p => p.TypeCode.EndsWith("GA")).ToList();
                lueAllTypes.ItemIndex = 0;
                // this.lueAllTypes_EditValueChanged(this.lueAllTypes, new EventArgs());
                isgroupa = true;
                isregion = !isgroupa;
                isgroupb = !isgroupa;
            }
            if ((sender as System.Windows.Forms.RadioButton).Name == this.rbDepartment.Name)
            {
                this.lueAllTypes.Properties.DataSource = AllTypes.Where(p => p.TypeCode.EndsWith("GB")).ToList();
                //lueAllTypes.ItemIndex = 1;
                lueAllTypes.ItemIndex = 0;
                // this.lueAllTypes_EditValueChanged(this.lueAllTypes, new EventArgs());
                isgroupb = true;
                isregion = false;
                isgroupa = false;
            }

            if ((sender as System.Windows.Forms.RadioButton).Name == this.rbMcGroupType.Name)
            {
                this.lueAllTypes.Properties.DataSource = AllTypes.Where(p => p.TypeCode.EndsWith("GE")).ToList();
                //lueAllTypes.ItemIndex = 1;
                lueAllTypes.ItemIndex = 0;
                // this.lueAllTypes_EditValueChanged(this.lueAllTypes, new EventArgs());
                isgroupb = true;
                isregion = false;
                isgroupa = false;
            }



            if ((sender as System.Windows.Forms.RadioButton).Name == this.rbRegion.Name)
            {
                isregion = true;
                isgroupa = false;
                isgroupb = false;
                this.EditorTypeName = typeof(BaseCodeEdtFrm).FullName;
                this.lueAllTypes.Properties.DataSource = AllTypes.Where(p => p.TypeCode.EndsWith("GC")).ToList();
                this.trRegion.Visible = true;
                this.palArea.Visible = true;
                this.objListGridControl.Visible = false;
                this.gdcDepartal.Visible = false;
                this.gdcTitleType.Visible = false;
                trRegion.Dock = DockStyle.Fill;
                //this.BindingSource.DataSource = bcl.GetDataByCondition("type='Country' or type='REGION' or type='AREA' ");
                string sqlcmd = @"select * from basecode where Type='Country'  
                                 union select * from basecode where Type='REGION'
                                 union select * from basecode where Type='AREA'";
                this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).ExecuteQuery<BaseCode>(sqlcmd);
                this.trRegion.DataSource = this.BindingSource;

                if (this.SelectIdx > 0)
                    this.BindingSource.Position = SelectIdx;

            }
            else
            {

                this.trRegion.Visible = false;
                this.palArea.Visible = false;
                //this.objListGridControl.Visible = true;
                isregion = false;
            }

            //lueAllTypes.Refresh();

        }


        bool _isdeptgrid = false, _istitletypegrid = false;
        private void lueAllTypes_EditValueChanged(object sender, EventArgs e)
        {
            this.WorkGridView = null;
            this.WorkBindingSource = null;

            if (lueAllTypes.EditValue.ToString() == "TitleAndJob")  //改為顯示Labor/Staff兩種類型的資料 由David修改 2018-02-27
            {
                this.EditorTypeName = "";
                this.gdcTitleType.Visible = true;
                this.objListGridControl.Visible = false;
                this.gdcDepartal.Visible = false;
                _istitletypegrid = true;
                SetTitleTypeGrid(this.DataContext as RAPLQDataContext);

                //導航條需要正常工作 由David加入 2020-02-13 
                //this.WorkBindingSource = this.bsTitleJob;
                this.WorkGridView = this.gdvTtitletype;
                this.InitFormNavigator();
            }
            //else if (lueAllTypes.EditValue.ToString().ToLower() == "titleandjob_sf")
            //{
            //    this.EditorTypeName = "";
            //    this.gdcTitleType.Visible = true;
            //    this.objListGridControl.Visible = false;
            //    this.gdcDepartal.Visible = false;
            //    _istitletypegrid = true;
            //    SetTitleTypeGrid(this.DataContext as RAPLQDataContext);
            //}
            else if (lueAllTypes.EditValue.ToString() == "DepartalSort")
            //else if (lueAllTypes.EditValue.ToString() == "DPTUS")
            //  else if (MParam == "B")
            {

                this.EditorTypeName = "";
                this.gdcDepartal.Visible = true;
                this.objListGridControl.Visible = false;
                this.gdcTitleType.Visible = false;
                _isdeptgrid = true;
                rcbLocation.Properties.Items.AddRange(publicLibary.getItems("cbbDeptLocation", this.DataContext as RAPLQDataContext));
                SetDepartalGrid(this.DataContext as RAPLQDataContext, "WorkShopNew");

                //導航條需要正常工作 由David加入 2020-02-13 
                this.WorkGridView = this.gdvDepartal;
                this.InitFormNavigator();

            }
            else if (lueAllTypes.EditValue.ToString() == "McType")
            {
                this.gcMcType.Visible = true;
                this.EditorTypeName = typeof(MCTypeDetailForm).FullName;
                this.objListGridControl.Visible = false;
                this.gdcDepartal.Visible = false;
                //_istitletypegrid = true;
                this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "METHODTYPE").OrderBy(p => p.SortID);
                this.gcMcType.DataSource = this.BindingSource;
                gcMcType.Dock = DockStyle.Fill;
            }
            else
            {
                //只有维护部门信息时，才显示出栏：HW Cost for Mgt Acct
                //this.colHWCostDescriptionEn.Visible = lueAllTypes.EditValue.ToString() == "DPTUS";
                //this.colHWCostDescriptionLocal.Visible = this.colHWCostDescriptionEn.Visible;
                this.colHWCostDescriptionEn.Visible = false;
                this.colHWCostDescriptionLocal.Visible = false;


                //只有HW Group維護時，才顯示出欄：HW Category Code
                this.colHSCode.Visible = lueAllTypes.EditValue.ToString() == "McGroup";
                this.colHWCategoryDescriptionLocal.Visible = this.colHSCode.Visible;
                this.colHWCategoryDescriptionEn.Visible = this.colHSCode.Visible;
                if (this.colHSCode.Visible)
                {
                    this.colHSCode.VisibleIndex = 1;
                    this.colHWCategoryDescriptionEn.VisibleIndex = 2;
                    this.colHWCategoryDescriptionLocal.VisibleIndex = 3;
                }

                this.objListGridView.ColumnPanelRowHeight = -1;

                this.colRECDepartment.Visible = lueAllTypes.EditValue.ToString() == "cbbRecrole"; //只有Rec维护时才显示
                this.colRECDiffDept.Visible = this.colRECDepartment.Visible; //只有Rec维护时才显示
                if (this.colRECDepartment.Visible)
                {
                    this.objListGridView.ColumnPanelRowHeight = 35;
                    this.colRECDiffDept.VisibleIndex = 10;
                    this.colRECDepartment.VisibleIndex = 11;
                }

                gcMcType.Visible = false;
                this.EditorTypeName = typeof(BaseCodeEdtFrm).FullName;
                this.gdcTitleType.Visible = false;
                this.gdcDepartal.Visible = false;
                _isdeptgrid = false;
                _istitletypegrid = false;

                this.objListGridControl.Visible = true;
                this.objListGridControl.Dock = DockStyle.Fill;

                //由david增加 2020-02-13
                this.colSeqNo.Caption = "Seq No.";
                if (lueAllTypes.EditValue.ToString() == "Grade")
                {
                    this.colSeqNo.Caption = "Grading\r\nSeq";
                }

                // if (!rbRegion.Checked)
                if (MParam == "C")
                {
                    //原先过滤数据有问题(取树状结构数据改为用SQL递归)，由David改写 2019-12-06 
                    string _value = lueAllTypes.EditValue.ToString();
                    string sqlcmd = @"with f as 
                                      (
                                        select * from BaseCode where Type = 'REGION' and Name = '{0}' and isnull(ParentCode, '') = ''
                                        union all
                                        select a.* from BaseCode as a join f as b on a.ParentCode = b.Code
                                      )
                                      select * from f";
                    sqlcmd = string.Format(sqlcmd, _value);

                    this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).ExecuteQuery<BaseCode>(sqlcmd);


                    //                    string _value = lueAllTypes.EditValue.ToString();
                    //                    // this.BindingSource.DataSource = bcl.GetDataByCondition(string.Format("type='{0}'", lueAllTypes.EditValue.ToString()));

                    //                    string sqlcmd = string.Format(@"select * from basecode where Type='REGION' and name='{0}'
                    //                                 union select * from basecode where Type='AREA' and parentcode in (select code from basecode where Type='REGION' and name='{0}')
                    //                                 union select a.* from basecode a where Type='AREA' and exists (select 1 from   basecode where Type='AREA' and exists
                    //                             (select 1 from   basecode  where Type='AREA' AND parentcode=(select code from basecode where Type='REGION' and name='{0}') and a.parentcode=code))", _value);
                    //                    this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).ExecuteQuery<BaseCode>(sqlcmd);


                }

                else if (MParam == "B" || MParam == "A" || MParam == "E")
                {
                    this.BindingSource.DataSource = bcl.GetDataByCondition(string.Format("type='{0}'", lueAllTypes.EditValue.ToString())).ToList();

                    if (lueAllTypes.EditValue.ToString() == "McGroup")
                    {
                        this.EditorTypeName = typeof(McClassDetailFrm).FullName;

                        this.colCode.Caption = "HW Grp Code";
                    }
                    else if (lueAllTypes.EditValue.ToString() == "McCategory")
                    {
                        this.EditorTypeName = typeof(MCCategoryDetailForm).FullName;
                        this.colCode.Caption = "HW Cateory Code";
                    }

                    //else if (lueAllTypes.EditValue.ToString() == "McType")
                    //{
                    //    this.EditorTypeName = typeof(MCTypeDetailForm).FullName;
                    //    this.gcMcGroupType.Visible = true;
                    //    this.objListGridControl.Visible = false;
                    //    this.gdcDepartal.Visible = false;
                    //    _istitletypegrid = true;
                    //    this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "METHODTYPE");
                    //    this.gcMcGroupType.DataSource = this.BindingSource;
                    //    gcMcGroupType.Dock = DockStyle.Fill;
                    //}
                    else
                        this.EditorTypeName = typeof(BaseCodeEdtFrm).FullName;
                }

                this.objListGridControl.DataSource = this.BindingSource;

                this.objListGridControl.Visible = true;
                this.InitFormNavigator();
            }
        }

        private void SetMasterGrid(RAPLQDataContext rqc)
        {

            this.colType.FieldName = "Type";
            this.colName.FieldName = "Name";
            this.colNameCn.FieldName = "Description";
            this.colNameBd.FieldName = "NameBd";
            this.colCode.FieldName = "Lang";
            this.colSeqNo.FieldName = "SortID";
            string stype = lueAllTypes.EditValue.ToString();

            if (stype == "REGION" || stype == "AREA")
            {


                //rluParentCode.ValueMember = "Code";
                ////rluParentCode.DisplayMember
                //this.rluParentCode.DataSource = "";
                //if (stype == "REGION") //省
                //{
                //   colParentCode.Caption = "Which Country";
                //   rluParentCode.Columns.Add(new DevExpress.XtraEditors.Controls.LookUpColumnInfo("NameC",10,"Country"));

                //}
                //else
                //{
                //    colParentCode.Caption = "Which Province";
                //    rluParentCode.Columns.Add(new DevExpress.XtraEditors.Controls.LookUpColumnInfo("NameC", 10, "Country"));
                //    rluParentCode.Columns.Add(new DevExpress.XtraEditors.Controls.LookUpColumnInfo("NameP", 10, "Province"));
                //}

            }
            else
                colParentCode.Visible = false;

            this.objListGridControl.Dock = DockStyle.Fill;

            this.BindingSource.DataSource = bcl.GetDataByCondition(string.Format("type='{0}'", lueAllTypes.EditValue.ToString()));
            this.objListGridControl.DataSource = this.BindingSource;

        }

        private void SetTitleTypeGrid(RAPLQDataContext rqc)
        {

            // this.BindingSource.DataSource = null;

            this.gcTitleTypeCode.FieldName = "Code";
            this.gcTitleTypeEn.FieldName = "TitleTypeEn";
            this.gcTitleTypeCn.FieldName = "TitleTypeCn";
            this.gcTitleTypeBd.FieldName = "TitleTypeBd";

            this.gcJobTitleCode.FieldName = "JTCode";
            this.gcJobTitleEn.FieldName = "JobTitleEn";
            this.gcJobTitleCn.FieldName = "JobTitleCn";
            this.gcJobTitleBd.FieldName = "JobTitleBd";
            this.gcWageCode.FieldName = "WageCode";
            this.gcDepartals.FieldName = "Departmentals";

            this.gcSewingDirect.FieldName = "SewingDirect";
            this.gcProductionIndirect.FieldName = "ProductionIndirect";
            this.gcNonProduction.FieldName = "NonProduction";
            this.gcSalesSupportive.FieldName = "SalesSL_HeadOfficeCost";
            this.gcSeqNo.FieldName = "SeqNo";
            //gcSeqNo.SortOrder = ColumnSortOrder.Ascending;

            //改為顯示Labor/Staff兩種類型的資料，并增加排序功能 由David修改 2018-02-27

            //this.bsTitleJob.DataSource = null;
            //this.bsTitleJob.DataSource = rqc.Master_data_For_Job_Titles.ToList().OrderBy(p => p.GradeSeq).ThenBy(p => p.SeqNo).ThenBy(p => p.Code).ThenBy(p => p.JTCode);
            //this.bsTitleJob.DataSource = rqc.Master_data_For_Job_Titles.OrderBy(p => p.GradeSeq).ThenBy(p => p.SeqNo).ThenBy(p => p.Code).ThenBy(p => p.JTCode);

            this.bsTitleJob.DataSource = rqc.Master_data_For_Job_Titles;

            this.gdvTtitletype.BeginSort();
            try
            {
                this.gdvTtitletype.ClearSorting();
                this.gcGradingSeq.SortOrder = ColumnSortOrder.Ascending;
                this.gcSeqNo.SortOrder = ColumnSortOrder.Ascending;
                this.gcTitleTypeCode.SortOrder = ColumnSortOrder.Ascending;
                this.gcJobTitleCode.SortOrder = ColumnSortOrder.Ascending;
            }
            finally
            {
                this.gdvTtitletype.EndSort();
            }


            //this.bsTitleJob.DataSource = rqc.Master_data_For_Job_Titles.OrderBy(p => p.GradeObject.SortID).ThenBy(p => p.SeqNo).ThenBy(p => p.Code).ThenBy(p => p.JTCode);

            //if (lueAllTypes.EditValue.ToString().ToLower() == "titleandjob_sf")
            //{


            //    //gcSeqNo.Visible = true;
            //    //gcSeqNo.SortOrder = ColumnSortOrder.Descending;
            //    //gcJobTitleCode.SortOrder = ColumnSortOrder.None;
            //    this.bsTitleJob.DataSource = rqc.Master_data_For_Job_Titles.Where(pp => pp.IsStaff);
            //}
            //else
            //{
            //    this.bsTitleJob.DataSource = rqc.Master_data_For_Job_Titles.Where(pp => !pp.IsStaff);
            //   // //gcSeqNo.Visible = false;
            //   // //gcSeqNo.SortOrder = ColumnSortOrder.Ascending;
            //   //// gcJobTitleCode.SortOrder = ColumnSortOrder.Ascending;
            //}


            this.gdcTitleType.Dock = DockStyle.Fill;

            //this.bsTitleJob.DataSource = rqc.Master_data_For_Job_Titles;

            // this.BindingSource.DataSource = rqc.Master_data_For_Job_Titles;

            if (_isdeptgrid)
            {
                this.gdvDepartal.FocusedRowChanged -= new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(gdvDepartal_FocusedRowChanged);
                _isdeptgrid = false;
            }

            this.gdvTtitletype.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(gdvTtitletype_FocusedRowChanged);
            // this.gdcTitleType.DataSource = this.BindingSource;


        }

        private void SetLocation(RAPLQDataContext rqc)
        {

            //  string[] locations = rqc.BaseCodes.Where(P => P.Type == "cbbDeptLocation").Select(S => S.Name).Distinct().ToArray();


            // rcbLocation.Properties.Items.AddRange(publicLibary.getItems("DPTUS", rqc));

            //rcbDivision.Properties.Items.AddRange(publicLibary.getItems("Division", rqc));

            //  rcbSection.Properties.Items.AddRange(publicLibary.getItems("WorkShopNew", rqc)); //課與區
            //rcbSection.Properties.Items.AddRange(publicLibary.getItems("Division", rqc));


            // rcbLocation.Properties.Items.AddRange(publicLibary.getItems("cbbDeptLocation", rqc));
            //rcbClass.Properties.Items.AddRange(Where_2_Team);

            //rcbDivision.Properties.Items.AddRange(publicLibary.getItems("Division", rqc)); 


        }

        private void SetDepartalGrid(RAPLQDataContext rqc, string Division)
        {

            this.bsDepartal.DataSource = null;
            gcDepartmental.FieldName = "Deptmental_EN";
            //gcDivision.FieldName = "Division_EN";

            gcSection.FieldName = "Section_EN";
            gcTeam.FieldName = "Team_EN";
            gcClass.FieldName = "Class_EN";
            gcSortNo.FieldName = "SeqNo";

            gcDeptType.FieldName = "DeptType";

            gcDepart_chn.FieldName = "Departalment_chn";
            //gcDivision_chn.FieldName = "Division_chn";
            gcSection_chn.FieldName = "Section_chn";
            gcTeam_chn.FieldName = "Team_chn";
            gcClass_chn.FieldName = "Class_chn";


            rluDepttype.Properties.DisplayMember = "Name";
            rluDepttype.Properties.ValueMember = "Code";
            rluDepttype.DataSource = GetDetpType();

            //this.edtMachinePlace.Properties.DisplayMember = "Id";
            //this.edtMachinePlace.Properties.ValueMember = "Id";

            string[] Whrere_1_Team = rqc.BaseCodes.Where(P => P.Type == "cobWhere_1_Team" || P.Type == "WFWhere_1_team").Select(S => S.Name).Distinct().ToArray();
            string[] Where_2_Team = publicLibary.getItems("WFWhere_2_class", rqc);

            rcbDepart.Properties.Items.AddRange(publicLibary.getItems("DPTUS", rqc));

            //rcbDivision.Properties.Items.AddRange(publicLibary.getItems("Division", rqc));

            rcbSection.Properties.Items.AddRange(publicLibary.getItems("WorkShopNew", rqc)); //課與區
            //rcbSection.Properties.Items.AddRange(publicLibary.getItems("Division", rqc));


            rcbTeam.Properties.Items.AddRange(Whrere_1_Team);
            rcbClass.Properties.Items.AddRange(Where_2_Team);

            rcbDivision.Properties.Items.AddRange(publicLibary.getItems("Division", rqc));

            this.gdcDepartal.Dock = DockStyle.Fill;
            this.bsDepartal.DataSource = rqc.DepartalSorts.OrderBy(p => p.SeqNo);

            this.gdvDepartal.ActiveFilter.Clear();
            this.gdvDepartal.ActiveFilterString = "[Active] = True";

            // this.BindingSource.DataSource = rqc.DepartalSorts;
            if (_istitletypegrid)
            {
                this.gdvTtitletype.FocusedRowChanged -= new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(gdvTtitletype_FocusedRowChanged);
                _istitletypegrid = false;
            }

            this.gdvDepartal.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(gdvDepartal_FocusedRowChanged);

            this.FormatPostion();
        }



        void gdvDepartal_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            this.FormatPostion();

            if (this.gdvDepartal.PostEditor())
            {
                this.gdvDepartal.UpdateCurrentRow();
                this.gdvDepartal.CloseEditor();

            }
            else
            {
                MessageBox.Show("Sorry,can not post the changed data to datasource!");
                return;
            }

            RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;
            foreach (var item in rqc.GetChangeSet().Updates)
            {
                DepartalSort dep = item as DepartalSort;

                if (string.IsNullOrEmpty(dep.Division_EN))
                    dep.Division_EN = "";

                if (string.IsNullOrEmpty(dep.Section_EN))
                    dep.Section_EN = "- -";

                if (string.IsNullOrEmpty(dep.Team_EN))
                    dep.Team_EN = "- -";

                if (string.IsNullOrEmpty(dep.Class_EN))
                    dep.Class_EN = "- -";

                if (!dep.HKOFFICE.GetValueOrDefault())
                    dep.HKOFFICE = false;

                if (!dep.SLMAIN.GetValueOrDefault())
                    dep.SLMAIN = false;
                if (!dep.SLSALES.GetValueOrDefault())
                    dep.SLSALES = false;
                if (!dep.GGSALES.GetValueOrDefault())
                    dep.GGSALES = false;
                if (!dep.GGFACT.GetValueOrDefault())
                    dep.GGFACT = false;
                if (!dep.CGFACT.GetValueOrDefault())
                    dep.CGFACT = false;
                if (!dep.CGSALES.GetValueOrDefault())
                    dep.CGSALES = false;
                if (!dep.RXFACT.GetValueOrDefault())
                    dep.RXFACT = false;

                //IQueryable<PH.LWPM.BO.WorkForce> lst = rqc.WorkForces.Where(P => P.DeptName == dep.Deptmental_EN);

                //if (!string.IsNullOrEmpty(dep.Section_EN) && dep.Section_EN.Trim() != "--")
                //    lst = lst.Where(p => p.WFWhere == dep.Section_EN);

                //if (!string.IsNullOrEmpty(dep.Team_EN) && dep.Team_EN.Trim() != "--")
                //    lst = lst.Where(p => p.WFWhere_1 == dep.Team_EN);

                //if (!string.IsNullOrEmpty(dep.Class_EN) && dep.Class_EN.Trim() != "--")
                //    lst = lst.Where(p => p.WFWhere_2 == dep.Class_EN);


                IQueryable<PH.LWPM.BO.WorkForce> lst = rqc.WorkForces.Where(P => P.DeptName == dep.Deptmental_EN && P.WFWhere == dep.Section_EN
                    && P.WFWhere_1 == dep.Team_EN && P.WFWhere_2 == dep.Class_EN);

                foreach (PH.LWPM.BO.WorkForce _item in lst)
                {

                    if (string.IsNullOrEmpty(dep.SeqNo))
                        _item.SeqNo = null;
                    else
                        _item.SeqNo = dep.SeqNo;

                    if (dep.Deptmental_EN == "Sewing Dept" && _item.Factory.Trim() == "SL")
                    {
                        _item.WorkRegion = dep.WorkRegion;
                        _item.Location = dep.Location;
                    }
                }

            }

            rqc.SubmitChanges();
        }


        void gdvTtitletype_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            if (this.gdvTtitletype.PostEditor())
            {
                this.gdvTtitletype.UpdateCurrentRow();
                this.gdvTtitletype.CloseEditor();
                this.BindingSource.EndEdit();
                if (this.DataContext.GetChangeSet().Inserts.Count > 0)
                {
                    Master_data_For_Job_Title mt = this.DataContext.GetChangeSet().Inserts[0] as Master_data_For_Job_Title;
                    //SetID(mt);
                    if (lueAllTypes.EditValue.ToString().ToLower() == "titleandjob_sf")
                        mt.IsStaff = true;
                    else
                        mt.IsStaff = false;
                }

                if (this.DataContext.GetChangeSet().Updates.Count > 0)
                {

                    RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;
                    Master_data_For_Job_Title mft = this.DataContext.GetChangeSet().Updates[0] as Master_data_For_Job_Title;

                    IQueryable<PH.LWPM.BO.WorkForce> lst = rqc.WorkForces.Where(P => P.TitleTypeCode == mft.Code && P.JobTitleCode == mft.JTCode);

                    foreach (PH.LWPM.BO.WorkForce _item in lst)
                    {
                        if (string.IsNullOrEmpty(mft.SeqNo))
                            _item.jobtitle_SeqNo = null;
                        else
                            _item.jobtitle_SeqNo = mft.SeqNo;
                    }
                }

            }
            else
            {
                MessageBox.Show("Sorry,can not post the changed data to datasource!");
                return;
            }


            this.DataContext.SubmitChanges();

            this.FormatPostion();


        }

        //private void SetID(Master_data_For_Job_Title newobj)
        //{
        //    lock (objlock)
        //    {
        //        RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;
        //        newobj.ID = rqc.Master_data_For_Job_Titles.Max(P => P.Id) + 1;
        //        newobj.IsStaff = false;
        //        //return insertid;    
        //    }
        //}


        protected override void OnClickDelete()
        {

            int idx = 0;
            DevExpress.XtraGrid.Views.Base.ColumnView focuseview = null;
            if (_istitletypegrid)
            {
                if (this.bsTitleJob.Count > 0)
                {
                    idx = this.gdvTtitletype.FocusedRowHandle;
                    if (this.InternalShowMessage(PLATFORMNAME, "msgDeleteconfirm", "msgDeleteconfirm") == DialogResult.Yes)
                    {
                        //object obj = this.bsTitleJob[this.bsTitleJob.IndexOf(this.bsTitleJob.Current)];              
                        focuseview = (DevExpress.XtraGrid.Views.Base.ColumnView)this.gdvTtitletype;
                    }
                }
            }


            if (_isdeptgrid)
            {
                if (this.bsDepartal.Count > 0)
                {
                    idx = this.gdvDepartal.FocusedRowHandle;
                    if (this.InternalShowMessage(PLATFORMNAME, "msgDeleteconfirm", "msgDeleteconfirm") == DialogResult.Yes)
                    {
                        // object obj = this.bsDepartal[this.bsDepartal.IndexOf(this.bsDepartal.Current)];                    
                        focuseview = (DevExpress.XtraGrid.Views.Base.ColumnView)this.gdvDepartal;
                    }
                }
            }



            if (_isdeptgrid || _istitletypegrid)
            {

                if (focuseview != null)
                {
                    focuseview.DeleteRow(idx);

                }

                this.DataContext.SubmitChanges();
                focuseview.RefreshData();
            }

            else
                base.OnClickDelete();


        }


        //public override void ExportData(string filetype)
        //{

        //    if (_isdeptgrid || _istitletypegrid)
        //    {
        //        if (_isdeptgrid)
        //            ExportMasterData(filetype, this.gdvDepartal);
        //        if (_istitletypegrid)
        //            ExportMasterData(filetype, this.gdvTtitletype);
        //    }
        //    else 
        //      base.ExportData(filetype);
        //}


        #region export jobtitle&Departmental
        public virtual void ExportMasterData(string filetype, DevExpress.XtraGrid.Views.Grid.GridView gv)
        {
            SaveFileDialog sfd = new SaveFileDialog();
            switch (filetype)
            {
                case "pdf":
                    sfd.DefaultExt = ".pdf";
                    sfd.Filter = "pdf Files(*.pdf)|*.pdf";
                    break;
                case "xls":
                    sfd.DefaultExt = ".xls";
                    sfd.Filter = "xls Files(*.xls)|*.xls";
                    sfd.FilterIndex = 1;
                    break;

                case "doc":
                    sfd.DefaultExt = ".doc";
                    sfd.Filter = "doc Files(*.doc)|*.doc";
                    sfd.FilterIndex = 1;
                    break;

                case "html":
                    sfd.DefaultExt = ".html";
                    sfd.Filter = "html Files(*.html)|*.html";
                    sfd.FilterIndex = 1;
                    break;

                case "txt":
                    sfd.DefaultExt = ".txt";
                    sfd.Filter = "txt Files(*.txt)|*.txt";
                    sfd.FilterIndex = 1;
                    break;
                default:
                    sfd.DefaultExt = ".xls";
                    sfd.Filter = "xls Files(*.xls)|*.xls";
                    sfd.FilterIndex = 1;
                    break;
            }
            sfd.RestoreDirectory = true;
            DialogResult dlgr = sfd.ShowDialog();
            if (dlgr != DialogResult.Cancel)
            {
                string file = sfd.FileName;
                //saveFileDialog1.FilterIndex = 2;
                switch (filetype)
                {
                    case "pdf":
                        gv.ExportToPdf(file);
                        break;
                    case "xls":
                        try
                        {
                            gv.ExportToXls(file);
                        }
                        catch
                        {
                            gv.ExportToExcelOld(file);
                        }
                        //objListGridView.ExportToXls(file);
                        break;

                    case "doc":
                        gv.ExportToRtf(file);
                        break;

                    case "html":

                        gv.ExportToHtml(file);
                        break;

                    case "txt":
                        gv.ExportToText(file);
                        break;
                    default:
                        gv.ExportToXls(file);
                        break;
                }
                //是否直接打開文件
                //DialogResult dlg = MessageBox.Show("Do you want to open the file now?", "Open Dialog", MessageBoxButtons.YesNo);
                DialogResult dlg = this.ShowMessage(PLATFORMSIDEPROGRAMID, PLATFORMFILEID, PLATFORMNAME, "msgIfopenfile", "msgIfopenfile");
                if (dlg == DialogResult.Yes)
                {
                    ProcessStartInfo pInfo = new ProcessStartInfo();
                    pInfo.FileName = sfd.FileName;
                    Process p = Process.Start(pInfo);
                }
            }
        }

        #endregion


        List<DeptType> GetDetpType()
        {
            RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;
            var depts = from a in rqc.BaseCodes
                        where a.Type == "DeptType"
                        select new { a.Code, a.Name };
            List<DeptType> lst = new List<DeptType>();
            foreach (var item in depts)
            {
                if (item != null)
                {
                    DeptType dt = new DeptType();
                    dt.Code = item.Code;
                    dt.Name = item.Name;
                    lst.Add(dt);
                }
            }

            return lst;
        }


        public class DeptType
        {
            #region
            private string _code;
            private string _name;

            public string Code
            {
                get
                {
                    return _code;
                }
                set
                {
                    _code = value;
                }
            }

            public string Name
            {
                get
                {
                    return _name;
                }
                set
                {
                    _name = value;
                }
            }
            #endregion
        }

        private void btnExpandArea_Click(object sender, EventArgs e)
        {
            this.trRegion.ExpandAll();
        }

        private void btnCollapseArea_Click(object sender, EventArgs e)
        {
            this.trRegion.CollapseAll();
        }

        private void btnAddrRoot_Click(object sender, EventArgs e)
        {
            //this.AddNewObject();
        }
        public string PID;
        public bool isaddchild;
        public BaseCode objparent;
        private void btnAddChild_Click(object sender, EventArgs e)
        {
            isaddchild = true;
            objparent = this.BindingSource.Current as BaseCode;
            OnClickAddNew();

        }

        private void trRegion_DragLeave(object sender, EventArgs e)
        {
            this.DataContext.SubmitChanges();
        }

        private void trRegion_FocusedNodeChanged(object sender, FocusedNodeChangedEventArgs e)
        {
            this.DataContext.SubmitChanges();
        }

        private void trRegion_AfterDragNode(object sender, NodeEventArgs e)
        {
            this.DataContext.SubmitChanges();
        }

        private void trRegion_DoubleClick(object sender, EventArgs e)
        {
            this.OnClickOpen();
        }

        private BaseCode GetDragObject(IDataObject data)
        {
            return data.GetData(typeof(BaseCode)) as BaseCode;
        }


        private TreeListNode GetDragNode(IDataObject data)
        {
            return data.GetData(typeof(TreeListNode)) as TreeListNode;
        }

        private void trRegion_DragOver(object sender, System.Windows.Forms.DragEventArgs e)
        {
            TreeListHitInfo hi = trRegion.CalcHitInfo(trRegion.PointToClient(new Point(e.X, e.Y)));
            TreeListNode node = GetDragNode(e.Data);
            if (node == null)
            {
                if (hi.HitInfoType == HitInfoType.Empty || hi.Node != null)
                    e.Effect = DragDropEffects.Copy;
                else
                    e.Effect = DragDropEffects.None;
            }
            this.DataContext.SubmitChanges();
        }


        private void trRegion_DragDrop(object sender, DragEventArgs e)
        {
            TreeListHitInfo hi = trRegion.CalcHitInfo(trRegion.PointToClient(new Point(e.X, e.Y)));
            BaseCode dobj = GetDragObject(e.Data);
            if (dobj != null)
            {
                TreeListNode node = hi.Node;
                if (hi.HitInfoType == HitInfoType.Empty || node != null)
                {
                    node = trRegion.AppendNode(dobj.Code, node);
                    //node.StateImageIndex = dobj.ImageIndex;
                    trRegion.MakeNodeVisible(node);
                    TreeListNode parentNode = node.ParentNode;
                    if (parentNode != null && (e.KeyState & 4) != 0)
                    {
                        int index = -1;
                        if (parentNode.ParentNode != null)
                            index = parentNode.ParentNode.Nodes.IndexOf(parentNode);
                        trRegion.MoveNode(node, parentNode.ParentNode);
                        trRegion.SetNodeIndex(node, index);
                    }
                }
            }
            this.DataContext.SubmitChanges();
        }


        public int SelectIdx;
        public TreeListNode SelectNode;
        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (!trRegion.Visible)
                return;

            isaddchild = true;
            objparent = this.BindingSource.Current as BaseCode;

            RAPLQDataContext rdc = this.DataContext as RAPLQDataContext;
            //選擇某個市,但town未加入
            //if (rdc.BaseCodes.Where(p => p.Code.EndsWith("GC") && p.Name.ToLower() == "town").Count() == 0
            //    && objparent.Type.ToLower() == "area")
            //    return;
            SelectIdx = this.BindingSource.Position; //trRegion.GetNodeIndex(trRegion.FocusedNode);
            SelectNode = trRegion.FocusedNode;
            OnClickAddNew();

        }

        private void itemExpand_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.trRegion.ExpandAll();
        }

        private void itemCollapse_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.trRegion.CollapseAll();
        }

        public override void ExportData(string filetype)
        {
            SaveFileDialog sfd = new SaveFileDialog();
            switch (filetype)
            {
                case "pdf":
                    sfd.DefaultExt = ".pdf";
                    sfd.Filter = "pdf Files(*.pdf)|*.pdf";
                    break;
                case "xls":
                    sfd.DefaultExt = ".xls";
                    sfd.Filter = "xls Files(*.xls)|*.xls";
                    sfd.FilterIndex = 1;
                    break;

                case "doc":
                    sfd.DefaultExt = ".doc";
                    sfd.Filter = "doc Files(*.doc)|*.doc";
                    sfd.FilterIndex = 1;
                    break;

                case "html":
                    sfd.DefaultExt = ".html";
                    sfd.Filter = "html Files(*.html)|*.html";
                    sfd.FilterIndex = 1;
                    break;

                case "txt":
                    sfd.DefaultExt = ".txt";
                    sfd.Filter = "txt Files(*.txt)|*.txt";
                    sfd.FilterIndex = 1;
                    break;
                default:
                    sfd.DefaultExt = ".xls";
                    sfd.Filter = "xls Files(*.xls)|*.xls";
                    sfd.FilterIndex = 1;
                    break;
            }
            sfd.RestoreDirectory = true;
            DialogResult dlgr = sfd.ShowDialog();
            if (dlgr != DialogResult.Cancel)
            {
                string file = sfd.FileName;
                //saveFileDialog1.FilterIndex = 2;

                if (this.trRegion.Visible)
                    trRegion.ExpandAll();

                switch (filetype)
                {
                    case "pdf":
                        if (this.objListGridControl.Visible)
                            this.objListGridView.ExportToPdf(file);
                        else if (this.gdcTitleType.Visible)
                            gdvTtitletype.ExportToPdf(file);
                        else if (this.gdcDepartal.Visible)
                            this.gdvDepartal.ExportToPdf(file);
                        else if (this.trRegion.Visible)
                        {

                            this.trRegion.ExportToPdf(file);
                        }
                        else if (this.gcMcType.Visible)
                            this.gridMcType.ExportToPdf(file);

                        break;
                    case "xls":
                        try
                        {
                            //objListGridView.ExportToXls(file);
                            if (this.objListGridControl.Visible)
                                this.objListGridView.ExportToXls(file);
                            else if (this.gdcTitleType.Visible)
                                gdvTtitletype.ExportToXls(file);
                            else if (this.gdcDepartal.Visible)
                                this.gdvDepartal.ExportToXls(file);
                            else if (this.trRegion.Visible)
                                this.trRegion.ExportToXls(file);
                            else if (this.gcMcType.Visible)
                                this.gridMcType.ExportToXls(file);
                        }
                        catch
                        {
                            // objListGridView.ExportToExcelOld(file);

                            if (this.objListGridControl.Visible)
                                this.objListGridView.ExportToExcelOld(file);
                            else if (this.gdcTitleType.Visible)
                                gdvTtitletype.ExportToExcelOld(file);
                            else if (this.gdcDepartal.Visible)
                                this.gdvDepartal.ExportToExcelOld(file);
                            else if (this.trRegion.Visible)
                                this.trRegion.ExportToXml(file);
                        }
                        //objListGridView.ExportToXls(file);
                        break;

                    case "doc":
                        //this.objListGridView.ExportToRtf(file);
                        if (this.objListGridControl.Visible)
                            this.objListGridView.ExportToRtf(file);
                        else if (this.gdcTitleType.Visible)
                            gdvTtitletype.ExportToRtf(file);
                        else if (this.gdcDepartal.Visible)
                            this.gdvDepartal.ExportToRtf(file);
                        else if (this.trRegion.Visible)
                            this.trRegion.ExportToRtf(file);
                        else if (this.gcMcType.Visible)
                            this.gridMcType.ExportToRtf(file);
                        break;

                    case "html":

                        // this.objListGridView.ExportToHtml(file);
                        if (this.objListGridControl.Visible)
                            this.objListGridView.ExportToHtml(file);
                        else if (this.gdcTitleType.Visible)
                            gdvTtitletype.ExportToHtml(file);
                        else if (this.gdcDepartal.Visible)
                            this.gdvDepartal.ExportToHtml(file);
                        else if (this.trRegion.Visible)
                            this.trRegion.ExportToHtml(file);
                        else if (this.gcMcType.Visible)
                            this.gridMcType.ExportToHtml(file);
                        break;

                    case "txt":
                        // this.objListGridView.ExportToText(file);
                        if (this.objListGridControl.Visible)
                            this.objListGridView.ExportToText(file);
                        else if (this.gdcTitleType.Visible)
                            gdvTtitletype.ExportToText(file);
                        else if (this.gdcDepartal.Visible)
                            this.gdvDepartal.ExportToText(file);
                        else if (this.trRegion.Visible)
                            this.trRegion.ExportToText(file);
                        else if (this.gcMcType.Visible)
                            this.gridMcType.ExportToText(file);
                        break;
                    default:
                        // this.objListGridView.ExportToXls(file);

                        if (this.objListGridControl.Visible)
                            this.objListGridView.ExportToXls(file);
                        else if (this.gdcTitleType.Visible)
                            gdvTtitletype.ExportToXls(file);
                        else if (this.gdcDepartal.Visible)
                            this.gdvDepartal.ExportToXls(file);
                        else if (this.trRegion.Visible)
                            this.trRegion.ExportToXls(file);
                        else if (this.gcMcType.Visible)
                            this.gridMcType.ExportToXls(file);
                        break;
                }
                //是否直接打開文件
                //DialogResult dlg = MessageBox.Show("Do you want to open the file now?", "Open Dialog", MessageBoxButtons.YesNo);
                DialogResult dlg = this.ShowMessage(PLATFORMSIDEPROGRAMID, PLATFORMFILEID, PLATFORMNAME, "msgIfopenfile", "msgIfopenfile");
                if (dlg == DialogResult.Yes)
                {
                    ProcessStartInfo pInfo = new ProcessStartInfo();
                    pInfo.FileName = sfd.FileName;
                    Process p = Process.Start(pInfo);
                }
            }
        }

        private void radioGroup1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            string _selecttext = lueAllTypes.EditValue.ToString().ToLower();
            string _text = lueAllTypes.Text;
            string _ttl = _text.Substring(2);

            if (MParam == "E")
            {
                if (_selecttext == "mccategory")
                {
                    HWCategoryReport rptHWCategory = new HWCategoryReport(this.objListGridView.FilteredList());
                    rptHWCategory.ShowPreview();
                }
                else if (_selecttext == "mcgroup")
                {
                    HWGroupReport rptHWGroup = new HWGroupReport(this.objListGridView.FilteredList());
                    rptHWGroup.ShowPreview();
                }
                else if (_selecttext == "mctype")
                {
                    HWTypeReport rptHWType = new HWTypeReport(this.gridMcType.FilteredList());
                    rptHWType.ShowPreview();
                }
            }
            //else if (MParam == "C")
            //{
            //}
            else if (MParam == "B" || MParam == "A")
            {
                //this.BindingSource.DataSource = bcl.GetDataByCondition(string.Format("type='{0}'", lueAllTypes.EditValue.ToString()));

                if (_selecttext == "titleandjob_sf")
                {
                    IQueryable<Master_data_For_Job_Title> _data1 = (IQueryable<Master_data_For_Job_Title>)this.bsTitleJob.DataSource;
                    RptJobTitle _rpt2 = new RptJobTitle(_data1, "Title Type & Job Title For Staff");
                    _rpt2.ShowPreview();
                }
                else if (_selecttext == "titleandjob")
                {
                    IQueryable<Master_data_For_Job_Title> _data = (IQueryable<Master_data_For_Job_Title>)this.bsTitleJob.DataSource;
                    RptJobTitle _rpt1 = new RptJobTitle(_data, "Title Type & Job Title For Employee");
                    _rpt1.ShowPreview();
                }
                else if (_selecttext == "departalsort")
                {

                    // List<DepartalSort> _data1 = (List<DepartalSort>)this.bsDepartal.DataSource;

                    //object _obj = this.bsDepartal.DataSource

                    //object _obj = this.gdvDepartal.FilteredList(); //只取网格中显示的数据，由David修改 2020-02-18
                    //RptDepartal _rpt3 = new RptDepartal(_obj);
                    //_rpt3.ShowPreview();


                    DepartmentalPrintSetupForm frmDeptPrintSetup = new DepartmentalPrintSetupForm();
                    if (frmDeptPrintSetup.ShowDialog() == DialogResult.Cancel) return;

                    DepartmentalReport rptDepartmental = null;

                    if (frmDeptPrintSetup.CheckHK) //HK Head Office
                    {
                        var HKHeadOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.HKOFFICE ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                        foreach (var obj in HKHeadOffLists)
                        {
                            obj.GroupField = "HK - Head Off. cost";
                            obj.GroupSortID = 1;
                        }
                        DepartmentalReport rptHK = new DepartmentalReport(HKHeadOffLists,"");
                        rptHK.CreateDocument();
                        rptDepartmental = rptHK;
                    }

                    if (frmDeptPrintSetup.CheckSL) //SL Office + SL Fty
                    {
                        var SLOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.SLSALES ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                        foreach (var obj in SLOffLists)
                        {
                            obj.GroupField = "SL - Head Off. cost";
                            obj.GroupSortID = 1;
                        }

                        var SLFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.SLMAIN ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                        foreach (var obj in SLFtyLists)
                        {
                            obj.GroupField = "SL - Fty cost";
                            obj.GroupSortID = 2;
                        }

                        SLOffLists.AddRange(SLFtyLists);

                        DepartmentalReport rptSL = new DepartmentalReport(SLOffLists,"");
                        rptSL.CreateDocument();

                        if (rptDepartmental == null)
                        {
                            rptDepartmental = rptSL;
                        }
                        else
                        {
                            rptDepartmental.Pages.AddRange(rptSL.Pages);
                        }
                    }

                    if (frmDeptPrintSetup.CheckRX) //RX Office + RX Fty
                    {
                        var RXOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.GGSALES ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                        foreach (var obj in RXOffLists)
                        {
                            obj.GroupField = "RX - Head Off. cost";
                            obj.GroupSortID = 1;
                        }

                        var RXFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.RXFACT ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                        foreach (var obj in RXFtyLists)
                        {
                            obj.GroupField = "RX - Fty cost";
                            obj.GroupSortID = 2;
                        }
                        RXOffLists.AddRange(RXFtyLists);
                        DepartmentalReport rptDeptRX = new DepartmentalReport(RXOffLists,"");
                        rptDeptRX.CreateDocument();

                        if (rptDepartmental == null)
                        {
                            rptDepartmental = rptDeptRX;
                        }
                        else
                        {
                            rptDepartmental.Pages.AddRange(rptDeptRX.Pages);
                        }
                    }

                    //if (frmDeptPrintSetup.CheckGG) //GG Fty
                    //{
                    //    var GGFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.GGFACT ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                    //    foreach (var obj in GGFtyLists)
                    //    {
                    //        obj.GroupField = "GG - Fty cost";
                    //        obj.GroupSortID = 1;
                    //    }
                    //    DepartmentalReport rptGG = new DepartmentalReport(GGFtyLists);
                    //    rptGG.CreateDocument();
                    //    if (rptDepartmental == null)
                    //    {
                    //        rptDepartmental = rptGG;
                    //    }
                    //    else
                    //    {
                    //        rptDepartmental.Pages.AddRange(rptGG.Pages);
                    //    }
                    //}

                    if (frmDeptPrintSetup.CheckCL) //CL Office + CL Fty
                    {
                        var CLOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.CGSALES ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                        foreach (var obj in CLOffLists)
                        {
                            obj.GroupField = "CL - Head Off. cost";
                            obj.GroupSortID = 1;
                        }

                        var CLFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.CGFACT ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                        foreach (var obj in CLFtyLists)
                        {
                            obj.GroupField = "CL - Fty cost";
                            obj.GroupSortID = 2;
                        }
                        CLOffLists.AddRange(CLFtyLists);
                        DepartmentalReport rptCL = new DepartmentalReport(CLOffLists,"");
                        rptCL.CreateDocument();

                        if (rptDepartmental == null)
                        {
                            rptDepartmental = rptCL;
                        }
                        else
                        {
                            rptDepartmental.Pages.AddRange(rptCL.Pages);
                        }
                    }
                    if (rptDepartmental == null) return;

                    rptDepartmental.PrintingSystem.ContinuousPageNumbering = false;
                    rptDepartmental.ShowPreview();
                }
                else
                {
                    if (_selecttext == "mcgroup")
                    {
                        List<RptMcClass> _list = RapHelper.GetMcClass();

                        foreach (RptMcClass _obj in _list)
                        {
                            string _code = _obj.Code;
                            int _total = _list.Where(p => p.Code == _code).Count();
                            _obj.Total = _total;
                        }


                        rptMcClass _rpt = new rptMcClass(_list);
                        _rpt.ShowPreview();
                    }
                    else if (_selecttext == "cbbrecrole") //为REC新加一个报表，由david加入 2020-03-05
                    {
                        List<BaseCode> lists = (List<BaseCode>)this.BindingSource.DataSource;
                        RECReport rptREC = new RECReport(lists);
                        rptREC.ShowPreview();
                    }
                    //else if (_selecttext == "dptus") //为Department新加一个报表，由david加入 2020-03-05
                    //{
                    //List<BaseCode> lists = (List<BaseCode>)this.BindingSource.DataSource;
                    //DepartmentReport rptDepartment = new DepartmentReport(lists);
                    //rptDepartment.ShowPreview();
                    //}
                    else
                    {
                        List<BaseCode> _rptdata = (List<BaseCode>)this.BindingSource.DataSource;
                        RptBaseData rpt = new RptBaseData(_rptdata, _text.Substring(2));
                        rpt.ShowPreview();
                    }
                }
            }

        }

        private void gcMcGroupType_DoubleClick(object sender, EventArgs e)
        {
            this.OnClickOpen();
        }

        private void rcbSection_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        //网格中的下拉框编辑框，下拉框没有显示出来时，不允许鼠标滚轮滚动 (不允许在网格单元格中直接滚动)
        void DisableMouseWheelComboBoxEditInGridViewCell(DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            if (this.gdvDepartal.ActiveEditor is ComboBoxEdit)
            {
                e.Handled = !(this.gdvDepartal.ActiveEditor as ComboBoxEdit).IsPopupOpen;
            }
        }

        private void gdvDepartal_InitNewRow(object sender, InitNewRowEventArgs e)
        {
            this.gdvDepartal.SetRowCellValue(e.RowHandle, "Active", true);
        }

        public RAPLQDataContext GetNewDataContext()
        {
            return ContextBuilder.CreateContext<RAPLQDataContext>();
        }

    }
}
