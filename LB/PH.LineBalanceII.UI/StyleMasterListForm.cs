/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.IE.LineBalance.UI.LBMasterListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/4/29 下午 03:04:19 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Threading;
using System.Globalization;
using PH.Platform.BO;
using PH.Platform.BO.Interface;
using PH.LineBalanceII.BO;
using PH.Platform.AuthMgr.BO;
using System.Collections;
using DevExpress.XtraGrid.Views.BandedGrid;
using DevExpress.XtraBars;



namespace PH.LineBalanceII.UI
{
    public partial class StyleMasterListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code

        private ComboBoxEdit cbFilter;
        private LabelControl labelControl1;
        private DevExpress.XtraBars.BarButtonItem btnCopyStyle;
        private Panel panel1;
        #endregion
        private DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView adgvmaster;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColKHKH;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColPHKH;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColCPLB;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColSizeYJ;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColZH;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColEdition;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColIsUsed;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColAuditor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcStatu_Disp;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcStatu;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcCust;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcProc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcIEDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcProdConfirm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcConfer_prod;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcConfDt_Prod;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcActiveSame;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcCreate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcJZ_Prod;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcJZDiff;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcBJSAH;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcProdSAH;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcSAHDiff;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcValidDate;
        private BandedGridColumn gcSize_Editon;
        private BandedGridColumn gcCupStyle;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit replue_CupStyle;


        public string OperType = "A";
        public string OperAllowEdit = "Edit";
        private BandedGridColumn gcSizeStyle;
        List<CupStyle> StyleList = new List<CupStyle>();
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit replu_SizeStyle;
        private GridBand gridBand5;
        private GridBand gridBand7;
        private GridBand gridBand8;
        private GridBand gridBand9;
        private GridBand gridBand10;
        private GridBand gridBand11;
        private BandedGridColumn colPM_OptsCount;
        private BandedGridColumn colPM_WSTCount;
        private BandedGridColumn colPM_WFCount;
        private BandedGridColumn colPM_SAHTotal;
        private GridBand gridBand12;
        private GridBand gridBand13;
        private GridBand gridBand14;
        private GridBand gridBand15;
        private GridBand gridBand16;
        private GridBand gridBand17;
        private GridBand gridBand18;
        private GridBand gridBand19;
        private BandedGridColumn colB_OptsCount;
        private BandedGridColumn colB_WSTCount;
        private BandedGridColumn colB_WFCount;
        private BandedGridColumn colB_SAHTotal;
        private BandedGridColumn colF_OptsCount;
        private BandedGridColumn colF_WSTCount;
        private BandedGridColumn colF_WFCount;
        private BandedGridColumn colF_SAHTotal;
        private BandedGridColumn colA_OptsCount;
        private BandedGridColumn colA_WSTCount;
        private BandedGridColumn colA_WFCount;
        private BandedGridColumn colA_SAHTotal;
        private BandedGridColumn colA_LBSAHIndex;
        private BandedGridColumn colA_LBLoss;
        private BandedGridColumn colE_OptsCount;
        private BandedGridColumn colE_WSTCount;
        private BandedGridColumn colE_WFCount;
        private BandedGridColumn colE_SAHTotal;
        private GridBand gridBand20;
        private GridBand gridBand21;
        private BandedGridColumn colTotal_OptsCount;
        private BandedGridColumn colTotal_WSTCount;
        private BandedGridColumn colTotal_WFCount;
        private BandedGridColumn colTotal_SAHTotal;
        private BandedGridColumn colUpdateTime;
        private BandedGridColumn colUpdateConfirmDate_IE;
        private BandedGridColumn colStatuFromBOO1;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private GridBand gridBand6;
        private GridBand gridBand2;
        private GridBand gridBand3;
        private GridBand gridBand22;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox replue_Statu;
        private BarButtonItem barButtonItem1;
        private BarButtonItem print;
        List<SizeStyle> SizeList = new List<SizeStyle>();

        private void IniStyle()
        {
            StyleList.Clear();
            StyleList.Add(new CupStyle { StyleId = 0, StyleDesc = "普杯" });
            StyleList.Add(new CupStyle { StyleId = 1, StyleDesc = "大杯" });
            StyleList.Add(new CupStyle { StyleId = 2, StyleDesc = "超杯" });
            this.replue_CupStyle.DataSource = StyleList;
        }



        private void IniSizeStyle()
        {
            SizeList.Clear();
            //SizeList.Add(new SizeStyle { StyleId = 0, StyleDesc = "普碼" });
            //SizeList.Add(new SizeStyle { StyleId = 1, StyleDesc = "大碼" });
            //SizeList.Add(new SizeStyle { StyleId = 2, StyleDesc = "超碼" });

            SizeList.Add(new SizeStyle { StyleId = 0, StyleDesc = "5A) 普杯普碼倚靠" });
            SizeList.Add(new SizeStyle { StyleId = 1, StyleDesc = "5B) 普杯大碼倚靠" });
            SizeList.Add(new SizeStyle { StyleId = 2, StyleDesc = "5C) 普杯超碼倚靠" });

            SizeList.Add(new SizeStyle { StyleId = 3, StyleDesc = "6A) 大杯普碼倚靠" });
            SizeList.Add(new SizeStyle { StyleId = 4, StyleDesc = "6B) 大杯大碼倚靠" });
            SizeList.Add(new SizeStyle { StyleId = 5, StyleDesc = "6C) 大杯超碼倚靠" });

            SizeList.Add(new SizeStyle { StyleId = 6, StyleDesc = "7A) 超杯普碼倚靠" });
            SizeList.Add(new SizeStyle { StyleId = 7, StyleDesc = "7B) 超杯大碼倚靠" });
            SizeList.Add(new SizeStyle { StyleId = 8, StyleDesc = "7C) 超杯超碼倚靠" });

            this.replu_SizeStyle.DataSource = SizeList;
        }
        public StyleMasterListForm()
        {
            //有所变化zrtagnow
            //Thread.CurrentThread.CurrentUICulture = CultureInfo.GetCultureInfo(Commands.ConvertLangeType(PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID));           

            InitializeComponent();

            this.gridBand22.Columns.Add(this.gcValidDate);
            this.gridBand22.Columns.Add(this.gridColAuditor);
            this.gridBand22.Columns.Add(this.gcStatu_Disp);
            this.gridBand22.Columns.Add(this.colStatuFromBOO1);

            this.colStatuFromBOO1.Width = 20;

            this.AllowGridEdit = false;


        }



        public StyleMasterListForm(string mtype)
            : this()
        {
            //InitializeComponent();
            OperType = mtype;
            this.AllowGridEdit = false;
        }

        public StyleMasterListForm(string mtype, string AOperAllowEdit)
            : this(mtype)
        {
            this.OperAllowEdit = AOperAllowEdit;
        }

        public void ControlAllowEdit()
        {
            this.AllowGridEdit = OperAllowEdit != "ReadOnly";
            this.barBtnAddNew.Visibility = OperAllowEdit == "ReadOnly" ? BarItemVisibility.Never : BarItemVisibility.Always;
            this.barBtnDel.Visibility = this.barBtnAddNew.Visibility;
            this.barBtnSave.Visibility = this.barBtnAddNew.Visibility;
            this.btnCopyStyle.Visibility = this.barBtnAddNew.Visibility;

            if (this.OperAllowEdit == "ReadOnly")
            {
                for (int i = 0; i < this.adgvmaster.Columns.Count; i++)
                {
                    this.adgvmaster.Columns[i].OptionsColumn.AllowEdit = false;
                }
            }
        }


        //public override void SaveData()
        //{
        //    StyleMaster smt = this.BindingSource.Current as StyleMaster;
        //    if (smt != null && smt.AuditFlag.GetValueOrDefault())
        //        smt.Auditor = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        //    else
        //        smt.Auditor = "";
        //    base.SaveData();
        //}


        private void SetColumnModify(string dept)
        {

            if (dept == "IE")
            {
                this.adgvmaster.Columns["AuditFlag"].OptionsColumn.AllowEdit = true;
                this.adgvmaster.Columns["ActiveSame"].OptionsColumn.AllowEdit = true;
                this.adgvmaster.Columns["ConfirmDate_IE"].OptionsColumn.AllowEdit = true;  //ValidDate
                this.adgvmaster.Columns["ValidDate"].OptionsColumn.AllowEdit = true;
                this.adgvmaster.Columns["PRODSAH"].OptionsColumn.AllowEdit = true;
                this.adgvmaster.Columns["CreateTime"].OptionsColumn.AllowEdit = true; //CreateTime
                //  this.adgvmaster.Columns["CupStyle"].OptionsColumn.AllowEdit = true;
                this.adgvmaster.Columns["SizeStyle"].OptionsColumn.AllowEdit = true;
                this.adgvmaster.Columns["Statu_Disp"].OptionsColumn.AllowEdit = true;
            }
            else
                this.adgvmaster.Columns["AuditFlag_Prod"].OptionsColumn.AllowEdit = true;

        }

