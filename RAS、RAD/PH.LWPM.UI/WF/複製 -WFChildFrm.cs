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

        }
        Boolean AddnewFlg;

        List<BaseCode> _lstcitys;
        List<BaseCode> _lstwagetype;

        public override void DataBind()
        {

            
            this.childList1.BindingSource.DataSource = (this.BindingSource.Current as PH.LWPM.BO.WorkForce).OpSkills;
            base.DataBind();
            //string[] DPTUS = publicLibary.getItems("DPTUS", this.DataContext);              
            //string[] WorkShopNew = publicLibary.getItems("WorkShopNew", this.DataContext);
            
            //string[] Whrere_1_Team = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cobWhere_1_Team" || P.Type == "WFWhere_1_team").Select(S => S.Name).Distinct().ToArray();
            //string[] Where_2_Team = publicLibary.getItems("WFWhere_2_class", this.DataContext);


            string[] Sub_SectionFAE = (this.DataContext as RAPLQDataContext).Sub_Sections.Select(S => S.NameEn).ToArray();

            //add by joseph
            string[] aryRecrole = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cbbRecrole").Select(S => S.Name).Distinct().ToArray();
            string[] aryDeptLocation = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cbbDeptLocation").Select(S => S.Name).Distinct().ToArray();


            //this.cbbTransferDept.Properties.Items.AddRange(DPTUS);
            //cbbTransferDept.Properties.Items.AddRange(WorkShopNew);
            cbbTransferDept.Properties.Items.AddRange(Sub_SectionFAE);
            //cbbTransferDept.Properties.Items.AddRange(Whrere_1_Team);
            //cbbTransferDept.Properties.Items.AddRange(Where_2_Team);

            this.cbbRecRole.Properties.Items.AddRange(aryRecrole);
            this.cbbDepartalLocation.Properties.Items.AddRange(aryDeptLocation);
            this.cbbReclocation.Properties.Items.AddRange(aryDeptLocation);
  
           // cobCo_Team.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "CO_Team").Select(S => S.Name).Distinct().ToArray());

            _lstcitys = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "AREA").ToList();
            areaComboBoxEdit.Properties.DisplayMember = "Name";
            areaComboBoxEdit.Properties.ValueMember = "Code";
            areaComboBoxEdit.Properties.DataSource = _lstcitys;
            areaComboBoxEdit.Properties.PopupSizeable = true;            
            areaComboBoxEdit.Properties.PopupWidth = 20;

            //get wage type 
            _lstwagetype = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "SalaryType").ToList();
            this.lueWageType.Properties.DisplayMember = "Name";
            lueWageType.Properties.ValueMember = "Code";
            lueWageType.Properties.DataSource = _lstwagetype;
            lueWageType.EditValueChanged += new EventHandler(lueWageType_EditValueChanged);

        }

        void lueWageType_EditValueChanged(object sender, EventArgs e)
        {
            if (lueWageType.Text.ToString() != "")
            {
                BaseCode bc = this.lueWageType.Properties.GetDataSourceRowByKeyValue(lueWageType.EditValue) as BaseCode;
                if (bc != null)
                {
                    this.edtWageType_TW.Text = bc.Description;
                    this.edtWageType_Bd.Text = bc.NameBd;
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
            P1.Properties.ReadOnly = (this.BindingSource.Current as PH.LWPM.BO.WorkForce).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New || (this.BindingSource.Current as PH.LWPM.BO.WorkForce).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit ? false : true;
            UpdateLeave();
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
        }


        protected override void OnClickSave()
        {
            if (AddnewFlg)
            {
                
                if (this.ValidationSaveCondition(factoryComboBoxEdit.Text.TrimEnd(), idTextEdit.Text.TrimEnd())) return;
            }
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Seniority = Convert.ToDecimal(senioritySpinEdit.Text);
            //model trim
           PH.LWPM.BO.WorkForce oldmodel = repostory.getWorkForceStrim(this.BindingSource.Current as PH.LWPM.BO.WorkForce);

           PH.LWPM.BO.WorkForce WF = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
           WF.SeqNo = this.GetSeqNo(WF);
           base.OnClickSave();
            SaveImg(factoryComboBoxEdit.Text.TrimEnd(), idTextEdit.Text.TrimEnd());

        }
        protected override void OnClickSaveAndReturn()
        {
            if (AddnewFlg) { if (this.ValidationSaveCondition(factoryComboBoxEdit.Text.TrimEnd(), idTextEdit.Text.TrimEnd())) return; }
            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Seniority = Convert.ToDecimal(senioritySpinEdit.Text);
            if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
               // (this.BindingSource.Current as PH.LWPM.BO.WorkForce).rowguid = System.Guid.NewGuid();
        
            }

            PH.LWPM.BO.WorkForce WF = this.BindingSource.Current as PH.LWPM.BO.WorkForce;

            WF.SeqNo = this.GetSeqNo(WF);
            base.OnClickSaveAndReturn();
            SaveImg(factoryComboBoxEdit.Text.TrimEnd(), idTextEdit.Text.TrimEnd());
        }

        void SaveImg(string factory, string wfid)
        {

            if (AddnewFlg)
            {
                WorkForceImg mg = new WorkForceImg();
                mg.Factory = factory;
                mg.Id = wfid;
                if (P1.Image != null) mg.img = DBAccess.ImageToByteArray(P1.Image);
                (this.DataContext as RAPLQDataContext).WorkForceImgs.InsertOnSubmit(mg);
                (this.DataContext as RAPLQDataContext).SubmitChanges();
                AddnewFlg = false;
            }
            else
            {
                var CurWF = (this.DataContext as RAPLQDataContext).WorkForceImgs.Where(P => P.Factory == factory && P.Id == wfid).FirstOrDefault();
                if (CurWF == null)
                {
                    WorkForceImg mg = new WorkForceImg();
                    mg.Factory = factory;
                    mg.Id = wfid;
                    if (P1.Image != null) mg.img = DBAccess.ImageToByteArray(P1.Image);
                    (this.DataContext as RAPLQDataContext).WorkForceImgs.InsertOnSubmit(mg);
                }
                else
                {
                    if (P1.Image != null)
                    {
                        CurWF.img = DBAccess.ImageToByteArray(P1.Image);

                    }
                    else
                    {
                        CurWF.img = null;
                    }
                }
                (this.DataContext as RAPLQDataContext).SubmitChanges();
            }

        }
        void ShowImg(string factory, string wfid)
        {

            var iMG = (this.DataContext as RAPLQDataContext).WorkForceImgs.Where(P => P.Factory == factory && P.Id == wfid).Select(S => S.img).FirstOrDefault();
            P1.Image = iMG != null ? DBAccess.ByteArrayToImage(iMG.ToArray()) : null;

        }

        string GetSeqNo(PH.LWPM.BO.WorkForce curWF)
        {
            DepartalSort depsort =(this.DataContext as RAPLQDataContext).DepartalSorts.Where(p => p.Deptmental_EN == curWF.DeptName && p.Section_EN == curWF.WFWhere&&
                p.Team_EN == curWF.WFWhere_1 && p.Class_EN == curWF.WFWhere_2).FirstOrDefault();
            string seqno = string.Empty;
            if (depsort != null)
                seqno = depsort.SeqNo;
            return seqno;        
        }



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

            AutoSizePanel();
            AddnewFlg = (this.BindingSource.Current as PH.LWPM.BO.WorkForce).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New ? true : false;



            getCobBindMethod(AddnewFlg);

            setSelectClsNameMethod();

            jobTitleEnComboBoxEdit.Properties.Items.EndUpdate();

            ShowImg(factoryComboBoxEdit.Text.TrimEnd(), this.idTextEdit.Text.TrimEnd());
            if (!AddnewFlg) ShowMatrixByChart();
        }

        private void AutoSizePanel()
        {
            //int SH = Screen.PrimaryScreen.Bounds.Height;
            //int pSW = this.panel2.Width;
            //int SW = Screen.PrimaryScreen.Bounds.Width;
            //if (SW > pSW)
            //{
                //this.panel2.Width = SW-150;
            //}
        }

        private void setSelectClsNameMethod()
        {

            setBdMethod("- -");
            string[] Vacancy = { "Open Vacancy", "Replacement Vacancy", "Plan Vacancy" };

            PH.LWPM.BO.WorkForce wf = this.BindingSource.Current as PH.LWPM.BO.WorkForce;

            string strParaName = (this.PrevForm as WFPListFrm).ParaName;

            if (Vacancy.Where(p => p.Contains(strParaName)).Count()>0)
            {
                strParaName = "ALL";
            }
           if((this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPart==null)
            {
                if (strParaName == "ALL")
                {
                    //Default
                    (this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPart =  "Sewing Direct Labors Cost";
                    (this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPartCn = publicLibary.getSelectIndex("WFPart", null, "Sewing Direct Labors Cost", this.DataContext);
                }
                else
                {
                    (this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPart = strParaName;
                    (this.BindingSource.Current as PH.LWPM.BO.WorkForce).WFPartCn = publicLibary.getSelectIndex("WFPart", null, strParaName,this.DataContext);
                }
               
          
            }

            string Factory = DBAccess.CurFactory();
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

                case "Open Vacancy":
                    if (AddnewFlg)
                    {
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[0].ToString();
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Vacancy = "Open Vacancy";
                    }
                        cobVacancy.Visible = true;
                        lblVacancy.Visible = true;
                        cobDateVacancy.Visible = true;
                        lblvacancyDate.Visible = true;
                        cobVacancy.Properties.Items.AddRange(publicLibary.getItems("Vacancy", this.DataContext));
                        if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate == null)
                        {
                            cobVacancy.Text = "Open Vacancy";
                            (this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate = DateTime.Now;
                        }
            
                    break;
                case "Replacement Vacancy":
                    if (AddnewFlg)
                    {
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[0].ToString();
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Vacancy = "Replacement Vacancy";
                    }
                    cobVacancy.Visible = true;
                    lblVacancy.Visible = true;
                    cobDateVacancy.Visible = true;
                    lblvacancyDate.Visible = true;
                    cobVacancy.Properties.Items.AddRange(publicLibary.getItems("Vacancy", this.DataContext));
                    if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate == null)
                    {
                        cobVacancy.Text = "Replacement Vacancy";
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate = DateTime.Now;
                    }
                    break;
                case "Plan Vacancy":
                    if (AddnewFlg)
                    {
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).ClsName = clsNameComboBoxEdit.Properties.Items[0].ToString();
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Factory = Factory;
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).Vacancy = "Plan Vacancy";
                    }
                    cobVacancy.Visible = true;
                    lblVacancy.Visible = true;
                    cobDateVacancy.Visible = true;
                    lblvacancyDate.Visible = true;
                    cobVacancy.Properties.Items.AddRange(publicLibary.getItems("Vacancy", this.DataContext));
                   if((this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate == null)
                    {
                        cobVacancy.Text = "Plan Vacancy";
                        (this.BindingSource.Current as PH.LWPM.BO.WorkForce).VacancyDate = DateTime.Now;
                    }
                    break;
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

        private void getCobBindMethod(bool IsAddnewFlg)
        {
            RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;
            jobTitleEnComboBoxEdit.Properties.Items.BeginUpdate();

            wFLevelTextEdit.Properties.Items.AddRange(publicLibary.getItems("LEVEL",this.DataContext));

            string[] deptarts = rqc.DepartalSorts.Select(P => P.Deptmental_EN).Distinct().ToArray();
            deptNameTextEdit.Properties.Items.AddRange(deptarts);

            //deptNameTextEdit.Properties.Items.AddRange(publicLibary.getItems("DPTUS",this.DataContext));
            this.clsNameComboBoxEdit.Properties.Items.AddRange(publicLibary.getItems("WFClass",this.DataContext));
            cobWFState.Properties.Items.AddRange(publicLibary.getItems("Tasks_in_hand",this.DataContext));
            //cobWhere.Properties.Items.AddRange(publicLibary.getItems("WorkShopNew",this.DataContext));
            cobWFPart.Properties.Items.AddRange(publicLibary.getItems("WFPart",this.DataContext));
            cobCroossRoleDcrp.Properties.Items.AddRange(publicLibary.getItems("CrossRole",this.DataContext));
            cobCountry.Properties.Items.AddRange(publicLibary.getItems("Country",this.DataContext));
            cobGrade.Properties.Items.AddRange(publicLibary.getItems("Grade",this.DataContext));

            if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).CrossRole != true)
            {
                chkCrossRole_N.Checked = true;
            }
            else
            {
                chkCrossRole_N.Checked = false ;
            }
            if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).HeadCount != true)
            {
                chkHeadCount_N.Checked = true;
            }
            else
            {
                chkHeadCount_N.Checked = false;
            }


            if ((this.BindingSource.Current as PH.LWPM.BO.WorkForce).WorkForceTyEn != null)
            {
                var jobtitle = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
                               where p.TitleTypeEn == cobWorkForceTyEn.Text.ToString()
                               select p.JobTitleEn;
                jobTitleEnComboBoxEdit.Properties.Items.AddRange(jobtitle.ToArray());
            }
          
    
            var q = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
                    group p by new { p.Code, p.TitleTypeEn } into g
                    select g.Key.TitleTypeEn;

            cobWorkForceTyEn.Properties.Items.AddRange(q.ToArray());
            workerTypeComboBoxEdit.Properties.Items.AddRange(publicLibary.getItems("WorkerType",this.DataContext));


            //cobWhere_2_Class.Properties.Items.AddRange(publicLibary.getItems("WFWhere_2_class",this.DataContext));


            cobTown.Properties.Items.AddRange(publicLibary.getItems("Town",this.DataContext));
            cobStationed_at.Properties.Items.AddRange(publicLibary.getItems("Stationed_at",this.DataContext));
            cobStandby.Properties.Items.AddRange(publicLibary.getItems("Standby",this.DataContext));


            lineCodeComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).FactoryLines.Where(P => P.Line != null).Where(P1 => P1.Factory == factoryComboBoxEdit.Text.Trim().ToString()).Where(P2 => P2.Type == "WF").Select(S => S.Line).Distinct().OrderBy(E => E).ToArray());
     
            regionComboBoxEdit.Properties.Items.AddRange(publicLibary.getItems("Region",this.DataContext));
 

            cobRecEn.Properties.Items.AddRange(publicLibary.getItems("Rec",this.DataContext));
            locationComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).WorkForces.Where(P => P.Factory == factoryComboBoxEdit.Text.Trim().ToString() && P.Location != null).Select(S => S.Location.TrimEnd()).Distinct().ToList());


            factoryComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).WorkForces.Where(P => P.Factory != null).Select(S => S.Factory).Distinct().OrderBy(E => E).ToArray());

            cobSub_Section_FAE.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).Sub_Sections.Select(S => S.NameEn).ToArray());
            //cobWhere_1_Team.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P=>P.Type=="cobWhere_1_Team"||P.Type=="WFWhere_1_team").Select(S=>S.Name).Distinct().ToArray());
            cobCo_Team.Properties.Items.AddRange(publicLibary.getItems("Co_Team",this.DataContext));
            cob2ndOffice.Properties.Items.AddRange(publicLibary.getItems("SecondOffice",this.DataContext));
            cobcontrolsupport.Properties.Items.AddRange(publicLibary.getItems("Controler",this.DataContext));
            cobcontrolsupport.Properties.Items.AddRange(publicLibary.getItems("Support", this.DataContext));


          
           
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
                jobTitleEnComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                factoryComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;

            }

        }

        private void longLeaveCheckEdit_CheckedChanged(object sender, EventArgs e)
        {
         
            panel1.Visible = longLeaveCheckEdit.Checked;

        }

        private void isRegistAuxiliaryCheckEdit_CheckedChanged(object sender, EventArgs e)
        {
            panelAuxiliary.Visible = isRegistAuxiliaryCheckEdit.Checked;
        }



        private void cobWFPart_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cobWFPart.Text.ToString() != "")
            {
                cobWFPartCn.Text = publicLibary.getSelectIndex("WFPart", null, cobWFPart.Text.ToString(),this.DataContext);
                cobWFPartBd.Text = publicLibary.getSelectIndex("WFPart", LangType.Bd, cobWFPart.Text.ToString(), this.DataContext);
             
            }
        }
        private void regionComboBoxEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
        
            if (regionComboBoxEdit.Text.ToString() != "")
            {
                string RegionCn = publicLibary.getSelectIndex("REGION", null, regionComboBoxEdit.Text.Trim().ToString(), this.DataContext);
                cobRegionCn.Text = RegionCn;
                string RegionBd = publicLibary.getSelectIndex("REGION", LangType.Bd, regionComboBoxEdit.Text.Trim().ToString(), this.DataContext);
                if (RegionBd == "")
                {
                    RegionBd = "- -";
                }
                cobRegionBd.Text = RegionBd;
                //   areaComboBoxEdit.Properties.Items.Clear();
                //areaComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).WorkForces.Where(P => P.RegionCn == RegionCn && P.Area != null).Select(S => S.Area).Distinct().ToArray());
                //areaComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P=>P.Type=="AREA").Select(S => S.Name).Distinct().ToArray());
            }

        }


        private void workerTypeComboBoxEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (workerTypeComboBoxEdit.Text.ToString() != null)
            {
                workerTypeComboBoxEditCn.Text = publicLibary.getSelectIndex("WorkerType", null, workerTypeComboBoxEdit.Text.ToString(),this.DataContext);
                workerTypeComboBoxEditBd.Text = publicLibary.getSelectIndex("WorkerType", LangType.Bd, workerTypeComboBoxEdit.Text.ToString(), this.DataContext);
            }
        }

        private void cobWorkForceTyEn_SelectedIndexChanged(object sender, EventArgs e)
        {
            var q = (from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
                    group p by new { p.Code, p.TitleTypeEn, p.TitleTypeCn,p.TitleTypeBd } into g
                    where g.Key.TitleTypeEn == cobWorkForceTyEn.Text.ToString()
                    select g.Key);
            foreach (var item in q)
            {
               cobWorkForceTyCode.Text= item.Code;
               cobWorkForceTyCn.Text = item.TitleTypeCn;
               cobWorkForceTyBd.Text = item.TitleTypeBd;
            }
            
            jobTitleEnComboBoxEdit.Properties.Items.Clear();
            var jobtitle = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
                           where p.TitleTypeEn == cobWorkForceTyEn.Text.ToString()
                           select p.JobTitleEn;
            jobTitleEnComboBoxEdit.Properties.Items.AddRange(jobtitle.ToArray());

        }

        private void deptNameTextEdit_SelectedIndexChanged(object sender, EventArgs e)
        {

            cobDepartmentCn.Text = publicLibary.getSelectIndex("DPTUS", null, deptNameTextEdit.Text.ToString(),this.DataContext);
            cobDepartmentBd.Text = publicLibary.getSelectIndex("DPTUS", LangType.Bd, deptNameTextEdit.Text.ToString(), this.DataContext);

            //string deptname = deptNameTextEdit.Text.Trim();
            this.FillDepartment(sender);
            

            //RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;
            //if (cobWhere.Properties.Items != null)
            //    cobWhere.Properties.Items.Clear();

            //cobWhere.Properties.Items.AddRange(rqc.DepartalSorts.Where(P=>P.Deptmental_EN==deptname).Select(S=>S.Section_EN).ToArray());

        }

        private void jobTitleEnComboBoxEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
            string NameEn = jobTitleEnComboBoxEdit.Text.ToString();
            if (NameEn != null)
            {
                jobTitleCnComboBoxEdit.Text = getSelectIndexNew(jobTitleEnComboBoxEdit.Text.ToString().Trim());// 
                jobTitleCodeBd.Text = (from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
                                      where p.JobTitleEn == NameEn.Trim()
                                       select p.JobTitleBd).FirstOrDefault(); ;
            }

        }
        private string getSelectIndexNew(string NameEn)
        {
             string stra =string.Empty;
            string strb =string.Empty;
            string strcode=string.Empty;
            var qa = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
                     where p.JobTitleEn == NameEn.Trim()
                     select p.JobTitleCn;
            var qb = from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
                     where p.JobTitleEn == NameEn.Trim()
                     select p.JobTitleBd;
            var q=(from p in (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles
                     where p.JobTitleEn == NameEn.Trim()
                     select p).ToList();
            foreach (var item in q)
	        {
		         stra=item.JobTitleCn;
                strb=item.JobTitleBd;
                strcode=item.JTCode;

	        }
            jobTitleCode.Text = strcode;
            StringBuilder sbstr = new StringBuilder();
            if (strb == null || strb.Trim() == "")
            {
                sbstr.Append(stra);
            }
            else
            {
                strb = strb.Trim().ToString();
                if (strb == "")
                {
                    sbstr.Append(stra);
                }
                else
                {
                  //  sbstr.Append(stra.Trim() + "|" + strb);
                    sbstr.Append(stra.Trim());
                }
            }

            return sbstr.ToString();



        }
      

        private void cobWhere_2_Class_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.FillDepartment(sender);

            if (cobWhere_2_Class.Text.ToString() != "")
            {
                cobWhere_2_ClassCn.Text = publicLibary.getSelectIndex("WFWhere_2_class", null, cobWhere_2_Class.Text.Trim().ToString(),this.DataContext);
                cobWhere_2_ClassBd.Text = publicLibary.getSelectIndex("WFWhere_2_class", LangType.Bd, cobWhere_2_Class.Text.Trim().ToString(), this.DataContext);
            }
        }

        private void cobWhere_1_Team_SelectedIndexChanged(object sender, EventArgs e)
        {//cobWhere_1_Team WFWhere_1_team  --team

            this.FillDepartment(sender);

            string cobcobWhere_1_TeamStr = cobWhere_1_Team.Text.Trim();
            if (cobcobWhere_1_TeamStr != "")
            {
                cobWhere_1_TeamCn.Text = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => (P.Type == "cobWhere_1_Team" || P.Type == "WFWhere_1_team") && P.Name == cobcobWhere_1_TeamStr).Select(S => S.Description).FirstOrDefault();// getSelectIndex("cobWhere_1_Team", null, cobWhere_1_Team.Text.Trim().ToString());
                cobWhere_1_TeamBd.Text = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => (P.Type == "cobWhere_1_Team" || P.Type == "WFWhere_1_team") && P.Name == cobcobWhere_1_TeamStr).Select(S => S.NameBd).FirstOrDefault();
                var q = from p in (this.DataContext as RAPLQDataContext).LineCodes
                        where p.LineCodeName == cobcobWhere_1_TeamStr
                        select p;
                if (q.Count() > 0)
                {
                    cobWhere_1_TeamCn.Text = cobcobWhere_1_TeamStr;
                   
                   
                }
                (this.BindingSource.Current as PH.LWPM.BO.WorkForce).LineCode = cobcobWhere_1_TeamStr;
              
            }
            if (cobWhere_1_Team.Text.ToString() == "- -")
            {
                cobWhere_1_TeamCn.Text = "- -";
            }
       
        }

        private void cobCo_Team_SelectedIndexChanged(object sender, EventArgs e)
        {
            string StrLinkageNameEn=cobCo_Team.Text.ToString();
            if (StrLinkageNameEn.Trim() != "")
            {
                int selectSub_Id = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.LinkageNameEn == StrLinkageNameEn).Select(p => p.Sub_Id).FirstOrDefault();
                var q = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.LinkageNameEn == StrLinkageNameEn);
                if (q.Count() > 0)
                {
                    cobCo_TeamCn.Text = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.LinkageNameEn == StrLinkageNameEn).Select(p => p.LinkageNameCn).FirstOrDefault();
                }
                else
                {
                    cobCo_TeamCn.Text = publicLibary.getSelectIndex("Co_Team", null, cobCo_Team.Text.Trim().ToString(), this.DataContext);
                    cobCo_TeamBd.Text = publicLibary.getSelectIndex("Co_Team", LangType.Bd, cobCo_Team.Text.Trim().ToString(), this.DataContext);
                }
            }
            //Add Linecode

            //string cobCo_TeamStr = cobCo_Team.Text.Trim();
            //if (cobCo_TeamStr != "")
            //{
                
            //    int selectSub_Id = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.LinkageNameEn == cobCo_TeamStr).Select(p => p.Sub_Id).FirstOrDefault();
            //    var q = from p in (this.DataContext as RAPLQDataContext).LineCodes
            //            where p.Sub_Id == selectSub_Id
            //            group p by new { p.Sub_Id, p.LineCodeName } into g
            //            select g.Key.LineCodeName;
            //    cobWhere_1_Team.Properties.Items.AddRange(q.ToArray());
            //}
        }

        private void cobWhere_SelectedIndexChanged(object sender, EventArgs e)
        {
       
            this.FillDepartment(sender);
            if (cobWhere.Text.ToString() != "")
            {
                cobWFWhereCn.Text = publicLibary.getSelectIndex("WorkShopNew", null, cobWhere.Text.Trim().ToString(),this.DataContext);
                cobWFWhereBd.Text = publicLibary.getSelectIndex("WorkShopNew", LangType.Bd, cobWhere.Text.Trim().ToString(), this.DataContext);
            }

            


        }

        private void FillDepartment(object sender)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbedit = sender as DevExpress.XtraEditors.ComboBoxEdit;
            RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;          

            if (cbedit.Name.Trim() == "deptNameTextEdit")
            {
                string[] section = rqc.DepartalSorts.Where(P => P.Deptmental_EN == this.deptNameTextEdit.Text.Trim()).Select(S=>S.Section_EN.Trim()).Distinct().ToArray();
                if (cobWhere.Properties.Items != null)
                    cobWhere.Properties.Items.Clear();
                cobWhere.Text = "";
                cobWhere.Properties.Items.AddRange(section);
            }

            if (cbedit.Name.Trim() == "cobWhere")
            {
                string[] team = rqc.DepartalSorts.Where(P => P.Deptmental_EN==this.deptNameTextEdit.Text.Trim()
                    && P.Section_EN == cobWhere.Text.Trim()).Select(S => S.Team_EN.Trim()).Distinct().ToArray();

                if (cobWhere_1_Team.Properties.Items != null)
                    cobWhere_1_Team.Properties.Items.Clear();

                cobWhere_1_Team.Text = "";
                cobWhere_1_Team.Properties.Items.AddRange(team);
            }

            if (cbedit.Name.Trim() == "cobWhere_1_Team")
            {
                string[] classes = rqc.DepartalSorts.Where(P => P.Deptmental_EN == this.deptNameTextEdit.Text.Trim()
                    && P.Section_EN == cobWhere.Text.Trim() && P.Team_EN == cobWhere_1_Team.Text.Trim()).Select(S => S.Class_EN.Trim()).Distinct().ToArray();

                if (cobWhere_2_Class.Properties.Items != null)
                    cobWhere_2_Class.Properties.Items.Clear();
                
                cobWhere_2_Class.Text = "";
                cobWhere_2_Class.Properties.Items.AddRange(classes);
            }               
        
        }


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

            if (cobCountry.Text.ToString() != "")
            {
                cobCountryCn.Text = publicLibary.getSelectIndex("Country", null, cobCountry.Text.Trim().ToString(),this.DataContext);
                cobCountryBd.Text = publicLibary.getSelectIndex("Country", LangType.Bd, cobCountry.Text.Trim().ToString(), this.DataContext);
            }
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
            if (areaComboBoxEdit.Text.ToString() != "")
            {
                BaseCode bc = areaComboBoxEdit.Properties.GetDataSourceRowByKeyValue(areaComboBoxEdit.EditValue) as BaseCode;
                if (bc!=null)
                {
                  cobAreaCn.Text =bc.Description;
                  cobAreaBd.Text = bc.NameBd;
                }
            }
        }

        private void cobTown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cobTown.Text.ToString() != "")
            {
                cobTownCn.Text = publicLibary.getSelectIndex("Town", null, cobTown.Text.Trim().ToString(),this.DataContext);
                cobTownCn.Text = publicLibary.getSelectIndex("Town", LangType.Bd, cobTown.Text.Trim().ToString(), this.DataContext);
            }
        }

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
            BaseCode bc =(this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cbbRecrole" && P.Name == cbbRecRole.Text).FirstOrDefault();
            if (bc!=null)
            {
                this.cbbRecrole_bd.Text = string.IsNullOrEmpty(bc.NameBd) ? string.Empty : bc.NameBd;
                this.cbbRecrole_chn.Text = string.IsNullOrEmpty(bc.Description) ? string.Empty : bc.Description;
            }
        }


        protected override void OnClickEdit()
        {
            base.OnClickEdit();
            FillDepartWhenEdit();
            cbbRecrole_bd.Enabled = true;
            cbbRecrole_chn.Enabled = true;
            //areaComboBoxEdit.Enabled = true;
        }


        private void FillDepartWhenEdit()
        {

            PH.LWPM.BO.WorkForce wf = this.BindingSource.Current as PH.LWPM.BO.WorkForce;
            RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;


                string[] section = rqc.DepartalSorts.Where(P => P.Deptmental_EN ==wf.DeptName.Trim()).Select(S => S.Section_EN.Trim()).Distinct().ToArray();
                if (cobWhere.Properties.Items != null)
                    cobWhere.Properties.Items.Clear();
                cobWhere.Properties.Items.AddRange(section);
                cobWhere.Text = wf.WFWhere;
            

                string[] team = rqc.DepartalSorts.Where(P => P.Deptmental_EN == wf.DeptName
                    && P.Section_EN == wf.WFWhere).Select(S => S.Team_EN.Trim()).Distinct().ToArray();

                if (cobWhere_1_Team.Properties.Items != null)
                    cobWhere_1_Team.Properties.Items.Clear();

                cobWhere_1_Team.Text = "";
                cobWhere_1_Team.Properties.Items.AddRange(team);
                cobWhere_1_Team.Text = wf.WFWhere_1;
               
            
        
                string[] classes = rqc.DepartalSorts.Where(P => P.Deptmental_EN == wf.DeptName.Trim()
                    && P.Section_EN == wf.WFWhere.Trim() && P.Team_EN == wf.WFWhere_1.Trim()).Select(S => S.Class_EN.Trim()).Distinct().ToArray();

                if (cobWhere_2_Class.Properties.Items != null)
                    cobWhere_2_Class.Properties.Items.Clear();
                cobWhere_2_Class.Text = "";
                cobWhere_2_Class.Properties.Items.AddRange(classes);
                cobWhere_2_Class.Text = wf.WFWhere_2;
                
            
        }





        
 
      


    }
}
