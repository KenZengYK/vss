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


namespace PH.LineBalanceII.UI
{
    public partial class StyleMasterListForm_E : PH.Platform.UI.CS.UI2.ListForm
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
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcValidDate;


        public string OperType = "A";
        public StyleMasterListForm_E()
        {
            //有所变化zrtagnow
            //Thread.CurrentThread.CurrentUICulture = CultureInfo.GetCultureInfo(Commands.ConvertLangeType(PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID));           

            InitializeComponent();

            this.AllowGridEdit = false;

        }

        public StyleMasterListForm_E(string mtype)
        {
            InitializeComponent();
            
            OperType = mtype;

            this.AllowGridEdit = false;            
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
            }
            else
                this.adgvmaster.Columns["AuditFlag_Prod"].OptionsColumn.AllowEdit = true;
        
        }

        public override void DataBind()
        {
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


            //this.EditorTypeName = this.OperType.Equals("A") ? typeof(StyleMasterDetailForm).FullName : (this.OperType.Equals("E") ? typeof(StyleMasterDetailForm_E).FullName : typeof(StyleMasterDetailForm_F).FullName);
            this.EditorTypeName = typeof(StyleMasterDetailForm_E).FullName;
           

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
                    
                    if (aur != null || _isadmin)
                        SetColumnModify("IE");
                    if (aur1 != null || _isadmin)
                        SetColumnModify("Prod");
                }
                else
                    this.AllowGridEdit = false;

            }

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
            this.gcCust = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColKHKH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColPHKH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcProc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColCPLB = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcStatu = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColSizeYJ = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcJZ_Prod = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcJZDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gcBJSAH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcProdSAH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcSAHDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColZH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColEdition = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcStatu_Disp = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcValidDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcActiveSame = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColIsUsed = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColAuditor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcIEDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcProdConfirm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcConfer_prod = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcConfDt_Prod = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gcCreate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFilter.Properties)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.adgvmaster)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnCopyStyle});
            this.objbarManager.MaxItemId = 55;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopyStyle, true)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LineBalanceII.BO.StyleMaster);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.objListGridControl.EmbeddedNavigator.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.objListGridControl.EmbeddedNavigator.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 55);
            this.objListGridControl.MainView = this.adgvmaster;
            this.objListGridControl.Size = new System.Drawing.Size(1105, 542);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.adgvmaster});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // cbFilter
            // 
            this.cbFilter.EditValue = "Active & DVP";
            this.cbFilter.Location = new System.Drawing.Point(82, 4);
            this.cbFilter.Name = "cbFilter";
            this.cbFilter.Properties.AutoHeight = false;
            this.cbFilter.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbFilter.Properties.Items.AddRange(new object[] {
            "Active & DVP",
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
            this.panel1.Size = new System.Drawing.Size(1105, 28);
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
            this.adgvmaster.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.adgvmaster.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.adgvmaster.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
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
            this.gridColumn1,
            this.gridColAuditor,
            this.gcStatu_Disp,
            this.gcStatu,
            this.gcCust,
            this.gcProc,
            this.gcIEDate,
            this.gcProdConfirm,
            this.gcConfer_prod,
            this.gcConfDt_Prod,
            this.gcActiveSame,
            this.gcCreate,
            this.gcJZ_Prod,
            this.gcJZDiff,
            this.gcBJSAH,
            this.gcProdSAH,
            this.gcSAHDiff,
            this.gcValidDate});
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
            this.gridBand1.Columns.Add(this.gcCust);
            this.gridBand1.Columns.Add(this.gridColKHKH);
            this.gridBand1.Columns.Add(this.gridColPHKH);
            this.gridBand1.Columns.Add(this.gcProc);
            this.gridBand1.Columns.Add(this.gridColCPLB);
            this.gridBand1.Columns.Add(this.gcStatu);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 396;
            // 
            // gcCust
            // 
            this.gcCust.Caption = "客戶號";
            this.gcCust.FieldName = "CustNo";
            this.gcCust.Name = "gcCust";
            this.gcCust.Visible = true;
            this.gcCust.Width = 68;
            // 
            // gridColKHKH
            // 
            this.gridColKHKH.Caption = "客戶款號";
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
            // gcProc
            // 
            this.gcProc.Caption = "預設工場流程";
            this.gcProc.FieldName = "ProcDesc";
            this.gcProc.Name = "gcProc";
            this.gcProc.Visible = true;
            this.gcProc.Width = 50;
            // 
            // gridColCPLB
            // 
            this.gridColCPLB.Caption = "産品類別";
            this.gridColCPLB.FieldName = "CPLB";
            this.gridColCPLB.Name = "gridColCPLB";
            this.gridColCPLB.Visible = true;
            this.gridColCPLB.Width = 68;
            // 
            // gcStatu
            // 
            this.gcStatu.Caption = "狀態值";
            this.gcStatu.FieldName = "Statu";
            this.gcStatu.Name = "gcStatu";
            this.gcStatu.OptionsColumn.AllowEdit = false;
            // 
            // gridBand2
            // 
            this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand2.Caption = "基值(曬士依據)";
            this.gridBand2.Columns.Add(this.gridColSizeYJ);
            this.gridBand2.Columns.Add(this.gcJZ_Prod);
            this.gridBand2.Columns.Add(this.gcJZDiff);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 125;
            // 
            // gridColSizeYJ
            // 
            this.gridColSizeYJ.Caption = "IE";
            this.gridColSizeYJ.FieldName = "SizeYJ";
            this.gridColSizeYJ.Name = "gridColSizeYJ";
            this.gridColSizeYJ.Visible = true;
            this.gridColSizeYJ.Width = 45;
            // 
            // gcJZ_Prod
            // 
            this.gcJZ_Prod.Caption = "缝合";
            this.gcJZ_Prod.FieldName = "SizeYJ_Prod";
            this.gcJZ_Prod.Name = "gcJZ_Prod";
            this.gcJZ_Prod.Visible = true;
            this.gcJZ_Prod.Width = 44;
            // 
            // gcJZDiff
            // 
            this.gcJZDiff.Caption = "差異(?)";
            this.gcJZDiff.FieldName = "JzDiff";
            this.gcJZDiff.Name = "gcJZDiff";
            this.gcJZDiff.Visible = true;
            this.gcJZDiff.Width = 36;
            // 
            // gridBand3
            // 
            this.gridBand3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand3.Caption = "SAH(做參考)";
            this.gridBand3.Columns.Add(this.gcBJSAH);
            this.gridBand3.Columns.Add(this.gcProdSAH);
            this.gridBand3.Columns.Add(this.gcSAHDiff);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 149;
            // 
            // gcBJSAH
            // 
            this.gcBJSAH.Caption = "IE";
            this.gcBJSAH.FieldName = "PRODSAH";
            this.gcBJSAH.Name = "gcBJSAH";
            this.gcBJSAH.OptionsColumn.AllowEdit = false;
            this.gcBJSAH.Visible = true;
            this.gcBJSAH.Width = 44;
            // 
            // gcProdSAH
            // 
            this.gcProdSAH.Caption = "缝合";
            this.gcProdSAH.FieldName = "GsdTotal";
            this.gcProdSAH.Name = "gcProdSAH";
            this.gcProdSAH.OptionsColumn.AllowEdit = false;
            this.gcProdSAH.Visible = true;
            this.gcProdSAH.Width = 44;
            // 
            // gcSAHDiff
            // 
            this.gcSAHDiff.Caption = "差異(%)";
            this.gcSAHDiff.FieldName = "SahDiff";
            this.gcSAHDiff.Name = "gcSAHDiff";
            this.gcSAHDiff.OptionsColumn.AllowEdit = false;
            this.gcSAHDiff.Visible = true;
            this.gcSAHDiff.Width = 61;
            // 
            // gridBand4
            // 
            this.gridBand4.Columns.Add(this.gridColZH);
            this.gridBand4.Columns.Add(this.gridColEdition);
            this.gridBand4.Columns.Add(this.gcStatu_Disp);
            this.gridBand4.Columns.Add(this.gcValidDate);
            this.gridBand4.Columns.Add(this.gcActiveSame);
            this.gridBand4.Columns.Add(this.gridColIsUsed);
            this.gridBand4.Columns.Add(this.gridColumn1);
            this.gridBand4.Columns.Add(this.gridColAuditor);
            this.gridBand4.Columns.Add(this.gcIEDate);
            this.gridBand4.Columns.Add(this.gcProdConfirm);
            this.gridBand4.Columns.Add(this.gcConfer_prod);
            this.gridBand4.Columns.Add(this.gcConfDt_Prod);
            this.gridBand4.Columns.Add(this.gcCreate);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 685;
            // 
            // gridColZH
            // 
            this.gridColZH.Caption = "組合";
            this.gridColZH.FieldName = "ZH";
            this.gridColZH.Name = "gridColZH";
            this.gridColZH.OptionsColumn.AllowEdit = false;
            this.gridColZH.Visible = true;
            this.gridColZH.Width = 54;
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
            // gcStatu_Disp
            // 
            this.gcStatu_Disp.Caption = "狀態(來自于BOO1)";
            this.gcStatu_Disp.FieldName = "Statu_Disp";
            this.gcStatu_Disp.Name = "gcStatu_Disp";
            this.gcStatu_Disp.OptionsColumn.AllowEdit = false;
            this.gcStatu_Disp.Visible = true;
            this.gcStatu_Disp.Width = 60;
            // 
            // gcValidDate
            // 
            this.gcValidDate.Caption = "有效期至";
            this.gcValidDate.FieldName = "ValidDate";
            this.gcValidDate.Name = "gcValidDate";
            this.gcValidDate.Visible = true;
            this.gcValidDate.Width = 59;
            // 
            // gcActiveSame
            // 
            this.gcActiveSame.Caption = "不同版本同時活躍";
            this.gcActiveSame.FieldName = "ActiveSame";
            this.gcActiveSame.Name = "gcActiveSame";
            this.gcActiveSame.OptionsColumn.AllowEdit = false;
            this.gcActiveSame.Visible = true;
            // 
            // gridColIsUsed
            // 
            this.gridColIsUsed.Caption = "是否使用";
            this.gridColIsUsed.FieldName = "IsUsed";
            this.gridColIsUsed.Name = "gridColIsUsed";
            this.gridColIsUsed.OptionsColumn.AllowEdit = false;
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
            this.gridColumn1.Visible = true;
            this.gridColumn1.Width = 40;
            // 
            // gridColAuditor
            // 
            this.gridColAuditor.Caption = "IE部確認者";
            this.gridColAuditor.FieldName = "Auditor";
            this.gridColAuditor.Name = "gridColAuditor";
            this.gridColAuditor.OptionsColumn.AllowEdit = false;
            this.gridColAuditor.Visible = true;
            this.gridColAuditor.Width = 56;
            // 
            // gcIEDate
            // 
            this.gcIEDate.Caption = "IE確認日期";
            this.gcIEDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.gcIEDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcIEDate.FieldName = "ConfirmDate_IE";
            this.gcIEDate.Name = "gcIEDate";
            this.gcIEDate.OptionsColumn.AllowEdit = false;
            this.gcIEDate.Visible = true;
            this.gcIEDate.Width = 57;
            // 
            // gcProdConfirm
            // 
            this.gcProdConfirm.Caption = "缝合部確認";
            this.gcProdConfirm.FieldName = "AuditFlag_Prod";
            this.gcProdConfirm.Name = "gcProdConfirm";
            this.gcProdConfirm.OptionsColumn.AllowEdit = false;
            this.gcProdConfirm.Visible = true;
            this.gcProdConfirm.Width = 45;
            // 
            // gcConfer_prod
            // 
            this.gcConfer_prod.Caption = "缝合部確認者";
            this.gcConfer_prod.FieldName = "ConfirmByProd";
            this.gcConfer_prod.Name = "gcConfer_prod";
            this.gcConfer_prod.OptionsColumn.AllowEdit = false;
            this.gcConfer_prod.Visible = true;
            this.gcConfer_prod.Width = 69;
            // 
            // gcConfDt_Prod
            // 
            this.gcConfDt_Prod.Caption = "缝合部確認日期";
            this.gcConfDt_Prod.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.gcConfDt_Prod.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcConfDt_Prod.FieldName = "ConfirmDate_Prod";
            this.gcConfDt_Prod.Name = "gcConfDt_Prod";
            this.gcConfDt_Prod.OptionsColumn.AllowEdit = false;
            this.gcConfDt_Prod.Visible = true;
            this.gcConfDt_Prod.Width = 63;
            // 
            // gcCreate
            // 
            this.gcCreate.Caption = "建立日期";
            this.gcCreate.FieldName = "CreateTime";
            this.gcCreate.Name = "gcCreate";
            this.gcCreate.OptionsColumn.AllowEdit = false;
            this.gcCreate.Visible = true;
            // 
            // StyleMasterListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel1);
            this.Name = "StyleMasterListForm";
            this.RowChangeAutoSave = false;
            this.Size = new System.Drawing.Size(1105, 597);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.panel1, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFilter.Properties)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.adgvmaster)).EndInit();
            this.ResumeLayout(false);

        }

        private void cbFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbFilter.SelectedIndex != -1)
            {
                this.DataBind();
            }
        }

        private void btnCopyStyle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            StyleMaster mas = this.BindingSource.Current as StyleMaster;
            StyleMasterCopy frm = new StyleMasterCopy(mas);

            if (frm.ShowDialog() == DialogResult.OK)
            {
              
                //StyleMaster master = new StyleMaster();
                
                StyleMaster  master = (this.BindingSource.AddNew() as StyleMaster);
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
                     view.SetRowCellValue(e.RowHandle, view.Columns["ConfirmDate_IE"],null);
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
                if (!string.IsNullOrEmpty(_editon)&&int.Parse(_editon) > 1)
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }
        }

        private void adgvmaster_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {

            AdvBandedGridView View = sender as AdvBandedGridView;
            string _diff = View.GetRowCellDisplayText(e.RowHandle, View.Columns["JzDiff"]);

            if (e.Column.FieldName == "SizeYJ_Prod"&&_diff=="Y")
            {
                e.Appearance.ForeColor = Color.Red;
            }

        }



    }
}
