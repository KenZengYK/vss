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


namespace PH.LineBalanceII.UI
{
    public partial class StyleMasterListForm_bak : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        private DevExpress.XtraGrid.Columns.GridColumn gridColKHKH;
        private DevExpress.XtraGrid.Columns.GridColumn gridColPHKH;
        private DevExpress.XtraGrid.Columns.GridColumn gridColCPLB;
        private DevExpress.XtraGrid.Columns.GridColumn gridColSizeYJ;
        private DevExpress.XtraGrid.Columns.GridColumn gridColZH;
        private DevExpress.XtraGrid.Columns.GridColumn gridColEdition;
        private DevExpress.XtraGrid.Columns.GridColumn gridColIsUsed;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColAuditor;
        private ComboBoxEdit cbFilter;
        private LabelControl labelControl1;
        private DevExpress.XtraBars.BarButtonItem btnCopyStyle;
        private Panel panel1;
        #endregion
        private DevExpress.XtraGrid.Columns.GridColumn gcStatu_Disp;
        private DevExpress.XtraGrid.Columns.GridColumn gcStatu;
        private DevExpress.XtraGrid.Columns.GridColumn gcCust;
        private DevExpress.XtraGrid.Columns.GridColumn gcProc;
        private DevExpress.XtraGrid.Columns.GridColumn gcIEDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcProdConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn gcConfer_prod;
        private DevExpress.XtraGrid.Columns.GridColumn gcConfDt_Prod;
        private DevExpress.XtraGrid.Columns.GridColumn gcActiveSame;
        private DevExpress.XtraGrid.Columns.GridColumn gcCreate;
        private DevExpress.XtraGrid.Columns.GridColumn gcValidDate;

        public string OperType = "A";
        public StyleMasterListForm_bak()
        {
            //有所变化zrtagnow
            //Thread.CurrentThread.CurrentUICulture = CultureInfo.GetCultureInfo(Commands.ConvertLangeType(PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID));           

            InitializeComponent();

            this.AllowGridEdit = false;

        }

        public StyleMasterListForm_bak(string mtype)
        {
            InitializeComponent();
            
            OperType = mtype;
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
                this.objListGridView.Columns["AuditFlag"].OptionsColumn.AllowEdit = true;
                this.objListGridView.Columns["ActiveSame"].OptionsColumn.AllowEdit = true;
                this.objListGridView.Columns["ConfirmDate_IE"].OptionsColumn.AllowEdit = true;  //ValidDate
                this.objListGridView.Columns["ValidDate"].OptionsColumn.AllowEdit = true;
            }
            else
                this.objListGridView.Columns["AuditFlag_Prod"].OptionsColumn.AllowEdit = true;
        
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


            this.EditorTypeName = this.OperType.Equals("A") ? typeof(StyleMasterDetailForm).FullName : (this.OperType.Equals("E") ? typeof(StyleMasterDetailForm_E).FullName : typeof(StyleMasterDetailForm_F).FullName);
           

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