        public override void DataBind()
        {
            // IniStyle();
            IniSizeStyle();
            base.DataBind();


            /* old filter
             
                Only Show Current & Wait Audit Edition
                Only Show Stopped Edition
                Show All Edition             
             */

            //this.BindingSource.DataSource = null;
            //this.objListGridView.ActiveFilterString = "Statu_Disp='Active' or Statu_Disp='DVP'";
            // this.objListGridView.ActiveFilterString = "[Statu]=0 or [Statu]=1";

            //this.EditorTypeName = typeof(StyleMasterDetailForm).FullName;


            if (OperType == "A" || OperType == "All")
            {
                this.EditorTypeName = typeof(StyleMasterDetailForm).FullName;
            }
            else if (OperType == "E")
            {
                this.EditorTypeName = typeof(StyleMasterDetailForm_E).FullName;
            }
            else if (OperType == "F" || OperType == "PB")
            {
                this.EditorTypeName = typeof(StyleMasterDetailForm_F).FullName;
            }

            //this.EditorTypeName = this.OperType.Equals("A") ? typeof(StyleMasterDetailForm).FullName : (this.OperType.Equals("E") ? typeof(StyleMasterDetailForm_E).FullName : typeof(StyleMasterDetailForm_F).FullName);


            if (!DesignMode)
            {
                PH.LineBalanceII.BO.LineBalanceIIDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.LineBalanceII.BO.LineBalanceIIDataContext>();
                this.DataContext = context;

                //if (cbFilter.SelectedIndex == 0)//只顯示當前使用的版本和待審批的版本
                //{

                //    this.BindingSource.DataSource = from c in context.StyleMasters
                //                                    where c.IsUsed == true || c.Auditor == null || c.Auditor == ""
                //                                    select c;
                //}
                //else if (cbFilter.SelectedIndex == 1) //只顯示已停止使用的版本
                //{
                //    this.BindingSource.DataSource = from c in context.StyleMasters
                //                                    where c.IsUsed == false && c.Auditor != null && c.Auditor != ""
                //                                    select c;
                //}
                //else if (cbFilter.SelectedIndex == 2) //顯示所有版本
                //{
                //    this.BindingSource.DataSource = from c in context.StyleMasters select c;
                //}

                if (cbFilter.SelectedIndex == 0)//只顯示當前使用的版本&樣板
                {

                    this.BindingSource.DataSource = from c in context.StyleMasters
                                                    where c.Statu.GetValueOrDefault() == 0 || c.Statu.GetValueOrDefault() == 1
                                                    select c;
                }

                else if (cbFilter.SelectedIndex == 1)//只顯示Inactive
                {

                    this.BindingSource.DataSource = from c in context.StyleMasters
                                                    where c.Statu.GetValueOrDefault() == 2
                                                    select c;
                }
                else if (cbFilter.SelectedIndex == 2)//只顯示Drop
                {

                    this.BindingSource.DataSource = from c in context.StyleMasters
                                                    where c.Statu.GetValueOrDefault() == 3
                                                    select c;
                }
                else if (cbFilter.SelectedIndex == 3) //顯示所有版本
                {
                    this.BindingSource.DataSource = from c in context.StyleMasters select c;
                }

                //set column modify

                Auth_UserRole aur = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.Auth_UserRole.Where(p => p.RoleName == "LineBalanceII_Factory").FirstOrDefault();
                Auth_UserRole aur1 = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.Auth_UserRole.Where(p => p.RoleName == "LineBalanceII_Prod").FirstOrDefault();
                bool _isadmin = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator;

                if (aur != null || aur1 != null || PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
                {
                    this.AllowGridEdit = true;
                    this.AllowAddRow = false;

                    if (aur != null || _isadmin)
                        SetColumnModify("IE");
                    if (aur1 != null || _isadmin)
                        SetColumnModify("Prod");
                }
                else
                    this.AllowGridEdit = false;

            }

            this.ControlAllowEdit();
        }


        string _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        public override void SaveData()
        {
            StyleMaster sma = this.BindingSource.Current as StyleMaster;
            if (sma != null)
            {
                if (!sma.PRODSAH.HasValue)
                    sma.PRODSAH = sma.GsdTotal;


                if (string.IsNullOrEmpty(sma.SizeYJ_Prod))
                    sma.SizeYJ_Prod = sma.SizeYJ;
                if (string.IsNullOrEmpty(sma.CreateBy))
                    sma.CreateBy = _user;
                else
                    sma.UpdateBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;

                sma.UpdateTime = DateTime.Now;
            }
            base.SaveData();
        }


        private void InitializeComponent()
        {
            this.cbFilter = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnCopyStyle = new DevExpress.XtraBars.BarButtonItem();
            this.adgvmaster = new DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gcCust = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcStatu = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColKHKH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColPHKH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gcProc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColCPLB = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColSizeYJ = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcSize_Editon = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand14 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPM_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPM_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPM_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPM_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand15 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colB_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colB_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colB_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colB_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand16 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colF_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colF_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colF_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colF_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand17 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand20 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colA_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colA_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colA_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand21 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colA_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colA_LBSAHIndex = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colA_LBLoss = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand18 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colE_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colE_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colE_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colE_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand19 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTotal_OptsCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotal_WSTCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotal_WFCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotal_SAHTotal = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColZH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColEdition = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcActiveSame = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gcCreate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcIEDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColIsUsed = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcProdConfirm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcConfDt_Prod = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colUpdateTime = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcConfer_prod = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colUpdateConfirmDate_IE = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand22 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gcJZ_Prod = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcJZDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcBJSAH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcProdSAH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcSAHDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcCupStyle = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.replue_CupStyle = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.gcSizeStyle = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.replu_SizeStyle = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.gcValidDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColAuditor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcStatu_Disp = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.replue_Statu = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colStatuFromBOO1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.print = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFilter.Properties)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.adgvmaster)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.replue_CupStyle)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.replu_SizeStyle)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.replue_Statu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnCopyStyle,
            this.barButtonItem1,
            this.print});
            this.objbarManager.MaxItemId = 58;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopyStyle, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.print, true)});
            // 
            // barBtnSave
            // 
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.objListGridControl.EmbeddedNavigator.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.objListGridControl.EmbeddedNavigator.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 55);
            this.objListGridControl.MainView = this.adgvmaster;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.replue_CupStyle,
            this.replu_SizeStyle,
            this.repositoryItemCheckEdit1,
            this.replue_Statu});
            this.objListGridControl.Size = new System.Drawing.Size(2404, 542);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.adgvmaster});
            this.objListGridControl.Click += new System.EventHandler(this.objListGridControl_Click);
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LineBalanceII.BO.StyleMaster);
            // 
            // cbFilter
            // 
            this.cbFilter.EditValue = "Active";
            this.cbFilter.Location = new System.Drawing.Point(82, 4);
            this.cbFilter.Name = "cbFilter";
            this.cbFilter.Properties.AutoHeight = false;
            this.cbFilter.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbFilter.Properties.Items.AddRange(new object[] {
            "Active",
            "Inactive",
            "Drop",
            "Show All"});
            this.cbFilter.Properties.Mask.EditMask = null;
            this.cbFilter.Properties.Mask.IgnoreMaskBlank = false;
            this.cbFilter.Properties.Mask.SaveLiteral = false;
            this.cbFilter.Properties.Mask.ShowPlaceHolders = false;
            this.cbFilter.Size = new System.Drawing.Size(378, 21);
            this.cbFilter.TabIndex = 7;
            this.cbFilter.SelectedIndexChanged += new System.EventHandler(this.cbFilter_SelectedIndexChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(17, 7);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(48, 14);
            this.labelControl1.TabIndex = 6;
            this.labelControl1.Text = "顯示過濾";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.labelControl1);
            this.panel1.Controls.Add(this.cbFilter);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 27);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(2404, 28);
            this.PlatetoolTipController.SetSuperTip(this.panel1, null);
            this.panel1.TabIndex = 8;
            // 
            // btnCopyStyle
            // 
            this.btnCopyStyle.Caption = "Copy";
            this.btnCopyStyle.Id = 54;
            this.btnCopyStyle.Name = "btnCopyStyle";
            this.btnCopyStyle.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCopyStyle_ItemClick);
            // 
            // adgvmaster
            // 
            this.adgvmaster.Appearance.BandPanel.Options.UseTextOptions = true;
            this.adgvmaster.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.adgvmaster.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.adgvmaster.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.adgvmaster.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.adgvmaster.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand12,
            this.gridBand9,
            this.gridBand4});
            this.adgvmaster.ColumnPanelRowHeight = 55;
            this.adgvmaster.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.gridColKHKH,
            this.gridColPHKH,
            this.gridColCPLB,
            this.gridColSizeYJ,
            this.gridColZH,
            this.gridColEdition,
            this.gridColIsUsed,
            this.gcStatu,
            this.gcCust,
            this.gcProc,
            this.gcIEDate,
            this.gcActiveSame,
            this.gcCreate,
            this.gcJZ_Prod,
            this.gcJZDiff,
            this.gcBJSAH,
            this.gcProdSAH,
            this.gcSAHDiff,
            this.gcSize_Editon,
            this.gcCupStyle,
            this.gcSizeStyle,
            this.gcProdConfirm,
            this.gcConfer_prod,
            this.gcConfDt_Prod,
            this.gridColumn1,
            this.colPM_OptsCount,
            this.colPM_WSTCount,
            this.colPM_WFCount,
            this.colPM_SAHTotal,
            this.colB_OptsCount,
            this.colB_WSTCount,
            this.colB_WFCount,
            this.colB_SAHTotal,
            this.colF_OptsCount,
            this.colF_WSTCount,
            this.colF_WFCount,
            this.colF_SAHTotal,
            this.colA_OptsCount,
            this.colA_WSTCount,
            this.colA_WFCount,
            this.colA_SAHTotal,
            this.colA_LBSAHIndex,
            this.colA_LBLoss,
            this.colE_OptsCount,
            this.colE_WSTCount,
            this.colE_WFCount,
            this.colE_SAHTotal,
            this.colTotal_OptsCount,
            this.colTotal_WSTCount,
            this.colTotal_WFCount,
            this.colTotal_SAHTotal,
            this.colUpdateTime,
            this.colUpdateConfirmDate_IE,
            this.gcValidDate,
            this.gridColAuditor,
            this.gcStatu_Disp,
            this.colStatuFromBOO1});
            this.adgvmaster.GridControl = this.objListGridControl;
            this.adgvmaster.Name = "adgvmaster";
            this.adgvmaster.OptionsBehavior.Editable = false;
            this.adgvmaster.OptionsDetail.EnableMasterViewMode = false;
            this.adgvmaster.OptionsPrint.AutoWidth = false;
            this.adgvmaster.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.objListGridView_CellValueChanged);
            this.adgvmaster.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.adgvmaster_CustomDrawCell);
            this.adgvmaster.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.adgvmaster_RowCellStyle);
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "基本資料";
            this.gridBand1.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand5,
            this.gridBand7,
            this.gridBand8});
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 502;
            // 
            // gridBand5
            // 
            this.gridBand5.Columns.Add(this.gcCust);
            this.gridBand5.Columns.Add(this.gcStatu);
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 68;
            // 
            // gcCust
            // 
            this.gcCust.Caption = "客戶號";
            this.gcCust.FieldName = "CustNo";
            this.gcCust.Name = "gcCust";
            this.gcCust.Visible = true;
            this.gcCust.Width = 68;
            // 
            // gcStatu
            // 
            this.gcStatu.Caption = "狀態值";
            this.gcStatu.FieldName = "Statu";
            this.gcStatu.Name = "gcStatu";
            this.gcStatu.OptionsColumn.AllowEdit = false;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "款號";
            this.gridBand7.Columns.Add(this.gridColKHKH);
            this.gridBand7.Columns.Add(this.gridColPHKH);
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 210;
            // 
            // gridColKHKH
            // 
            this.gridColKHKH.Caption = "客款號";
            this.gridColKHKH.FieldName = "KHKH";
            this.gridColKHKH.Name = "gridColKHKH";
            this.gridColKHKH.OptionsColumn.AllowEdit = false;
            this.gridColKHKH.Visible = true;
            this.gridColKHKH.Width = 87;
            // 
            // gridColPHKH
            // 
            this.gridColPHKH.Caption = "PH款號";
            this.gridColPHKH.FieldName = "PHKH";
            this.gridColPHKH.Name = "gridColPHKH";
            this.gridColPHKH.OptionsColumn.AllowEdit = false;
            this.gridColPHKH.Visible = true;
            this.gridColPHKH.Width = 123;
            // 
            // gridBand8
            // 
            this.gridBand8.Columns.Add(this.gcProc);
            this.gridBand8.Columns.Add(this.gridColCPLB);
            this.gridBand8.Columns.Add(this.gridColSizeYJ);
            this.gridBand8.Columns.Add(this.gcSize_Editon);
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Width = 224;
            // 
            // gcProc
            // 
            this.gcProc.Caption = "工場流程";
            this.gcProc.FieldName = "ProcDesc";
            this.gcProc.Name = "gcProc";
            this.gcProc.Visible = true;
            this.gcProc.Width = 60;
            // 
            // gridColCPLB
            // 
            this.gridColCPLB.Caption = "産品類別";
            this.gridColCPLB.FieldName = "CPLB";
            this.gridColCPLB.Name = "gridColCPLB";
            this.gridColCPLB.Visible = true;
            this.gridColCPLB.Width = 69;
            // 
            // gridColSizeYJ
            // 
            this.gridColSizeYJ.Caption = "晒士基值(IE)";
            this.gridColSizeYJ.FieldName = "SizeYJ";
            this.gridColSizeYJ.Name = "gridColSizeYJ";
            this.gridColSizeYJ.Visible = true;
            this.gridColSizeYJ.Width = 48;
            // 
            // gcSize_Editon
            // 
            this.gcSize_Editon.Caption = "來樣板";
            this.gcSize_Editon.Name = "gcSize_Editon";
            this.gcSize_Editon.Visible = true;
            this.gcSize_Editon.Width = 47;
            // 
            // gridBand12
            // 
            this.gridBand12.Caption = "BOO2 (Step 1 = 拆夾 S+M / Step 2 = 拉平衡 LB)";
            this.gridBand12.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand13});
            this.gridBand12.Name = "gridBand12";
            this.gridBand12.Width = 1341;
            // 
            // gridBand13
            // 
            this.gridBand13.Caption = "SAH 值分佈 (IE) - 5個地點";
            this.gridBand13.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand14,
            this.gridBand15,
            this.gridBand16,
            this.gridBand17,
            this.gridBand18,
            this.gridBand19});
            this.gridBand13.Name = "gridBand13";
            this.gridBand13.Width = 1341;
            // 
            // gridBand14
            // 
            this.gridBand14.Caption = "Parts Making (PM)";
            this.gridBand14.Columns.Add(this.colPM_OptsCount);
            this.gridBand14.Columns.Add(this.colPM_WSTCount);
            this.gridBand14.Columns.Add(this.colPM_WFCount);
            this.gridBand14.Columns.Add(this.colPM_SAHTotal);
            this.gridBand14.Name = "gridBand14";
            this.gridBand14.Width = 201;
            // 
            // colPM_OptsCount
            // 
            this.colPM_OptsCount.Caption = "# of Opts";
            this.colPM_OptsCount.FieldName = "PM_OptsCount";
            this.colPM_OptsCount.Name = "colPM_OptsCount";
            this.colPM_OptsCount.OptionsColumn.AllowEdit = false;
            this.colPM_OptsCount.Visible = true;
            this.colPM_OptsCount.Width = 51;
            // 
            // colPM_WSTCount
            // 
            this.colPM_WSTCount.Caption = "WST";
            this.colPM_WSTCount.FieldName = "PM_WSTCount";
            this.colPM_WSTCount.Name = "colPM_WSTCount";
            this.colPM_WSTCount.OptionsColumn.AllowEdit = false;
            this.colPM_WSTCount.Visible = true;
            this.colPM_WSTCount.Width = 49;
            // 
            // colPM_WFCount
            // 
            this.colPM_WFCount.Caption = "WF";
            this.colPM_WFCount.FieldName = "PM_WFCount";
            this.colPM_WFCount.Name = "colPM_WFCount";
            this.colPM_WFCount.OptionsColumn.AllowEdit = false;
            this.colPM_WFCount.Visible = true;
            this.colPM_WFCount.Width = 38;
            // 
            // colPM_SAHTotal
            // 
            this.colPM_SAHTotal.Caption = "SAH (S+M)";
            this.colPM_SAHTotal.FieldName = "PM_SAHTotal";
            this.colPM_SAHTotal.Name = "colPM_SAHTotal";
            this.colPM_SAHTotal.OptionsColumn.AllowEdit = false;
            this.colPM_SAHTotal.Visible = true;
            this.colPM_SAHTotal.Width = 63;
            // 
            // gridBand15
            // 
            this.gridBand15.Caption = "Bonding";
            this.gridBand15.Columns.Add(this.colB_OptsCount);
            this.gridBand15.Columns.Add(this.colB_WSTCount);
            this.gridBand15.Columns.Add(this.colB_WFCount);
            this.gridBand15.Columns.Add(this.colB_SAHTotal);
            this.gridBand15.Name = "gridBand15";
            this.gridBand15.Width = 191;
            // 
            // colB_OptsCount
            // 
            this.colB_OptsCount.Caption = "# of Opts";
            this.colB_OptsCount.FieldName = "B_OptsCount";
            this.colB_OptsCount.Name = "colB_OptsCount";
            this.colB_OptsCount.OptionsColumn.AllowEdit = false;
            this.colB_OptsCount.Visible = true;
            this.colB_OptsCount.Width = 47;
            // 
            // colB_WSTCount
            // 
            this.colB_WSTCount.Caption = "WST";
            this.colB_WSTCount.FieldName = "B_WSTCount";
            this.colB_WSTCount.Name = "colB_WSTCount";
            this.colB_WSTCount.OptionsColumn.AllowEdit = false;
            this.colB_WSTCount.Visible = true;
            this.colB_WSTCount.Width = 47;
            // 
            // colB_WFCount
            // 
            this.colB_WFCount.Caption = "WF";
            this.colB_WFCount.FieldName = "B_WFCount";
            this.colB_WFCount.Name = "colB_WFCount";
            this.colB_WFCount.OptionsColumn.AllowEdit = false;
            this.colB_WFCount.Visible = true;
            this.colB_WFCount.Width = 43;
            // 
            // colB_SAHTotal
            // 
            this.colB_SAHTotal.Caption = "SAH (S+M)";
            this.colB_SAHTotal.FieldName = "B_SAHTotal";
            this.colB_SAHTotal.Name = "colB_SAHTotal";
            this.colB_SAHTotal.OptionsColumn.AllowEdit = false;
            this.colB_SAHTotal.Visible = true;
            this.colB_SAHTotal.Width = 54;
            // 
            // gridBand16
            // 
            this.gridBand16.Caption = "Stitching (Front Phase)";
            this.gridBand16.Columns.Add(this.colF_OptsCount);
            this.gridBand16.Columns.Add(this.colF_WSTCount);
            this.gridBand16.Columns.Add(this.colF_WFCount);
            this.gridBand16.Columns.Add(this.colF_SAHTotal);
            this.gridBand16.Name = "gridBand16";
            this.gridBand16.Width = 201;
            // 
            // colF_OptsCount
            // 
            this.colF_OptsCount.Caption = "# of Opts";
            this.colF_OptsCount.FieldName = "F_OptsCount";
            this.colF_OptsCount.Name = "colF_OptsCount";
            this.colF_OptsCount.OptionsColumn.AllowEdit = false;
            this.colF_OptsCount.Visible = true;
            this.colF_OptsCount.Width = 52;
            // 
            // colF_WSTCount
            // 
            this.colF_WSTCount.Caption = "WST";
            this.colF_WSTCount.FieldName = "F_WSTCount";
            this.colF_WSTCount.Name = "colF_WSTCount";
            this.colF_WSTCount.OptionsColumn.AllowEdit = false;
            this.colF_WSTCount.Visible = true;
            this.colF_WSTCount.Width = 52;
            // 
            // colF_WFCount
            // 
            this.colF_WFCount.Caption = "WF";
            this.colF_WFCount.FieldName = "F_WFCount";
            this.colF_WFCount.Name = "colF_WFCount";
            this.colF_WFCount.OptionsColumn.AllowEdit = false;
            this.colF_WFCount.Visible = true;
            this.colF_WFCount.Width = 41;
            // 
            // colF_SAHTotal
            // 
            this.colF_SAHTotal.Caption = "SAH (S+M)";
            this.colF_SAHTotal.FieldName = "F_SAHTotal";
            this.colF_SAHTotal.Name = "colF_SAHTotal";
            this.colF_SAHTotal.OptionsColumn.AllowEdit = false;
            this.colF_SAHTotal.Visible = true;
            this.colF_SAHTotal.Width = 56;
            // 
            // gridBand17
            // 
            this.gridBand17.Caption = "Stitching (Assembly Line)";
            this.gridBand17.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand20,
            this.gridBand21});
            this.gridBand17.Name = "gridBand17";
            this.gridBand17.Width = 342;
            // 
            // gridBand20
            // 
            this.gridBand20.Columns.Add(this.colA_OptsCount);
            this.gridBand20.Columns.Add(this.colA_WSTCount);
            this.gridBand20.Columns.Add(this.colA_WFCount);
            this.gridBand20.Name = "gridBand20";
            this.gridBand20.Width = 151;
            // 
            // colA_OptsCount
            // 
            this.colA_OptsCount.Caption = "# of Opts";
            this.colA_OptsCount.FieldName = "A_OptsCount";
            this.colA_OptsCount.Name = "colA_OptsCount";
            this.colA_OptsCount.OptionsColumn.AllowEdit = false;
            this.colA_OptsCount.Visible = true;
            this.colA_OptsCount.Width = 47;
            // 
            // colA_WSTCount
            // 
            this.colA_WSTCount.Caption = "WST";
            this.colA_WSTCount.FieldName = "A_WSTCount";
            this.colA_WSTCount.Name = "colA_WSTCount";
            this.colA_WSTCount.OptionsColumn.AllowEdit = false;
            this.colA_WSTCount.Visible = true;
            this.colA_WSTCount.Width = 54;
            // 
            // colA_WFCount
            // 
            this.colA_WFCount.Caption = "WF";
            this.colA_WFCount.FieldName = "A_WFCount";
            this.colA_WFCount.Name = "colA_WFCount";
            this.colA_WFCount.OptionsColumn.AllowEdit = false;
            this.colA_WFCount.Visible = true;
            this.colA_WFCount.Width = 50;
            // 
            // gridBand21
            // 
            this.gridBand21.Caption = "SAH";
            this.gridBand21.Columns.Add(this.colA_SAHTotal);
            this.gridBand21.Columns.Add(this.colA_LBSAHIndex);
            this.gridBand21.Columns.Add(this.colA_LBLoss);
            this.gridBand21.Name = "gridBand21";
            this.gridBand21.Width = 191;
            // 
            // colA_SAHTotal
            // 
            this.colA_SAHTotal.Caption = "(S+M)";
            this.colA_SAHTotal.FieldName = "A_SAHTotal";
            this.colA_SAHTotal.Name = "colA_SAHTotal";
            this.colA_SAHTotal.OptionsColumn.AllowEdit = false;
            this.colA_SAHTotal.Visible = true;
            this.colA_SAHTotal.Width = 58;
            // 
            // colA_LBSAHIndex
            // 
            this.colA_LBSAHIndex.Caption = "(LB) index";
            this.colA_LBSAHIndex.FieldName = "A_LBSAHIndex";
            this.colA_LBSAHIndex.Name = "colA_LBSAHIndex";
            this.colA_LBSAHIndex.OptionsColumn.AllowEdit = false;
            this.colA_LBSAHIndex.Visible = true;
            this.colA_LBSAHIndex.Width = 76;
            // 
            // colA_LBLoss
            // 
            this.colA_LBLoss.Caption = "LB Loss";
            this.colA_LBLoss.DisplayFormat.FormatString = "{0:P}";
            this.colA_LBLoss.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colA_LBLoss.FieldName = "A_LBLoss";
            this.colA_LBLoss.Name = "colA_LBLoss";
            this.colA_LBLoss.OptionsColumn.AllowEdit = false;
            this.colA_LBLoss.Visible = true;
            this.colA_LBLoss.Width = 57;
            // 
            // gridBand18
            // 
            this.gridBand18.Caption = "Stitching (End Phase)";
            this.gridBand18.Columns.Add(this.colE_OptsCount);
            this.gridBand18.Columns.Add(this.colE_WSTCount);
            this.gridBand18.Columns.Add(this.colE_WFCount);
            this.gridBand18.Columns.Add(this.colE_SAHTotal);
            this.gridBand18.Name = "gridBand18";
            this.gridBand18.Width = 203;
            // 
            // colE_OptsCount
            // 
            this.colE_OptsCount.Caption = "# of Opts";
            this.colE_OptsCount.FieldName = "E_OptsCount";
            this.colE_OptsCount.Name = "colE_OptsCount";
            this.colE_OptsCount.OptionsColumn.AllowEdit = false;
            this.colE_OptsCount.Visible = true;
            this.colE_OptsCount.Width = 50;
            // 
            // colE_WSTCount
            // 
            this.colE_WSTCount.Caption = "WST";
            this.colE_WSTCount.FieldName = "E_WSTCount";
            this.colE_WSTCount.Name = "colE_WSTCount";
            this.colE_WSTCount.OptionsColumn.AllowEdit = false;
            this.colE_WSTCount.Visible = true;
            this.colE_WSTCount.Width = 52;
            // 
            // colE_WFCount
            // 
            this.colE_WFCount.Caption = "WF";
            this.colE_WFCount.FieldName = "E_WFCount";
            this.colE_WFCount.Name = "colE_WFCount";
            this.colE_WFCount.OptionsColumn.AllowEdit = false;
            this.colE_WFCount.Visible = true;
            this.colE_WFCount.Width = 42;
            // 
            // colE_SAHTotal
            // 
            this.colE_SAHTotal.Caption = "SAH (S+M)";
            this.colE_SAHTotal.FieldName = "E_SAHTotal";
            this.colE_SAHTotal.Name = "colE_SAHTotal";
            this.colE_SAHTotal.OptionsColumn.AllowEdit = false;
            this.colE_SAHTotal.Visible = true;
            this.colE_SAHTotal.Width = 59;
            // 
            // gridBand19
            // 
            this.gridBand19.Caption = "SAH 總值 (IE)";
            this.gridBand19.Columns.Add(this.colTotal_OptsCount);
            this.gridBand19.Columns.Add(this.colTotal_WSTCount);
            this.gridBand19.Columns.Add(this.colTotal_WFCount);
            this.gridBand19.Columns.Add(this.colTotal_SAHTotal);
            this.gridBand19.Name = "gridBand19";
            this.gridBand19.Width = 203;
            // 
            // colTotal_OptsCount
            // 
            this.colTotal_OptsCount.Caption = "# of Opts";
            this.colTotal_OptsCount.FieldName = "Total_OptsCount";
            this.colTotal_OptsCount.Name = "colTotal_OptsCount";
            this.colTotal_OptsCount.OptionsColumn.AllowEdit = false;
            this.colTotal_OptsCount.Visible = true;
            this.colTotal_OptsCount.Width = 48;
            // 
            // colTotal_WSTCount
            // 
            this.colTotal_WSTCount.Caption = "WST";
            this.colTotal_WSTCount.FieldName = "Total_WSTCount";
            this.colTotal_WSTCount.Name = "colTotal_WSTCount";
            this.colTotal_WSTCount.OptionsColumn.AllowEdit = false;
            this.colTotal_WSTCount.Visible = true;
            this.colTotal_WSTCount.Width = 49;
            // 
            // colTotal_WFCount
            // 
            this.colTotal_WFCount.Caption = "WF";
            this.colTotal_WFCount.FieldName = "Total_WFCount";
            this.colTotal_WFCount.Name = "colTotal_WFCount";
            this.colTotal_WFCount.OptionsColumn.AllowEdit = false;
            this.colTotal_WFCount.Visible = true;
            this.colTotal_WFCount.Width = 45;
            // 
            // colTotal_SAHTotal
            // 
            this.colTotal_SAHTotal.Caption = "SAH (S+M)";
            this.colTotal_SAHTotal.FieldName = "Total_SAHTotal";
            this.colTotal_SAHTotal.Name = "colTotal_SAHTotal";
            this.colTotal_SAHTotal.OptionsColumn.AllowEdit = false;
            this.colTotal_SAHTotal.Visible = true;
            this.colTotal_SAHTotal.Width = 61;
            // 
            // gridBand9
            // 
            this.gridBand9.Columns.Add(this.gridColZH);
            this.gridBand9.Columns.Add(this.gridColEdition);
            this.gridBand9.Columns.Add(this.gcActiveSame);
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Width = 230;
            // 
            // gridColZH
            // 
            this.gridColZH.Caption = "BOM組合\r\n(4 Group 12 Class)";
            this.gridColZH.FieldName = "ZH";
            this.gridColZH.Name = "gridColZH";
            this.gridColZH.OptionsColumn.AllowEdit = false;
            this.gridColZH.Visible = true;
            this.gridColZH.Width = 129;
            // 
            // gridColEdition
            // 
            this.gridColEdition.Caption = "版本";
            this.gridColEdition.FieldName = "Edition";
            this.gridColEdition.Name = "gridColEdition";
            this.gridColEdition.OptionsColumn.AllowEdit = false;
            this.gridColEdition.Visible = true;
            this.gridColEdition.Width = 32;
            // 
            // gcActiveSame
            // 
            this.gcActiveSame.Caption = "不同版本同時執行(Y/N)";
            this.gcActiveSame.FieldName = "ActiveSame";
            this.gcActiveSame.Name = "gcActiveSame";
            this.gcActiveSame.OptionsColumn.AllowEdit = false;
            this.gcActiveSame.Visible = true;
            this.gcActiveSame.Width = 69;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "IE部";
            this.gridBand4.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand10,
            this.gridBand11,
            this.gridBand22});
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 395;
            // 
            // gridBand10
            // 
            this.gridBand10.Caption = "原本";
            this.gridBand10.Columns.Add(this.gcCreate);
            this.gridBand10.Columns.Add(this.gcIEDate);
            this.gridBand10.Columns.Add(this.gridColIsUsed);
            this.gridBand10.Columns.Add(this.gcProdConfirm);
            this.gridBand10.Columns.Add(this.gcConfDt_Prod);
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Width = 145;
            // 
            // gcCreate
            // 
            this.gcCreate.Caption = "建立日期";
            this.gcCreate.FieldName = "CreateTime";
            this.gcCreate.Name = "gcCreate";
            this.gcCreate.OptionsColumn.AllowEdit = false;
            this.gcCreate.Visible = true;
            this.gcCreate.Width = 74;
            // 
            // gcIEDate
            // 
            this.gcIEDate.Caption = "確認日期";
            this.gcIEDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.gcIEDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcIEDate.FieldName = "ConfirmDate_IE";
            this.gcIEDate.Name = "gcIEDate";
            this.gcIEDate.OptionsColumn.AllowEdit = false;
            this.gcIEDate.Visible = true;
            this.gcIEDate.Width = 71;
            // 
            // gridColIsUsed
            // 
            this.gridColIsUsed.Caption = "是否使用";
            this.gridColIsUsed.FieldName = "IsUsed";
            this.gridColIsUsed.Name = "gridColIsUsed";
            this.gridColIsUsed.OptionsColumn.AllowEdit = false;
            // 
            // gcProdConfirm
            // 
            this.gcProdConfirm.Caption = "缝合部確認";
            this.gcProdConfirm.FieldName = "AuditFlag_Prod";
            this.gcProdConfirm.Name = "gcProdConfirm";
            this.gcProdConfirm.OptionsColumn.AllowEdit = false;
            this.gcProdConfirm.Width = 45;
            // 
            // gcConfDt_Prod
            // 
            this.gcConfDt_Prod.Caption = "缝合部確認日期";
            this.gcConfDt_Prod.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.gcConfDt_Prod.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcConfDt_Prod.FieldName = "ConfirmDate_Prod";
            this.gcConfDt_Prod.Name = "gcConfDt_Prod";
            this.gcConfDt_Prod.OptionsColumn.AllowEdit = false;
            this.gcConfDt_Prod.Width = 63;
            // 
            // gridBand11
            // 
            this.gridBand11.Caption = "修訂";
            this.gridBand11.Columns.Add(this.colUpdateTime);
            this.gridBand11.Columns.Add(this.gcConfer_prod);
            this.gridBand11.Columns.Add(this.colUpdateConfirmDate_IE);
            this.gridBand11.Columns.Add(this.gridColumn1);
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.Width = 150;
            // 
            // colUpdateTime
            // 
            this.colUpdateTime.Caption = "修訂日期";
            this.colUpdateTime.FieldName = "UpdateTime";
            this.colUpdateTime.Name = "colUpdateTime";
            this.colUpdateTime.Visible = true;
            // 
            // gcConfer_prod
            // 
            this.gcConfer_prod.Caption = "缝合部確認者";
            this.gcConfer_prod.FieldName = "ConfirmByProd";
            this.gcConfer_prod.Name = "gcConfer_prod";
            this.gcConfer_prod.OptionsColumn.AllowEdit = false;
            this.gcConfer_prod.Width = 69;
            // 
            // colUpdateConfirmDate_IE
            // 
            this.colUpdateConfirmDate_IE.Caption = "確認日期";
            this.colUpdateConfirmDate_IE.FieldName = "UpdateConfirmDate_IE";
            this.colUpdateConfirmDate_IE.Name = "colUpdateConfirmDate_IE";
            this.colUpdateConfirmDate_IE.Visible = true;
            // 
            // gridColumn1
            // 
            this.gridColumn1.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn1.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn1.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.gridColumn1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn1.Caption = "IE確認";
            this.gridColumn1.FieldName = "AuditFlag";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.Width = 40;
            // 
            // gridBand22
            // 
            this.gridBand22.Name = "gridBand22";
            this.gridBand22.Width = 100;
            // 
            // gcJZ_Prod
            // 
            this.gcJZ_Prod.Caption = "缝合";
            this.gcJZ_Prod.FieldName = "SizeYJ_Prod";
            this.gcJZ_Prod.Name = "gcJZ_Prod";
            this.gcJZ_Prod.Width = 44;
            // 
            // gcJZDiff
            // 
            this.gcJZDiff.Caption = "差異(?)";
            this.gcJZDiff.FieldName = "JzDiff";
            this.gcJZDiff.Name = "gcJZDiff";
            this.gcJZDiff.Width = 36;
            // 
            // gcBJSAH
            // 
            this.gcBJSAH.Caption = "IE";
            this.gcBJSAH.FieldName = "PRODSAH";
            this.gcBJSAH.Name = "gcBJSAH";
            this.gcBJSAH.OptionsColumn.AllowEdit = false;
            this.gcBJSAH.Visible = true;
            this.gcBJSAH.Width = 39;
            // 
            // gcProdSAH
            // 
            this.gcProdSAH.Caption = "缝合";
            this.gcProdSAH.FieldName = "GsdTotal";
            this.gcProdSAH.Name = "gcProdSAH";
            this.gcProdSAH.OptionsColumn.AllowEdit = false;
            this.gcProdSAH.Visible = true;
            this.gcProdSAH.Width = 49;
            // 
            // gcSAHDiff
            // 
            this.gcSAHDiff.Caption = "差異(%)";
            this.gcSAHDiff.FieldName = "SahDiff";
            this.gcSAHDiff.Name = "gcSAHDiff";
            this.gcSAHDiff.OptionsColumn.AllowEdit = false;
            this.gcSAHDiff.Visible = true;
            this.gcSAHDiff.Width = 68;
            // 
            // gcCupStyle
            // 
            this.gcCupStyle.Caption = "杯";
            this.gcCupStyle.ColumnEdit = this.replue_CupStyle;
            this.gcCupStyle.FieldName = "CupStyle";
            this.gcCupStyle.Name = "gcCupStyle";
            this.gcCupStyle.OptionsColumn.AllowEdit = false;
            this.gcCupStyle.Width = 35;
            // 
            // replue_CupStyle
            // 
            this.replue_CupStyle.AutoHeight = false;
            this.replue_CupStyle.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.replue_CupStyle.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("StyleDesc", "杯型", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.replue_CupStyle.DisplayMember = "StyleDesc";
            this.replue_CupStyle.Name = "replue_CupStyle";
            this.replue_CupStyle.NullText = "";
            this.replue_CupStyle.PopupFormMinSize = new System.Drawing.Size(20, 10);
            this.replue_CupStyle.PopupWidth = 50;
            this.replue_CupStyle.ValueMember = "StyleId";
            // 
            // gcSizeStyle
            // 
            this.gcSizeStyle.Caption = "BOO組合(3組9班)";
            this.gcSizeStyle.ColumnEdit = this.replu_SizeStyle;
            this.gcSizeStyle.FieldName = "SizeStyle";
            this.gcSizeStyle.Name = "gcSizeStyle";
            this.gcSizeStyle.OptionsColumn.AllowEdit = false;
            this.gcSizeStyle.Width = 71;
            // 
            // replu_SizeStyle
            // 
            this.replu_SizeStyle.AutoHeight = false;
            this.replu_SizeStyle.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.replu_SizeStyle.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("StyleDesc", "Desc", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.replu_SizeStyle.DisplayMember = "StyleDesc";
            this.replu_SizeStyle.Name = "replu_SizeStyle";
            this.replu_SizeStyle.NullText = "";
            this.replu_SizeStyle.PopupFormMinSize = new System.Drawing.Size(60, 20);
            this.replu_SizeStyle.PopupWidth = 60;
            this.replu_SizeStyle.ValueMember = "StyleId";
            // 
            // gcValidDate
            // 
            this.gcValidDate.Caption = "有效日期";
            this.gcValidDate.FieldName = "ValidDate";
            this.gcValidDate.Name = "gcValidDate";
            this.gcValidDate.Visible = true;
            this.gcValidDate.Width = 60;
            // 
            // gridColAuditor
            // 
            this.gridColAuditor.Caption = "確認者";
            this.gridColAuditor.FieldName = "Auditor";
            this.gridColAuditor.Name = "gridColAuditor";
            this.gridColAuditor.OptionsColumn.AllowEdit = false;
            this.gridColAuditor.Visible = true;
            this.gridColAuditor.Width = 60;
            // 
            // gcStatu_Disp
            // 
            this.gcStatu_Disp.Caption = "狀態";
            this.gcStatu_Disp.ColumnEdit = this.replue_Statu;
            this.gcStatu_Disp.FieldName = "Statu_Disp";
            this.gcStatu_Disp.Name = "gcStatu_Disp";
            this.gcStatu_Disp.OptionsColumn.AllowEdit = false;
            this.gcStatu_Disp.Visible = true;
            this.gcStatu_Disp.Width = 45;
            // 
            // replue_Statu
            // 
            this.replue_Statu.AutoHeight = false;
            this.replue_Statu.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.replue_Statu.Items.AddRange(new object[] {
            "A",
            "I",
            "D"});
            this.replue_Statu.Name = "replue_Statu";
            // 
            // colStatuFromBOO1
            // 
            this.colStatuFromBOO1.Caption = "狀態(來自于BOO1) (Y/N)";
            this.colStatuFromBOO1.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colStatuFromBOO1.FieldName = "StatuFromBOO1";
            this.colStatuFromBOO1.Name = "colStatuFromBOO1";
            this.colStatuFromBOO1.OptionsColumn.AllowEdit = false;
            this.colStatuFromBOO1.Visible = true;
            this.colStatuFromBOO1.Width = 20;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "gridBand2";
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 60;
            // 
            // gridBand2
            // 
            this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand2.Columns.Add(this.gcJZ_Prod);
            this.gridBand2.Columns.Add(this.gcJZDiff);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 71;
            // 
            // gridBand6
            // 
            this.gridBand6.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand6.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand6.Columns.Add(this.gcSizeStyle);
            this.gridBand6.Columns.Add(this.gcValidDate);
            this.gridBand6.Columns.Add(this.gridColAuditor);
            this.gridBand6.Columns.Add(this.gcStatu_Disp);
            this.gridBand6.Columns.Add(this.colStatuFromBOO1);
            this.gridBand6.Columns.Add(this.gcCupStyle);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 264;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Test";
            this.barButtonItem1.Id = 55;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // print
            // 
            this.print.Caption = "Operation Specification Sheet";
            this.print.Id = 56;
            this.print.Name = "print";
            this.print.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.print_ItemClick);
            // 
            // StyleMasterListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel1);
            this.Name = "StyleMasterListForm";
            this.RowChangeAutoSave = false;
            this.Size = new System.Drawing.Size(2404, 597);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.panel1, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFilter.Properties)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.adgvmaster)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.replue_CupStyle)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.replu_SizeStyle)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.replue_Statu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        private void cbFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbFilter.SelectedIndex != -1)
            {
                this.DataBind();
                this.FormatPostion();
                //this.ControlAllowEdit();
            }
        }

        private void btnCopyStyle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            StyleMaster mas = this.BindingSource.Current as StyleMaster;
            StyleMasterCopy frm = new StyleMasterCopy(mas);

            if (frm.ShowDialog() == DialogResult.OK)
            {

                //StyleMaster master = new StyleMaster();

                StyleMaster master = (this.BindingSource.AddNew() as StyleMaster);
                master.CurrentDataContext = this.DataContext;
                master.PHKH = frm.PHKH;
                master.KHKH = frm.KHKH;
                master.BKH = frm.BKH;
                master.CPLB = frm.CPLB;
                master.SizeYJ = frm.sizeYJ;

                master.ZH = frm.ZH;
                master.IsUsed = mas.IsUsed;
                master.Phase = mas.Phase;
                //  master.AuditFlag = mas.AuditFlag;
                // master.Auditor = mas.Auditor;
                master.Ipack = mas.Ipack;
                master.BestLineValue = mas.BestLineValue;
                master.Selected = mas.Selected;
                master.Edition = master.GetNewEdition();

                //add copy fields
                master.CustNo = mas.CustNo;
                master.SizeYJ_Prod = mas.SizeYJ_Prod;
                master.PRODSAH = mas.PRODSAH;
                master.CreateBy = _user;
                master.CreateTime = DateTime.Now;
                master.Factory = mas.Factory;
                master.ProcDesc = mas.ProcDesc; //工場流程
                master.ValidDate = mas.ValidDate; //有效日期
                master.Statu = mas.Statu;


                foreach (StyleProcedure obj in mas.StyleProcedures)
                {
                    StyleProcedure pro = new StyleProcedure();
                    pro.CurrentDataContext = this.DataContext;
                    pro.KHKH = frm.KHKH;
                    pro.PHKH = frm.PHKH;
                    pro.ZH = frm.ZH;
                    pro.Edition = master.Edition; //frm.Edition;
                    pro.XH = obj.XH;
                    pro.TeamGSD = obj.TeamGSD;
                    pro.TeamYH = obj.TeamYH;
                    pro.SN = obj.SN;
                    pro.WorkSN = obj.WorkSN;
                    pro.CPGS = obj.CPGS;
                    pro.GSDBN = obj.GSDBN;
                    pro.CJBH = obj.CJBH;
                    pro.YHBN = obj.YHBN;
                    pro.GSDCP = obj.GSDCP;
                    pro.CJCP = obj.CJCP;
                    pro.YHCP = obj.YHCP;
                    pro.WorkName = obj.WorkName;
                    pro.WorkNameEN = obj.WorkNameEN;
                    pro.YCDM = obj.YCDM;
                    pro.YCType = obj.YCType;
                    pro.YCTypeEN = obj.YCTypeEN;

                    pro.YCAdj = obj.YCAdj;
                    pro.GSDSAHSN = obj.GSDSAHSN;
                    pro.JSCL = obj.JSCL;
                    pro.CWorkSN = obj.CWorkSN;
                    pro.JWorkSN = obj.JWorkSN;
                    pro.BNCX = obj.BNCX;
                    pro.YHBNCX = obj.YHBNCX;
                    pro.JSCBNCX = obj.JSCBNCX;
                    pro.CJQR = obj.CJQR;
                    pro.Move = obj.Move;
                    pro.LDL = obj.LDL;
                    pro.GZW = obj.GZW;
                    pro.GZW_Support = obj.GZW_Support;
                    pro.GZW_Floater = obj.GZW_Floater;
                    pro.GRDH = obj.GRDH;
                    pro.YHMTM = obj.YHMTM;
                    pro.YHSAHSN = obj.YHSAHSN;
                    pro.BisYHMTM = obj.BisYHMTM;
                    pro.BisYHSAHSN = obj.BisYHSAHSN;
                    pro.JSCSAHSN = obj.JSCSAHSN;
                    pro.PJHMTM = obj.PJHMTM;
                    pro.PJHSAHSN = obj.PJHSAHSN;
                    pro.BestMTM = obj.BestMTM;
                    pro.BestSAHSN = obj.BestSAHSN;
                    pro.JGJJ = obj.JGJJ;
                    pro.CFlag = obj.CFlag;
                    pro.JFlag = obj.JFlag;
                    pro.BeforeJSCCFlag = obj.BeforeJSCCFlag;
                    pro.BeforeJSCJFlag = obj.BeforeJSCJFlag;
                    pro.GZWMergeShowValue = obj.GZWMergeShowValue;
                    pro.BurstNo = obj.BurstNo;
                    pro.Width = obj.Width;
                    pro.Length = obj.Length;
                    pro.YHLineValue = obj.YHLineValue;
                    pro.BestLineValue = obj.BestLineValue;
                    pro.YCSD = obj.YCSD;
                    pro.StyleMaster = master;
                    pro.FAE = obj.FAE;
                    master.StyleProcedures.Add(pro);

                }

                //StyleProduce_E
                foreach (StyleProcedure_E obj in mas.StyleProcedure_Es)
                {
                    StyleProcedure_E pro = new StyleProcedure_E();
                    pro.CurrentDataContext = this.DataContext;
                    pro.KHKH = frm.KHKH;
                    pro.PHKH = frm.PHKH;
                    pro.ZH = frm.ZH;
                    pro.Edition = frm.Edition;
                    pro.XH = obj.XH;
                    pro.TeamGSD = obj.TeamGSD;
                    pro.TeamYH = obj.TeamYH;
                    pro.SN = obj.SN;
                    pro.WorkSN = obj.WorkSN;
                    pro.CPGS = obj.CPGS;
                    pro.GSDBN = obj.GSDBN;
                    pro.CJBH = obj.CJBH;
                    pro.YHBN = obj.YHBN;
                    pro.GSDCP = obj.GSDCP;
                    pro.CJCP = obj.CJCP;
                    pro.YHCP = obj.YHCP;
                    pro.WorkName = obj.WorkName;
                    pro.YCDM = obj.YCDM;
                    pro.YCType = obj.YCType;
                    pro.YCAdj = obj.YCAdj;
                    pro.GSDSAHSN = obj.GSDSAHSN;
                    pro.JSCL = obj.JSCL;
                    pro.CWorkSN = obj.CWorkSN;
                    pro.JWorkSN = obj.JWorkSN;
                    pro.BNCX = obj.BNCX;
                    pro.YHBNCX = obj.YHBNCX;
                    pro.JSCBNCX = obj.JSCBNCX;
                    pro.CJQR = obj.CJQR;
                    pro.Move = obj.Move;
                    pro.LDL = obj.LDL;
                    pro.GZW = obj.GZW;
                    pro.GZW_Support = obj.GZW_Support;
                    pro.GZW_Floater = obj.GZW_Floater;
                    pro.GRDH = obj.GRDH;
                    pro.YHMTM = obj.YHMTM;
                    pro.YHSAHSN = obj.YHSAHSN;
                    pro.BisYHMTM = obj.BisYHMTM;
                    pro.BisYHSAHSN = obj.BisYHSAHSN;
                    pro.JSCSAHSN = obj.JSCSAHSN;
                    pro.PJHMTM = obj.PJHMTM;
                    pro.PJHSAHSN = obj.PJHSAHSN;
                    pro.BestMTM = obj.BestMTM;
                    pro.BestSAHSN = obj.BestSAHSN;
                    pro.JGJJ = obj.JGJJ;
                    pro.CFlag = obj.CFlag;
                    pro.JFlag = obj.JFlag;
                    pro.BeforeJSCCFlag = obj.BeforeJSCCFlag;
                    pro.BeforeJSCJFlag = obj.BeforeJSCJFlag;
                    pro.GZWMergeShowValue = obj.GZWMergeShowValue;
                    pro.BurstNo = obj.BurstNo;
                    pro.Width = obj.Width;
                    pro.Length = obj.Length;
                    pro.YHLineValue = obj.YHLineValue;
                    pro.BestLineValue = obj.BestLineValue;
                    pro.YCSD = obj.YCSD;
                    pro.FAE = obj.FAE;
                    pro.StyleMaster = master;

                    pro.WorkNameEN = obj.WorkNameEN;
                    pro.YCTypeEN = obj.YCTypeEN;

                    master.StyleProcedure_Es.Add(pro);
                }

                //StyleProduce_F
                foreach (StyleProcedure_F obj in mas.StyleProcedure_Fs)
                {
                    StyleProcedure_F pro = new StyleProcedure_F();
                    // pro.CurrentDataContext = this.DataContext;
                    pro.KHKH = frm.KHKH;
                    pro.PHKH = frm.PHKH;
                    pro.ZH = frm.ZH;
                    pro.Edition = frm.Edition;
                    pro.XH = obj.XH;
                    pro.TeamGSD = obj.TeamGSD;
                    pro.TeamYH = obj.TeamYH;
                    pro.SN = obj.SN;
                    pro.WorkSN = obj.WorkSN;
                    pro.CPGS = obj.CPGS;
                    pro.GSDBN = obj.GSDBN;
                    pro.CJBH = obj.CJBH;
                    pro.YHBN = obj.YHBN;
                    pro.GSDCP = obj.GSDCP;
                    pro.CJCP = obj.CJCP;
                    pro.YHCP = obj.YHCP;
                    pro.WorkName = obj.WorkName;
                    pro.YCDM = obj.YCDM;
                    pro.YCType = obj.YCType;
                    pro.YCAdj = obj.YCAdj;
                    pro.GSDSAHSN = obj.GSDSAHSN;
                    pro.JSCL = obj.JSCL;
                    pro.CWorkSN = obj.CWorkSN;
                    pro.JWorkSN = obj.JWorkSN;
                    pro.BNCX = obj.BNCX;
                    pro.YHBNCX = obj.YHBNCX;
                    pro.JSCBNCX = obj.JSCBNCX;
                    pro.CJQR = obj.CJQR;
                    pro.Move = obj.Move;
                    pro.LDL = obj.LDL;
                    pro.GZW = obj.GZW;
                    pro.GZW_Support = obj.GZW_Support;
                    pro.GZW_Floater = obj.GZW_Floater;
                    pro.GRDH = obj.GRDH;
                    pro.YHMTM = obj.YHMTM;
                    pro.YHSAHSN = obj.YHSAHSN;
                    pro.BisYHMTM = obj.BisYHMTM;
                    pro.BisYHSAHSN = obj.BisYHSAHSN;
                    pro.JSCSAHSN = obj.JSCSAHSN;
                    pro.PJHMTM = obj.PJHMTM;
                    pro.PJHSAHSN = obj.PJHSAHSN;
                    pro.BestMTM = obj.BestMTM;
                    pro.BestSAHSN = obj.BestSAHSN;
                    pro.JGJJ = obj.JGJJ;
                    pro.CFlag = obj.CFlag;
                    pro.JFlag = obj.JFlag;
                    pro.BeforeJSCCFlag = obj.BeforeJSCCFlag;
                    pro.BeforeJSCJFlag = obj.BeforeJSCJFlag;
                    pro.GZWMergeShowValue = obj.GZWMergeShowValue;
                    pro.BurstNo = obj.BurstNo;
                    pro.Width = obj.Width;
                    pro.Length = obj.Length;
                    pro.YHLineValue = obj.YHLineValue;
                    pro.BestLineValue = obj.BestLineValue;
                    pro.YCSD = obj.YCSD;
                    pro.FAE = obj.FAE;
                    pro.StyleMaster = master;

                    pro.WorkNameEN = obj.WorkNameEN;
                    pro.YCTypeEN = obj.YCTypeEN;

                    master.StyleProcedure_Fs.Add(pro);
                }




                (this.DataContext as LineBalanceIIDataContext).StyleMasters.InsertOnSubmit(master);
                (this.DataContext as LineBalanceIIDataContext).SubmitChanges();
                //this.objListGridControl.DataSource = null;
                //this.objListGridControl.DataSource = this.BindingSource;
                //this.BindingSource.CurrencyManager.Refresh();

            }
        }

        private void objListGridView_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {

            if (e.Column.FieldName == "AuditFlag")
            {

                DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
                if (e.Value != null && e.Value.ToString() == "True")
                {
                    view.SetRowCellValue(e.RowHandle, view.Columns["Auditor"], PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID);
                    view.SetRowCellValue(e.RowHandle, view.Columns["ConfirmDate_IE"], DateTime.Now);
                }
                else
                {
                    view.SetRowCellValue(e.RowHandle, view.Columns["Auditor"], "");
                    view.SetRowCellValue(e.RowHandle, view.Columns["ConfirmDate_IE"], null);
                }
                view.UpdateCurrentRow();

            }

            else if (e.Column.FieldName == "AuditFlag_Prod")
            {

                DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
                if (e.Value != null && e.Value.ToString() == "True")
                {
                    view.SetRowCellValue(e.RowHandle, view.Columns["ConfirmByProd"], PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID);
                    view.SetRowCellValue(e.RowHandle, view.Columns["ConfirmDate_Prod"], DateTime.Now);
                }
                else
                {
                    view.SetRowCellValue(e.RowHandle, view.Columns["ConfirmByProd"], "");
                    view.SetRowCellValue(e.RowHandle, view.Columns["ConfirmDate_Prod"], null);
                }
                view.UpdateCurrentRow();
            }

            //if (e.Column.FieldName == "SizeYJ_Prod")
            //{
            //    // string _audit = this.objListGridView.GetRowCellDisplayText(e.RowHandle, "ReAudit");
            //    string _diff = this.adgvmaster.GetRowCellDisplayText(e.RowHandle, "JzDiff");
            //    if (string.IsNullOrEmpty(_diff) && _diff == "Y")
            //    {
            //      adgvmaster.   e.RowHandle 
            //            Appearance.ForeColor = Color.Red;
            //    }
            //}

            //if (e.Column.FieldName == "Edition")
            //{
            //    string _editon = this.adgvmaster.GetRowCellDisplayText(e.RowHandle, "Edition");
            //    if (int.Parse(_editon) > 1)
            //    {
            //        e.Appearance.ForeColor = Color.Red;
            //    }
            //}

        }

        /*列多選查詢*/

        private ArrayList GetGrnList()
        {
            ArrayList _grnlist = new ArrayList();
            //for (int i = 0; i < this.objListGridView.RowCount; i++)
            //{
            //    HDOTempBO _hdo = objListGridView.GetRow(i) as HDOTempBO;
            //    if (!_grnlist.Contains(_hdo.GRNO59))
            //        _grnlist.Add(_hdo.GRNO59);
            //}
            return _grnlist;
        }

        public ArrayList SelectGrnList = new ArrayList();
        private void objListGridView_CustomFilterDialog(object sender, DevExpress.XtraGrid.Views.Grid.CustomFilterDialogEventArgs e)
        {
            //if (e.Column.FieldName == "GRNO59")
            //{
            //    ArrayList _grnlst = GetGrnList();
            //    if (_grnlst.Count == 0)
            //        return;

            //    e.Handled = true;
            //    FrmSelectGrnInfo frm = new FrmSelectGrnInfo(_grnlst);
            //    frm.ParList = this;
            //    frm.StartPosition = FormStartPosition.CenterParent;
            //    DialogResult dgr = frm.ShowDialog();
            //    if (dgr == DialogResult.OK)
            //    {
            //        if (SelectGrnList.Count > 0)
            //        {
            //            string _conditon = this.objListGridView.ActiveFilterString; // + "and GRNO59=";
            //            string _mstr = "";
            //            if (string.IsNullOrEmpty(_conditon))
            //                _mstr = " 1=1 and GRNO59=";
            //            else
            //                _mstr = " and GRNO59=";

            //            for (int j = 0; j < SelectGrnList.Count; j++)
            //            {
            //                if (j == 0)
            //                {
            //                    _conditon = _conditon + _mstr + SelectGrnList[j].ToString();
            //                }
            //                else
            //                    _conditon = _conditon + " or GRNO59=" + SelectGrnList[j].ToString();


            //            }
            //            this.objListGridView.ActiveFilterString = _conditon;
            //            this.objListGridView.ApplyColumnsFilter();
            //        }
            //    }
            //}

        }

        private void adgvmaster_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.Column.FieldName == "SizeYJ_Prod")
            {
                // string _audit = this.objListGridView.GetRowCellDisplayText(e.RowHandle, "ReAudit");
                string _diff = this.adgvmaster.GetRowCellDisplayText(e.RowHandle, "JzDiff");
                if (string.IsNullOrEmpty(_diff) && _diff == "Y")
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }

            if (e.Column.FieldName == "Edition")
            {
                string _editon = this.adgvmaster.GetRowCellDisplayText(e.RowHandle, "Edition");
                if (!string.IsNullOrEmpty(_editon) && int.Parse(_editon) > 1)
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }
        }

        private void adgvmaster_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {

            AdvBandedGridView View = sender as AdvBandedGridView;
            string _diff = View.GetRowCellDisplayText(e.RowHandle, View.Columns["JzDiff"]);

            if (e.Column.FieldName == "SizeYJ_Prod" && _diff == "Y")
            {
                e.Appearance.ForeColor = Color.Red;
            }

        }

        private void objListGridControl_Click(object sender, EventArgs e)
        {

        }

        private void barButtonItem1_ItemClick(object sender, ItemClickEventArgs e)
        {
            StyleMaster obj = this.BindingSource.Current as StyleMaster;
            TestForm form = new TestForm(obj.KHKH, obj.PHKH, obj.Edition, obj.ZH);
            form.ShowDialog();
        }

        private void print_ItemClick(object sender, ItemClickEventArgs e)
        {
            OperationPrintSetupForm frmPrintSetup = new OperationPrintSetupForm();
            if (frmPrintSetup.ShowDialog() == DialogResult.OK)
            {
                StyleMaster obj = this.BindingSource.Current as StyleMaster;
                StyleMasterListFormReport rpt = new StyleMasterListFormReport(frmPrintSetup.Line, frmPrintSetup.Workshiop, obj.KHKH, obj.PHKH, obj.Edition, obj.ZH, OperType, "Step 2");
                rpt.ShowPreview();
            }
        }


    }
}
