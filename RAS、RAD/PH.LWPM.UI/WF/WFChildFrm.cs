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
using System.Diagnostics;
using PH.LWPM.UI.IRepository;
using System.Collections;
using DevExpress.XtraBars;
using DevExpress.XtraEditors.Controls;

namespace PH.LWPM.UI.WF
{
    public partial class WFChildFrm : ParentChildForm
    {
        private IRepository.IWorkForceTrim repostory;
        private IRepository.IPublicLibrary publicLibary;
        public WFChildFrm()
        {
            InitializeComponent();
            this.repostory = new Repository.WorkForceTrim();
            this.publicLibary = new Repository.PublicLibrary();

            // this.TabControls.TabIndexChanged += new EventHandler(TabControls_TabIndexChanged);

        }

        public PH.LWPM.BO.WorkForce CurrentWorkforce
        {
            get
            {
                return this.BindingSource.Current as PH.LWPM.BO.WorkForce;
            }
        }


        void TabControls_TabIndexChanged(object sender, EventArgs e)
        {
            if (this.TabControls.SelectedTabPage == this.xtraTabPage4)
            {
                PH.LWPM.BO.WorkForce curWK = this.BindingSource.Current as PH.LWPM.BO.WorkForce;

                if (curWK != null)
                    wfWorkHistory1.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).vw_workhistories.Where(p => p.workerid == curWK.Id);

            }
        }
        Boolean AddnewFlg;

        //List<BaseCode> _lstcitys;
        List<BaseCode> _lstwagetype;
        List<BaseCode> _lstemptype;


        private void ShowWorkRegion(PH.LWPM.BO.WorkForce curwoker)
        {
            List<DepartalSort> _departinfor = new List<DepartalSort>();
            string _dept = curwoker.DeptName;
            string _section = curwoker.WFWhere;
            string _team = curwoker.WFWhere_1;
            string _class = curwoker.WFWhere_2;

            if (!string.IsNullOrEmpty(_dept))
            {
                _departinfor = (this.DataContext as RAPLQDataContext).DepartalSorts.Where(p => p.Deptmental_EN == _dept).ToList();
            }
            if (!string.IsNullOrEmpty(_section))
            {
                _departinfor = _departinfor.Where(p => p.Section_EN == _section).ToList();
            }
            if (!string.IsNullOrEmpty(_team))
            {
                _departinfor = _departinfor.Where(p => p.Team_EN == _team).ToList();
            }
            if (!string.IsNullOrEmpty(_class))
            {
                _departinfor = _departinfor.Where(p => p.Class_EN == _class).ToList();
            }
            if (_departinfor.Count() > 0)
                edtWorkRegion.EditValue = _departinfor[0].WorkRegion;

        }

        public override void DataBind()
        {
            this.barBtnAddNew.Visibility = (this.PrevForm as WFPListFrm).ReadOnlyParam == "ReadOnly" ? BarItemVisibility.Never : BarItemVisibility.Always;
            this.barBtnEdit.Visibility = this.barBtnAddNew.Visibility;
            this.barBtnDel.Visibility = this.barBtnAddNew.Visibility;

            radioGroup1.Properties.ReadOnly = true;
            radIsDeployment.Properties.ReadOnly = true;
            radioGroup2.Properties.ReadOnly = true;
            radioGroup3.Properties.ReadOnly = true;
            radioGroup4.Properties.ReadOnly = true;
            radioGroup5.Properties.ReadOnly = true;


            // this.childList1.BindingSource.DataSource = (this.BindingSource.Current as PH.LWPM.BO.WorkForce).OpSkills;
            PH.LWPM.BO.WorkForce curWK = this.BindingSource.Current as PH.LWPM.BO.WorkForce;

            if (curWK != null)
            {
                wfWorkHistory1.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).vw_workhistories.Where(p => p.workerid == curWK.Id);
                // ShowWorkRegion(curWK);
            }

            ProcessOpenVacancyDueDate(); //由david加入 2020-03-13


            //wfWorkHistory1.BindingSource.DataSource =
            base.DataBind();

            //瀏覽狀態
            if (!IsNew && !IsEditting)
            {
                //針縫課非培訓班遮擋class項
                // this.edt_class.Visible = curWK.WFWhere.Contains("Stitching Section") && !curWK.WFWhere_2.Contains("Training");
                //this.edt_class.Visible = !(curWK.WFWhere.Contains("Stitching") && curWK.WFWhere_1.Contains("- -"));
                this.edt_classcn.Visible = edt_class.Visible;
                this.edt_class.Enabled = !edt_class.Visible; edt_classcn.Enabled = !edt_class.Visible;
                //this.edtTeamNo.Visible = !edt_class.Visible;
                //this.edtDeptLocation.Visible = curWK.DeptName == "Sewing Dept" && curWK.Factory.Trim() == "SL";
                //this.cbbDepartalLocation.Visible = !edtDeptLocation.Visible;

            }

            string[] Sub_SectionFAE = (this.DataContext as RAPLQDataContext).Sub_Sections.Select(S => S.NameEn).ToArray();

            //add by joseph
            string[] aryRecrole = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cbbRecrole").Select(S => S.Name).Distinct().ToArray();
            string[] aryDeptLocation = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cbbDeptLocation").Select(S => S.Name).Distinct().ToArray();


            cbbTransferDept.Properties.Items.AddRange(Sub_SectionFAE);


            this.cbbRecRole.Properties.Items.AddRange(aryRecrole);
            //this.cbbDepartalLocation.Properties.Items.AddRange(aryDeptLocation);
            this.cbbReclocation.Properties.Items.AddRange(aryDeptLocation);


            //_lstcitys = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "AREA").ToList();
            //areaComboBoxEdit.Properties.DisplayMember = "Name";
            //areaComboBoxEdit.Properties.ValueMember = "Code";
            //areaComboBoxEdit.Properties.DataSource = _lstcitys;
            //areaComboBoxEdit.Properties.PopupSizeable = true;
            ////areaComboBoxEdit.Properties.PopupWidth = 20;