        private void InitializeComponent()
        {
            this.gridColKHKH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColPHKH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColCPLB = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColSizeYJ = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColZH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColEdition = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColIsUsed = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColAuditor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.cbFilter = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnCopyStyle = new DevExpress.XtraBars.BarButtonItem();
            this.gcStatu_Disp = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStatu = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCust = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcIEDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProdConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcConfer_prod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcConfDt_Prod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcActiveSame = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCreate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcValidDate = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFilter.Properties)).BeginInit();
            this.panel1.SuspendLayout();
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
            this.objListGridControl.Size = new System.Drawing.Size(1105, 542);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 55;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
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
            this.gcValidDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.objListGridView_CellValueChanged);
            // 
            // gridColKHKH
            // 
            this.gridColKHKH.Caption = "客戶款號";
            this.gridColKHKH.FieldName = "KHKH";
            this.gridColKHKH.Name = "gridColKHKH";
            this.gridColKHKH.OptionsColumn.AllowEdit = false;
            this.gridColKHKH.Visible = true;
            this.gridColKHKH.VisibleIndex = 1;
            this.gridColKHKH.Width = 87;
            // 
            // gridColPHKH
            // 
            this.gridColPHKH.Caption = "PH款號";
            this.gridColPHKH.FieldName = "PHKH";
            this.gridColPHKH.Name = "gridColPHKH";
            this.gridColPHKH.OptionsColumn.AllowEdit = false;
            this.gridColPHKH.Visible = true;
            this.gridColPHKH.VisibleIndex = 2;
            this.gridColPHKH.Width = 123;
            // 
            // gridColCPLB
            // 
            this.gridColCPLB.Caption = "産品類別";
            this.gridColCPLB.FieldName = "CPLB";
            this.gridColCPLB.Name = "gridColCPLB";
            this.gridColCPLB.Visible = true;
            this.gridColCPLB.VisibleIndex = 4;
            this.gridColCPLB.Width = 68;
            // 
            // gridColSizeYJ
            // 
            this.gridColSizeYJ.Caption = "曬士依據(基值) -IE";
            this.gridColSizeYJ.FieldName = "SizeYJ";
            this.gridColSizeYJ.Name = "gridColSizeYJ";
            this.gridColSizeYJ.Visible = true;
            this.gridColSizeYJ.VisibleIndex = 5;
            this.gridColSizeYJ.Width = 65;
            // 
            // gridColZH
            // 
            this.gridColZH.Caption = "組合";
            this.gridColZH.FieldName = "ZH";
            this.gridColZH.Name = "gridColZH";
            this.gridColZH.OptionsColumn.AllowEdit = false;
            this.gridColZH.Visible = true;
            this.gridColZH.VisibleIndex = 6;
            this.gridColZH.Width = 121;
            // 
            // gridColEdition
            // 
            this.gridColEdition.Caption = "版本";
            this.gridColEdition.FieldName = "Edition";
            this.gridColEdition.Name = "gridColEdition";
            this.gridColEdition.OptionsColumn.AllowEdit = false;
            this.gridColEdition.Visible = true;
            this.gridColEdition.VisibleIndex = 7;
            this.gridColEdition.Width = 32;
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
            this.gridColumn1.Caption = "IE部確認";
            this.gridColumn1.FieldName = "AuditFlag";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 11;
            this.gridColumn1.Width = 45;
            // 
            // gridColAuditor
            // 
            this.gridColAuditor.Caption = "IE部確認";
            this.gridColAuditor.FieldName = "Auditor";
            this.gridColAuditor.Name = "gridColAuditor";
            this.gridColAuditor.OptionsColumn.AllowEdit = false;
            this.gridColAuditor.Visible = true;
            this.gridColAuditor.VisibleIndex = 12;
            this.gridColAuditor.Width = 56;
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
            // gcStatu_Disp
            // 
            this.gcStatu_Disp.Caption = "狀態(來自于BOO1)";
            this.gcStatu_Disp.FieldName = "Statu_Disp";
            this.gcStatu_Disp.Name = "gcStatu_Disp";
            this.gcStatu_Disp.OptionsColumn.AllowEdit = false;
            this.gcStatu_Disp.Visible = true;
            this.gcStatu_Disp.VisibleIndex = 8;
            this.gcStatu_Disp.Width = 60;
            // 
            // gcStatu
            // 
            this.gcStatu.Caption = "狀態值";
            this.gcStatu.FieldName = "Statu";
            this.gcStatu.Name = "gcStatu";
            this.gcStatu.OptionsColumn.AllowEdit = false;
            // 
            // gcCust
            // 
            this.gcCust.Caption = "客戶號";
            this.gcCust.FieldName = "CustNo";
            this.gcCust.Name = "gcCust";
            this.gcCust.Visible = true;
            this.gcCust.VisibleIndex = 0;
            this.gcCust.Width = 68;
            // 
            // gcProc
            // 
            this.gcProc.Caption = "預設工場流程";
            this.gcProc.FieldName = "ProcDesc";
            this.gcProc.Name = "gcProc";
            this.gcProc.Visible = true;
            this.gcProc.VisibleIndex = 3;
            this.gcProc.Width = 50;
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
            this.gcIEDate.VisibleIndex = 13;
            this.gcIEDate.Width = 57;
            // 
            // gcProdConfirm
            // 
            this.gcProdConfirm.Caption = "縫合部門確認";
            this.gcProdConfirm.FieldName = "AuditFlag_Prod";
            this.gcProdConfirm.Name = "gcProdConfirm";
            this.gcProdConfirm.OptionsColumn.AllowEdit = false;
            this.gcProdConfirm.Visible = true;
            this.gcProdConfirm.VisibleIndex = 14;
            this.gcProdConfirm.Width = 45;
            // 
            // gcConfer_prod
            // 
            this.gcConfer_prod.Caption = "縫合部門確認者";
            this.gcConfer_prod.FieldName = "ConfirmByProd";
            this.gcConfer_prod.Name = "gcConfer_prod";
            this.gcConfer_prod.OptionsColumn.AllowEdit = false;
            this.gcConfer_prod.Visible = true;
            this.gcConfer_prod.VisibleIndex = 15;
            this.gcConfer_prod.Width = 69;
            // 
            // gcConfDt_Prod
            // 
            this.gcConfDt_Prod.Caption = "縫合部門確認日期";
            this.gcConfDt_Prod.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.gcConfDt_Prod.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcConfDt_Prod.FieldName = "ConfirmDate_Prod";
            this.gcConfDt_Prod.Name = "gcConfDt_Prod";
            this.gcConfDt_Prod.OptionsColumn.AllowEdit = false;
            this.gcConfDt_Prod.Visible = true;
            this.gcConfDt_Prod.VisibleIndex = 16;
            // 
            // gcActiveSame
            // 
            this.gcActiveSame.Caption = "不同版本同時活躍";
            this.gcActiveSame.FieldName = "ActiveSame";
            this.gcActiveSame.Name = "gcActiveSame";
            this.gcActiveSame.OptionsColumn.AllowEdit = false;
            this.gcActiveSame.Visible = true;
            this.gcActiveSame.VisibleIndex = 10;
            // 
            // gcCreate
            // 
            this.gcCreate.Caption = "建立日期";
            this.gcCreate.FieldName = "CreateTime";
            this.gcCreate.Name = "gcCreate";
            // 
            // gcValidDate
            // 
            this.gcValidDate.Caption = "有效期至";
            this.gcValidDate.FieldName = "ValidDate";
            this.gcValidDate.Name = "gcValidDate";
            this.gcValidDate.Visible = true;
            this.gcValidDate.VisibleIndex = 9;
            this.gcValidDate.Width = 62;
            // 
            // StyleMasterListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel1);
            this.Name = "StyleMasterListForm";
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
                master.AuditFlag = mas.AuditFlag;
                master.Auditor = mas.Auditor;
                master.Ipack = mas.Ipack;
                master.BestLineValue = mas.BestLineValue;
                master.Selected = mas.Selected;
                master.Edition = master.GetNewEdition();

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
                    // view.SetRowCellValue(e.RowHandle, view.Columns["ConfirmDate_IE"], DateTime.Now);
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

           

        }


    }
}
