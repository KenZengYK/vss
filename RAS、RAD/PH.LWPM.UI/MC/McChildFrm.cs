using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;
using PH.LWPM.UI.IRepository;
using System.Collections;
using DevExpress.XtraBars;
using PH.Platform.BO;

namespace PH.LWPM.UI.MC
{
    public partial class McChildFrm : DetailForm
    {
        Boolean AddnewFlg;
        private IRepository.IPublicLibrary publicLibary;
        public int ClsIndex
        {
            get
            {
                switch (McClass.MCCaption)
                {
                    case "McCoreProduction": return 0;
                    case "McOtherProduction": return 1;
                    case "McPreProduction": return 2;
                    case "McPregnancy": return 3;
                    case "McStockRoom": return 4;
                    case "McMechanicRoom": return 5;
                    case "McNon": return 6;
                    default: return 0;

                }
            }

        }

        public McChildFrm()
        {
            InitializeComponent();
            this.publicLibary = new Repository.PublicLibrary();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.barBtnAddNew.Visibility = (this.PrevForm as McPListFrm).ReadOnlyParam == "ReadOnly" ? BarItemVisibility.Never : BarItemVisibility.Always;
            this.barBtnEdit.Visibility = this.barBtnAddNew.Visibility;
            this.barBtnDel.Visibility = this.barBtnAddNew.Visibility;
        }


        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            P1.Properties.ReadOnly = true;
        }
        protected override void OnClickSave()
        {

            Machine _current = this.BindingSource.Current as Machine;

            if (string.IsNullOrEmpty(_current.Type1) || string.IsNullOrEmpty(_current.MachineClass))
            {
                MessageBox.Show("Machine class and code can not be null!");
                return;
            }

            if (AddnewFlg) { if (this.ValidationSaveCondition(idTextEdit.Text.TrimEnd())) return; }
            if ((this.BindingSource.Current as Machine).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
            {
                string Id = idTextEdit.Text.TrimEnd();
                string oldFactory = (this.DataContext as RAPLQDataContext).Machines.Where(P => P.Id == Id).Select(S => S.Factory).FirstOrDefault();
                (this.BindingSource.Current as Machine).oldFactory = oldFactory;
                (this.BindingSource.Current as Machine).UpdateTime = DateTime.Now;
            }
            if ((this.BindingSource.Current as Machine).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                // (this.BindingSource.Current as Machine).rowguid = Guid.NewGuid();
                (this.BindingSource.Current as Machine).PrepanedByName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                (this.BindingSource.Current as Machine).PrepanedByDate = DateTime.Now;
            }
            base.OnClickSave();
            //    SaveImg(idTextEdit.Text.TrimEnd());


        }


        public override void EditCurrent()
        {

            Machine mh = (this.BindingSource.Current as Machine);
            if (IsEditting)
            {

                if (!string.IsNullOrEmpty(mh.Class) && mh.Class.Contains("Mc-Dead Stock Room"))
                {
                    MessageBox.Show("The machine has been scrapped,please to restored it first!");
                    return;
                }
            }

            if (IsNew)
            {
                McPListFrm _preform = this.PrevForm as McPListFrm;
                if (_preform.CurMenuParam == "Heavy")
                    mh.IsFix = true;
                else
                    mh.IsFix = false;
                mh.IsProjection = false;

                (this.BindingSource.Current as Machine).IsDeployment = false;

            }


            //if (IsNew)
            //{
            //    string ParaMCWF = (this.ListForm as McPListFrm).ParaMFWF.Trim().ToString();
            //    factoryComboBoxEdit.Text = "SL";
            //    lineComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).FactoryLines.Where(P => P.Line != null).Where(P11 => P11.Factory == factoryComboBoxEdit.Text.Trim().ToString()).Where(P2 => P2.Type == ParaMCWF).Select(S => S.Line).Distinct().OrderBy(E => E).ToArray());
            //}

            base.EditCurrent();

            //section&team&class readonly
            if (IsEditting)
            {
                cobDepartmentCn.Properties.ReadOnly = true;
                cobDepartmentBd.Properties.ReadOnly = true;
                cobWFWhereCn.Properties.ReadOnly = true;
                cobWFWhereBd.Properties.ReadOnly = true;
                cobWhere_1_TeamCn.Properties.ReadOnly = true;
                cobWhere_1_TeamBd.Properties.ReadOnly = true;
                cobWhere_2_ClassCn.Properties.ReadOnly = true;
                cobWhere_2_ClassBd.Properties.ReadOnly = true;
                edtRatio.Properties.ReadOnly = true;
            }

            P1.Properties.ReadOnly = (this.BindingSource.Current as Machine).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New || (this.BindingSource.Current as Machine).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit ? false : true;

            // this.FillDepartWhenEdit();

        }


        protected override void OnClickSaveAndReturn()
        {
            Machine _current = this.BindingSource.Current as Machine;

            if (string.IsNullOrEmpty(_current.Type1) || string.IsNullOrEmpty(_current.MachineClass))
            {
                MessageBox.Show("Machine class and code can not be null!");
                return;
            }


            if (AddnewFlg) { if (this.ValidationSaveCondition(idTextEdit.Text.TrimEnd())) return; }
            if ((this.BindingSource.Current as Machine).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
            {
                string Id = idTextEdit.Text.TrimEnd();
                string oldFactory = (this.DataContext as RAPLQDataContext).Machines.Where(P => P.Id == Id).Select(S => S.Factory).FirstOrDefault();
                (this.BindingSource.Current as Machine).oldFactory = oldFactory;
                (this.BindingSource.Current as Machine).UpdateTime = DateTime.Now;
            }
            if ((this.BindingSource.Current as Machine).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                //  (this.BindingSource.Current as Machine).rowguid = Guid.NewGuid();
                (this.BindingSource.Current as Machine).PrepanedByName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                (this.BindingSource.Current as Machine).PrepanedByDate = DateTime.Now;
            }
            base.OnClickSaveAndReturn();
            //     SaveImg(idTextEdit.Text.TrimEnd());

        }
        void SaveImg(string mcid)
        {
            if (AddnewFlg)
            {
                MachineImg mg = new MachineImg();
                mg.Id = mcid;
                if (P1.Image != null) mg.Mcimg = DBAccess.ImageToByteArray(P1.Image);
                (this.DataContext as RAPLQDataContext).MachineImgs.InsertOnSubmit(mg);
                (this.DataContext as RAPLQDataContext).SubmitChanges();
                AddnewFlg = false;
            }
            else
            {
                var CurMachine = (this.DataContext as RAPLQDataContext).MachineImgs.Where(P => P.Id == mcid).FirstOrDefault();
                if (CurMachine == null)
                {
                    MachineImg mg = new MachineImg();
                    mg.Id = mcid;
                    if (P1.Image != null)
                    {
                        mg.Mcimg = DBAccess.ImageToByteArray(P1.Image);

                    }
                    (this.DataContext as RAPLQDataContext).MachineImgs.InsertOnSubmit(mg);

                }
                else
                {
                    if (P1.Image != null)
                    {
                        CurMachine.Mcimg = DBAccess.ImageToByteArray(P1.Image);
                    }
                    else
                    {
                        CurMachine.Mcimg = null;
                    }
                }
                (this.DataContext as RAPLQDataContext).SubmitChanges();

            }

        }
        void ShowImg(string mcid)
        {
            var iMG = (this.DataContext as RAPLQDataContext).MachineImgs.Where(P => P.Id == mcid).Select(S => S.Mcimg).FirstOrDefault();
            P1.Image = iMG != null ? DBAccess.ByteArrayToImage(iMG.ToArray()) : null;

        }

        private void BindingSource_CurrentChanged(object sender, EventArgs e)
        {
            ShowImg((this.BindingSource.Current as Machine).Id);
        }

        IList<McClass_Disp> lstclass = new List<McClass_Disp>();
        BindingSource bsclass = new BindingSource();
        private void BindMcClass()
        {
            var _mcclass = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "McGroup");

            foreach (var r in _mcclass)
            {
                McClass_Disp obj = new McClass_Disp();
                obj.Code = r.Lang;
                obj.Description = r.Description;
                obj.DescriptionEn = r.Name;

                lstclass.Add(obj);
            }
            bsclass.DataSource = lstclass;

            this.lueMcClass.Properties.Columns.Clear();

            this.lueMcClass.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Code", "Code", 10),
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Name TW", 30, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DescriptionEn", "Name EN", 40, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });
            this.lueMcClass.Properties.AutoSearchColumnIndex = 0;
            this.lueMcClass.Properties.DataSource = bsclass;
            this.lueMcClass.Properties.ValueMember = "Code";
            this.lueMcClass.Properties.DisplayMember = "Code";
        }

        private void ChildFrm_Load(object sender, EventArgs e)
        {
            string ParaMCWF = (this.ListForm as McPListFrm).ParaMFWF.Trim().ToString();
            if ((this.BindingSource.Current as Machine).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                AddnewFlg = (this.BindingSource.Current as Machine).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New ? true : false;

            }
            bindingSourceCode.DataSource = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "METHODTYPE");


            locationComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).Machines.Where(P => P.Location != null).Select(S => S.Location).Distinct().OrderBy(E => E).ToArray());
            nameComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).McBrands.Where(P => P.BrandName != null).Select(S => S.BrandName).ToArray());


            //由David改寫 2018-08-23
            //factoryComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).Machines.Where(P => P.Factory != null).Select(S => S.Factory).Distinct().OrderBy(E => E).ToArray());
            factoryComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "McFactory").OrderBy(p => p.SortID).Select(p => p.Name).ToArray());

            //or A) Factory, rename SL (Sales) to SL (ND Sewing), and add CL (ND Sewing), GG (ND Sewing) and RX (ND Sewing). Is it OK?

            //factoryComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "FACTORY").Select(S => S.Code).ToArray());

            shopComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).Machines.Where(P => P.Shop != null).Select(S => S.Shop).Distinct().OrderBy(E => E).ToArray());
            lineComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).FactoryLines.Where(P => P.Line != null).Where(P1 => P1.Factory == factoryComboBoxEdit.Text.Trim().ToString()).Where(P2 => P2.Type == ParaMCWF).Select(S => S.Line).Distinct().OrderBy(E => E).ToArray());

            DeptComboBox.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "DPTUS1").Select(S => S.Name).ToArray());
            bOI_Proj1ComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "BOI").Select(S => S.Name).ToArray());
            classComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "MCClass").Select(S => S.Name).ToArray());
            //cobMachineClass.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "METHODTYPE").Where(P1 => P1.Description !=null).Select(S => S.Description).Distinct().ToArray());
            // cobMachineClass.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "McGroup").Select(S => S.Lang).Distinct().ToArray());
            BindMcClass();


            cobMachineState.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "Tasks_in_hand").Select(S => S.Name).ToArray());
            cobMachineWhere.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "WorkShopNew").Select(S => S.Name).ToArray());

            cobWFPart.Properties.Items.AddRange(publicLibary.getItems("MCPart", this.DataContext));
            string[] DPTUS = publicLibary.getItems("DPTUS", this.DataContext);
            string[] WorkShopNew = publicLibary.getItems("WorkShopNew", this.DataContext);
            //string[] Sub_SectionFAE = (this.DataContext as RAPLQDataContext).Sub_Sections.Select(S => S.NameEn).ToArray();
            string[] Whrere_1_Team = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cobWhere_1_Team" || P.Type == "WFWhere_1_team").Select(S => S.Name).Distinct().ToArray();
            string[] Where_2_Team = publicLibary.getItems("WFWhere_2_class", this.DataContext);
            //add by joseph
            string[] aryRecrole = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cbbRecrole").Select(S => S.Name).Distinct().ToArray();
            string[] aryDeptLocation = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cbbDeptLocation").Select(S => S.Name).Distinct().ToArray();
            this.cbbRecRole.Properties.Items.AddRange(aryRecrole);
            this.cbbDeptLocation.Properties.Items.AddRange(aryDeptLocation);
            this.cbbReclocation.Properties.Items.AddRange(aryDeptLocation);



            deptNameTextEdit.Properties.Items.AddRange(DPTUS);
            cobWhere.Properties.Items.AddRange(WorkShopNew);
            //cobSub_Section_FAE.Properties.Items.AddRange(Sub_SectionFAE);
            cobWhere_1_Team.Properties.Items.AddRange(Whrere_1_Team);
            cobWhere_2_Class.Properties.Items.AddRange(Where_2_Team);

            cobRecEn.Properties.Items.AddRange(publicLibary.getItems("Rec", this.DataContext));
            //  cobGrp_TransferDep.Properties.Items.AddRange(publicLibary.getItems("TransferDepartmental", this.DataContext));

            cobGrp_TransferDep.Properties.Items.AddRange(DPTUS);
            cobGrp_TransferDep.Properties.Items.AddRange(WorkShopNew);
            //cobGrp_TransferDep.Properties.Items.AddRange(Sub_SectionFAE);
            cobGrp_TransferDep.Properties.Items.AddRange(Whrere_1_Team);
            cobGrp_TransferDep.Properties.Items.AddRange(Where_2_Team);

            setSelectClsNameMethod();

            ShowImg(idTextEdit.Text.TrimEnd());
            setBdMethod("- -");

        }
        private void setBdMethod(string strBd)
        {
            (this.BindingSource.Current as PH.LWPM.BO.Machine).DepartmentBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.Machine).MCClassBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.Machine).MCPartBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.Machine).RecBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.Machine).SectionBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.Machine).SubSectionBd = strBd;
            (this.BindingSource.Current as PH.LWPM.BO.Machine).TeamBd = strBd;
        }
        private void setSelectClsNameMethod()
        {

            if (AddnewFlg)
            {
                switch ((this.PrevForm as McPListFrm).GetTypeTitle)
                {

                    case "ALL":

                        (this.BindingSource.Current as PH.LWPM.BO.Machine).MCPartEn = "Sewing Direct M/C Cost";
                        (this.BindingSource.Current as PH.LWPM.BO.Machine).MCPartCn = publicLibary.getSelectIndex("MCPart", null, "Sewing Direct M/C Cost", this.DataContext);


                        break;
                    case "Sewing Direct M/C Cost":

                        (this.BindingSource.Current as PH.LWPM.BO.Machine).MCPartEn = (this.PrevForm as McPListFrm).GetTypeTitle;
                        (this.BindingSource.Current as PH.LWPM.BO.Machine).MCPartCn = publicLibary.getSelectIndex("MCPart", null, (this.PrevForm as McPListFrm).GetTypeTitle, this.DataContext);


                        break;

                    case "!Mc-Core Production(WS/SS)":
                        (this.BindingSource.Current as PH.LWPM.BO.Machine).Line = "M&R Ws";

                        break;
                    case "Mc-Dead Stock Room":
                        (this.BindingSource.Current as PH.LWPM.BO.Machine).Class = "Mc-Dead Stock Room";

                        break;



                    default:

                        (this.BindingSource.Current as PH.LWPM.BO.Machine).MCPartEn = (this.PrevForm as McPListFrm).GetTypeTitle;
                        (this.BindingSource.Current as PH.LWPM.BO.Machine).MCPartCn = publicLibary.getSelectIndex("MCPart", null, (this.PrevForm as McPListFrm).GetTypeTitle, this.DataContext);

                        break;

                }
            }
        }
        void ClosePopup()
        {
            if (popupContainerControl1.OwnerEdit != null)
                popupContainerControl1.OwnerEdit.ClosePopup();
        }

        private void gridControl1_DoubleClick(object sender, EventArgs e)
        {
            if (bindingSourceCode.Count > 0)
            {
                var CurCode = this.bindingSourceCode.Current as BaseCode;
                type1PopupContainerEdit.EditValue = CurCode.Code;


                typeTextEdit.EditValue = CurCode.Name;
                if (!string.IsNullOrEmpty(CurCode.Description))
                {
                    pressureRangeLabel.Visible = true;
                    pressureRangeTextEdit.Visible = true;
                    temperatureRangeLabel.Visible = true;
                    temperatureRangeTextEdit.Visible = true;
                }
                else
                {
                    pressureRangeLabel.Visible = false;
                    pressureRangeTextEdit.Visible = false;
                    temperatureRangeLabel.Visible = false;
                    temperatureRangeTextEdit.Visible = false;
                }
            }
            ClosePopup();

        }

        private void gridControl1_Click(object sender, EventArgs e)
        {

        }
        private Boolean ValidationSaveCondition(string mcid)
        {

            if (mcid == string.Empty)
            {
                if (MessageBox.Show("Please input \"Machine ID\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }
            //if (classComboBoxEdit.Text.Trim() == string.Empty)
            //{
            //    if (MessageBox.Show("Please input \"Class\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
            //    {
            //        return true;
            //    }
            //}

            if ((this.DataContext as RAPLQDataContext).Machines.Where(P => P.Id == mcid).Count() > 0)
            {
                if (MessageBox.Show("This machine is already exists！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
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
                locationComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                lineComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                shopComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
                factoryComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;

            }

        }

        private void type1PopupContainerEdit_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void cobWFPart_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cobWFPart.Text.ToString() != "")
            {
                cobWFPartCn.Text = publicLibary.getSelectIndex("MCPart", null, cobWFPart.Text.ToString(), this.DataContext);
                cobWFPartBd.Text = publicLibary.getSelectIndex("MCPart", LangType.Bd, cobWFPart.Text.ToString(), this.DataContext);
            }
        }



        private void deptNameTextEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
            cobDepartmentCn.Text = publicLibary.getSelectIndex("DPTUS", null, deptNameTextEdit.Text.ToString(), this.DataContext);
            //cobDepartmentBd.Text = publicLibary.getSelectIndex("DPTUS", LangType.Bd, deptNameTextEdit.Text.ToString(), this.DataContext);
            this.FillDepartment(sender);
        }

        private void cobWhere_SelectedIndexChanged(object sender, EventArgs e)
        {

            this.FillDepartment(sender);

            if (cobWhere.Text.ToString() != "")
            {
                cobWFWhereCn.Text = publicLibary.getSelectIndex("WorkShopNew", null, cobWhere.Text.Trim().ToString(), this.DataContext);
                // cobWFWhereBd.Text = publicLibary.getSelectIndex("WorkShopNew",LangType.Bd, cobWhere.Text.Trim().ToString(), this.DataContext);
            }

        }
        private void cobSub_Section_FAE_SelectedIndexChanged(object sender, EventArgs e)
        {
            //cobSub_Section_FAECn.Text = publicLibary.getSelectIndex("Sub_Section_FAE", null, cobSub_Section_FAE.Text.Trim().ToString(),this.DataContext);
            //cobSub_Section_FAEBd.Text = publicLibary.getSelectIndex("Sub_Section_FAE",LangType.Bd, cobSub_Section_FAE.Text.Trim().ToString(), this.DataContext);
            //string Sub_Section_FAEStr = cobSub_Section_FAE.Text.Trim();
            //if (Sub_Section_FAEStr != "")
            //{
            //    int selectSub_Id = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.NameEn == Sub_Section_FAEStr).Select(p => p.Sub_Id).FirstOrDefault();
            //    var q = from p in (this.DataContext as RAPLQDataContext).Sub_Sections
            //            where p.Sub_Id == selectSub_Id
            //            group p by new { p.Sub_Id, p.LinkageNameEn } into g
            //            select g.Key.LinkageNameEn;
            //    if (q.Count() > 0)
            //    {
            //        cobSub_Section_FAECn.Text = (this.DataContext as RAPLQDataContext).Sub_Sections.Where(p => p.NameEn == Sub_Section_FAEStr).Select(p => p.NameCn).FirstOrDefault();

            //    }

            //}

        }

        private void cobWhere_1_Team_SelectedIndexChanged(object sender, EventArgs e)
        {
            //cobWhere_1_Team WFWhere_1_team
            this.FillDepartment(sender);

            string cobcobWhere_1_TeamStr = cobWhere_1_Team.Text.Trim();
            if (cobcobWhere_1_TeamStr != "")
            {
                cobWhere_1_TeamCn.Text = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => (P.Type == "cobWhere_1_Team" || P.Type == "WFWhere_1_team") && P.Name == cobcobWhere_1_TeamStr).Select(S => S.Description).FirstOrDefault();// getSelectIndex("cobWhere_1_Team", null, cobWhere_1_Team.Text.Trim().ToString());
                //  cobWhere_1_TeamBd.Text = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => (P.Type == "cobWhere_1_Team" || P.Type == "WFWhere_1_team") && P.Name == cobcobWhere_1_TeamStr).Select(S => S.NameBd).FirstOrDefault();// getSelectIndex("cobWhere_1_Team", null, cobWhere_1_Team.Text.Trim().ToString());

                var q = from p in (this.DataContext as RAPLQDataContext).LineCodes
                        where p.LineCodeName == cobcobWhere_1_TeamStr
                        select p;
                if (q.Count() > 0)
                {
                    cobWhere_1_TeamCn.Text = cobcobWhere_1_TeamStr;
                    // cobWhere_1_TeamBd.Text = cobcobWhere_1_TeamStr;

                }

            }
            if (cobWhere_1_Team.Text.ToString() == "- -")
            {
                cobWhere_1_TeamCn.Text = "- -";
                //cobWhere_1_TeamBd.Text = "- -";
            }

        }

        private void cobWhere_2_Class_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cobWhere_2_Class.Text.ToString() != "")
            {
                cobWhere_2_ClassCn.Text = publicLibary.getSelectIndex("WFWhere_2_class", null, cobWhere_2_Class.Text.Trim().ToString(), this.DataContext);
                //cobWhere_2_ClassBd.Text = publicLibary.getSelectIndex("WFWhere_2_class",LangType.Bd, cobWhere_2_Class.Text.Trim().ToString(), this.DataContext);
            }
        }

        private void cbbRecRole_SelectedValueChanged(object sender, EventArgs e)
        {
            BaseCode bc = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cbbRecrole" && P.Name == cbbRecRole.Text).FirstOrDefault();
            if (bc != null)
            {
                this.cbbRecrole_bd.Text = string.IsNullOrEmpty(bc.NameBd) ? string.Empty : bc.NameBd;
                this.cbbRecrole_chn.Text = string.IsNullOrEmpty(bc.Description) ? string.Empty : bc.Description;
            }
        }


        private void FillDepartment(object sender)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbedit = sender as DevExpress.XtraEditors.ComboBoxEdit;
            RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;

            if (cbedit.Name.Trim() == "deptNameTextEdit")
            {
                string[] section = rqc.DepartalSorts.Where(P => P.Deptmental_EN == this.deptNameTextEdit.Text.Trim() && P.Section_EN != null).Select(S => S.Section_EN.Trim()).Distinct().ToArray();
                if (cobWhere.Properties.Items != null)
                    cobWhere.Properties.Items.Clear();
                cobWhere.Text = "";
                cobWhere.Properties.Items.AddRange(section);
            }

            if (cbedit.Name.Trim() == "cobWhere")
            {
                string[] team = rqc.DepartalSorts.Where(P => P.Deptmental_EN == this.deptNameTextEdit.Text.Trim()
                    && P.Section_EN == cobWhere.Text.Trim() && P.Team_EN != null).Select(S => S.Team_EN.Trim()).Distinct().ToArray();

                if (cobWhere_1_Team.Properties.Items != null)
                    cobWhere_1_Team.Properties.Items.Clear();

                cobWhere_1_Team.Text = "";
                cobWhere_1_Team.Properties.Items.AddRange(team);
            }

            if (cbedit.Name.Trim() == "cobWhere_1_Team")
            {
                string[] classes = rqc.DepartalSorts.Where(P => P.Deptmental_EN == this.deptNameTextEdit.Text.Trim()
                    && P.Section_EN == cobWhere.Text.Trim() && P.Team_EN == cobWhere_1_Team.Text.Trim() && P.Class_EN != null).Select(S => S.Class_EN.Trim()).Distinct().ToArray();

                if (cobWhere_2_Class.Properties.Items != null)
                    cobWhere_2_Class.Properties.Items.Clear();

                cobWhere_2_Class.Text = "";
                cobWhere_2_Class.Properties.Items.AddRange(classes);
            }

            //根据部门的英文名称，自动填充HW Cost for Mgt Acct,  由David中加入 2018-08-24
            BaseCode obj = rqc.BaseCodes.FirstOrDefault(p => p.Type == "DPTUS" && p.Name == this.deptNameTextEdit.Text.Trim());
            if (obj != null && !string.IsNullOrEmpty(obj.HSCode)) //部门的HSCode中保存了部门对应的HW Cost for Mgt Acct Code
            {
                BaseCode CostObj = rqc.BaseCodes.FirstOrDefault(p => p.Type == "MCPart" && p.Code == obj.HSCode);
                this.cobWFPart.Text = CostObj.Name;
            }
            else
            {
                this.cobWFPart.Text = "";
                this.cobWFPartCn.Text = "";
                this.cobWFPartBd.Text = "";
            }
        }




        private void FillDepartWhenEdit()
        {

            PH.LWPM.BO.Machine wf = this.BindingSource.Current as PH.LWPM.BO.Machine;
            RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;

            if (wf.DepartmentEn != null)
            {
                IQueryable<DepartalSort> lst = rqc.DepartalSorts.Where(P => P.Deptmental_EN == wf.DepartmentEn.Trim() && P.Section_EN != null);
                if (lst != null && lst.Count() > 0)
                {
                    string[] section = lst.Select(S => S.Section_EN.Trim()).Distinct().ToArray();
                    if (cobWhere.Properties.Items != null)
                        cobWhere.Properties.Items.Clear();
                    cobWhere.Properties.Items.AddRange(section);
                    cobWhere.Text = wf.SectionEn;
                }
            }

            if (wf.DepartmentEn != null && wf.SectionEn != null)
            {

                IQueryable<DepartalSort> lst1 = rqc.DepartalSorts.Where(P => P.Deptmental_EN == wf.DepartmentEn.Trim() &&
                    P.Section_EN == wf.SectionEn.Trim()
                    && P.Team_EN != null);
                if (lst1 != null && lst1.Count() > 0)
                {
                    string[] team = lst1.Select(S => S.Team_EN.Trim()).Distinct().ToArray();
                    if (cobWhere_1_Team.Properties.Items != null)
                        cobWhere_1_Team.Properties.Items.Clear();

                    cobWhere_1_Team.Text = "";
                    cobWhere_1_Team.Properties.Items.AddRange(team);
                    cobWhere_1_Team.Text = wf.TeamEn;
                }
            }

            if (wf.DepartmentEn != null && wf.SectionEn != null && wf.TeamEn != null)
            {
                IQueryable<DepartalSort> lst2 = rqc.DepartalSorts.Where(P => P.Deptmental_EN == wf.DepartmentEn.Trim()
                         && P.Section_EN == wf.SectionEn.Trim() && P.Team_EN == wf.TeamEn.Trim() && P.Class_EN != null);
                if (lst2 != null && lst2.Count() > 0)
                {
                    string[] classes = lst2.Select(S => S.Class_EN.Trim()).Distinct().ToArray();

                    if (cobWhere_2_Class.Properties.Items != null)
                        cobWhere_2_Class.Properties.Items.Clear();
                    cobWhere_2_Class.Text = "";
                    cobWhere_2_Class.Properties.Items.AddRange(classes);
                    cobWhere_2_Class.Text = wf.MCClassEn;
                }
            }


        }

        private void factoryComboBoxEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ParaMCWF = (this.ListForm as McPListFrm).ParaMFWF.Trim().ToString();
            if (lineComboBoxEdit.Properties.Items.Count > 0)
                lineComboBoxEdit.Properties.Items.Clear();
            lineComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).FactoryLines.Where(P => P.Line != null).Where(P1 => P1.Factory == factoryComboBoxEdit.Text.Trim().ToString()).Where(P2 => P2.Type == ParaMCWF).Select(S => S.Line).Distinct().OrderBy(E => E).ToArray());
        }

        private void lueMcClass_EditValueChanged(object sender, EventArgs e)
        {
            McClass_Disp _class = bsclass.Current as McClass_Disp;
            object obj = lueMcClass.GetColumnValue("Description");
            if (obj != null)
            {
                // edtDesc.Text = lueFixCode.GetColumnValue("DefectChineseName").ToString();
                Machine _currmc = this.BindingSource.Current as Machine;
                _currmc.MachineClass = lueMcClass.GetColumnValue("Code").ToString();

            }
        }

        //private void simpleButton1_Click(object sender, EventArgs e)
        //{
        //    PH.Platform.AuthMgr.BO.AuthMgrDataContext db = ContextBuilder.CreateContext<PH.Platform.AuthMgr.BO.AuthMgrDataContext>();
        //    var lists = db.Auth_File.Where(p => p.BOConnectionString != null && p.BOConnectionString != "");
        //    foreach (var obj in lists)
        //    {
        //        obj.BOConnectionString1 = PH.Platform.Common.StringEncryptHelper.DecryptDES(obj.BOConnectionString);
        //        obj.Save();
        //        //db.SubmitChanges();

        //        string SqlStr = string.Format("Update [PH.Platform.AuthMgr]..Auth_File set BOConnectionString1 = '{0}' where SideProgramID = '{1}' and FileID = '{2}'", obj.BOConnectionString1,
        //            obj.SideProgramID, obj.FileID);

        //        (this.DataContext as RAPLQDataContext).ExecuteCommand(SqlStr);
        //    }

        //}


    }
}