            //get wage type 
            _lstwagetype = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "SalaryType").ToList();
            this.lueWageType.Properties.DisplayMember = "Name";
            lueWageType.Properties.ValueMember = "Code";
            lueWageType.Properties.DataSource = _lstwagetype;
            lueWageType.EditValueChanged += new EventHandler(lueWageType_EditValueChanged);

            //get employee type :use field vacancy to store employee type
            _lstemptype = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "EmpType").OrderBy(p => p.SortID).ToList();
            this.lueEmptype.Properties.DisplayMember = "Name";
            lueEmptype.Properties.ValueMember = "Code";
            lueEmptype.Properties.DataSource = _lstemptype;

            string menuname = (this.PrevForm as WFPListFrm).MenuName.ToLower();
            if (this.IsNew)
            {
                if (menuname == "staff")
                    lueEmptype.EditValue = _lstemptype.Where(p => p.Name == "Staff").FirstOrDefault().Code;   //2; //.Text= "Staff";
                else
                    lueEmptype.EditValue = _lstemptype.Where(p => p.Name == "Labor").FirstOrDefault().Code;  //.Text = "Labor";
            }
            //if (!IsNew && !IsEditting && curWK!=null)
            //    this.ShowWorkRegion(curWK);

        }

        void lueWageType_EditValueChanged(object sender, EventArgs e)
        {
            if (lueWageType.Text.ToString() != "")
            {
                BaseCode bc = this.lueWageType.Properties.GetDataSourceRowByKeyValue(lueWageType.EditValue) as BaseCode;
                if (bc != null)
                {
                    this.edtWageType_TW.Text = bc.Description;
                    //this.edtWageType_Bd.Text = bc.NameBd;
                }
            }
        }
        protected override void OnClickDelete()
        {
            var CurWorkforce = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
            CurWorkforce.MTM = true;
            string id = CurWorkforce.Id;
            (this.DataContext as RAPLQDataContext).SubmitChanges();
            (this.DataContext as RAPLQDataContext).ExecuteCommand(string.Format("delete workforceimg where id='{0}'", id));
            MessageBox.Show("Deleted successfully");
            base.OnClickCancel();
            //this.BindingSource.MoveNext();
        }


        public override void EditCurrent()
        {
            base.EditCurrent();
            //this.S_cobCity.Visible = false;
            //this.S_cobTown.Visible = false;
            //this.areaComboBoxEdit.Visible = true;
            //this.cobTown.Visible = true;

            PH.LWPM.BO.WorkForce curWK = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
            this.edtDeptLocation.Visible = curWK.DeptName == "Sewing Dept" && curWK.Factory.Trim() == "SL";
            //this.cbbDepartalLocation.Visible = !edtDeptLocation.Visible;
            curWK.IsProjection = false;

            if (this.IsNew)
            {
                curWK.IsDeployment = false;
            }

            //P1.Properties.ReadOnly = (this.BindingSource.Current as PH.LWPM.BO.WorkForce).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New || (this.BindingSource.Current as PH.LWPM.BO.WorkForce).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit ? false : true;

            P1.Properties.ReadOnly = !(IsNew || IsEditting);

            PH.LWPM.BO.WorkForce wf = this.BindingSource.Current as PH.LWPM.BO.WorkForce;

            //cobTown.Text = wf.Town;
            //areaComboBoxEdit.Text = wf.Area;
            edtWorkRegion.Properties.ReadOnly = true;

            cobAreaCn.Properties.ReadOnly = true;
            cobAreaBd.Properties.ReadOnly = true;

            //this.cobCountry.Properties.ReadOnly = true;
            this.cobCountryCn.Properties.ReadOnly = true;
            this.cobCountryBd.Properties.ReadOnly = true;

            this.regionComboBoxEdit.Properties.ReadOnly = true;
            cobRegionCn.Properties.ReadOnly = true;
            cobRegionBd.Properties.ReadOnly = true;

            //this.cobTown.Properties.ReadOnly = true;
            cobTownCn.Properties.ReadOnly = true;
            cobTownBd.Properties.ReadOnly = true;

            S_cobCity.Properties.ReadOnly = true;
            S_cobTown.Properties.ReadOnly = true;

            txtRECName.Properties.ReadOnly = true;

            //section&team&class readonly
            cobDepartmentCn.Properties.ReadOnly = true;
            cobDepartmentBd.Properties.ReadOnly = true;


            txtWorkForceTyEn.Properties.ReadOnly = true;
            jobTitleEnComboBoxEdit.Properties.ReadOnly = true;
            cobWorkForceTyCn.Properties.ReadOnly = true;
            jobTitleCode.Properties.ReadOnly = true;
            jobTitleCnComboBoxEdit.Properties.ReadOnly = true;


            //由david增加 2020-03-13 begin ----------------------------------------------------------------------

            //关闭班课组班，一级一级选择的功能，改为用弹出界面一次性选择部课组班及Departmental SeqNo等信息
            cobWhere.Properties.ReadOnly = true;
            cobWhere_1_Team.Properties.ReadOnly = true;
            cobWhere_2_Class.Properties.ReadOnly = true;
            //由david增加 2020-03-13 end  -----------------------------------------------------------------------

            radioGroup1.Properties.ReadOnly = false;
            radIsDeployment.Properties.ReadOnly = false;
            radioGroup2.Properties.ReadOnly = false;
            radioGroup3.Properties.ReadOnly = false;
            radioGroup4.Properties.ReadOnly = false;
            radioGroup5.Properties.ReadOnly = false;

            cobWFWhereCn.Properties.ReadOnly = true;
            cobWFWhereBd.Properties.ReadOnly = true;

            cobWhere_1_TeamCn.Properties.ReadOnly = true;
            cobWhere_1_TeamBd.Properties.ReadOnly = true;
            cobWhere_2_ClassCn.Properties.ReadOnly = true;
            cobWhere_2_ClassBd.Properties.ReadOnly = true;
            edtSmfclass.Properties.ReadOnly = true;
            edtWageType_TW.Properties.ReadOnly = true;
            this.edtWFPartcn.Properties.ReadOnly = true;

            edtPreparedHR.Properties.ReadOnly = true;
            this.edtImmeheader.Properties.ReadOnly = true;
            edtDeptHeader.Properties.ReadOnly = true;
            edtAudibyHR.Properties.ReadOnly = true;

            // edtDeptLocation.Properties.ReadOnly = true;

            if (this.IsNew && wf != null)
            {
                if (WFPartInfo != null && WFPartInfo.Count > 0)
                {
                    wf.NextLineCode = WFPartInfo[0].Code; // use field 'nextlinecode' to store 'wfpart code'
                    wf.WFPartCn = WFPartInfo[0].Description;
                    wf.WFPart = WFPartInfo[0].Name;
                }
            }

            //this.FillDepartWhenEdit();

            // edtSmfclass.EditValue = string.IsNullOrEmpty(wf.WorkerTypeCn)?"":wf.WorkerTypeCn;


            //UpdateLeave();
            // PH.LWPM.BO.WorkForce wf = (this.BindingSource.Current as PH.LWPM.BO.WorkForce);
            //cobWhere_1_Team.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).DepartalSorts.Where(P => P.Deptmental_EN ==wf.DeptName && P.Section_EN==wf.WFWhere).Select(S => S.Team_EN).Distinct().ToArray());
        }

        private void UpdateLeave()
        {
            var CurWorkforce = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
            if (CurWorkforce.LongLeaveStartDate != null && CurWorkforce.LongLeave == true)
            {
            }
            else
            {
                CurWorkforce.LongLeaveStartDate = null;
            }
            if (CurWorkforce.LongLeaveEndDate != null && CurWorkforce.LongLeave == true)
            {
            }
            else
            {
                CurWorkforce.LongLeaveEndDate = null;
            }

            (this.DataContext as RAPLQDataContext).SubmitChanges();
        }
        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            P1.Properties.ReadOnly = true;
            //areaComboBoxEdit.Enabled = false;
            //this.S_cobCity.Visible = true;
            //this.S_cobTown.Visible = true;
            //this.areaComboBoxEdit.Visible = false;
            //this.cobTown.Visible = false;

            AddnewFlg = false;
        }

        protected override void OnClickSave()
        {

            if (AddnewFlg)
            {

                if (this.ValidationSaveCondition(factoryComboBoxEdit.Text.TrimEnd(), idTextEdit.Text.TrimEnd())) return;
            }
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Seniority = (this.BindingSource.Current as PH.LWPM.BO.WorkForce).SeniorityS; //Convert.ToDecimal(senioritySpinEdit.Text);
            //model trim
            // PH.LWPM.BO.WorkForce oldmodel = repostory.getWorkForceStrim(this.BindingSource.Current as PH.LWPM.BO.WorkForce);

            PH.LWPM.BO.WorkForce WF = this.BindingSource.Current as PH.LWPM.BO.WorkForce;

            jPDateDateEdit.EditValue = string.IsNullOrEmpty(jPDateDateEdit.Text.Trim()) ? null : jPDateDateEdit.Text;
            rEDateDateEdit.EditValue = string.IsNullOrEmpty(rEDateDateEdit.Text.Trim()) ? null : rEDateDateEdit.Text;

            if (string.IsNullOrEmpty(WF.WFWhere) || WF.WFWhere.Trim() == "--")
            {
                WF.WFWhere = "- -";
                WF.WFWhereCn = "- -";
                WF.WFWhereBd = "- -";
            }

            if (string.IsNullOrEmpty(WF.WFWhere_1) || WF.WFWhere_1.Trim() == "--")
            {
                WF.WFWhere_1 = "- -";
                WF.WFWhere_1Cn = "- -";
                WF.WFWhere_1Bd = "- -";
            }

            if (string.IsNullOrEmpty(WF.WFWhere_2) || WF.WFWhere_2.Trim() == "--")
            {
                WF.WFWhere_2 = "- -";
                WF.WFWhere_2Cn = "- -";
                WF.WFWhere_2Bd = "- -";
            }


            //WF.SeqNo = this.GetSeqNo(WF);
            //WF.jobtitle_SeqNo = this.GetJobTitleSeqNo(WF);

            if (WF.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {

                WF.PrepanedByName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                WF.PrepanedByDate = DateTime.Now;

            }

            //BaseCode _bcarea = areaComboBoxEdit.Properties.GetDataSourceRowByKeyValue(areaComboBoxEdit.EditValue) as BaseCode;
            //if (_bcarea != null)
            //    WF.Area = _bcarea.Name;

            //BaseCode _bc = cobTown.Properties.GetDataSourceRowByKeyValue(cobTown.EditValue) as BaseCode;
            //if (_bc != null)
            //{
            //    WF.Town = _bc.Name;
            //    WF.TownBd = _bc.NameBd;
            //    WF.TownCn = _bc.Description;
            //}

            if (string.IsNullOrEmpty(WF.Standby))
                WF.Standby = "";


            if (string.IsNullOrEmpty(WF.Stationed_at))
                WF.Stationed_at = "";


            //if (string.IsNullOrEmpty(WF.SecondOffice))
            //    WF.SecondOffice = "";

            if (lueEmptype.EditValue.ToString() == "SF")
                WF.IsStaff = true;
            else
                WF.IsStaff = false;

            //  ShowWorkRegion(WF);

            SaveImg(factoryComboBoxEdit.Text.TrimEnd(), idTextEdit.Text.TrimEnd());
            base.OnClickSave();

            AddnewFlg = false;


        }
        protected override void OnClickSaveAndReturn()
        {
            if (AddnewFlg) { if (this.ValidationSaveCondition(factoryComboBoxEdit.Text.TrimEnd(), idTextEdit.Text.TrimEnd())) return; }
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Seniority = Convert.ToDecimal((this.BindingSource.Current as PH.LWPM.BO.WorkForce).SeniorityS);//Convert.ToDecimal(senioritySpinEdit.Text);
            if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {

                (this.BindingSource.Current as PH.LWPM.BO.WorkForce).PrepanedByName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                (this.BindingSource.Current as PH.LWPM.BO.WorkForce).PrepanedByDate = DateTime.Now;

            }


            jPDateDateEdit.EditValue = string.IsNullOrEmpty(jPDateDateEdit.Text.Trim()) ? null : jPDateDateEdit.Text;
            rEDateDateEdit.EditValue = string.IsNullOrEmpty(rEDateDateEdit.Text.Trim()) ? null : rEDateDateEdit.Text;


            PH.LWPM.BO.WorkForce WF = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
            if (string.IsNullOrEmpty(WF.WFWhere))
            {
                WF.WFWhere = "--";
                WF.WFWhereCn = "--";
                WF.WFWhereBd = "--";
            }

            if (string.IsNullOrEmpty(WF.WFWhere_1))
            {
                WF.WFWhere_1 = "--";
                WF.WFWhere_1Cn = "--";
                WF.WFWhere_1Bd = "--";
            }

            if (string.IsNullOrEmpty(WF.WFWhere_2))
            {
                WF.WFWhere_2 = "--";
                WF.WFWhere_2Cn = "--";
                WF.WFWhere_2Bd = "--";
            }



            //WF.SeqNo = this.GetSeqNo(WF);
            //WF.jobtitle_SeqNo = this.GetJobTitleSeqNo(WF);
            ShowWorkRegion(WF);

            //BaseCode _bcarea = areaComboBoxEdit.Properties.GetDataSourceRowByKeyValue(areaComboBoxEdit.EditValue) as BaseCode;
            //if (_bcarea != null)
            //    WF.Area = _bcarea.Name;

            //BaseCode _bc = cobTown.Properties.GetDataSourceRowByKeyValue(cobTown.EditValue) as BaseCode;
            //if (_bc != null)
            //    WF.Town = _bc.Name;

            if (string.IsNullOrEmpty(WF.Standby))
                WF.Standby = "";


            if (string.IsNullOrEmpty(WF.Stationed_at))
                WF.Stationed_at = "";


            //if (string.IsNullOrEmpty(WF.SecondOffice))
            //    WF.SecondOffice = "";

            if (lueEmptype.EditValue.ToString() == "SF")
                WF.IsStaff = true;
            else
                WF.IsStaff = false;

            SaveImg(factoryComboBoxEdit.Text.TrimEnd(), idTextEdit.Text.TrimEnd());

            base.OnClickSaveAndReturn();

            AddnewFlg = false;
        }

        void SaveImg(string factory, string wfid)
        {

            if (IsNew)
            {
                if (P1.Image == null)
                    return;

                WorkForceImg mg = new WorkForceImg();
                mg.Factory = factory;
                mg.Id = wfid;
                if (P1.Image != null)
                    mg.img = DBAccess.ImageToByteArray(P1.Image);
                (this.DataContext as RAPLQDataContext).WorkForceImgs.InsertOnSubmit(mg);
                // (this.DataContext as RAPLQDataContext).SubmitChanges();
                // AddnewFlg = false;
            }
            else
            {
                //var CurWF =  (this.DataContext as RAPLQDataContext).WorkForceImgs.Where(P => P.Factory == factory && P.Id == wfid).FirstOrDefault();

                if (P1.Image == null)
                    return;

                PH.LWPM.BO.WorkForce _curwf = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
                WorkForceImg _curwfimg = null;

                if (_curwf.WorkForceImg != null)
                    _curwfimg = _curwf.WorkForceImg;
                else
                {
                    _curwfimg = new WorkForceImg();
                    _curwfimg.Factory = factory;
                    _curwfimg.Id = wfid;
                    _curwf.WorkForceImg = _curwfimg;

                }
                _curwfimg.img = DBAccess.ImageToByteArray(P1.Image);

                //  (this.DataContext as RAPLQDataContext).SubmitChanges();
            }

        }
        void ShowImg(string factory, string wfid)
        {

            var iMG = (this.DataContext as RAPLQDataContext).WorkForceImgs.Where(P => P.Factory == factory && P.Id == wfid).Select(S => S.img).FirstOrDefault();
            P1.Image = iMG != null ? DBAccess.ByteArrayToImage(iMG.ToArray()) : null;

        }

        //string GetSeqNo(PH.LWPM.BO.WorkForce curWF)
        //{
        //    //DepartalSort obj;
        //    var obj = (this.DataContext as RAPLQDataContext).DepartalSorts.FirstOrDefault(p => p.Active == true && p.Deptmental_EN == curWF.DeptName &&
        //        p.Section_EN == curWF.WFWhere && p.Team_EN == curWF.WFWhere_1 && p.Class_EN == curWF.WFWhere_2);

        //    return obj == null ? "" : obj.SeqNo;

        //    //if (string.IsNullOrEmpty(curWF.LineCode) || curWF.LineCode == "- -" || curWF.LineCode == "--")
        //    //{
        //    //    obj = lists.FirstOrDefault();
        //    //}
        //    //else
        //    //{
        //    //    obj = lists.FirstOrDefault(p => p.Class_EN == curWF.LineCode);
        //    //}

        //    //return obj == null ? "" : obj.SeqNo;

        //    //DepartalSort depsort = (this.DataContext as RAPLQDataContext).DepartalSorts.Where(p => p.Deptmental_EN == curWF.DeptName && p.Section_EN == curWF.WFWhere &&
        //    //    p.Team_EN == curWF.WFWhere_1 && p.Class_EN == curWF.WFWhere_2).FirstOrDefault();
        //    //string seqno = string.Empty;
        //    //if (depsort != null)
        //    //    seqno = depsort.SeqNo;
        //    //return seqno;
        //}

        //string GetJobTitleSeqNo(PH.LWPM.BO.WorkForce curWF)
        //{

        //    Master_data_For_Job_Title mjt = (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles.Where(P => P.Code == curWF.TitleTypeCode
        //        && P.JTCode == curWF.JobTitleCode).FirstOrDefault();


        //    string seqno = string.Empty;
        //    if (mjt != null)
        //        seqno = mjt.SeqNo;
        //    return seqno;
        //}



        private void BindingSource_CurrentChanged(object sender, EventArgs e)
        {
            ShowImg(factoryComboBoxEdit.Text.TrimEnd(), this.idTextEdit.Text.TrimEnd());
            panel1.Visible = longLeaveCheckEdit.Checked;
            panelAuxiliary.Visible = isRegistAuxiliaryCheckEdit.Checked;
        }

        private void ChildListFrm_Load(object sender, EventArgs e)
        {

            if (DesignMode)
                return;

            //AutoSizePanel();
            AddnewFlg = (this.BindingSource.Current as PH.LWPM.BO.WorkForce).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New ? true : false;



            getCobBindMethod(AddnewFlg);

            setSelectClsNameMethod();

            //jobTitleEnComboBoxEdit.Properties.Items.EndUpdate();

            ShowImg(factoryComboBoxEdit.Text.TrimEnd(), this.idTextEdit.Text.TrimEnd());
            if (!AddnewFlg) ShowMatrixByChart();
        }

        //private void AutoSizePanel()
        //{
        //    //int SH = Screen.PrimaryScreen.Bounds.Height;
        //    //int pSW = this.panel2.Width;
        //    //int SW = Screen.PrimaryScreen.Bounds.Width;
        //    //if (SW > pSW)
        //    //{
        //    //this.panel2.Width = SW-150;
        //    //}
        //}

        private void setSelectClsNameMethod()
        {

            setBdMethod("- -");
            string[] Vacancy = { "Open Vacancy", "Replacement Vacancy", "Plan Vacancy" };

            PH.LWPM.BO.WorkForce wf = this.BindingSource.Current as PH.LWPM.BO.WorkForce;

            string strParaName = (this.PrevForm as WFPListFrm).ParaName;
            string strMenuName = (this.PrevForm as WFPListFrm).MenuName;

            // string stremptype = (this.PrevForm as WFPListFrm).EmpType;

            if (Vacancy.Where(p => p.Contains(strParaName)).Count() > 0)
            {
                strParaName = "ALL";
            }
            if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPart == null && strMenuName.ToLower() != "staff")
            {
                if (strParaName == "ALL")
                {
                    //Default
                    //(this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPart = cobWFPart.Properties.Items.Count > 0 ? cobWFPart.Properties.Items[0].ToString() : "- -"; //"Sewing Direct Labors Cost";
                    //(this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPartCn = publicLibary.getSelectIndex("WFPart", null, "Sewing Direct Labors Cost", this.DataContext);

                    //(this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPart = this.WFPartInfo.Count > 0 ? (WFPartInfo[0] as BaseCode).Name : "- -"; 
                    //(this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPartCn = (WFPartInfo[0] as BaseCode).Description;
                    //(this.BindingSource.Current as PH.LWPM.BO.WorkForce).NextLineCode = (WFPartInfo[0] as BaseCode).Code;
                }
                else
                {
                    //(this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPart = strParaName;
                    //(this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPartCn = publicLibary.getSelectIndex("WFPart", null, strParaName,this.DataContext);
                }


            }

            string Factory = DBAccess.CurFactory();
            if (strMenuName.ToLower() == "staff")
            {
                if (IsNew)
                    (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                //return;
            }

            if (AddnewFlg && _lstemptype != null && _lstemptype.Count > 0)
            {
                // lueEmptype.ItemIndex = 0;
            }

            switch ((this.PrevForm as WFPListFrm).ParaName)
            {
                //Skill dWF Pool

                case "dWFCoreProduction":

                    panelAuxiliary.Visible = false;
                    deptComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "DPTCLS01").Select(S => S.Name).ToArray());
                    if (AddnewFlg)
                    {
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[0].ToString();
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                    }

                    break;
                case "dWFUpProduction":

                    deptComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "DPTCLS02").Select(S => S.Name).ToArray());

                    if (AddnewFlg)
                    {
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[1].ToString();
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                    }

                    break;

                case "dWFPreProduction":

                    deptComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "DPTCLS03").Select(S => S.Name).ToArray());
                    if (AddnewFlg)
                    {
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[2].ToString();
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                    }
                    break;
                case "dWFPregnancy":

                    deptComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "DPTCLS04").Select(S => S.Name).ToArray());
                    if (AddnewFlg)
                    {
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[3].ToString();
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                    }
                    break;
                case "dWFDownProduction":
                    deptComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "DPTCLS02").Select(S => S.Name).ToArray());
                    if (AddnewFlg)
                    {
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[4].ToString();
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                    }

                    break;


                case "nWF-Non Production":
                    deptComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "DPTCLS04").Select(S => S.Name).ToArray());
                    if (AddnewFlg)
                    {
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[7].ToString();
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                    }

                    break;

                //case "Open Vacancy":
                //    if (AddnewFlg)
                //    {
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[0].ToString();
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Vacancy = "Open Vacancy";
                //    }
                //        cobVacancy.Visible = true;
                //        lblVacancy.Visible = true;
                //        cobDateVacancy.Visible = true;
                //        lblvacancyDate.Visible = true;
                //        cobVacancy.Properties.Items.AddRange(publicLibary.getItems("Vacancy", this.DataContext));
                //        if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate == null)
                //        {
                //            cobVacancy.Text = "Open Vacancy";
                //            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate = DateTime.Now;
                //        }

                //    break;
                //case "Replacement Vacancy":
                //    if (AddnewFlg)
                //    {
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[0].ToString();
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Vacancy = "Replacement Vacancy";
                //    }
                //    cobVacancy.Visible = true;
                //    lblVacancy.Visible = true;
                //    cobDateVacancy.Visible = true;
                //    lblvacancyDate.Visible = true;
                //    cobVacancy.Properties.Items.AddRange(publicLibary.getItems("Vacancy", this.DataContext));
                //    if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate == null)
                //    {
                //        cobVacancy.Text = "Replacement Vacancy";
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate = DateTime.Now;
                //    }
                //    break;
                //case "Plan Vacancy":
                //    if (AddnewFlg)
                //    {
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[0].ToString();
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Vacancy = "Plan Vacancy";
                //    }
                //    cobVacancy.Visible = true;
                //    lblVacancy.Visible = true;
                //    cobDateVacancy.Visible = true;
                //    lblvacancyDate.Visible = true;
                //    cobVacancy.Properties.Items.AddRange(publicLibary.getItems("Vacancy", this.DataContext));
                //   if((this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate == null)
                //    {
                //        cobVacancy.Text = "Plan Vacancy";
                //        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate = DateTime.Now;
                //    }
                //    break;
                default:
                    if (AddnewFlg)
                    {
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[0].ToString();
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                    }
                    break;
            }
        }

        private void setBdMethod(string strBd)
        {
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).AreaBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Co_TeamBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).CountryBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).DeptNameBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).JobTitleBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).NameBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).RecBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).RegionBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Sub_Section_FAEBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).TownBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPartBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFWhere_1Bd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFWhere_2Bd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFWhereBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).WorkerTypeBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).WorkForceTyBd = strBd;
        }

        List<BaseCode> WFPartInfo;

        private void getCobBindMethod(bool IsAddnewFlg)
        {
            RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;
            //jobTitleEnComboBoxEdit.Properties.Items.BeginUpdate();

            wFLevelTextEdit.Properties.Items.AddRange(publicLibary.getItems("LEVEL", this.DataContext));

            //string[] deptarts = rqc.DepartalSorts.Select(P => P.Deptmental_EN).Distinct().ToArray();
            //deptNameTextEdit.Properties.Items.AddRange(deptarts);

            //deptNameTextEdit.Properties.Items.AddRange(publicLibary.getItems("DPTUS",this.DataContext));
            this.clsNameComboBoxEdit.Properties.Items.AddRange(publicLibary.getItems("WFClass", this.DataContext));
            cobWFState.Properties.Items.AddRange(publicLibary.getItems("Tasks_in_hand", this.DataContext));
            //cobWhere.Properties.Items.AddRange(publicLibary.getItems("WorkShopNew",this.DataContext));

            //DictInfoWFPart = publicLibary.GetCodeName("WFPart", this.DataContext);

            WFPartInfo = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "WFPart").ToList();

            //cobWFPart.Properties.Items.AddRange(publicLibary.getItems("WFPart",this.DataContext));
            //cobWFPart2.Properties.Items.AddRange(DictInfoWFPart.Values.ToArray());

            cobWFPart.Properties.ValueMember = "Code";
            cobWFPart.Properties.DisplayMember = "ExtraField1";
            cobWFPart.Properties.DataSource = WFPartInfo;

            //cobCroossRoleDcrp.Properties.Items.AddRange(publicLibary.getItems("CrossRole",this.DataContext));
            // cobCountry.Properties.Items.AddRange(publicLibary.getItems("Country",this.DataContext));
            cobGrade.Properties.Items.AddRange(publicLibary.getItems("Grade", this.DataContext));

            if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).CrossRole != true)
            {
                chkCrossRole_N.Checked = true;
            }
            else
            {
                chkCrossRole_N.Checked = false;
            }

            PH.LWPM.BO.WorkForce obj = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
            this.chkRemoteFuncControl_N.Checked = !this.chkRemoteFuncControl_Y.Checked;
            this.chkRemoteFuncSupport_N.Checked = !this.chkRemoteFuncSupport_Y.Checked;


            if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).HeadCount != true)
            {
                chkHeadCount_N.Checked = true;
            }
            else
            {
                chkHeadCount_N.Checked = false;
            }


            //if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).WorkForceTyEn != null)
            //{
            //    var jobtitle = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
            //                   where p.TitleTypeEn == cobWorkForceTyEn.Text.ToString()
            //                   select p.JobTitleEn;
            //    jobTitleEnComboBoxEdit.Properties.Items.AddRange(jobtitle.ToArray());
            //}

            //// var q = null;
            //if ((this.PrevForm as WFPListFrm).MenuName.ToLower() == "staff")
            //{
            //    var q = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles.Where(p => p.IsStaff)
            //            group p by new { p.Code, p.TitleTypeEn } into g
            //            select g.Key.TitleTypeEn;

            //    cobWorkForceTyEn.Properties.Items.AddRange(q.ToArray());
            //}
            //else
            //{
            //    var m = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles.Where(p => !p.IsStaff)
            //            group p by new { p.Code, p.TitleTypeEn } into g
            //            select g.Key.TitleTypeEn;

            //    cobWorkForceTyEn.Properties.Items.AddRange(m.ToArray());
            //}

            workerTypeComboBoxEdit.Properties.Items.AddRange(publicLibary.getItems("WorkerType", this.DataContext));


            cobWhere_2_Class.Properties.Items.AddRange(publicLibary.getItems("WFWhere_2_class", this.DataContext));


            //cobTown.Properties.Items.AddRange(publicLibary.getItems("Town",this.DataContext));
            cobStationed_at.Properties.Items.AddRange(publicLibary.getItems("Stationed_at", this.DataContext));
            cobStandby.Properties.Items.AddRange(publicLibary.getItems("Standby", this.DataContext));


            lineCodeComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "WFWhere_2_class").OrderBy(p => p.SortID).Select(p => p.Name).ToArray());
            //lineCodeComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).FactoryLines.Where(P => P.Line != null).Where(P1 => P1.Factory == factoryComboBoxEdit.Text.Trim().ToString()).Where(P2 => P2.Type == "WF").Select(S => S.Line).Distinct().OrderBy(E => E).ToArray());




            //regionComboBoxEdit.Properties.Items.AddRange(publicLibary.getItems("Region",this.DataContext));


            cobRecEn.Properties.Items.AddRange(publicLibary.getItems("Rec", this.DataContext));
            locationComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).WorkForces.Where(P => P.Factory == factoryComboBoxEdit.Text.Trim().ToString() && P.Location != null).Select(S => S.Location.TrimEnd()).Distinct().ToList());


            //factoryComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).WorkForces.Where(P => P.Factory != null).Select(S => S.Factory).Distinct().OrderBy(E => E).ToArray());



            factoryComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "FACTORY").Select(S => S.Code.Trim()).ToArray());


            cobSub_Section_FAE.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).Sub_Sections.Select(S => S.NameEn).ToArray());
            cobCo_Team.Properties.Items.AddRange(publicLibary.getItems("Co_Team", this.DataContext));
            //            cob2ndOffice.Properties.Items.AddRange(publicLibary.getItems("SecondOffice", this.DataContext));
            //cobcontrolsupport.Properties.Items.AddRange(publicLibary.getItems("Controler",this.DataContext));
            // cobcontrolsupport.Properties.Items.AddRange(publicLibary.getItems("Support", this.DataContext));
            BindDivision();
        }

        BindingSource bs_divison = new BindingSource();
        private void BindDivision()
        {

            RAPLQDataContext _rapdc = this.DataContext as RAPLQDataContext;
            List<BaseCode> _divisions = _rapdc.BaseCodes.Where(p => p.Type == "Division").ToList();   // select new { c.PHDefectCode, c.DefectChineseName };

            bs_divison.DataSource = _divisions;

            this.lue_Division.Properties.Columns.Clear();


            DevExpress.XtraEditors.Controls.LookUpColumnInfo newLookUpColumnInfo = new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Name", 5,
                DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None);

            DevExpress.XtraEditors.Controls.LookUpColumnInfo newLookUpColumnInfo1 = new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Code", "Code", 10);
            newLookUpColumnInfo1.Visible = false;

            this.lue_Division.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] { newLookUpColumnInfo, newLookUpColumnInfo1 });

            this.lue_Division.Properties.AutoSearchColumnIndex = 0;
            this.lue_Division.Properties.DataSource = bs_divison;
            this.lue_Division.Properties.ValueMember = "Code";
            this.lue_Division.Properties.DisplayMember = "Description";

        }



        private void ShowMatrixByChart()
        {

            //Workforce curWorker = this.BindingSource.Current as Workforce;
            this.chartControl1.Series[0].Points.Clear();
            this.chartControl1.Series[0].Points.Add(new DevExpress.XtraCharts.SeriesPoint("Adaptability", new double[] { Convert.ToDouble(this.matrix_AdaptabilitySpinEdit.EditValue) }));
            this.chartControl1.Series[0].Points.Add(new DevExpress.XtraCharts.SeriesPoint("Adoptability", new double[] { Convert.ToDouble(this.matrix_AdoptabilitySpinEdit.EditValue) }));
            this.chartControl1.Series[0].Points.Add(new DevExpress.XtraCharts.SeriesPoint("Attendance", new double[] { Convert.ToDouble(this.matrix_AttendanceSpinEdit.EditValue) }));
            this.chartControl1.Series[0].Points.Add(new DevExpress.XtraCharts.SeriesPoint("Skill", new double[] { Convert.ToDouble(this.matrix_SkillSpinEdit.EditValue) }));
            this.chartControl1.Series[0].Points.Add(new DevExpress.XtraCharts.SeriesPoint("Speed", new double[] { Convert.ToDouble(this.matrix_SpeedSpinEdit.EditValue) }));
            this.chartControl1.Series[0].Points.Add(new DevExpress.XtraCharts.SeriesPoint("Staminal", new double[] { Convert.ToDouble(this.matrix_StaminalSpinEdit.EditValue) }));
            this.chartControl1.Series[0].Points.Add(new DevExpress.XtraCharts.SeriesPoint("Strength", new double[] { Convert.ToDouble(this.matrix_StrengthSpinEdit.EditValue) }));
            this.chartControl1.Series[0].Points.Add(new DevExpress.XtraCharts.SeriesPoint("    Teamplayer", new double[] { Convert.ToDouble(this.matrix_TeamplayerSpinEdit.EditValue) }));
            this.chartControl1.Series[0].Points.Add(new DevExpress.XtraCharts.SeriesPoint("Quality", new double[] { Convert.ToDouble(this.matrix_QualitySpinEdit.EditValue) }));

        }

        private void matrix_SkillSpinEdit_EditValueChanged(object sender, EventArgs e)
        {
            ShowMatrixByChart();
        }
        private Boolean ValidationSaveCondition(string factory, string id)
        {

            if (factory == string.Empty)
            {
                if (MessageBox.Show("Please input \"factory\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }

            if (id == string.Empty)
            {
                if (MessageBox.Show("Please input \"Worker ID\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }
            if ((this.DataContext as RAPLQDataContext).WorkForces.Where(P => P.Factory == factory && P.Id == id).Count() > 0)
            {
                if (MessageBox.Show("This worker is already exists！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }
            return false;
        }



        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();

            if (ClsRight.GetUserRight(this.MenuID, "EditCmb"))
            {
                deptComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                lineCodeComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                locationComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                workerTypeComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                regionComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                areaComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                //jobTitleEnComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                factoryComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;

            }

        }

        private void longLeaveCheckEdit_CheckedChanged(object sender, EventArgs e)
        {

            panel1.Visible = longLeaveCheckEdit.Checked;

        }

        private void isRegistAuxiliaryCheckEdit_CheckedChanged(object sender, EventArgs e)
        {

        }



        private void regionComboBoxEdit_SelectedIndexChanged(object sender, EventArgs e)
        {

            //if (regionComboBoxEdit.Text.ToString() != "")
            //{
            //    string RegionCn = publicLibary.getSelectIndex("REGION", null, regionComboBoxEdit.Text.Trim().ToString(), this.DataContext);
            //    cobRegionCn.Text = RegionCn;
            //    string RegionBd = publicLibary.getSelectIndex("REGION", LangType.Bd, regionComboBoxEdit.Text.Trim().ToString(), this.DataContext);
            //    if (RegionBd == "")
            //    {
            //        RegionBd = "- -";
            //    }
            //    cobRegionBd.Text = RegionBd;
            //   areaComboBoxEdit.Properties.Items.Clear();
            //areaComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).WorkForces.Where(P => P.RegionCn == RegionCn && P.Area != null).Select(S => S.Area).Distinct().ToArray());
            //areaComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P=>P.Type=="AREA").Select(S => S.Name).Distinct().ToArray());
            //}

        }


        private void workerTypeComboBoxEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (workerTypeComboBoxEdit.Text.ToString() != null)
            {
                //workerTypeComboBoxEditCn.Text = publicLibary.getSelectIndex("WorkerType", null, workerTypeComboBoxEdit.Text.ToString(),this.DataContext);
                //workerTypeComboBoxEditBd.Text = publicLibary.getSelectIndex("WorkerType", LangType.Bd, workerTypeComboBoxEdit.Text.ToString(), this.DataContext);
                this.edtSmfclass.Text = publicLibary.getSelectIndex("WorkerType", null, workerTypeComboBoxEdit.Text.ToString(), this.DataContext);
            }
        }

        private void cobWorkForceTyEn_SelectedIndexChanged(object sender, EventArgs e)
        {
            //var q = (from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
            //         group p by new { p.Code, p.TitleTypeEn, p.TitleTypeCn } into g
            //         where g.Key.TitleTypeEn == cobWorkForceTyEn.Text.ToString()
            //         select g.Key);

            ////var q = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
            ////        where p.Code == cobWorkForceTyCode.Text
            ////        select p;


            //foreach (var item in q)
            //{
            //    //cobWorkForceTyCode.Text= item.Code;
            //    edtTitletypecode.Text = item.Code;
            //    cobWorkForceTyCn.Text = item.TitleTypeCn;
            //    //cobWorkForceTyBd.Text = item.TitleTypeBd;
            //}

            //jobTitleEnComboBoxEdit.Properties.Items.Clear();
            //var jobtitle = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
            //               where p.TitleTypeEn == cobWorkForceTyEn.Text.ToString()
            //               select p.JobTitleEn;
            //jobTitleEnComboBoxEdit.Properties.Items.AddRange(jobtitle.ToArray());

        }

        //private void deptNameTextEdit_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //cobDepartmentCn.Text = publicLibary.getSelectIndex("DPTUS", null, deptNameTextEdit.Text.ToString(), this.DataContext);
        //// cobDepartmentBd.Text = publicLibary.getSelectIndex("DPTUS", LangType.Bd, deptNameTextEdit.Text.ToString(), this.DataContext);

        ////string deptname = deptNameTextEdit.Text.Trim();
        //this.FillDepartment(sender);


        ////RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;
        ////if (cobWhere.Properties.Items != null)
        ////    cobWhere.Properties.Items.Clear();

        ////cobWhere.Properties.Items.AddRange(rqc.DepartalSorts.Where(P=>P.Deptmental_EN==deptname).Select(S=>S.Section_EN).ToArray());

        //}

        private void jobTitleEnComboBoxEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string NameEn = jobTitleEnComboBoxEdit.Text.ToString();
            //if (NameEn != null)
            //{
            //    Master_data_For_Job_Title aa = (from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
            //                                    where p.JobTitleEn == NameEn.Trim()
            //                                    select p).FirstOrDefault();
            //    if (aa != null)
            //    {
            //        jobTitleCnComboBoxEdit.Text = aa.JobTitleCn;  //getSelectIndexNew(jobTitleEnComboBoxEdit.Text.ToString().Trim());// 
            //        this.jobTitleCode.Text = aa.JTCode;

            //        //選擇JobTitle時，自動帶出Grade  由David加入 2018-02-27
            //        this.cobGrade.Text = aa.GradeCode;
            //    }
            //}

        }
        //private string getSelectIndexNew(string NameEn)
        //{
        //    string stra = string.Empty;
        //    string strb = string.Empty;
        //    string strcode = string.Empty;
        //    var qa = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
        //             where p.JobTitleEn == NameEn.Trim()
        //             select p.JobTitleCn;
        //    var qb = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
        //             where p.JobTitleEn == NameEn.Trim()
        //             select p.JobTitleBd;
        //    var q = (from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
        //             where p.JobTitleEn == NameEn.Trim()
        //             select p).ToList();
        //    foreach (var item in q)
        //    {
        //        stra = item.JobTitleCn;
        //        strb = item.JobTitleBd;
        //        strcode = item.JTCode;

        //    }
        //    jobTitleCode.Text = strcode;
        //    StringBuilder sbstr = new StringBuilder();
        //    if (strb == null || strb.Trim() == "")
        //    {
        //        sbstr.Append(stra);
        //    }
        //    else
        //    {
        //        strb = strb.Trim().ToString();
        //        if (strb == "")
        //        {
        //            sbstr.Append(stra);
        //        }
        //        else
        //        {
        //            //  sbstr.Append(stra.Trim() + "|" + strb);
        //            sbstr.Append(stra.Trim());
        //        }
        //    }

        //    return sbstr.ToString();



        //}


        //private void cobWhere_2_Class_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //this.FillDepartment(sender);

        //if (cobWhere_2_Class.Text.ToString() != "")
        //{
        //    cobWhere_2_ClassCn.Text = publicLibary.getSelectIndex("WFWhere_2_class", null, cobWhere_2_Class.Text.Trim().ToString(), this.DataContext);
        //    cobWhere_2_ClassBd.Text = publicLibary.getSelectIndex("WFWhere_2_class", LangType.Bd, cobWhere_2_Class.Text.Trim().ToString(), this.DataContext);
        //}


        ////add at 13/12/20
        //(this.BindingSource.Current as PH.LWPM.BO.WorkForce).LineCode = cobWhere_2_Class.Text.Trim();

        //if (cobWhere_2_Class.Text.ToString() == "- -")
        //{
        //    cobWhere_2_ClassCn.Text = "- -";
        //}

        //}

        //private void cobWhere_1_Team_SelectedIndexChanged(object sender, EventArgs e)
        //{//cobWhere_1_Team WFWhere_1_team  --team

        //this.FillDepartment(sender);

        //string cobcobWhere_1_TeamStr = cobWhere_1_Team.Text.Trim();
        //if (cobcobWhere_1_TeamStr != "")
        //{
        //    cobWhere_1_TeamCn.Text = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => (P.Type == "cobWhere_1_Team" || P.Type == "WFWhere_1_team") && P.Name == cobcobWhere_1_TeamStr).Select(S => S.Description).FirstOrDefault();// getSelectIndex("cobWhere_1_Team", null, cobWhere_1_Team.Text.Trim().ToString());
        //    // cobWhere_1_TeamBd.Text = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => (P.Type == "cobWhere_1_Team" || P.Type == "WFWhere_1_team") && P.Name == cobcobWhere_1_TeamStr).Select(S => S.NameBd).FirstOrDefault();
        //    var q = from p in (this.DataContext as RAPLQDataContext).LineCodes
        //            where p.LineCodeName == cobcobWhere_1_TeamStr
        //            select p;
        //    if (q.Count() > 0)
        //    {
        //        cobWhere_1_TeamCn.Text = cobcobWhere_1_TeamStr;

        //    }

        //    ///remark at 13/12/20                
        //    //(this.BindingSource.Current as PH.LWPM.BO.WorkForce).LineCode = cobcobWhere_1_TeamStr;
        //    // (this.BindingSource.Current as PH.LWPM.BO.WorkForce).LineCode = cobcobWhere_1_TeamStr;

        //}
        //if (cobWhere_1_Team.Text.ToString() == "- -")
        //{
        //    cobWhere_1_TeamCn.Text = "- -";
        //}

        //}

        private void cobCo_Team_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string StrLinkageNameEn = cobCo_Team.Text.ToString();
            //if (StrLinkageNameEn.Trim() != "")
            //{
            //    int selectSub_Id = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.LinkageNameEn == StrLinkageNameEn).Select(p => p.Sub_Id).FirstOrDefault();
            //    var q = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.LinkageNameEn == StrLinkageNameEn);
            //    if (q.Count() > 0)
            //    {
            //        cobCo_TeamCn.Text = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.LinkageNameEn == StrLinkageNameEn).Select(p => p.LinkageNameCn).FirstOrDefault();
            //    }
            //    else
            //    {
            //        cobCo_TeamCn.Text = publicLibary.getSelectIndex("Co_Team", null, cobCo_Team.Text.Trim().ToString(), this.DataContext);
            //        // cobCo_TeamBd.Text = publicLibary.getSelectIndex("Co_Team", LangType.Bd, cobCo_Team.Text.Trim().ToString(), this.DataContext);
            //    }
            //}
            ////Add Linecode

            ////string cobCo_TeamStr = cobCo_Team.Text.Trim();
            ////if (cobCo_TeamStr != "")
            ////{

            ////    int selectSub_Id = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.LinkageNameEn == cobCo_TeamStr).Select(p => p.Sub_Id).FirstOrDefault();
            ////    var q = from p in (this.DataContext as RAPLQDataContext).LineCodes
            ////            where p.Sub_Id == selectSub_Id
            ////            group p by new { p.Sub_Id, p.LineCodeName } into g
            ////            select g.Key.LineCodeName;
            ////    cobWhere_1_Team.Properties.Items.AddRange(q.ToArray());
            ////}
        }

        //private void cobWhere_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //this.FillDepartment(sender);
        //if (cobWhere.Text.ToString() != "")
        //{
        //    cobWFWhereCn.Text = publicLibary.getSelectIndex("WorkShopNew", null, cobWhere.Text.Trim().ToString(), this.DataContext);
        //    // cobWFWhereBd.Text = publicLibary.getSelectIndex("WorkShopNew", LangType.Bd, cobWhere.Text.Trim().ToString(), this.DataContext);
        //}




        //}

        //private void SetVisible()
        //{
        //    if (!deptNameTextEdit.Text.Contains("Sewing") || !cobWhere.Text.Contains("Stitching Section"))
        //    {
        //        cobTeamNo.Enabled = false;

        //        cobTeamNo.Text = "- -";
        //        edt_class.Visible = false;
        //        edt_classcn.Visible = false;

        //    }
        //    else
        //    {

        //        cobTeamNo.Text = "- -";
        //        // if (cobWhere.Text.Contains("Stitching Section") && (cobWhere_1_Team.Text != "- -" || cobWhere_1_Team.Text != ""))
        //        if (cobWhere.Text.Contains("Stitching Section") && cobWhere_1_Team.Text != "- -" && cobWhere_1_Team.Text != "")
        //        {
        //            cobTeamNo.Enabled = true;
        //            edt_class.Visible = true;
        //            edt_classcn.Visible = true;

        //        }
        //        else
        //        {
        //            cobTeamNo.Enabled = false;
        //            edt_class.Visible = false;
        //            edt_classcn.Visible = false;
        //        }
        //        edt_class.Enabled = !edt_class.Visible;
        //        edt_classcn.Enabled = !edt_classcn.Visible;

        //    }

        //    //edtTeamNo.Visible = !cobTeamNo.Enabled;

        //    this.edtDeptLocation.Visible = deptNameTextEdit.Text == "Sewing Dept" && this.factoryComboBoxEdit.Text.Trim() == "SL";
        //    //this.cbbDepartalLocation.Visible = !this.edtDeptLocation.Visible;


        //}

        //private void FillDepartment(object sender)
        //{

        //    PH.LWPM.BO.WorkForce WF = this.BindingSource.Current as PH.LWPM.BO.WorkForce;

        //    DevExpress.XtraEditors.ComboBoxEdit cbedit = sender as DevExpress.XtraEditors.ComboBoxEdit;
        //    RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;

        //    SetVisible();

        //    if (cbedit.Name.Trim() == "deptNameTextEdit")
        //    {
        //        string[] section = rqc.DepartalSorts.Where(P => P.Deptmental_EN == this.deptNameTextEdit.Text.Trim() && P.Section_EN != null).Select(S => S.Section_EN.Trim()).Distinct().ToArray();


        //        if (cobWhere.Properties.Items != null)
        //            cobWhere.Properties.Items.Clear();

        //        cobWhere.Properties.Items.AddRange(section);
        //        cobWhere.Text = "- -";

        //        /*fill team*/
        //        string[] team = rqc.DepartalSorts.Where(P => P.Deptmental_EN == this.deptNameTextEdit.Text.Trim()
        //            && P.Section_EN == "- -").Select(S => S.Team_EN.Trim()).Distinct().ToArray();

        //        if (cobWhere_1_Team.Properties.Items != null)
        //            cobWhere_1_Team.Properties.Items.Clear();


        //        cobWhere_1_Team.Properties.Items.AddRange(team);



        //    }

        //    if (cbedit.Name.Trim() == "cobWhere")
        //    {


        //        string[] team = rqc.DepartalSorts.Where(P => P.Deptmental_EN == this.deptNameTextEdit.Text.Trim()
        //            && P.Section_EN == cobWhere.Text.Trim() && P.Team_EN != null).Select(S => S.Team_EN.Trim()).Distinct().ToArray();

        //        if (cobWhere_1_Team.Properties.Items != null)
        //            cobWhere_1_Team.Properties.Items.Clear();


        //        cobWhere_1_Team.Properties.Items.AddRange(team);
        //        cobWhere_1_Team.Text = "- -";
        //    }

        //    if (cbedit.Name.Trim() == "cobWhere_1_Team")
        //    {


        //        string[] classes = rqc.DepartalSorts.Where(P => P.Deptmental_EN == this.deptNameTextEdit.Text.Trim()
        //           && P.Section_EN == cobWhere.Text.Trim() && P.Team_EN == cobWhere_1_Team.Text.Trim() && P.Class_EN != null).Select(S => S.Class_EN.Trim()).Distinct().ToArray();

        //        if (cobWhere.Text.Contains("Stitching Section") && cbedit.Text != "- -")
        //        {
        //            //選擇了前段組/后段組之類
        //            //cobWhere_2_Class.Enabled = false;
        //            //cobWhere_2_ClassCn.Enabled = false;
        //            //this.cobWhere_2_ClassCn.Visible = false;
        //            //this.cobWhere_2_Class.Visible = false;

        //            //this.edt_class.Visible = true;
        //            //this.edt_classcn.Visible = true;
        //            //this.edt_class.Enabled = false;
        //            //this.edt_classcn.Enabled = false;
        //            if (this.cobTeamNo.Properties.Items != null)
        //                cobTeamNo.Properties.Items.Clear();
        //            cobTeamNo.Properties.Items.AddRange(classes);
        //            if (!IsEditting)
        //                cobTeamNo.Text = "- -";
        //            else
        //                cobTeamNo.Text = WF.WFWhere_2;

        //        }
        //        else
        //        {
        //            //cobWhere_2_Class.Visible = false;
        //            //cobWhere_2_ClassCn.Visible = false;

        //            //this.edt_class.Enabled = false;
        //            //this.edt_classcn.Enabled = false;
        //            //this.cobWhere_2_ClassCn.Visible = false;
        //            //this.cobWhere_2_Class.Visible = false;
        //            if (cobWhere_2_Class.Properties.Items != null)
        //                cobWhere_2_Class.Properties.Items.Clear();
        //            cobWhere_2_Class.Properties.Items.AddRange(classes);

        //            if (!IsEditting)
        //            {

        //                cobWhere_2_Class.Text = "- -";
        //            }
        //            else
        //            {
        //                cobWhere_2_Class.Text = WF.WFWhere_2;
        //                cobWhere_2_ClassCn.Text = WF.WFWhere_2Cn;
        //            }


        //        }


        //    }

        //}


        private void cobSub_Section_FAE_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*
            cobSub_Section_FAECn.Text = publicLibary.getSelectIndex("Sub_Section_FAE", null, cobSub_Section_FAE.Text.Trim().ToString(),this.DataContext);
            string Sub_Section_FAEStr = cobSub_Section_FAE.Text.Trim();
            if (Sub_Section_FAEStr != "")
            {
                int selectSub_Id = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.NameEn == Sub_Section_FAEStr).Select(p => p.Sub_Id).FirstOrDefault();
                var q = from p in (this.DataContext as RAPLQDataContext).Sub_Sections
                        where p.Sub_Id == selectSub_Id
                        group p by new { p.Sub_Id, p.LinkageNameEn } into g
                        select g.Key.LinkageNameEn;
                if (q.Count() > 0)
                {
                    cobSub_Section_FAECn.Text = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.NameEn == Sub_Section_FAEStr).Select(p => p.NameCn).FirstOrDefault();
                }
                cobCo_Team.Properties.Items.AddRange(q.ToArray());
            }
            cobSub_Section_FAEBd.Text = publicLibary.getSelectIndex("Sub_Section_FAE", LangType.Bd, cobSub_Section_FAE.Text.Trim().ToString(), this.DataContext);
            */
        }


        private void cobCountry_SelectedIndexChanged(object sender, EventArgs e)
        {

            //if (cobCountry.Text.ToString() != "")
            //{
            //    cobCountryCn.Text = publicLibary.getSelectIndex("Country", null, cobCountry.Text.Trim().ToString(), this.DataContext);
            //    // cobCountryBd.Text = publicLibary.getSelectIndex("Country", LangType.Bd, cobCountry.Text.Trim().ToString(), this.DataContext);
            //}
        }

        private void areaComboBoxEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (areaComboBoxEdit.Text.ToString() != "")
            //{
            //    cobAreaCn.Text =  publicLibary.getSelectIndex("AREA", null, areaComboBoxEdit.Text.Trim().ToString(),this.DataContext);
            //    cobAreaBd.Text = publicLibary.getSelectIndex("AREA", LangType.Bd, areaComboBoxEdit.Text.Trim().ToString(), this.DataContext);

            //    BaseCode bc = this.areaComboBoxEdit.EditValue as BaseCode;
            //}
        }


        private void areaComboBoxEdit_EditValueChanged(object sender, EventArgs e)
        {
            //if (areaComboBoxEdit.Text.ToString() != "")
            //{
            //    BaseCode bc = areaComboBoxEdit.Properties.GetDataSourceRowByKeyValue(areaComboBoxEdit.EditValue) as BaseCode;
            //    RAPLQDataContext rdc = this.DataContext as RAPLQDataContext;
            //    if (bc != null)
            //    {
            //        cobAreaCn.Text = bc.Description;
            //        cobAreaBd.Text = bc.NameBd;

            //        //鎮

            //        cobTown.Properties.ValueMember = "Code";
            //        cobTown.Properties.DisplayMember = "CurName";

            //        IQueryable<BaseCode> _qlst = rdc.BaseCodes.Where(p => p.ParentCode == bc.Code);

            //        if (_qlst != null && _qlst.Count() > 0)
            //        {
            //            //List<BaseCode> _townlst = rdc.BaseCodes.Where(p => p.ParentCode == bc.Code).ToList();

            //            cobTown.Properties.DataSource = _qlst.ToList();
            //            //this.S_cobTown.Properties.DataSource = _qlst.ToList();
            //        }
            //        else
            //            cobTown.Properties.DataSource = new List<BaseCode>();
            //        //this.S_cobTown.Properties.DataSource = new List<BaseCode>();

            //        //省
            //        BaseCode bcd = rdc.BaseCodes.Where(p => p.Code == bc.ParentCode).FirstOrDefault();
            //        if (bcd != null)
            //        {
            //            regionComboBoxEdit.Text = bcd.Name; //get province en
            //            cobRegionCn.Text = bcd.Description;
            //            cobRegionBd.Text = bcd.NameBd;

            //            //國家
            //            BaseCode bcd1 = rdc.BaseCodes.Where(p => p.Code == bcd.ParentCode).FirstOrDefault();
            //            if (bcd1 != null)
            //            {
            //                cobCountry.Text = bcd1.Name;
            //                this.cobCountryCn.Text = bcd1.Description;
            //                cobCountryBd.Text = bcd1.NameBd;
            //            }
            //        }


            //    }
            //}
        }

        //private void cobTown_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //if (cobTown.Text.ToString() != "")
        //{
        //    BaseCode bc = cobTown.Properties.GetDataSourceRowByKeyValue(cobTown.EditValue) as BaseCode;
        //    cobTownCn.Text = bc.Description; //publicLibary.getSelectIndex("Town", null, cobTown.Text.Trim().ToString(), this.DataContext);
        //    cobTownBd.Text = bc.NameBd;//publicLibary.getSelectIndex("Town", LangType.Bd, cobTown.Text.Trim().ToString(), this.DataContext);
        //}
        //}

        private void timeEdit1_MouseDown(object sender, MouseEventArgs e)
        {
            if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).WorkHour == null)
            {
                speWorkHour.Value = 7;
            }
        }

        private void chkHeadCount_CheckedChanged(object sender, EventArgs e)
        {
            if (chkHeadCount.Checked == true)
            {
                chkHeadCount_N.Checked = false;
            }
            else
            {
                chkHeadCount_N.Checked = true;
            }
        }

        private void chkCrossRole_CheckedChanged(object sender, EventArgs e)
        {
            if (chkCrossRole.Checked == true)
            {
                chkCrossRole_N.Checked = false;
            }
            else
            {
                chkCrossRole_N.Checked = true;
            }
        }

        private void chkHeadCount_N_CheckedChanged(object sender, EventArgs e)
        {
            if (chkHeadCount_N.Checked == true)
            {
                chkHeadCount.Checked = false;
            }
            else
            {
                chkHeadCount.Checked = true;
            }
        }

        private void chkCrossRole_N_CheckedChanged(object sender, EventArgs e)
        {
            if (chkCrossRole_N.Checked == true)
            {
                chkCrossRole.Checked = false;
            }
            else
            {
                chkCrossRole.Checked = true;
            }
        }

        private void cbbRecRole_SelectedValueChanged(object sender, EventArgs e)
        {
            BaseCode bc = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cbbRecrole" && P.Name == cbbRecRole.Text).FirstOrDefault();
            if (bc != null)
            {
                this.cbbRecrole_bd.Text = string.IsNullOrEmpty(bc.NameBd) ? string.Empty : bc.NameBd;
                this.cbbRecrole_chn.Text = string.IsNullOrEmpty(bc.Description) ? string.Empty : bc.Description;
                this.txtRECName.Text = bc.NameBd; //由David加入 2020-04-29
            }
        }



        protected override void OnClickEdit()
        {
            base.OnClickEdit();
            //FillDepartWhenEdit();
            cbbRecrole_bd.Enabled = true;
            cbbRecrole_chn.Enabled = true;
            //this.idTextEdit.Properties.ReadOnly = false;
            //areaComboBoxEdit.Enabled = true;
        }


        //private void FillDepartWhenEdit()
        //{

        //PH.LWPM.BO.WorkForce wf = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
        //RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;
        //this.SetVisible();

        //if (wf.DeptName != null)
        //{
        //    IQueryable<DepartalSort> lst = rqc.DepartalSorts.Where(P => P.Deptmental_EN == wf.DeptName.Trim() && P.Section_EN != null);
        //    if (lst != null && lst.Count() > 0)
        //    {
        //        string[] section = lst.Select(S => S.Section_EN.Trim()).Distinct().ToArray();
        //        if (cobWhere.Properties.Items != null)
        //            cobWhere.Properties.Items.Clear();
        //        cobWhere.Properties.Items.AddRange(section);
        //        cobWhere.Text = wf.WFWhere;
        //    }
        //}

        //if (wf.DeptName != null && wf.WFWhere != null)
        //{

        //    IQueryable<DepartalSort> lst1 = rqc.DepartalSorts.Where(P => P.Deptmental_EN == wf.DeptName.Trim() && P.Section_EN == wf.WFWhere.Trim()
        //        && P.Team_EN != null);
        //    if (lst1 != null && lst1.Count() > 0)
        //    {
        //        string[] team = lst1.Select(S => S.Team_EN.Trim()).Distinct().ToArray();
        //        if (cobWhere_1_Team.Properties.Items != null)
        //            cobWhere_1_Team.Properties.Items.Clear();

        //        cobWhere_1_Team.Text = "";
        //        cobWhere_1_Team.Properties.Items.AddRange(team);
        //        cobWhere_1_Team.Text = wf.WFWhere_1;
        //    }
        //}

        //if (wf.DeptName != null && wf.WFWhere != null && wf.WFWhere_1 != null)
        //{
        //    IQueryable<DepartalSort> lst2 = rqc.DepartalSorts.Where(P => P.Deptmental_EN == wf.DeptName.Trim()
        //             && P.Section_EN == wf.WFWhere.Trim() && P.Team_EN == wf.WFWhere_1.Trim() && P.Class_EN != null);
        //    if (lst2 != null && lst2.Count() > 0)
        //    {
        //        string[] classes = lst2.Select(S => S.Class_EN.Trim()).Distinct().ToArray();

        //        if (cobWhere.Text.Contains("Stitching Section") && this.cobWhere_1_Team.Text != "- -")
        //        {
        //            //選擇了前段組/后段組之類

        //            //this.edt_class.Visible = true;
        //            //this.edt_classcn.Visible = true;
        //            //this.edt_class.Enabled = false;
        //            //this.edt_classcn.Enabled = false;

        //            if (this.cobTeamNo.Properties.Items != null)
        //                cobTeamNo.Properties.Items.Clear();

        //            cobTeamNo.Text = "";
        //            cobTeamNo.Properties.Items.AddRange(classes);
        //            cobTeamNo.Text = wf.WFWhere_2;

        //        }
        //        else
        //        {
        //            this.edt_class.Enabled = false;
        //            this.edt_classcn.Enabled = false;

        //            if (cobWhere_2_Class.Properties.Items != null)
        //                cobWhere_2_Class.Properties.Items.Clear();

        //            cobWhere_2_Class.Text = "";
        //            cobWhere_2_Class.Properties.Items.AddRange(classes);
        //            cobWhere_2_Class.Text = wf.WFWhere_2;

        //        }
        //    }
        //}
        ////  ShowWorkRegion(wf);
        //}

        private void cobTown_EditValueChanged(object sender, EventArgs e)
        {
            //if (cobTown.Text.ToString() != "")
            //{
            //    BaseCode bc = cobTown.Properties.GetDataSourceRowByKeyValue(cobTown.EditValue) as BaseCode;
            //    cobTownCn.Text = bc.Description;
            //    cobTownBd.Text = bc.NameBd;
            //}
        }


        private void cobWFPart_EditValueChanged(object sender, EventArgs e)
        {

            //if (cobWFPart.Text.ToString() != "")
            //{

            BaseCode bc = cobWFPart.Properties.GetDataSourceRowByKeyValue(cobWFPart.EditValue) as BaseCode;
            this.edtWFPartcn.Text = bc.Description;

            //cobWFPartBd.Text = publicLibary.getSelectIndex("WFPart", LangType.Bd, cobWFPart.Text.ToString(), this.DataContext);
            PH.LWPM.BO.WorkForce _curwf = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
            if (_curwf != null)
            {
                _curwf.NextLineCode = bc.Code; // Save WFPart Code With NextLinecode field ;

                _curwf.WFPart = bc.ExtraField1; //Brief. desc. 英语描述取短名称, 由David修改 2023-10-08
                //_curwf.WFPart = bc.Name;
                
                _curwf.WFPartCn = bc.Description;
            }

            // }

        }



        private void cobTeamNo_SelectedIndexChanged(object sender, EventArgs e)
        {

            //List<DepartalSort> _departinfor = new List<DepartalSort>();

            //string _dept = this.deptNameTextEdit.Text;
            //string _section = cobWhere.Text;
            //string _team = cobWhere_1_Team.Text;
            //string _class = this.cobTeamNo.Text;




            //if (!string.IsNullOrEmpty(_dept))
            //{
            //    _departinfor = (this.DataContext as RAPLQDataContext).DepartalSorts.Where(p => p.Deptmental_EN == _dept).ToList();
            //}
            //if (!string.IsNullOrEmpty(_section))
            //{
            //    _departinfor = _departinfor.Where(p => p.Section_EN == _section).ToList();
            //}
            //if (!string.IsNullOrEmpty(_team))
            //{
            //    _departinfor = _departinfor.Where(p => p.Team_EN == _team).ToList();
            //}
            //if (!string.IsNullOrEmpty(_class))
            //{
            //    _departinfor = _departinfor.Where(p => p.Class_EN == _class).ToList();
            //}
            //if (_departinfor.Count() > 0 && _dept == "Sewing Dept" && this.factoryComboBoxEdit.Text.Trim() == "SL")
            //{
            //    edtWorkRegion.Text = _departinfor[0].WorkRegion;
            //    edtDeptLocation.Text = _departinfor[0].Location;
            //}
            //else if (_departinfor.Count() == 0 && this.factoryComboBoxEdit.Text == "SL")
            //{
            //    edtWorkRegion.Text = "";
            //    edtDeptLocation.Text = "";

            //}

            //this.cobWhere_2_ClassCn.Text = _class;

        }

        private void chkRemoteFuncControl_Y_CheckedChanged(object sender, EventArgs e)
        {
            if (chkRemoteFuncControl_Y.Checked == true)
            {
                chkRemoteFuncControl_N.Checked = false;
            }
            else
            {
                chkRemoteFuncControl_N.Checked = true;
            }
        }

        private void chkRemoteFuncControl_N_CheckedChanged(object sender, EventArgs e)
        {
            if (chkRemoteFuncControl_N.Checked == true)
            {
                chkRemoteFuncControl_Y.Checked = false;
            }
            else
            {
                chkRemoteFuncControl_Y.Checked = true;
            }
        }

        private void chkRemoteFuncSupport_Y_CheckedChanged(object sender, EventArgs e)
        {
            if (chkRemoteFuncSupport_Y.Checked == true)
            {
                chkRemoteFuncSupport_N.Checked = false;
            }
            else
            {
                chkRemoteFuncSupport_N.Checked = true;
            }
        }

        private void chkRemoteFuncSupport_N_CheckedChanged(object sender, EventArgs e)
        {
            if (chkRemoteFuncSupport_N.Checked == true)
            {
                chkRemoteFuncSupport_Y.Checked = false;
            }
            else
            {
                chkRemoteFuncSupport_Y.Checked = true;
            }

        }

        private void deptNameTextEdit_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (e.Button.Kind == ButtonPredefines.Ellipsis)
            {
                SelectDepartmentalForm frmDepartmental = new SelectDepartmentalForm(this.factoryComboBoxEdit.Text);
                if (frmDepartmental.ShowDialog() == DialogResult.OK)
                {
                    CurrentWorkforce.DeptName = frmDepartmental.SelectDepartmental.Deptmental_EN;
                    CurrentWorkforce.DeptNameCn = frmDepartmental.SelectDepartmental.Departalment_chn;
                    CurrentWorkforce.WFWhere = frmDepartmental.SelectDepartmental.Section_EN;
                    CurrentWorkforce.WFWhereCn = frmDepartmental.SelectDepartmental.Section_chn;
                    CurrentWorkforce.WFWhere_1 = frmDepartmental.SelectDepartmental.Team_EN;
                    CurrentWorkforce.WFWhere_1Cn = frmDepartmental.SelectDepartmental.Team_chn;
                    //CurrentWorkforce.WFWhere_2 = frmDepartmental.SelectDepartmental.Class_EN;
                    CurrentWorkforce.SeqNo = frmDepartmental.SelectDepartmental.SeqNo;
                    this.BindingSource.ResetCurrentItem();
                }
            }
        }

        private void cobCountry_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            if (e.Button.Kind == ButtonPredefines.Ellipsis)
            {
                SelectRegionForm frmRegion = new SelectRegionForm();
                if (frmRegion.ShowDialog() == DialogResult.OK)
                {
                    frmRegion.CalculateNodeInformation();
                    CurrentWorkforce.Country = frmRegion.CountryEN;
                    CurrentWorkforce.CountryCn = frmRegion.CountryCN;
                    CurrentWorkforce.Region = frmRegion.ProvinceEN;
                    CurrentWorkforce.RegionCn = frmRegion.ProvinceCN;
                    CurrentWorkforce.Area = frmRegion.CityEN;
                    CurrentWorkforce.AreaCn = frmRegion.CityCN;
                    CurrentWorkforce.Town = frmRegion.TownEN;
                    CurrentWorkforce.TownCn = frmRegion.TownCN;
                    this.BindingSource.ResetCurrentItem();

                    //select Country, CountryCn, Region, RegionCn, Area, AreaCn, Town, TownCn from  WorkForce
                }
            }
        }

        private void txtTitleTypeCode_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            SelectJobTitleForm frmJobTitle = new SelectJobTitleForm();
            if (frmJobTitle.ShowDialog() == DialogResult.OK)
            {
                CurrentWorkforce.TitleTypeCode = frmJobTitle.SelectJobTitle.Code;
                CurrentWorkforce.WorkForceTyEn = frmJobTitle.SelectJobTitle.TitleTypeEn;
                CurrentWorkforce.WorkForceTyCn = frmJobTitle.SelectJobTitle.TitleTypeCn;
                CurrentWorkforce.JobTitleCode = frmJobTitle.SelectJobTitle.JTCode;
                CurrentWorkforce.JobTitleEn = frmJobTitle.SelectJobTitle.JobTitleEn;
                CurrentWorkforce.JobTitleCn = frmJobTitle.SelectJobTitle.JobTitleCn;

                CurrentWorkforce.jobtitle_SeqNo = frmJobTitle.SelectJobTitle.SeqNo;
                CurrentWorkforce.Grade = frmJobTitle.SelectJobTitle.GradeCode;
                this.BindingSource.ResetCurrentItem();

                //select TitleTypeCode, WorkForceTyEn, WorkForceTyCn, JobTitleCode, JobTitleEn,  JobTitleCn, jobtitle_SeqNo, * 
                //from Workforce

            }
        }

        private void lueEmptype_EditValueChanged(object sender, EventArgs e)
        {
            ProcessOpenVacancyDueDate(); //由david加入 2020-03-13
        }

        //加入Open Vacancy Due Date,  由david加入 2020-03-13
        void ProcessOpenVacancyDueDate()
        {
            this.txtOpenVacancyDueDate.Visible = lueEmptype.EditValue.ToString() == "OV" || lueEmptype.EditValue.ToString() == "BV";
            this.lbOpenVacancyDueDate.Visible = this.txtOpenVacancyDueDate.Visible;
        }

        private void radioGroup2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



    }
}
