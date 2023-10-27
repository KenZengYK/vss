using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Windows.Forms;
using DevExpress.XtraBars;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Grid.Drawing;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using PH.LineBalanceII.BO;
using PH.MachineLayoutChart;
using PH.Platform.Misc.BO.ErrorMessages;


using PH.Platform.BO;
using PH.Platform.Misc.BO;
using DevExpress.XtraEditors.Controls;
using PH.Platform.AuthMgr.BO;
using PH.LineBalanceII.UI.Reports;

namespace PH.LineBalanceII.UI
{
    public partial class StyleMasterDetailForm_F : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        #region 自動變量
        private BarButtonItem barToolbarsListItemUndo;
        private BarButtonItem barToolbars_Print;
        private BarButtonItem barToolbars_ExportGraph;
        private BarButtonItem barToolbarsListItemCal;
        public DevExpress.XtraBars.BarManager barManager1;
        private IContainer components;
        public DevExpress.XtraBars.Bar barToolBarYH;
        public DevExpress.XtraBars.BarEditItem barToolbarsListItemAutoOptimize;
        public DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit ItemCheckAutoOptimize;
        public DevExpress.XtraBars.BarEditItem barToolbarsListItemAutoBisOptimize;
        public DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit ItemCheckAutoBisOptimize;
        public DevExpress.XtraBars.BarEditItem barToolbarsListItemAutoJSC;
        public DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit ItemCheckAutoJSC;
        public DevExpress.XtraBars.Bar barToolbar;
        public DevExpress.XtraBars.Bar bar3;
        public DevExpress.XtraBars.BarDockControl barDockControl1;
        public DevExpress.XtraBars.BarDockControl barDockControl2;
        public DevExpress.XtraBars.BarDockControl barDockControl3;
        public DevExpress.XtraBars.BarDockControl barDockControl4;
        public DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        public DevExpress.XtraBars.BarEditItem barToolbarsListItemAutoPJH;
        public DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit ItemCheckAutoPJH;
        public DevExpress.XtraBars.BarButtonItem barToolbarsListItemFixed;
        public DevExpress.XtraBars.BarButtonItem barToolbarsListItemMovePrevious;
        public DevExpress.XtraBars.BarButtonItem barToolbarsListItemMoveNext;
        public DevExpress.XtraBars.BarButtonItem barToolbarsListItemDelete;
        public DevExpress.XtraBars.BarButtonItem barToolbarsListItemCopy;
        public DevExpress.XtraBars.BarButtonItem barToolbarsListItemCut;
        public DevExpress.XtraBars.BarButtonItem barToolbarsListItemPaste;
        public DevExpress.XtraBars.BarButtonItem barToolbarsListItemCOp;
        public DevExpress.XtraBars.BarButtonItem barToolbarsListItemJOp;
        public DevExpress.XtraBars.BarButtonItem barToolbarsListImportData;
        public System.Windows.Forms.Label lblCustomerStyle;
        public System.Windows.Forms.Label lblPHStyle;
        public DevExpress.XtraEditors.TextEdit txtKHKH;
        public DevExpress.XtraEditors.TextEdit txtCPLB;
        public System.Windows.Forms.Label lblCategory;
        public System.Windows.Forms.Label lblSize;
        public DevExpress.XtraEditors.TextEdit txtSizeYJ;
        public System.Windows.Forms.Label lblZH;
        public System.Windows.Forms.Label lblEdition;
        public DevExpress.XtraEditors.TextEdit txtEdition;
        public DevExpress.XtraEditors.ComboBoxEdit txtZH;
        public DevExpress.XtraEditors.ComboBoxEdit txtPHKH;
        public System.Windows.Forms.Label lblValid;
        private DevExpress.XtraBars.Docking.DockManager dockManager;
        private DevExpress.XtraBars.Docking.DockPanel dockPanelSummary;
        private DevExpress.XtraBars.Docking.ControlContainer dockPanel1_Container;
        private DevExpress.XtraBars.Docking.DockPanel dockPanelMemo;
        private DevExpress.XtraBars.Docking.ControlContainer dockPanel2_Container;
        private DevExpress.XtraBars.Docking.DockPanel dockPanel3;
        private DevExpress.XtraBars.Docking.ControlContainer dockPanel3_Container;
        private DevExpress.XtraBars.Docking.AutoHideContainer hideContainerBottom;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        public System.Windows.Forms.Label lblIEConfirm;
        private System.Windows.Forms.Label lblCreator;
        private System.Windows.Forms.Label lblCreateDT;
        public System.Windows.Forms.Label lblWorkShopConfirm;
        public System.Windows.Forms.Label lblDate;
        public System.Windows.Forms.Label lblPrepareMan;
        public System.Windows.Forms.Label lblDate1;
        public System.Windows.Forms.Label lblDate2;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel2;
        public System.Windows.Forms.Label lblExplain;
        public System.Windows.Forms.Label lblConfirm;
        public System.Windows.Forms.Label lblSplit;
        public System.Windows.Forms.Label lblMerge;
        public System.Windows.Forms.Label lblBest;
        public System.Windows.Forms.Label lblConfirmOp2;
        public System.Windows.Forms.Label lblConfirmOp1;
        public System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label22;
        private DevExpress.XtraGrid.GridControl gridNoCJGZW;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBandNonLB;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandColNonLBCode;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandColNonLBType;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandColNonLBCount;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand24;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn7;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn8;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn9;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand25;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn10;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn11;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn12;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand26;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn13;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn14;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn15;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn16;
        private System.Windows.Forms.TableLayoutPanel tableSum;
        public System.Windows.Forms.Label lblNonLB;
        public System.Windows.Forms.Label lblJKLM1_Z;
        public System.Windows.Forms.Label lblJKLM1_Y;
        public System.Windows.Forms.Label lblGSD;
        public System.Windows.Forms.Label lblAGroup;
        public System.Windows.Forms.Label lblBGroup;
        public System.Windows.Forms.Label lblCGroup;
        public System.Windows.Forms.Label lblSection;
        public System.Windows.Forms.Label lblWorkforce;
        public System.Windows.Forms.Label lblWorkStation;
        public System.Windows.Forms.Label lblMaxSAH;
        public System.Windows.Forms.Label lblMinSAH;
        public System.Windows.Forms.Label lblLBUsage;
        public System.Windows.Forms.Label lblUsage;
        public System.Windows.Forms.Label lblJKLM1_O;
        public System.Windows.Forms.Label lblJKLM1_R;
        public System.Windows.Forms.Label lblJKLM2_O;
        public System.Windows.Forms.Label lblJKLM3_O;
        public System.Windows.Forms.Label lblJKLM4_O;
        public System.Windows.Forms.Label lblJKLM6_O;
        public System.Windows.Forms.Label lblJKLM6_R;
        public System.Windows.Forms.Label lblJKLM7_R;
        public System.Windows.Forms.Label lblJKLM7_O;
        public System.Windows.Forms.Label lblJKLM9_O;
        public System.Windows.Forms.Label lblJKLM9_R;
        public System.Windows.Forms.Label lblJKLM10_O;
        public System.Windows.Forms.Label lblJKLM10_R;
        public System.Windows.Forms.Label lblJKLM13_R;
        public System.Windows.Forms.Label lblJKLM14_O;
        public System.Windows.Forms.Label lblJKLM14_R;
        public System.Windows.Forms.Label lblJKLM8_O;
        public System.Windows.Forms.Label lblJKLM8_R;
        public System.Windows.Forms.Label lblJKLM2_Y;
        public System.Windows.Forms.Label lblJKLM2_Z;
        public System.Windows.Forms.Label lblJKLM3_Y;
        public System.Windows.Forms.Label lblJKLM4_Y;
        public System.Windows.Forms.Label lblJKLM6_Y;
        public System.Windows.Forms.Label lblJKLM7_Y;
        public System.Windows.Forms.Label lblJKLM8_Y;
        public System.Windows.Forms.Label lblJKLM9_Y;
        public System.Windows.Forms.Label lblJKLM10_Y;
        public System.Windows.Forms.Label lblJKLM13_Y;
        public System.Windows.Forms.Label lblJKLM14_Y;
        public System.Windows.Forms.Label lblJKLM3_Z;
        public System.Windows.Forms.Label lblJKLM4_Z;
        public System.Windows.Forms.Label lblJKLM6_Z;
        public System.Windows.Forms.Label lblJKLM7_Z;
        public System.Windows.Forms.Label lblJKLM8_Z;
        public System.Windows.Forms.Label lblJKLM9_Z;
        public System.Windows.Forms.Label lblJKLM10_Z;
        public System.Windows.Forms.Label lblJKLM13_Z;
        public System.Windows.Forms.Label lblJKLM14_Z;
        public System.Windows.Forms.Label lblJSC;
        public System.Windows.Forms.Label lblPJH;
        public System.Windows.Forms.Label lblCJLB;
        public System.Windows.Forms.Label label107;
        public System.Windows.Forms.Label lblMinZJ;
        public System.Windows.Forms.Label lblLine;
        public System.Windows.Forms.Label lblJKLM13_O;
        public System.Windows.Forms.Label lblJKLM3_R;
        public System.Windows.Forms.Label lblJKLM4_R;
        public System.Windows.Forms.Label lblJKLM21_O;
        public System.Windows.Forms.Label lblJKLM21_R;
        public System.Windows.Forms.Label lblJKLM21_Y;
        public System.Windows.Forms.Label lblJKLM21_Z;
        public System.Windows.Forms.Label lblJKLM2_R;
        public System.Windows.Forms.Label lblFloater;
        public System.Windows.Forms.Label lblSumFloater;
        public System.Windows.Forms.Label lblDetail;
        private TableLayoutPanel tableLayoutPanel3;
        private BarButtonItem barToolbarsListItemPrint;
        private BarButtonItem btnExportGraph;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit2;




        #endregion
        private Label lblBestLB;
        private Label lblJKLM20_Y;
        private string Langid = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
        private StyleProcedureListForm_F styleProcedureListForm_F1;
        private DevExpress.XtraEditors.TextEdit edtCreater;
        private DevExpress.XtraEditors.TextEdit edtCreateTime;
        private DevExpress.XtraEditors.TextEdit edtUpdater;
        private DevExpress.XtraEditors.TextEdit edtUpdateTime;
        private DevExpress.XtraEditors.LabelControl lblCreater;
        private DevExpress.XtraEditors.LabelControl lblCreateTime;
        private DevExpress.XtraEditors.LabelControl lblUpdater;
        private DevExpress.XtraEditors.LabelControl lblUpdateTime;
        private Label lblStatu;
        private Label lblCust;
        private DevExpress.XtraEditors.TextEdit txtCust;
        private DevExpress.XtraEditors.ComboBoxEdit cbbFac;
        private Label lblFac;
        private DevExpress.XtraEditors.LookUpEdit lueStatu;
        private DevExpress.XtraEditors.ComboBoxEdit cbbProc;
        private Label lblProc;
        private DevExpress.XtraEditors.TextEdit edtJZ_Prod;
        private Label lblJZ_Prod;
        private Label lblConf_IE;
        private Label lblDate_IE;
        private Label lblConfirm_Prod;
        private Label lblDate_Prod;
        private DevExpress.XtraEditors.DateEdit deValid;
        private BarButtonItem barButtonItem1;



        #region 私有變量

        /// 當前StyleMaster
        /// <summary>
        /// 當前StyleMaster
        /// </summary>
        public StyleMaster Master
        {
            get
            {
                StyleMaster obj = ((StyleMaster)this.BindingSource.Current);
                return obj;
            }
        }

        /// 當前StyleProcedureListForm
        /// <summary>
        /// 當前StyleProcedureListForm
        /// </summary>
        public StyleProcedureListForm_F ChildStyleProcedureListForm
        {
            get
            {
                return this.styleProcedureListForm_F1;


                //zrtag newplatform
                //for (int i = 0; i < this.ChildList.Count; i++)
                //{
                //    if (ChildList[i] is StyleProcedureListForm)
                //    {
                //        myStyleProcedureListForm = (StyleProcedureListForm)this.ChildList[i];
                //    }
                //}

                //return myStyleProcedureListForm;
            }
        }

        /// 子頁面中的StyleProcedure_F所有數據
        /// <summary>
        /// 子頁面中的StyleProcedure_F所有數據
        /// </summary>
        public EntitySet<StyleProcedure_F> CurStyleProcedureList
        {
            get
            {
                System.Data.Linq.EntitySet<StyleProcedure_F> Infos = new EntitySet<StyleProcedure_F>();

                for (int i = 0; i < this.ChildStyleProcedureListForm.BindingSource.Count; i++)
                {
                    Infos.Add((StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource[i]);
                }
                return Infos;
            }

        }

        /// 保存undo功能的信息
        /// <summary>
        /// 保存undo功能的信息
        /// </summary>
        private List<StyleMaster> undolistStyleMaster;

        #endregion

        public StyleMasterDetailForm_F()
        {
            //Thread.CurrentThread.CurrentUICulture = CultureInfo.GetCultureInfo(Commands.ConvertLangeType(PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID));           

            InitializeComponent();


            this.barToolbar.Visible = false;
            this.barToolBarYH.Visible = false;

            undolistStyleMaster = new List<StyleMaster>();

        }

        #region override 方法
        string CurrentUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;

        public void BindStatus()
        {
            Misc_DataDictionaryList mislist = new Misc_DataDictionaryList();
            IList<Misc_DataDictionary> _dicts = mislist.GetDataByCondition(p => p.DataType == "PH.SMB.Statu").OrderBy(m => m.SortID).ToList();
            this.lueStatu.Properties.DataSource = _dicts;
            this.lueStatu.Properties.DisplayMember = "DataName";
            this.lueStatu.Properties.ValueMember = "DataCode";

            //string valueMamber = lueStatu.Properties.ValueMember;
            //LookUpColumnInfo columnInfo = lueStatu.Properties.Columns[1];
            //columnInfo.SortOrder = DevExpress.Data.ColumnSortOrder.Ascending;
            ////int visibleIndex = lueStatu.Properties.Columns.VisibleIndexOf(columnInfo);
            //lueStatu.Properties.SortColumnIndex = 1;

            //this.lueStatu.Properties.DataSource = _dicts;

            //bind process
            IList<Misc_DataDictionary> _dict2 = mislist.GetDataByCondition(p => p.DataType == "PH.SMB.Process").OrderBy(m => m.DataNameCN).ToList();
            // string[] aryRecrole = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "cbbRecrole").Select(S => S.Name).Distinct().ToArray();
            string[] ary1 = _dict2.Select(s => s.DataCode).ToArray();

            cbbProc.Properties.Items.Clear();
            if (_dict2 != null)
            {
                cbbProc.Properties.Items.AddRange(ary1);
                cbbProc.SelectedIndex = 0;
            }

        }

        public override void DataBind()
        {
            base.DataBind();
            BindStatus();
            Auth_UserRole aur = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.Auth_UserRole.Where(p => p.RoleName == "LineBalanceII_Factory").FirstOrDefault();
            if (aur != null || PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                // CanEditFac = true;
                lblFac.Visible = true;
                cbbFac.Visible = true;

            }


            this.barToolbarsListItemUndo.Enabled = false;
            this.hideContainerBottom.Enabled = true;


            if (this.BindingSource == null || this.BindingSource.DataSource == null || this.BindingSource.Current == null ||
               (this.BindingSource.Current as StyleMaster).StyleProcedure_Fs.Count == 0)
            {
                return;
            }

            this.AddUndoList();

            this.InitPhase();
            this.CalSummary();

            //zrtag
            //this.CompositionDetailListForm1.BindingSource.DataSource = this.Master.StyleProcedure_Fs;
            //this.styleProcedureListForm_F1.BindingSource.DataSource = from a in this.Master.StyleProcedure_Fs
            //                                                          orderby a.XH
            //                                                          select a;

            string OperType = (this.PrevForm as StyleMasterListForm).OperType;
            if (OperType == "PB")
            {
                this.styleProcedureListForm_F1.BindingSource.DataSource = this.Master.StyleProcedure_Fs.Where(p => p.TeamGSD == "P" || p.TeamGSD == "B").OrderBy(p => p.XH);
            }
            else
            {
                this.styleProcedureListForm_F1.BindingSource.DataSource = this.Master.StyleProcedure_Fs.Where(p => p.TeamGSD == OperType).OrderBy(p => p.XH);
            }


            this.lblCreator.Text = this.Master.CreateBy;
            this.lblCreateDT.Text = this.Master.CreateTime.HasValue ? this.Master.CreateTime.GetValueOrDefault().ToShortDateString() : "";
            this.lblConf_IE.Text = this.Master.Auditor;
            this.lblDate_IE.Text = this.Master.ConfirmDate_IE.HasValue ? this.Master.ConfirmDate_IE.GetValueOrDefault().ToShortDateString() : "";

            this.lblConfirm_Prod.Text = this.Master.ConfirmByProd;
            this.lblDate_Prod.Text = this.Master.ConfirmDate_Prod.HasValue ? this.Master.ConfirmDate_Prod.GetValueOrDefault().ToShortDateString() : "";

            this.ControlAllowEdit();
        }

        public void ControlAllowEdit()
        {
            string OperAllowEdit = (this.PrevForm as StyleMasterListForm).OperAllowEdit;
            this.barBtnAddNew.Visibility = OperAllowEdit == "ReadOnly" ? BarItemVisibility.Never : BarItemVisibility.Always;
            this.barBtnDel.Visibility = this.barBtnAddNew.Visibility;
            this.barBtnEdit.Visibility = this.barBtnAddNew.Visibility;
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.barToolbar.Visible = this.IsEditting || this.IsNew;
            this.barToolBarYH.Visible = this.barToolbar.Visible;

            this.edtCreater.Properties.ReadOnly = true; this.edtCreateTime.Properties.ReadOnly = true;
            this.edtUpdater.Properties.ReadOnly = true; this.edtUpdateTime.Properties.ReadOnly = true;

            if (this.IsNew)
            {
                this.cbbFac.SelectedIndex = 0;
            }

            if (IsEditting)
            {
                this.styleProcedureListForm_F1.AllowGridEdit = true;
                styleProcedureListForm_F1.AllowAddRow = false;

                // this.styleProcedureListForm1.objListGridView.Columns["equation"].OptionsColumn.AllowEdit = true;
            }
            else
            {
                styleProcedureListForm_F1.AllowGridEdit = false;
                styleProcedureListForm_F1.AllowAddRow = false;
            }

        }

        private bool CheckPage()
        {
            if (this.txtKHKH.Text.Trim() == "")
            {

                MessageBox.Show("Can not save ! please write \"Cust Style\" value");
                return false;

            }
            else if (this.txtPHKH.Text.Trim() == "")
            {
                MessageBox.Show("Can not save ! please write \"ph style\" value");
                return false;

            }
            else if (this.txtZH.Text == "")
            {
                MessageBox.Show("Can not save ! please write \"Class\" value");
                return false;

            }
            else if (this.txtEdition.Text == "")
            {
                MessageBox.Show("Can not save ! please write \"Version\" value");
                return false;
            }
            else
            {
                return true;
            }

        }



        protected override void SaveCurrent()
        {
            this.txtEdition.Focus();
            this.txtKHKH.Focus();
            //this.Master.CurrentBindingSource.EndEdit();
            //(this.BindingSource.
            //this.BindingSource.EndEdit();

            if (!CheckPage())
            {
                return;
            }


            //if (this.IsNew)
            //{
            //    this.IsNew = false;
            //    this.Master.Edition = this.Master.GetNewEdition();
            //}

            if (this.IsNew)
            {
                this.IsNew = false;
                this.Master.Edition = this.Master.GetNewEdition();
                this.edtCreater.Text = CurrentUser;
                this.edtCreateTime.Text = DateTime.Now.ToString();
            }
            else
            {
                this.edtUpdater.Text = CurrentUser;
                this.edtUpdateTime.Text = DateTime.Now.ToString();
            }

            //MessageBox.Show(this.Master.Edition.ToString());

            base.SaveCurrent();
        }

        protected override void OnClickSaveAndReturn()
        {
            if (!CheckPage())
            {
                return;
            }

            if (this.IsNew)
            {
                this.Master.Edition = this.Master.GetNewEdition();
            }
            base.OnClickSaveAndReturn();
        }

        protected override void OnClickEdit()
        {
            base.OnClickEdit();
            this.barToolbar.Visible = true;
            this.barToolBarYH.Visible = true;

        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            this.barToolbar.Visible = false;
            this.barToolBarYH.Visible = false;
        }

        #endregion

        #region 鎖定列功能
        private void barToolbarsListItemFixed_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GridFixedColumnForm fGridFixedColumn = new GridFixedColumnForm(this.ChildStyleProcedureListForm.gridView1);
            fGridFixedColumn.SideProgramid = this.SideProgramID; //add by joseph
            fGridFixedColumn.FileID = this.FileID;
            fGridFixedColumn.FormName = this.FormName;
            fGridFixedColumn.Langid = this.Langid;

            fGridFixedColumn.ShowDialog();
        }
        #endregion

        #region 上移

        /// <summary>
        /// 上移一行
        /// </summary>
        private void MoveUp(string type)
        {
            int index = GetSelectRowIndex(); // this.ChildStyleProcedureListForm.BindingSource.IndexOf(this.ChildStyleProcedureListForm.BindingSource.Current);// this.ChildStyleProcedureListForm.BindingSource.Current);
            if (index < 0) return;

            StyleProcedure_F CurInfo = (StyleProcedure_F)this.styleProcedureListForm_F1.BindingSource.Current;
            StyleProcedure_F PriorInfo = (StyleProcedure_F)this.styleProcedureListForm_F1.BindingSource[index - 1];

            int CurRowXH = (CurInfo.XH ?? 0);
            int PriorRowXH = (PriorInfo.XH ?? 0);

            CurInfo.XH = PriorRowXH;
            PriorInfo.XH = CurRowXH;

            if (CurInfo.CFlag != null)
                CurInfo.CFlag = (Convert.ToInt32(CurInfo.CFlag) - 1).ToString();
            if (PriorInfo.CFlag != null)
                PriorInfo.CFlag = (Convert.ToInt32(PriorInfo.CFlag) + 1).ToString();


            /*
             1.夹块上移,上一行是夹操作
             2.夹块上移,上一行是单行           
             3.單行上移,上一行是夾操作
             4.             
             */
            if (type == "1")
            {
                CurInfo.JFlag = (Convert.ToInt32(CurInfo.JFlag) - 1).ToString();
                PriorInfo.JFlag = (Convert.ToInt32(PriorInfo.JFlag) + 1).ToString();
            }
            if (type == "2")
            {
                CurInfo.JFlag = (Convert.ToInt32(CurInfo.JFlag) - 1).ToString();
            }
            if (type == "3")
            {
                PriorInfo.JFlag = (Convert.ToInt32(PriorInfo.JFlag) + 1).ToString();
            }


            this.ChildStyleProcedureListForm.gridView1.FocusedRowHandle = index - 1;
            this.RefreshPageData();
        }

        private void barToolbarsListItemMovePrevious_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (!this.BeforeMoveProcess(MoveType.MoveUp))
            {

                //MessageBox.Show("當前行不能上移。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgCannotMoveup", this.Langid);
                return;
            }

            AddUndoList();


            List<int> JOperationList = new List<int>();
            if (this.RowHasJOperation(GridRowFlag.CurrentRow, ref JOperationList)) //整塊上移(選中的是有夾操作的行)
            {
                List<int> PriorJOperationList = new List<int>();
                if (this.RowHasJOperation(GridRowFlag.PriorRow, ref PriorJOperationList)) //上一行是夾操作的行
                {
                    foreach (int i in JOperationList)
                    {
                        this.ChildStyleProcedureListForm.gridView1.FocusedRowHandle = i - 1;
                        for (int j = 0; j < PriorJOperationList.Count; j++)
                        {
                            this.MoveUp("1");
                        }
                    }
                }
                else
                {
                    foreach (int i in JOperationList)
                    {
                        this.ChildStyleProcedureListForm.gridView1.FocusedRowHandle = i - 1;
                        this.MoveUp("2");
                    }
                }
            }
            else //單行上移
            {
                List<int> PriorJOperationList = new List<int>();
                if (this.RowHasJOperation(GridRowFlag.PriorRow, ref PriorJOperationList)) //上一行是夾操作的行
                {
                    for (int i = 0; i < PriorJOperationList.Count; i++)
                    {
                        this.MoveUp("3");
                    }
                }
                else
                {
                    this.MoveUp("4");
                }
            }

            RefreshPageData();


        }
        #endregion

        #region 上移下移中用到的方法

        //private void OptionCFlagJFlagValue()
        //{
        //    string jflag="",cflag="";

        //    foreach (StyleProcedure_F obj in this.Master.StyleProcedure_Fs)
        //    {
        //        if (obj.JFlag != null || obj.JFlag != "")
        //        {
        //            if (obj.JFlag != obj.XH.ToString())
        //            {
        //                if (jflag == "")
        //                {
        //                    obj.JFlag = obj.XH.ToString();
        //                    jflag = obj.XH.ToString();
        //                }
        //                else
        //                {
        //                    obj.JFlag = jflag;
        //                }
        //            }
        //        }

        //    }


        //}

        /// <summary>
        /// 判斷指定行是否有夾操作並得到夾操作的序號集合
        /// </summary>
        /// <param name="AGridRowFlag">網格行標志</param>
        /// <param name="AJOperationXHList">有夾操作的行的序號的集合</param>
        /// <returns></returns>
        private bool RowHasJOperation(GridRowFlag AGridRowFlag, ref List<int> AJOperationXHList)
        {
            //System.Data.Linq.EntitySet<StyleProcedure_F> Infos = (this.BindingSource.Current as StyleMaster).StyleProcedure_Fs;
            System.Data.Linq.EntitySet<StyleProcedure_F> Infos = this.CurStyleProcedureList;


            int index = GetSelectRowIndex(); //this.ChildStyleProcedureListForm.BindingSource.IndexOf(this.ChildStyleProcedureListForm.BindingSource.Current);// this.ChildStyleProcedureListForm.BindingSource.Current); //默認是當前行
            StyleProcedure_F CurInfo = Infos[index];

            if (AGridRowFlag == GridRowFlag.PriorRow)
            {
                index -= 1;
            }
            else if (AGridRowFlag == GridRowFlag.NextRow)
            {
                index += 1;
            }
            CurInfo = Infos[index];
            if (!string.IsNullOrEmpty(CurInfo.JFlag))
            {
                string JXH = CurInfo.JFlag;
                foreach (StyleProcedure_F obj in Infos)
                {
                    if (!string.IsNullOrEmpty(obj.JFlag) && (obj.JFlag == null ? "" : obj.JFlag) == JXH)
                    {
                        AJOperationXHList.Add((obj.XH ?? 0));
                    }
                }
            }
            return AJOperationXHList.Count > 0;
        }

        /// <summary>
        /// 如果當前行是夾過的行,上移操作時,將光標指到夾操作的第一個行, 下移操作時,將光標指到夾操作的最後一行
        /// </summary>
        /// <param name="AMoveType"></param>
        /// <returns></returns>
        private bool BeforeMoveProcess(MoveType AMoveType)
        {
            System.Data.Linq.EntitySet<StyleProcedure_F> Infos = this.CurStyleProcedureList;
            int index = GetSelectRowIndex(); //this.ChildStyleProcedureListForm.BindingSource.IndexOf(this.ChildStyleProcedureListForm.BindingSource.Current);// this.ChildStyleProcedureListForm.BindingSource.Current);
            StyleProcedure_F CurInfo = Infos[index];
            string SaveJFlagValue = CurInfo.JFlag;

            //如果當前行是夾過的行,將光標指到夾操作的第一個行
            if (AMoveType == MoveType.MoveUp)
            {
                StyleProcedure_F PriorInfo = Infos[index - 1];
                while (SaveJFlagValue != "" && SaveJFlagValue == ((PriorInfo.JFlag == null ? "" : PriorInfo.JFlag)))
                {
                    SaveJFlagValue = CurInfo.JFlag;
                    index -= 1;
                    this.ChildStyleProcedureListForm.gridView1.FocusedRowHandle = index;
                    CurInfo = Infos[index];
                    if (index == 0)
                    {
                        return false;
                    }
                    PriorInfo = Infos[index - 1];
                }
                return true;
            }
            else if (AMoveType == MoveType.MoveDown)
            {
                StyleProcedure_F NextInfo = Infos[index + 1];
                while (SaveJFlagValue != "" && SaveJFlagValue == ((NextInfo.JFlag == null ? "" : NextInfo.JFlag)))
                {
                    SaveJFlagValue = CurInfo.JFlag;
                    index += 1;
                    this.ChildStyleProcedureListForm.gridView1.FocusedRowHandle = index;
                    CurInfo = Infos[index];
                    if (index == Infos.Count - 1)
                    {
                        return false;
                    }
                    NextInfo = Infos[index + 1];
                }
                return true;
            }
            return true;
        }
        #endregion

        #region 下移

        /// <summary>
        /// 當前行移動到下一行
        /// </summary>
        private void MoveDown(string type)
        {
            int index = GetSelectRowIndex(); //this.ChildStyleProcedureListForm.BindingSource.IndexOf(this.ChildStyleProcedureListForm.BindingSource.Current);
            if (index < 0) return;

            StyleProcedure_F CurInfo = (StyleProcedure_F)this.styleProcedureListForm_F1.BindingSource.Current;
            StyleProcedure_F NextInfo = (StyleProcedure_F)this.styleProcedureListForm_F1.BindingSource[index + 1];

            int CurRowXH = (CurInfo.XH ?? 0);
            int NextRowXH = (NextInfo.XH ?? 0);

            CurInfo.XH = NextRowXH;
            NextInfo.XH = CurRowXH;


            if (CurInfo.CFlag != null)
                CurInfo.CFlag = (Convert.ToInt32(CurInfo.CFlag) + 1).ToString();
            if (NextInfo.CFlag != null)
                NextInfo.CFlag = (Convert.ToInt32(NextInfo.CFlag) - 1).ToString();


            /*
             1.夹块下移,下一行是夹操作
             2.夹块下移,下一行是单行           
             3.單行下移,下一行是夾操作
             4.             
             */
            if (type == "1")
            {
                CurInfo.JFlag = (Convert.ToInt32(CurInfo.JFlag) + 1).ToString();
                NextInfo.JFlag = (Convert.ToInt32(NextInfo.JFlag) - 1).ToString();
            }
            if (type == "2")
            {
                NextInfo.JFlag = (Convert.ToInt32(NextInfo.JFlag) + 1).ToString();
            }
            if (type == "3")
            {
                NextInfo.JFlag = (Convert.ToInt32(NextInfo.JFlag) - 1).ToString();
            }


            this.ChildStyleProcedureListForm.gridView1.FocusedRowHandle = index + 1;
            this.RefreshPageData();
        }

        private void barToolbarsListItemMoveNext_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (!this.BeforeMoveProcess(MoveType.MoveDown))
            {
                //MessageBox.Show("當前行不能下移。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgCannotMovedown", this.Langid);
                return;
            }

            AddUndoList();


            ////zttag this.AddUndoQueue(this.GetSaveList(), "下移"); 
            List<int> JOperationList = new List<int>();
            if (this.RowHasJOperation(GridRowFlag.CurrentRow, ref JOperationList)) //整塊下移(選中的是有夾操作的行)
            {
                List<int> NextJOperationList = new List<int>();
                if (this.RowHasJOperation(GridRowFlag.NextRow, ref NextJOperationList)) //下一行是夾操作的行
                {
                    foreach (int i in JOperationList)
                    {
                        this.ChildStyleProcedureListForm.gridView1.FocusedRowHandle = JOperationList[0] - 1;
                        for (int j = 1; j <= NextJOperationList.Count + 1; j++)
                        {
                            this.MoveDown("1");
                        }
                    }
                }
                else
                {
                    foreach (int i in JOperationList)
                    {
                        this.ChildStyleProcedureListForm.gridView1.FocusedRowHandle = JOperationList[0] - 1;
                        for (int j = 0; j < JOperationList.Count; j++)
                        {
                            this.MoveDown("2");
                        }
                    }
                }
            }
            else //單行下移
            {
                List<int> NextJOperationList = new List<int>();
                if (this.RowHasJOperation(GridRowFlag.NextRow, ref NextJOperationList)) //下一行是夾操作的行
                {
                    for (int i = 0; i < NextJOperationList.Count; i++)
                    {
                        this.MoveDown("3");
                    }
                }
                else
                {
                    this.MoveDown("4");
                }
            }

        }
        #endregion

        #region 刪除
        private void barToolbarsListItemDelete_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            // if (MessageBox.Show("您是否確認刪除當前行?", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            if (ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgdeleteconfirm", this.Langid) == DialogResult.Yes)
            {
                AddUndoList();

                (this.DataContext as LineBalanceIIDataContext).StyleProcedure_Fs.DeleteOnSubmit(this.ChildStyleProcedureListForm.BindingSource.Current as StyleProcedure_F);
                this.Master.StyleProcedure_Fs.Remove(this.ChildStyleProcedureListForm.BindingSource.Current as StyleProcedure_F);
                this.ChildStyleProcedureListForm.BindingSource.RemoveCurrent();
                this.ReCalculateXH();
            }

        }
        #endregion

        #region 得到保存前需要Undo的object
        private StyleMaster GetSaveList()
        {
            //System.Data.Linq.EntitySet <StyleProcedure_F> SaveList = new System.Data.Linq.EntitySet <StyleProcedure_F>();
            //foreach (StyleProcedure_F obj in (this.BindingSource.Current as StyleMaster).StyleProcedure_Fs)
            //{
            //    StyleProcedure_F SaveStyleProcedure = new StyleProcedure_F();
            //    obj.CloneTo(SaveStyleProcedure);
            //    SaveList.Add(SaveStyleProcedure);
            //}
            //StyleMaster SaveObject = new StyleMaster();
            //SaveObject.KHKH = this.Master.KHKH;
            //SaveObject.PHKH = this.Master.PHKH;
            //SaveObject.BKH = this.Master.BKH;
            //SaveObject.CPLB = this.Master.CPLB;
            //SaveObject.SizeYJ = this.Master.SizeYJ;
            //SaveObject.ZH = this.Master.ZH;
            //SaveObject.Edition = this.Master.Edition;
            //SaveObject.IsUsed = this.Master.IsUsed;
            //SaveObject.Phase = this.Master.Phase;
            //SaveObject.Auditor = this.Master.Auditor;
            //SaveObject.Infos = SaveList;
            //return SaveObject;

            StyleMaster obj = new StyleMaster();
            this.Master.CloneTo(obj);
            return obj;
        }
        #endregion

        #region 重算序號
        private void ReCalculateXH()
        {
            int i = 0;
            foreach (StyleProcedure_F obj in this.CurStyleProcedureList)//(this.BindingSource.Current as StyleMaster).StyleProcedure_Fs)
            {
                obj.XH = ++i;
            }
        }
        #endregion

        #region 導入數據
        private bool CurIsNew = true;
        private void barToolbarsListImportData_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (!this.CheckData())
                return;

            if (this.Master.StyleProcedure_Fs.Count > 0)
            {
                //  MessageBox.Show(this.Master.StyleProcedure_Fs.Count.ToString());
                //if (MessageBox.Show("您是否需要重新導入?", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                if (ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgImportAgain", this.Langid) == DialogResult.No)
                    return;
            }



            if (IsNew && CurIsNew)//當是addnew時則導入數據前保存先。
            {
                this.Master.ZH = this.txtZH.Text;
                this.Master.Phase = LBPhare.NoneLB.ToString();
                this.Master.KHKH = this.txtKHKH.Text;
                this.Master.PHKH = this.txtPHKH.Text;
                this.Master.Edition = (string.IsNullOrEmpty(this.txtEdition.Text) || this.txtEdition.Text == "0") ? this.Master.GetNewEdition() : this.Master.Edition;
                this.Master.CreateBy = CurrentUser;
                this.Master.CreateTime = DateTime.Now;
                this.Master.StatuFromBOO1 = true;
                CurIsNew = false;
                this.IsNew = false;

            }
            else
            {
                this.Master.UpdateBy = CurrentUser;
                this.Master.UpdateTime = DateTime.Now;
            }


            (this.BindingSource.Current as PH.Platform.BO.BaseEntity).BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;



            //try
            {
                //string SqlStr = "EXEC sp_IELB '{0}', '{1}', '{2}'";
                //string SqlStr = @"EXEC [10.2.1.10\sqlserver2005].PHGDB2.dbo.sp_ieLB  '{0}', '{1}', '{2}'";
                string SqlStr = @"EXEC PHGDB2.dbo.sp_ieLB  '{0}', '{1}', '{2}'";
                string sZH = this.txtZH.Text.Substring(0, 4); //用組合Code
                SqlStr = string.Format(SqlStr, this.txtKHKH.Text, this.txtPHKH.Text, sZH);
                //DataTable dt = PH.Common.UI.DB.SQL2000DB.GetTable(SqlStr);

                LineBalanceIIDataContext context = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
                DataTable dt = context.ExecuteDataTable(SqlStr, "StyleOperation");

                if (dt.Rows.Count == 0)
                {
                    //MessageBox.Show("無可導入數據", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgNoDataImport", this.Langid);
                    return;
                }

                if (this.Master.StyleProcedure_Fs.Count > 0)
                {
                    this.AddUndoList();//當有數據時。提供undo功能
                }


                //for (int i = 0; i < this.Master.StyleProcedure_Fs.Count; i++ )
                //{
                //    this.DataContext.GetTable(StyleProcedure_F).DeleteAllOnSubmit(this.Master.StyleProcedure_Fs);
                //    this.Master.StyleProcedure_Fs[i].StyleMaster = null;
                //}

                // (this.DataContext as LineBalanceIIDataContext).StyleProcedure_Fs.DeleteAllOnSubmit(this.Master.StyleProcedure_Fs);

                //this.DataContext.SubmitChanges();
                //foreach (StyleProcedure_F sp in this.Master.StyleProcedure_Fs)
                //{
                //    try
                //    {
                //        sp.CurrentDataContext = this.DataContext;
                //        sp.CurrentBindingSource = this.BindingSource;
                //        sp.Delete();
                //        //(this.DataContext as LineBalanceIIDataContext).StyleProcedure_Fs.DeleteOnSubmit(sp);
                //    }
                //    catch { continue; }

                //}


                this.Master.StyleProcedure_Fs.Clear();

                //MessageBox.Show(this.Master.CurrentDataContext.GetChangeSet().Deletes.Count.ToString());
                //this.DataContext.SubmitChanges();
                this.RefreshPageData();
                int j = 0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {

                    if (!dt.Rows[i]["zbdesc_en"].ToString().Equals("A") && !dt.Rows[i]["zbdesc_en"].ToString().Equals("E"))
                    {
                        StyleProcedure_F info = new StyleProcedure_F();
                        info.XH = j + 1;
                        info.KHKH = this.Master.KHKH;
                        info.PHKH = this.Master.PHKH;
                        info.ZH = this.Master.ZH;
                        info.Edition = this.Master.Edition;

                        info.TeamGSD = dt.Rows[i]["ZB"].ToString();
                        info.SN = Convert.ToInt32(dt.Rows[i]["GXH"].ToString());
                        info.WorkSN = dt.Rows[i]["GXDH"].ToString();

                        //if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID == "EN")//if (PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.English)
                        //{
                        //    info.WorkName = dt.Rows[i]["EGXM"].ToString();
                        //    info.YCType = dt.Rows[i]["EYCZL"].ToString();
                        //}
                        //else if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID == "TH")
                        //{
                        //    info.WorkName = dt.Rows[i]["TGXM"].ToString();
                        //    info.YCType = dt.Rows[i]["EYCZL"].ToString();
                        //}
                        //else
                        //{
                        //    info.WorkName = dt.Rows[i]["GXM"].ToString();
                        //    info.YCType = dt.Rows[i]["YCZL"].ToString();
                        //}


                        //由David修改 2022-11-29
                        info.WorkName = dt.Rows[i]["GXM"].ToString();    //工序名称(中文)
                        info.WorkNameEN = dt.Rows[i]["EGXM"].ToString(); //工序名称(英文)
                        info.YCType = dt.Rows[i]["YCZL"].ToString();     //衣车种类(中文)
                        info.YCTypeEN = dt.Rows[i]["EYCZL"].ToString();  ////衣车种类(英文)

                        info.GSDSAHSN = Convert.ToDecimal(Convert.ToDecimal(dt.Rows[i]["BZSJ"].ToString()).ToString("#0.0000"));
                        info.YCDM = (this.DataContext as LineBalanceIIDataContext).MachineCodeMatches.Where(P => P.McTypeCN == info.YCType || P.McTypeEN == info.YCType).Select(S => S.McCode).Distinct().FirstOrDefault();
                        if (string.IsNullOrEmpty(info.YCDM))
                        {
                            info.YCDM = dt.Rows[i]["YCDM"].ToString();
                        }
                        info.CJQR = dt.Rows[i]["cjqr"].ToString() == "True" ? "1" : "0";
                        info.BurstNo = dt.Rows[i]["zh"].ToString();
                        info.Width = dt.Rows[i]["zf"].ToString();
                        info.Length = dt.Rows[i]["zkcc"].ToString();
                        info.YCAdj = dt.Rows[i]["ycfj"].ToString();
                        info.YCSD = dt.Rows[i]["YCSD"].ToString();
                        info.FAE = dt.Rows[i]["zbdesc_en"].ToString();

                        if (info.TeamGSD.ToUpper() != "O")
                        {
                            info.CWorkSN = info.GSDSAHSN;
                            info.JWorkSN = info.GSDSAHSN;
                            info.YHSAHSN = info.GSDSAHSN;
                            info.LDL = 1;
                        }
                        else
                        {
                            info.CWorkSN = 0;
                            info.JWorkSN = 0;
                            info.YHSAHSN = 0;
                            info.LDL = 0;
                        }
                        info.GZWMergeShowValue = -19;

                        (this.DataContext as LineBalanceIIDataContext).StyleProcedure_Fs.InsertOnSubmit(info);
                        this.Master.StyleProcedure_Fs.Add(info);
                        j++;
                    }
                }

                this.Master.Phase = LBPhare.NoneLB.ToString();
                // this.SaveCurrent();
                this.DataContext.SubmitChanges();

                this.InitPhase();
                //this.barToolbarsListItemAutoOptimize.EditValue = false;
                //this.barToolbarsListItemAutoBisOptimize.EditValue = false;
                //this.barToolbarsListItemAutoJSC.EditValue = false;
                //this.barToolbarsListItemAutoPJH.EditValue = false;
                //this.barToolbarsListItemAutoOptimize.Enabled = true;
                //this.barToolbarsListItemAutoBisOptimize.Enabled = false;
                //this.barToolbarsListItemAutoJSC.Enabled = false;
                //this.barToolbarsListItemAutoPJH.Enabled = false;

                this.Master.CalBNCX();
                this.CalSummary();
                this.RefreshPageData();

                // MessageBox.Show("導入資料成功!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgImportSucc", this.Langid);
            }
            //catch
            //{
            //    MessageBox.Show("導入資料失敗!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //}

        }
        #endregion

        #region 通過款號得到另一個款號和組合(款號指KHKH或PHKH)
        /// <summary>
        /// 通過款號得到另一個款號和組合(款號指KHKH或PHKH)
        /// </summary>
        /// <param name="ACustomerStyle">客户款号</param>
        /// <param name="APHStyle">PH款号</param>
        private void PrepareQuery(string ACustomerStyle, string APHStyle)
        {
            if (ACustomerStyle == "" && APHStyle == "") return;

            string temp;
            //string SqlStr = "EXEC sp_ieLB_class '{0}', '{1}'";
            //string SqlStr = @"EXEC [10.2.1.10\sqlserver2005].PHGDB2.dbo.sp_ieLB_class '{0}', '{1}'";
            string SqlStr = @"EXEC PHGDB2.dbo.sp_ieLB_class '{0}', '{1}'";

            SqlStr = string.Format(SqlStr, ACustomerStyle, APHStyle);
            //DataTable dt = PH.Common.UI.DB.SQL2000DB.GetTable(SqlStr);

            LineBalanceIIDataContext context = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
            DataTable dt = context.ExecuteDataTable(SqlStr, "ZH");

            if (dt.Rows.Count > 0)
            {
                this.txtKHKH.Text = dt.Rows[0]["KHKH"].ToString();
                this.txtPHKH.Properties.Items.Clear();
                this.txtZH.Properties.Items.Clear();
                for (int j = 0; j < dt.Rows.Count; j++)
                {
                    for (int i = 2; i < dt.Columns.Count; i++)
                    {
                        if (!this.txtPHKH.Properties.Items.Contains(dt.Rows[j]["PHKH"].ToString()))
                        {
                            this.txtPHKH.Properties.Items.Add(dt.Rows[j]["PHKH"].ToString());
                        }

                        if (!string.IsNullOrEmpty(dt.Rows[j][i].ToString()))
                        {
                            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID == "EN"
                                || PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID == "TH")//英文
                            {
                                temp = dt.Rows[j][i].ToString() + dt.Rows[j][i + 2].ToString();
                            }
                            else
                            {
                                temp = dt.Rows[j][i].ToString() + dt.Rows[j][i + 1].ToString();
                            }

                            if (!this.txtZH.Properties.Items.Contains(temp))
                            {
                                this.txtZH.Properties.Items.Add(temp);
                            }

                            i += 2;
                        }
                    }
                }
            }

        }
        #endregion

        #region 檢查查詢或導入資料需要錄入的條件
        private bool CheckData()
        {
            if (this.txtKHKH.Text == "")
            {
                //MessageBox.Show("請輸入客戶款號", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgInputCustStyle", this.Langid);
                this.txtKHKH.Focus();
                return false;
            }
            if (this.txtPHKH.Text == "")
            {
                //MessageBox.Show("請輸入PH款號", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgInputPHStyle", this.Langid);
                this.txtPHKH.Focus();
                return false;
            }

            if (this.txtZH.Text == "")
            {
                //MessageBox.Show("請選擇組合", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgInputGroup", this.Langid);
                this.txtZH.Focus();
                return false;
            }

            return true;
        }
        #endregion

        #region 款號一對一處理
        private void txtKHKH_Validated(object sender, EventArgs e)
        {
            this.PrepareQuery(this.txtKHKH.Text, "");
        }

        private void txtPHKH_Validated(object sender, EventArgs e)
        {
            this.PrepareQuery("", this.txtPHKH.Text);
        }
        #endregion

        #region 初始化LineBalance的阶段
        /// <summary>
        /// 初始化LineBalance的阶段
        /// </summary>
        private void InitPhase()
        {
            if (this.Master == null) return;

            if (this.Master.Phase == LBPhare.PJHLB.ToString())
            {
                //barToolbarsListItemAutoOptimize.EditValue = true;
                //barToolbarsListItemAutoBisOptimize.EditValue = true;
                barToolbarsListItemAutoJSC.EditValue = true;
                barToolbarsListItemAutoPJH.EditValue = true;

                //barToolbarsListItemAutoOptimize.Enabled = false;
                //barToolbarsListItemAutoBisOptimize.Enabled = false;
                barToolbarsListItemAutoJSC.Enabled = false;
                barToolbarsListItemAutoPJH.Enabled = true;
            }
            else if (this.Master.Phase == LBPhare.JSCLB.ToString())
            {
                //barToolbarsListItemAutoOptimize.EditValue = true;
                //barToolbarsListItemAutoBisOptimize.EditValue = true;
                barToolbarsListItemAutoJSC.EditValue = true;
                barToolbarsListItemAutoPJH.EditValue = false;

                //barToolbarsListItemAutoOptimize.Enabled = false;
                //barToolbarsListItemAutoBisOptimize.Enabled = false;
                barToolbarsListItemAutoJSC.Enabled = true;
                barToolbarsListItemAutoPJH.Enabled = true;
            }
            //else if (this.Master.Phase == LBPhare.BisYHLB.ToString())
            //{
            //    barToolbarsListItemAutoOptimize.EditValue = true;
            //    barToolbarsListItemAutoBisOptimize.EditValue = true;
            //    barToolbarsListItemAutoJSC.EditValue = false;
            //    barToolbarsListItemAutoPJH.EditValue = false;

            //    barToolbarsListItemAutoOptimize.Enabled = false;
            //    barToolbarsListItemAutoBisOptimize.Enabled = true;
            //    barToolbarsListItemAutoJSC.Enabled = true;
            //    barToolbarsListItemAutoPJH.Enabled = false;
            //}
            //else if (this.Master.Phase == LBPhare.YHLB.ToString())
            //{
            //    barToolbarsListItemAutoOptimize.EditValue = true;
            //    barToolbarsListItemAutoBisOptimize.EditValue = false;
            //    barToolbarsListItemAutoJSC.EditValue = false;
            //    barToolbarsListItemAutoPJH.EditValue = false;

            //    barToolbarsListItemAutoOptimize.Enabled = true;
            //    barToolbarsListItemAutoBisOptimize.Enabled = true;
            //    barToolbarsListItemAutoJSC.Enabled = false;
            //    barToolbarsListItemAutoPJH.Enabled = false;

            //}
            else
            {
                //barToolbarsListItemAutoOptimize.EditValue = false;
                //barToolbarsListItemAutoBisOptimize.EditValue = false;
                barToolbarsListItemAutoJSC.EditValue = false;
                barToolbarsListItemAutoPJH.EditValue = false;

                //barToolbarsListItemAutoOptimize.Enabled = true;
                //barToolbarsListItemAutoBisOptimize.Enabled = false;
                barToolbarsListItemAutoJSC.Enabled = true;
                barToolbarsListItemAutoPJH.Enabled = false;

            }
        }
        #endregion

        #region 拆操作
        private void barToolbarsListItemCOp_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            AddUndoList();

            StyleProcedure_F curInfo = this.ChildStyleProcedureListForm.BindingSource.Current as StyleProcedure_F;

            StyleMaster sm = this.Master;
            sm.StyleProcedure_Fs = null;

            for (int i = 0; i < this.ChildStyleProcedureListForm.BindingSource.Count; i++)
            {
                this.Master.StyleProcedure_Fs.Add((StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource[i]);
            }

            curInfo.SplitOperation(true, curInfo.XH - 1 ?? 0, sm);

            this.RefreshPageData(sm);

            this.Master.CalBNCX_F();
            this.CalSummary();

        }
        #endregion

        #region 夾操作
        private void barToolbarsListItemJOp_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (!ValidateSelectedWorkSN())
            {
                // MessageBox.Show("您選擇夾操作的工序不連續，不能進行夾操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgMergeNotAllow", this.Langid);
                return;
            }

            AddUndoList();

            //zrtag this.AddUndoQueue(this.GetSaveList(), "夾操作");
            decimal SumJ = 0;
            foreach (DictionaryEntry item in SaveXHList)
            {
                int xh = Convert.ToInt32(item.Key.ToString());
                StyleProcedure_F info = this.ChildStyleProcedureListForm.gridView1.GetRow(xh - 1) as StyleProcedure_F;
                SumJ += (info.CWorkSN ?? 0);
            }

            int[] arrayXH = new int[SaveXHList.Count];
            SaveXHList.Keys.CopyTo(arrayXH, 0);

            int saveXH = 9999999;
            foreach (int i in arrayXH)
            {
                if (i < saveXH)
                {
                    saveXH = i;
                }
            }
            int temp = 0;
            foreach (DictionaryEntry item in SaveXHList)
            {
                int xh = Convert.ToInt32(item.Key.ToString());
                StyleProcedure_F info = this.ChildStyleProcedureListForm.gridView1.GetRow(xh - 1) as StyleProcedure_F;
                info.JFlag = saveXH.ToString(); //arrayXH[0].ToString(); //SaveXHList[0].ToString();
                info.JWorkSN = SumJ;
                info.LDL = 1;
                this.ChildStyleProcedureListForm.gridView1.UpdateCurrentRow(); //info.Save(); 
                temp++;
            }

            SaveXHList.Clear();

            this.Master.CalBNCX();
            this.CalSummary();

            this.RefreshPageData();

        }

        /// <summary>
        /// 驗證準備做夾操作的工序號是否合法
        /// </summary>
        /// <returns></returns>
        private bool ValidateSelectedWorkSN()
        {
            int[] arrayXH = new int[SaveXHList.Count];
            SaveXHList.Keys.CopyTo(arrayXH, 0);

            Array.Sort(arrayXH);

            for (int i = 1; i < SaveXHList.Count; i++)
            {
                if (arrayXH[i] - arrayXH[i - 1] > 1)
                {
                    return false;
                }
            }
            return true;
        }
        #endregion

        #region 自動優化(計算優化項)
        public void ItemCheckAutoOptimize_CheckedChanged(object sender, EventArgs e)
        {

            //barToolbarsListItemAutoOptimize.EditValue = !(bool)barToolbarsListItemAutoOptimize.EditValue;
            //if ((bool)barToolbarsListItemAutoOptimize.EditValue)
            //{
            //    this.Master.AutoOptimize();
            //}
            //else
            //{
            //    this.Master.CancelAutoOptimize();
            //}
            //this.InitPhase();
            //this.CalSummary();
            //this.RefreshPageData();
        }
        #endregion

        #region 自動二度優化
        public void ItemCheckAutoBisOptimize_CheckedChanged(object sender, EventArgs e)
        {

            //barToolbarsListItemAutoBisOptimize.EditValue = !(bool)barToolbarsListItemAutoBisOptimize.EditValue;
            //if ((bool)barToolbarsListItemAutoBisOptimize.EditValue)
            //{
            //    if (this.Master.AutoBisOptimize())
            //    {
            //        this.RefreshPageData();
            //    }
            //}
            //else
            //{
            //    this.Master.CancelAutoBisOptimize();
            //    this.RefreshPageData();
            //}
            //this.InitPhase();
            //this.CalSummary();
        }
        #endregion

        #region 自動間時拆
        public void ItemCheckAutoJSC_CheckedChanged(object sender, EventArgs e)
        {

            barToolbarsListItemAutoJSC.EditValue = !(bool)barToolbarsListItemAutoJSC.EditValue;
            if ((bool)barToolbarsListItemAutoJSC.EditValue)
            {
                //this.Master.AutoJSC();
            }
            else
            {
                //this.LinqDataDelete();
                this.Master.CancelAutoJSC();
                // this.LinqDataInsert();

            }
            this.InitPhase();
            this.CalSummary();
            this.RefreshPageData();
        }
        #endregion

        #region 自動平准化
        public void ItemCheckAutoPJH_CheckedChanged(object sender, EventArgs e)
        {

            barToolbarsListItemAutoPJH.EditValue = !(bool)barToolbarsListItemAutoPJH.EditValue;
            if ((bool)barToolbarsListItemAutoPJH.EditValue)
            {
                this.Master.AutoPJH();
            }
            else
            {
                this.Master.CancelAutoPJH();
            }
            this.InitPhase();
            this.CalSummary();
            this.RefreshPageData();
        }
        #endregion

        #region SAH值和MTM值顯示格式控制
        private void gridView1_CustomColumnDisplayText(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventArgs e)
        {
            if (this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, "TeamGSD") == null) return;
            string teamGSD = (string)this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, "TeamGSD");
            bool IsTeamGSD_O = teamGSD.ToUpper() == "O";

            if (e.Column.FieldName == "YHSAHSN" || e.Column.FieldName == "YHMTM")
            {
                if (!(bool)barToolbarsListItemAutoOptimize.EditValue || IsTeamGSD_O)
                {
                    e.DisplayText = "";

                }
            }

            if (e.Column.FieldName == "BisYHSAHSN" || e.Column.FieldName == "BisYHMTM")
            {
                if (!(bool)barToolbarsListItemAutoBisOptimize.EditValue || IsTeamGSD_O)
                {
                    e.DisplayText = "";
                }
            }

            if (e.Column.FieldName == "JSCSAHSN")
            {
                if (!(bool)barToolbarsListItemAutoJSC.EditValue || IsTeamGSD_O)
                    e.DisplayText = "";
            }

            if (e.Column.FieldName == "PJHSAHSN" || e.Column.FieldName == "PJHMTM")
            {
                if (!(bool)barToolbarsListItemAutoPJH.EditValue || IsTeamGSD_O)
                {
                    e.DisplayText = "";
                }
            }

            //指標綫為0的不顯示出來
            if (e.Column.FieldName == "YHLineValue" && (decimal)this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, "YHLineValue") == 0)
            {
                e.DisplayText = "";
            }

            //優化指標母為0的不顯示出來
            if (e.Column.FieldName == "BestLineValue" && (decimal)this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, "BestLineValue") == 0)
            {
                e.DisplayText = "";
            }

        }
        #endregion

        #region 將一些敏感的單格，用醒目的顏色標誌出來
        private void gridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "GSDSAHSN" || e.Column.FieldName == "CWorkSN") //夾操作時點擊滑鼠右鍵，用顏色標記出來
            {
                foreach (DictionaryEntry item in SaveXHList)
                {
                    int xh = Convert.ToInt32(item.Key.ToString());
                    int drawRowXH = (int)this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["XH"]);
                    string drawColumnFieldName = item.Value.ToString();
                    if (xh == drawRowXH && drawColumnFieldName == e.Column.FieldName)
                    {
                        e.Appearance.BackColor = Color.FromArgb(192, 192, 255);
                        return;
                    }
                }
            }

            if (e.Column.FieldName == "CWorkSN") //有拆工序用顏色標記出來
            {
                string CFlag = this.ChildStyleProcedureListForm.gridView1.Columns["CFlag"] == null ? "" : this.ChildStyleProcedureListForm.gridView1.Columns["CFlag"].ToString();
                if (this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, CFlag).ToString() != "")
                {
                    e.Appearance.BackColor = Color.FromArgb(255, 128, 128);
                }
            }
            else if (e.Column.FieldName == "GSDSAHSN") //用顏色標記O項最大值
            {
                decimal Cur_GSDSAHSN = (decimal)this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["GSDSAHSN"]);
                if ((this.lblJKLM9_O.Text != "") && (Convert.ToDecimal(this.lblJKLM9_O.Text) == Cur_GSDSAHSN))
                {
                    DoDefaultDrawCell(ChildStyleProcedureListForm.gridView1, e);
                    DrawCellBorder(e);
                    e.Handled = true;
                }
            }
            else if (e.Column.FieldName == "JWorkSN")
            {
                string JFlag = this.ChildStyleProcedureListForm.gridView1.Columns["JFlag"] == null ? "" : this.ChildStyleProcedureListForm.gridView1.Columns["JFlag"].ToString();
                if (this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, JFlag).ToString() != "")
                {
                    e.Appearance.BackColor = Color.FromArgb(128, 255, 255); //有夾工序用顏色標記出來
                }

                decimal Cur_JWorkSN = (decimal)this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["JWorkSN"]);
                if ((this.lblJKLM9_R.Text != "") && (Convert.ToDecimal(this.lblJKLM9_R.Text) == Cur_JWorkSN))
                {
                    DoDefaultDrawCell(ChildStyleProcedureListForm.gridView1, e);
                    DrawCellBorder(e);
                    e.Handled = true;
                }

            }
            else if (e.Column.FieldName == "JSCSAHSN")
            {
                if ((bool)barToolbarsListItemAutoJSC.EditValue &&
                    (this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["JSCSAHSN"]).ToString() != this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["BisYHSAHSN"]).ToString()))
                {
                    e.Appearance.BackColor = Color.FromArgb(153, 204, 255); //有間時拆的工序用顏色標記出來
                }

            }
            //else if (e.Column.FieldName == "BisYHSAHSN")
            //{
            //    if ((bool)barToolbarsListItemAutoBisOptimize.EditValue &&
            //        //(this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["YHMTM"]).ToString() != this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["BisYHMTM"]).ToString()))
            //        (this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["YHSAHSN"]).ToString() != this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["BisYHSAHSN"]).ToString()))
            //    {
            //        e.Appearance.BackColor = Color.FromArgb(204, 153, 255); //有二度優化的工序用顏色標記出來
            //    }

            //}
            else if (e.Column.FieldName == "PJHSAHSN")
            {
                if ((bool)barToolbarsListItemAutoPJH.EditValue &&
                    (this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["TeamGSD"]).ToString().ToUpper() != "O") &&
                    //(this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["BisYHMTM"]).ToString() != this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["PJHMTM"]).ToString()))
                    (this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["BisYHSAHSN"]).ToString() != this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["PJHSAHSN"]).ToString()))
                {
                    e.Appearance.BackColor = Color.FromArgb(153, 204, 0); //有平准化的工序用顏色標記出來
                }

            }
            //else if (e.Column.FieldName == "YHSAHSN")
            //{
            //    if (!(bool)barToolbarsListItemAutoOptimize.EditValue)
            //    {
            //        e.Handled = true;
            //        return;
            //    }
            //    if ((bool)barToolbarsListItemAutoOptimize.EditValue &&
            //        (int)this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["YHMTM"]) > 100)
            //    {
            //        e.Appearance.BackColor = Color.FromArgb(255, 255, 128); //有優化的工序用顏色標記出來
            //    }

            //    decimal Cur_YHSAHSN = (decimal)this.ChildStyleProcedureListForm.gridView1.GetRowCellValue(e.RowHandle, this.ChildStyleProcedureListForm.gridView1.Columns["YHSAHSN"]);
            //    if ((this.lblJKLM9_T.Text != "") && (Convert.ToDecimal(this.lblJKLM9_T.Text) == Cur_YHSAHSN))
            //    {
            //        DoDefaultDrawCell(ChildStyleProcedureListForm.gridView1, e);
            //        DrawCellBorder(e);
            //        e.Handled = true;
            //    }
            //}
        }

        private void DrawCellBorder(DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            //change color here.....
            Brush brush = Brushes.Red;
            e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.X - 1, e.Bounds.Y - 1, e.Bounds.Width + 2, 2));
            e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.Right - 1, e.Bounds.Y - 1, 2, e.Bounds.Height + 2));
            e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.X - 1, e.Bounds.Bottom - 1, e.Bounds.Width + 2, 2));
            e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.X - 1, e.Bounds.Y - 1, 2, e.Bounds.Height + 2));
        }

        private void DoDefaultDrawCell(GridView view, RowCellCustomDrawEventArgs e)
        {
            PropertyInfo pi;
            GridControl grid;
            GridViewInfo info;
            GridCellInfo cell;
            GridEditorContainerHelper helper;
            GridViewDrawArgs args;

            info = view.GetViewInfo() as GridViewInfo;
            cell = e.Cell as GridCellInfo;

            grid = view.GridControl;
            pi = grid.GetType().GetProperty("EditorHelper", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.DeclaredOnly);
            helper = pi.GetValue(grid, null) as GridEditorContainerHelper;
            args = new GridViewDrawArgs(e.Cache, info, e.Bounds);
            helper.DrawCellEdit(args, cell.Editor, cell.ViewInfo, e.Appearance, cell.CellValueRect.Location);
        }
        #endregion

        #region 單格合併
        private void gridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            //得到拆標誌
            bool CFlag = false;
            GridView viewC = sender as GridView;
            string CFlag1 = viewC.GetRowCellValue(e.RowHandle1, "CFlag").ToString();
            string CFlag2 = viewC.GetRowCellValue(e.RowHandle2, "CFlag").ToString();
            //CFlag = CFlag1 == CFlag2 && CFlag1 == "1" && CFlag2 == "1";
            CFlag = CFlag1 == CFlag2 && CFlag1 != "" && CFlag2 != "";

            //得到夾標誌
            bool JFlag = false;
            GridView viewJ = sender as GridView;
            string JFlag1 = viewJ.GetRowCellValue(e.RowHandle1, "JFlag").ToString();
            string JFlag2 = viewJ.GetRowCellValue(e.RowHandle2, "JFlag").ToString();
            //JFlag = JFlag1 == JFlag2 && JFlag1 == "1" && JFlag2 == "1";
            JFlag = JFlag1 == JFlag2 && JFlag1 != "" && JFlag2 != "";

            switch (e.Column.FieldName)
            {
                case "TeamGSD":  //組別GSD
                case "TeamYH":   //組別優化後
                case "SN":       //序號
                case "WorkSN":   //工序代號
                case "YCType":   //衣車種類
                case "YCDM":     //衣車代碼
                case "JSCL":     //節時產量
                case "WorkName": //工序名稱
                case "GSDSAHSN": //GSD SAH/工序
                case "CPGS":     //CP工序
                case "YCAdj":    //衣車附件
                case "YCSD":    //衣車轉數

                case "BurstNo":  //No. of burst
                case "Width":    //Width
                case "Length":   //Length

                case "WorkNameEN": //工序名稱英文
                case "YCTypeEN":   //衣車種類英文

                    e.Merge = CFlag;
                    e.Handled = true;
                    break;

                case "JWorkSN":         //夾SAH/工序
                case "BNCX":            //拆夾後BN次序
                case "YHBNCX":          //優化後BN次序
                case "YHLineValue":     //優化指標線
                case "BestLineValue":   //優化線
                    e.Merge = JFlag;
                    e.Handled = true;
                    break;

                case "LDL":             //勞動力
                    //e.Merge = JFlag && viewJ.GetRowCellValue(e.RowHandle1, "LDL").ToString() == viewJ.GetRowCellValue(e.RowHandle2, "LDL").ToString();
                    e.Merge = JFlag && viewJ.GetRowCellValue(e.RowHandle1, "GRDH").ToString() != "Floater";
                    e.Handled = true;
                    break;

                case "GRDH":    //工人代號
                    e.Merge = JFlag && viewJ.GetRowCellValue(e.RowHandle1, "GRDH").ToString() == viewJ.GetRowCellValue(e.RowHandle2, "GRDH").ToString();
                    e.Handled = true;
                    break;

                case "YHSAHSN":      //優化SAH/工序
                case "YHMTM":        //優化MTM
                    //e.Merge = AutoOptimizeFlag && JFlag;
                    e.Merge = (bool)barToolbarsListItemAutoOptimize.EditValue && JFlag;
                    e.Handled = true;
                    break;

                case "BisYHSAHSN": //二度優化SAH
                case "BisYHMTM":   //二度優化MTM
                    e.Merge = (bool)barToolbarsListItemAutoBisOptimize.EditValue && JFlag;
                    e.Handled = true;
                    break;

                case "JSCSAHSN":  //間時拆SAH
                case "JSCBNCX":         //間時拆後BN次序
                    e.Merge = (bool)barToolbarsListItemAutoJSC.EditValue && JFlag &&
                        viewJ.GetRowCellValue(e.RowHandle1, "JSCSAHSN").ToString() == viewJ.GetRowCellValue(e.RowHandle2, "JSCSAHSN").ToString();
                    e.Handled = true;
                    break;

                case "PJHSAHSN":  //平准化SAH
                case "PJHMTM":    //平准化MTM
                    e.Merge = (bool)barToolbarsListItemAutoPJH.EditValue && JFlag;
                    e.Handled = true;
                    break;

                case "GSDBN":   //GSD BN
                case "CJBH":    //拆夾BN
                case "YHBN":    //優化BN
                case "GSDCP":   //GSD CP
                case "CJCP":    //拆夾CP
                case "YHCP":    //優化CP
                case "CJQR":    //車間確認
                case "Move":    //人移物移
                case "CWorkSN": //拆SAH/工序
                case "CFlag":
                case "JFlag":
                case "GZWMergeShowValue":
                case "XH":        //序号不要合并
                case "BestMTM":   //優化MTM
                case "BestSAHSN": //優化SAH/工序
                case "JGJJ":      //尖工間時支援節件\
                case "GZW":          //工作位(主區)
                case "GZW_Support":  //工作位(支援區)
                case "GZW_Floater":  //工作位(尖工區)
                    e.Merge = false;
                    e.Handled = true;
                    break;

                //    //合併的前提是該工序是拆工序，如拆工序後，對應工作位數量等於0或1時，
                //    //則合併, 等於2或以上則不合並
                //    case "GZW":    //工作位
                //        int GZW1 = int.Parse(viewC.GetRowCellValue(e.RowHandle1, "GZW").ToString());
                //        int GZW2 = int.Parse(viewC.GetRowCellValue(e.RowHandle2, "GZW").ToString());
                //        e.Merge = MergeGZWFlag && CFlag && (GZW1 + GZW2) <= 1;
                //        e.Handled = true;
                //        break;
            }
        }
        #endregion

        #region 車間確認、CP工序
        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            //StyleProcedure_F obj = (StyleProcedure_F)this.ChildStyleProcedureListForm.gridView1.GetRow(this.ChildStyleProcedureListForm.gridView1.GetRowHandle);


            StyleProcedure_F obj = this.ChildStyleProcedureListForm.BindingSource.Current as StyleProcedure_F;
            MessageBox.Show("CFlag = " + obj.CFlag + "  JFlag = " + obj.JFlag + " XH = " + obj.XH.ToString() +
                " SaveCFlag = " + obj.BeforeJSCCFlag + " SaveJFlag = " + obj.BeforeJSCJFlag);

            //if (MessageBox.Show("是否清除?", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            //{
            //    obj.BeforeJSCCFlag = "";
            //    obj.BeforeJSCJFlag = "";
            //}


            if (this.barToolbar.Visible && this.ChildStyleProcedureListForm.gridView1.FocusedColumn.Name == "gridColCJQR") //車間確認
            {
                StyleProcedure_F Current = (StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current;
                if (string.IsNullOrEmpty(Current.CJQR))
                {
                    Current.WorkshopConfirm();
                }
                else
                {
                    Current.CancelWorkShopConfirm();
                }
                this.ChildStyleProcedureListForm.gridView1.UpdateCurrentRow();
            }
            else if (this.barToolbar.Visible && this.ChildStyleProcedureListForm.gridView1.FocusedColumn.Name == "gridColCPGS") //CP工序
            {
                StyleProcedure_F Current = (StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current;
                if (Current.CPGS == null || Current.CPGS == "")
                {
                    Current.FlagCPGS(this.Master);
                }
                else
                {
                    Current.CancelCPGS(this.Master);
                }
                this.RefreshPageData();
            }
            else if (this.barToolbar.Visible && this.ChildStyleProcedureListForm.gridView1.FocusedColumn.Name == "gridColGCDH") //人工代號(勞動力代號)
            {
                StyleProcedure_F Current = (StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current;
                if (Current.GRDH.ToUpper() != "FLOATER")
                {
                    Current.SetGRDHFlag(this.Master, Current.GRDH);
                    this.RefreshPageData();
                }
            }
            else if (this.barToolbar.Visible && this.ChildStyleProcedureListForm.gridView1.FocusedColumn.Name == "gridColumn40") //衣車代碼
            {
                StyleProcedure_F Current = (StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current;


                Current.SetYCDM(this.Master, Current.YCDM);
                this.RefreshPageData();
            }
            else if (this.barToolbar.Visible && this.ChildStyleProcedureListForm.gridView1.FocusedColumn.Name == "gridColumn13") //衣車附件
            {
                StyleProcedure_F Current = (StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current;
                Current.SetYCAdj(this.Master, Current.YCAdj);
                this.RefreshPageData();
            }
            else if (this.barToolbar.Visible && this.ChildStyleProcedureListForm.gridView1.FocusedColumn.Name == "bandedGridColumn7") //衣車附件
            {
                StyleProcedure_F Current = (StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current;
                Current.SetYCSD(this.Master, Current.YCSD);
                this.RefreshPageData();
            }

        }
        #endregion

        #region 控制當前行可否上移、下移
        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            if (this.ChildStyleProcedureListForm.BindingSource.Current == null) return;
            barToolbarsListItemMovePrevious.Enabled = e.FocusedRowHandle > 0;
            barToolbarsListItemMoveNext.Enabled = e.FocusedRowHandle != this.ChildStyleProcedureListForm.gridView1.RowCount - 1;
            barToolbarsListItemCOp.Enabled = this.ChildStyleProcedureListForm.BindingSource.Current != null
                 && ((StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current).TeamGSD.ToUpper() != "O";
        }
        #endregion

        #region 在 拆SAH/工序列單格中,右擊滑鼠,保存當前行的序號

        private Hashtable SaveXHList
        {
            get
            {
                return this.styleProcedureListForm_F1.SaveXHList;
            }

        }
        private void gridView1_MouseUp(object sender, MouseEventArgs e)
        {
            if (!this.barToolbar.Visible)
            {
                return;
            }

            if ((e.Button == MouseButtons.Right) &&
                (this.ChildStyleProcedureListForm.gridView1.FocusedColumn.FieldName == "CWorkSN" || this.ChildStyleProcedureListForm.gridView1.FocusedColumn.FieldName == "GSDSAHSN"))
            {
                StyleProcedure_F CurInfo = (StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current;

                if (CurInfo.JFlag != "")
                {
                    //MessageBox.Show("當前工序已進行夾操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgMergeFinshed", this.Langid);
                    return;
                }

                if (this.ChildStyleProcedureListForm.gridView1.FocusedColumn.FieldName == "GSDSAHSN")
                {
                    if (this.GetSelectFlag("CWorkSN")) //在"拆SAH/工序"列已經選擇了至少一個已拆的工序
                    {
                        // MessageBox.Show("您已選擇一個或多個拆工序，請在列\"拆SAH/工序\"上操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgMultiSahPrompt", this.Langid);
                        return;
                    }

                    if (CurInfo.CFlag != "") //當前工序已經作了拆操作
                    {
                        //MessageBox.Show("當前工序已作拆操作,請在列\"拆SAH/工序\"上操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgSeparateSahPrompt", this.Langid);
                        return;
                    }
                }
                else if (this.ChildStyleProcedureListForm.gridView1.FocusedColumn.FieldName == "CWorkSN")
                {
                    if (this.GetSelectFlag("GSDSAHSN"))
                    {
                        //MessageBox.Show("您已選擇一個或多個GSD SAH/工序，請在列\"GSD SAH/工序\"上操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgMultiGsdSahPrompt", this.Langid);
                        return;
                    }

                    if (!this.GetSelectFlag("CWorkSN") && (CurInfo.CFlag == "" && CurInfo.JFlag == ""))
                    {
                        // MessageBox.Show("請在列\"GSD SAH/工序\"上操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        ErrorMessageManager.ShowMessage(this.SideProgramID, this.FileID, this.FormName, "msgSeparateGsdSahPrompt", this.Langid);
                        return;
                    }
                }

                if (SaveXHList.Contains(CurInfo.XH)) //取消右鍵選中
                {
                    SaveXHList.Remove(CurInfo.XH);
                }
                else //右鍵選中
                {
                    SaveXHList.Add(CurInfo.XH, this.ChildStyleProcedureListForm.gridView1.FocusedColumn.FieldName);
                }
                this.ChildStyleProcedureListForm.gridView1.RefreshRow(this.ChildStyleProcedureListForm.gridView1.FocusedRowHandle);
            }
        }

        /// <summary>
        /// 鼠標右鍵是否已經選擇一個或多個拆工序項
        /// </summary>
        /// <param name="AFlag">"CWorkSN"或"GSDSAHSN"</param>
        /// <returns></returns>
        private bool GetSelectFlag(string AFlag)
        {
            foreach (DictionaryEntry item in SaveXHList)
            {
                if ((string)item.Value == AFlag)
                {
                    return true;
                }
            }
            return false;

        }
        #endregion

        #region 清除摘要資訊
        private void ClearSummaryShowContent()
        {
            #region 標準SAH
            this.lblJKLM1_O.Text = "";
            this.lblJKLM2_O.Text = "";
            this.lblJKLM3_O.Text = "";
            this.lblJKLM4_O.Text = "";
            this.lblJKLM6_O.Text = "";
            this.lblJKLM7_O.Text = "";
            this.lblJKLM8_O.Text = "";

            this.lblJKLM9_O.Text = "";
            this.lblJKLM21_O.Text = "";
            this.lblJKLM10_O.Text = "";
            this.lblJKLM13_O.Text = "";
            this.lblJKLM14_O.Text = "";
            #endregion

            #region 拆夾SAH
            this.lblJKLM1_R.Text = "";
            this.lblJKLM2_R.Text = "";
            this.lblJKLM3_R.Text = "";
            this.lblJKLM4_R.Text = "";
            this.lblJKLM6_R.Text = "";
            this.lblJKLM7_R.Text = "";
            this.lblJKLM8_R.Text = "";

            this.lblJKLM9_R.Text = "";
            this.lblJKLM21_R.Text = "";
            this.lblJKLM10_R.Text = "";
            this.lblJKLM13_R.Text = "";
            this.lblJKLM14_R.Text = "";
            #endregion

            #region 優化SAH
            //this.lblJKLM1_T.Text = "";
            //this.lblJKLM2_T.Text = "";
            //this.lblJKLM3_T.Text = "";
            //this.lblJKLM4_T.Text = "";
            //this.lblJKLM6_T.Text = "";
            //this.lblJKLM7_T.Text = "";
            //this.lblJKLM8_T.Text = "";

            //this.lblJKLM9_T.Text = "";
            //this.lblJKLM21_T.Text = "";
            //this.lblJKLM10_T.Text = "";
            //this.lblJKLM13_T.Text = "";
            //this.lblJKLM14_T.Text = "";
            //this.lblJKLM20_T.Text = "";
            //this.lblJKLM15_T.Text = "";
            //this.lblJKLM16_T.Text = "";
            //this.lblJKLM17_T.Text = "";

            //this.lblYH_DZ.Text = "";
            //this.lblYH_SZ.Text = "";
            //this.lblYH_QG.Text = "";
            //this.lblYH_RZ.Text = "";
            //this.lblYH_SBRZ.Text = "";
            //this.lblYH_PR.Text = "";
            //this.lblYH_DR.Text = "";
            //this.lblYH_DZH.Text = "";
            //this.lblYH_DH.Text = "";
            //this.lblYH_TZC.Text = "";
            //this.lblYH_SGT.Text = "";
            //this.lblYH_Sum.Text = "";
            #endregion

            #region 二度優化SAH
            //this.lblJKLM1_X.Text = "";
            //this.lblJKLM2_X.Text = "";
            //this.lblJKLM3_X.Text = "";
            //this.lblJKLM4_X.Text = "";
            //this.lblJKLM6_X.Text = "";
            //this.lblJKLM7_X.Text = "";
            //this.lblJKLM8_X.Text = "";

            //this.lblJKLM9_X.Text = "";
            //this.lblJKLM21_X.Text = "";
            //this.lblJKLM10_X.Text = "";
            //this.lblJKLM13_X.Text = "";
            //this.lblJKLM14_X.Text = "";
            //this.lblJKLM20_X.Text = "";
            //this.lblJKLM15_X.Text = "";
            //this.lblJKLM16_X.Text = "";
            //this.lblJKLM17_X.Text = "";

            #endregion

            #region 間時拆SAH
            this.lblJKLM1_Y.Text = "";
            this.lblJKLM2_Y.Text = "";
            this.lblJKLM3_Y.Text = "";
            this.lblJKLM4_Y.Text = "";
            this.lblJKLM6_Y.Text = ""; ;
            this.lblJKLM7_Y.Text = ""; ;
            this.lblJKLM8_Y.Text = ""; ;

            this.lblJKLM9_Y.Text = ""; ;
            this.lblJKLM21_Y.Text = ""; ;
            this.lblJKLM10_Y.Text = ""; ;
            this.lblJKLM13_Y.Text = ""; ;
            this.lblJKLM14_Y.Text = ""; ;
            this.lblJKLM20_Y.Text = ""; ;
            //this.lblJKLM15_Y.Text = ""; ;
            //this.lblJKLM16_Y.Text = ""; ;
            //this.lblJKLM17_Y.Text = ""; ;

            #endregion

            #region 平准化SAH
            this.lblJKLM1_Z.Text = ""; ;
            //this.lblJKLM2_Z.Text = "";;
            //this.lblJKLM3_Z.Text = "";
            //this.lblJKLM4_Z.Text = "";
            this.lblJKLM6_Z.Text = "";
            this.lblJKLM7_Z.Text = "";
            this.lblJKLM8_Z.Text = "";

            this.lblJKLM9_Z.Text = "";
            this.lblJKLM21_Z.Text = "";
            this.lblJKLM10_Z.Text = "";
            this.lblJKLM13_Z.Text = "";
            this.lblJKLM14_Z.Text = "";
            ////this.lblJKLM20_Z.Text = "";
            //this.lblJKLM15_Z.Text = "";
            //this.lblJKLM16_Z.Text = "";
            //this.lblJKLM17_Z.Text = "";
            this.lblSumFloater.Text = "";

            #endregion
        }
        #endregion

        #region 計算摘要資訊
        private void CalSummary()
        {
            this.Master.CalSummary_F();
            this.ClearSummaryShowContent();

            this.gridNoCJGZW.DataSource = this.Master.SummaryList.Count > 0 ? this.Master.SummaryList : null;

            #region 標準SAH
            this.lblJKLM1_O.Text = this.Master.Sum_GSDSAH.ToString();
            this.lblJKLM2_O.Text = this.Master.Sum_GSDSAH_A.ToString();
            this.lblJKLM3_O.Text = this.Master.Sum_GSDSAH_B.ToString();
            this.lblJKLM4_O.Text = this.Master.Sum_GSDSAH_C == 0 ? "N.A." : this.Master.Sum_GSDSAH_C.ToString();
            this.lblJKLM6_O.Text = this.Master.GSDJSCL.ToString();
            this.lblJKLM7_O.Text = this.Master.Sum_GSDLDL.ToString();
            this.lblJKLM8_O.Text = this.Master.GSDGZW.ToString();

            this.lblJKLM9_O.Text = this.Master.GSDMaxZJ.ToString();
            this.lblJKLM21_O.Text = this.Master.GSDMinZJ.ToString();
            this.lblJKLM10_O.Text = this.Master.GSDMinSAH.ToString();
            this.lblJKLM13_O.Text = this.Master.GSDLPHS.ToString() + "%";
            this.lblJKLM14_O.Text = this.Master.GSDSAHZWS.ToString();
            #endregion

            #region 拆夾SAH
            this.lblJKLM1_R.Text = this.Master.Sum_CJSAH.ToString();
            this.lblJKLM2_R.Text = this.Master.Sum_CJSAH_A.ToString();
            this.lblJKLM3_R.Text = this.Master.Sum_CJSAH_B.ToString();
            this.lblJKLM4_R.Text = this.Master.Sum_CJSAH_C == 0 ? "N.A." : this.Master.Sum_CJSAH_C.ToString();
            this.lblJKLM6_R.Text = this.Master.CJJSCL.ToString();
            this.lblJKLM7_R.Text = this.Master.Sum_CJLDL.ToString();
            this.lblJKLM8_R.Text = this.Master.CJGZW.ToString();

            this.lblJKLM9_R.Text = this.Master.CJMaxZJ.ToString();
            this.lblJKLM21_R.Text = this.Master.CJMinZJ.ToString();
            this.lblJKLM10_R.Text = this.Master.CJMinSAH.ToString();
            this.lblJKLM13_R.Text = this.Master.CJLPHS.ToString() + "%";
            this.lblJKLM14_R.Text = this.Master.CJSAHZWS.ToString();
            #endregion

            #region 間時拆SAH
            if (Commands.ConvertLBPhare(this.Master.Phase) >= LBPhare.JSCLB)
            {
                this.lblJKLM1_Y.Text = this.Master.Sum_JSCSAH.ToString();

                //this.lblJKLM2_Y.Text = "N.A.";//this.Master.Sum_JSCSAH_A.ToString();
                //this.lblJKLM3_Y.Text = "N.A.";//this.Master.Sum_JSCSAH_B.ToString();
                //this.lblJKLM4_Y.Text = "N.A.";//this.Master.Sum_JSCSAH_C == 0 ? "N.A." : this.master.Sum_JSCSAH_C.ToString();

                this.lblJKLM2_Y.Text = this.Master.Sum_CJSAH_A.ToString();
                this.lblJKLM3_Y.Text = this.Master.Sum_CJSAH_B.ToString();
                this.lblJKLM4_Y.Text = this.Master.Sum_CJSAH_C == 0 ? "N.A." : this.Master.Sum_CJSAH_C.ToString(); //this.Master.Sum_CJSAH_C.ToString();


                this.lblJKLM6_Y.Text = this.Master.JSCJSCL.ToString();
                this.lblJKLM7_Y.Text = this.Master.Sum_JSCLDL.ToString();
                this.lblJKLM8_Y.Text = this.Master.JSCGZW.ToString();

                this.lblJKLM9_Y.Text = this.Master.JSCMaxZJ.ToString();
                this.lblJKLM21_Y.Text = this.Master.JSCMinZJ.ToString();
                this.lblJKLM10_Y.Text = this.Master.JSCMinSAH.ToString();
                this.lblJKLM13_Y.Text = this.Master.JSCLPHS.ToString() + "%";
                this.lblJKLM14_Y.Text = this.Master.JSCSAHZWS.ToString();
                this.lblJKLM20_Y.Text = this.Master.BestLineValue.ToString();
                //this.lblJKLM15_Y.Text = this.Master.JSCMaxMTM.ToString();
                //this.lblJKLM16_Y.Text = this.Master.JSCDownLDL.ToString();
                //this.lblJKLM17_Y.Text = this.Master.JSCMTMPercent.ToString() + "%";
                this.lblSumFloater.Text = this.Master.Sum_JSCFloater.ToString();
            }
            #endregion

            #region 平准化SAH
            if (Commands.ConvertLBPhare(this.Master.Phase) >= LBPhare.PJHLB)
            {
                this.lblJKLM1_Z.Text = this.Master.Sum_PJHSAH.ToString();
                //this.lblJKLM2_Z.Text = this.master.Sum_PJHSAH_A.ToString();
                //this.lblJKLM3_Z.Text = this.master.Sum_PJHSAH_B.ToString();
                //this.lblJKLM4_Z.Text = this.master.Sum_PJHSAH_C == 0 ? "N.A." : this.master.Sum_PJHSAH_C.ToString();
                this.lblJKLM6_Z.Text = this.Master.PJHJSCL.ToString();
                this.lblJKLM7_Z.Text = this.Master.Sum_PJHLDL.ToString();
                this.lblJKLM8_Z.Text = this.Master.PJHGZW.ToString();

                this.lblJKLM9_Z.Text = this.Master.PJHMaxZJ.ToString();
                this.lblJKLM21_Z.Text = this.Master.PJHMinZJ.ToString();
                this.lblJKLM10_Z.Text = this.Master.PJHMinSAH.ToString();
                this.lblJKLM13_Z.Text = "N.A.";//this.Master.PJHLPHS.ToString() + "%";
                this.lblJKLM14_Z.Text = this.Master.PJHSAHZWS.ToString();
                //this.lblJKLM20_Z.Text = this.Master.BestLineValue.ToString();
                //this.lblJKLM15_Z.Text = this.Master.PJHMaxMTM.ToString();
                //this.lblJKLM16_Z.Text = this.Master.PJHDownLDL.ToString();
                //this.lblJKLM17_Z.Text = this.Master.PJHMTMPercent.ToString() + "%";
            }
            #endregion

        }

        #endregion

        #region 審批
        private void barToolbarsListItemAudit_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //zrtag
            //if (this.Master.Auditor == null || this.Master.Auditor == "")
            //{
            //    DialogResult dialogResult = MessageBox.Show("您是否通過審批?", "提示", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question);

            //    if (dialogResult == DialogResult.Yes)
            //    {
            //        this.Master.Save();
            //        this.AddUndoQueue(this.GetSaveList(), "通過審批");
            //        this.Master.AuditOperation(PH.AuthManage.Utils.AuthController.UserID, true);
            //        MessageBox.Show("當前版本已通過您的審批", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //        this.Return();
            //    }
            //    else if (dialogResult == DialogResult.No)
            //    {
            //        this.Master.Save();
            //        this.AddUndoQueue(this.GetSaveList(), "未通過審批");
            //        this.Master.AuditOperation(PH.AuthManage.Utils.AuthController.UserID, false);
            //        MessageBox.Show("當前版本未通過您的審批", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //        this.Return();
            //    }
            //    ((frmStyleMasterList)this.ParentControl).Refresh();
            //}
        }
        #endregion

        #region 剪切
        private int SaveCurXH = -19;
        private void barToolbarsListItemCut_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            StyleProcedure_F CurInfo = (StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current;
            SaveInfo = new StyleProcedure_F();
            CurInfo.CloneTo(SaveInfo);

            SaveCurXH = GetSelectRowIndex();

        }
        #endregion

        #region 粘貼
        private void barToolbarsListItemPaste_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (SaveInfo != null)
            {
                //zttag this.AddUndoQueue(this.GetSaveList(), "粘贴");

                StyleProcedure_F info = (StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current;
                info.TeamGSD = SaveInfo.TeamGSD;
                info.TeamYH = SaveInfo.TeamYH;
                info.SN = SaveInfo.SN;
                info.WorkSN = SaveInfo.WorkSN;
                info.GSDBN = SaveInfo.GSDBN;
                info.CJBH = SaveInfo.CJBH;
                info.YHBN = SaveInfo.YHBN;
                info.GSDCP = SaveInfo.GSDCP;
                info.CJCP = SaveInfo.CJCP;
                info.YHCP = SaveInfo.YHCP;
                info.WorkName = SaveInfo.WorkName;
                info.YCType = SaveInfo.YCType;
                info.YCAdj = SaveInfo.YCAdj;
                info.YCSD = SaveInfo.YCSD;
                info.GSDSAHSN = SaveInfo.GSDSAHSN;
                info.JSCL = SaveInfo.JSCL;
                info.CWorkSN = SaveInfo.CWorkSN;
                info.JWorkSN = SaveInfo.JWorkSN;
                info.CJQR = SaveInfo.CJQR;
                info.YHSAHSN = SaveInfo.YHSAHSN;
                info.Move = SaveInfo.Move;
                info.LDL = SaveInfo.LDL;
                info.GZW = SaveInfo.GZW;
                info.GRDH = SaveInfo.GRDH;
                info.YHMTM = SaveInfo.YHMTM;
                info.CFlag = SaveInfo.CFlag;
                info.JFlag = SaveInfo.JFlag;
                info.YCDM = SaveInfo.YCDM;

                info.KHKH = SaveInfo.KHKH;
                info.PHKH = SaveInfo.PHKH;
                info.Edition = SaveInfo.Edition;
                info.ZH = SaveInfo.ZH;


                if (SaveCurXH != -19) //剪切
                {
                    StyleProcedure_F CutInfo = (StyleProcedure_F)this.ChildStyleProcedureListForm.gridView1.GetRow(SaveCurXH);

                    System.Data.Linq.EntitySet<StyleProcedure_F> Infos = this.CurStyleProcedureList; //(this.BindingSource.Current as StyleMaster).StyleProcedure_Fs;
                    this.Master.ResetXH(SaveCurXH + 1, -1);

                    Infos.Remove(CutInfo);
                    (this.DataContext as LineBalanceIIDataContext).StyleProcedure_Fs.DeleteOnSubmit(CutInfo);
                }
                this.SaveInfo = null;
                this.SaveCurXH = -19;
                this.Master.CalBNCX();
                this.CalSummary();

                this.RefreshPageData();
            }
        }
        #endregion

        #region 複製
        private StyleProcedure_F SaveInfo = null;
        private void barToolbarsListItemCopy_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SaveCurXH = -19;
            StyleProcedure_F CurInfo = (StyleProcedure_F)this.ChildStyleProcedureListForm.BindingSource.Current;
            SaveInfo = new StyleProcedure_F();
            CurInfo.CloneTo(SaveInfo);
        }
        #endregion

        #region 重新計算摘要
        private void barToolbarsListItemCal_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.CalSummary();
        }
        #endregion

        #region Print or 出圖

        private void Print()
        {
            //this.ChildStyleProcedureListForm.gridView1.Columns.Remove(this.ChildStyleProcedureListForm.gridView1.Columns["YCSD"]);


            PrintSetupForm fPrintSetup = new PrintSetupForm();
            fPrintSetup.SideProgramid = this.SideProgramID; //add by joseph
            fPrintSetup.FileID = this.FileID;
            fPrintSetup.FormName = this.FormName;
            fPrintSetup.Langid = this.Langid;

            if (fPrintSetup.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }

            this.Cursor = Cursors.WaitCursor;

            // this.styleProcedureListForm1.gridView1.Columns["YCSD"].Visible = false;

            try
            {
                string path = Application.StartupPath + @"\temp.xls";
                if (File.Exists(path))
                {
                    File.Delete(path);
                }

                if (fPrintSetup.PrintMainTable)
                {
                    if (fPrintSetup.PrintEnglish) 
                    {
                        this.ChildStyleProcedureListForm.gridColumn11.Visible = false;
                        this.ChildStyleProcedureListForm.gridColumn12.Visible = false;
                        this.ChildStyleProcedureListForm.colWorkNameEN.Visible = true;
                       
                        this.ChildStyleProcedureListForm.colYCTypeEN.Visible = true;
                    }


                    this.ChildStyleProcedureListForm.gridBand12.Visible = false;
                    this.ChildStyleProcedureListForm.gridBand13.Visible = false;
                    this.ChildStyleProcedureListForm.bandedGridColumn3.Visible = false;
                    this.ChildStyleProcedureListForm.gridColumn24.Visible = false;
                    this.ChildStyleProcedureListForm.gridColumn19.Visible = false;
                    this.ChildStyleProcedureListForm.bandedGridColumn1.Visible = false;
                    this.ChildStyleProcedureListForm.bandedGridColumn4.Visible = false;
                    this.ChildStyleProcedureListForm.gridColumn41.Visible = false;
                    this.ChildStyleProcedureListForm.gridColumn42.Visible = false;

                    this.ChildStyleProcedureListForm.gridColumnCFlag.Visible = true;
                    this.ChildStyleProcedureListForm.gridColumnJFlag.Visible = true;
                    this.ChildStyleProcedureListForm.objListGridControl.ExportToXls(path);
                    this.ChildStyleProcedureListForm.gridColumnCFlag.Visible = false;
                    this.ChildStyleProcedureListForm.gridColumnJFlag.Visible = false;


                    this.ChildStyleProcedureListForm.gridColumn11.Visible = true;
                    this.ChildStyleProcedureListForm.gridColumn12.Visible = true;
                    this.ChildStyleProcedureListForm.colWorkNameEN.Visible = false;
                    this.ChildStyleProcedureListForm.colYCTypeEN.Visible = false;

                }


                ExcelHelper_F excelHelper = new ExcelHelper_F(path, this, this.ChildStyleProcedureListForm.gridView1, this.Master, fPrintSetup.PrintMainTable, fPrintSetup.PrintAdjTable, this.Langid);
                excelHelper.ProcessExcelFormat();
            }
            finally
            {
                this.Cursor = Cursors.Default;
                //this.styleProcedureListForm1.gridView1.Columns["YCSD"].Visible = true;

            }
        }

        private void barToolbarsListItemPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Print();
        }

        private void barToolbars_Print_ItemClick(object sender, ItemClickEventArgs e)
        {
            this.Print();
        }

        private void barToolbars_ExportGraph_ItemClick(object sender, ItemClickEventArgs e)
        {
            //zrtag
            //StyleMaster current = (StyleMaster)this.BindingSource.Current;
            //CSVisioLibrary.Library lib = new CSVisioLibrary.Library(current, Application.StartupPath);
            //lib.Factory = "SL";
            //lib.Line = "T016";
            //lib.InvokePhase = "LB3";
            //lib.MachineIDList = new List<string>();
            //lib.WorkforceIDList = new List<string>();
            //lib.DoOutput();
            //System.Diagnostics.Process.Start(Application.StartupPath + @"\output.vsd");

        }


        /// 出圖
        /// <summary>
        /// 出圖
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnExportGraph_ItemClick(object sender, ItemClickEventArgs e)
        {
            StyleMaster current = (StyleMaster)this.BindingSource.Current;

            //string path = Application.StartupPath + @"\output.vsd";

            Library lib = new Library(current, Application.StartupPath);

            lib.SideProgramID = "P0000166";
            lib.FileID = "LBLayout000001";
            //lib.FormName = "MachineLayoutChart";
            lib.Factory = "SL";
            lib.Line = "T088";
            lib.InvokePhase = "LB3";
            string currentLangID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
            if (currentLangID == "TW" || currentLangID == "CN")
            {
                lib.LangID = "TW";
            }
            else
            {
                lib.LangID = "EN";
            }
            //lib.MachineIDList = new List<string>();
            //lib.WorkforceIDList = new List<string>();
            lib.DoOutput();
            System.Diagnostics.Process.Start(Application.StartupPath + @"\" + lib.OutputVisioName);

            /*
            PH.LineBalanceII.BO.LineBalanceIIDataContext DLQlb3Cnn = new PH.LineBalanceII.BO.LineBalanceIIDataContext();
            var lb3master = (from l3 in DLQlb3Cnn.StyleMasters where l3.KHKH == (this.BindingSource.Current as PH.LWPM.BO.WPMaster).CustStyleCode && l3.PHKH == (this.BindingSource.Current as PH.LWPM.BO.WPMaster).PHStyleCode && l3.Edition == (this.BindingSource.Current as PH.LWPM.BO.WPMaster).Version && l3.ZH == (this.BindingSource.Current as PH.LWPM.BO.WPMaster).ZH select l3).ToList();
            if (lb3master.Count > 0)
            {
                CSVisioLibrary.Library Lib = new CSVisioLibrary.Library(lb3master[0], this.BindingSource.Current as PH.LWPM.BO.WPMaster, Application.StartupPath);

                Lib.Factory = (this.BindingSource.Current as PH.LWPM.BO.WPMaster).Factory;
                Lib.Line = (this.BindingSource.Current as PH.LWPM.BO.WPMaster).LineCode;

                //Lib.MachineIDList = new List<string>();
                //Lib.WorkforceIDList = new List<string>();

                if ((this.BindingSource.Current as PH.LWPM.BO.WPMaster).StartTime != null)
                    Lib.QNBeginDate = Convert.ToDateTime((this.BindingSource.Current as PH.LWPM.BO.WPMaster).StartTime);
                if ((this.BindingSource.Current as PH.LWPM.BO.WPMaster).EndTime != null)
                    Lib.QNEndDate = Convert.ToDateTime((this.BindingSource.Current as PH.LWPM.BO.WPMaster).EndTime);
                Lib.DoOutput();
                System.Diagnostics.Process.Start(System.Windows.Forms.Application.StartupPath + "\\output.vsd");
            }*/

        }
        #endregion

        #region 工作位摘要自定義Cell
        private void bandedGridView1_CustomDrawFooterCell(object sender, FooterCellCustomDrawEventArgs e)
        {
            e.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            if (e.Column.FieldName == "NoneLBYCCount")
            {
                e.Info.DisplayText = this.Master.GSDGZW;
            }
            else if (e.Column.FieldName == "CJLBYCCount")
            {
                e.Info.DisplayText = this.Master.CJGZW;
            }
            //else if (e.Column.FieldName == "YHLBYCCount")
            //{
            //    e.Info.DisplayText = this.Master.YHGZW;
            //}
            else if (e.Column.FieldName == "BestLBYCCount")
            {
                e.Info.DisplayText = this.Master.PJHGZW;
            }
        }
        #endregion

        #region undo功能

        /// 保存每一步的操作,為undo功能服務
        /// <summary>
        /// 保存每一步的操作
        /// </summary>
        private void AddUndoList()
        {
            StyleMaster perobj = new StyleMaster();

            #region copy 屬性
            perobj.KHKH = this.Master.KHKH;
            perobj.PHKH = this.Master.PHKH;
            perobj.Edition = this.Master.Edition;
            perobj.ZH = this.Master.ZH;
            perobj.BKH = this.Master.BKH;
            perobj.CPLB = this.Master.CPLB;
            perobj.SizeYJ = this.Master.SizeYJ;
            perobj.IsUsed = this.Master.IsUsed;
            perobj.Phase = this.Master.Phase;
            perobj.AuditFlag = this.Master.AuditFlag;
            perobj.Auditor = this.Master.Auditor;
            perobj.Ipack = this.Master.Ipack;
            perobj.BestLineValue = this.Master.BestLineValue;
            perobj.Selected = this.Master.Selected;
            #endregion

            foreach (StyleProcedure_F oldobj in CurStyleProcedureList)
            {
                StyleProcedure_F newobj = new StyleProcedure_F();

                EntityCopy(newobj, oldobj);

                perobj.StyleProcedure_Fs.Add(newobj);
            }

            this.undolistStyleMaster.Add(perobj);


            if (this.barToolbarsListItemUndo.Enabled == false)
                this.barToolbarsListItemUndo.Enabled = true;

        }

        /// undo功能
        /// <summary>
        /// undo功能
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barToolbarsListItemUndo_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (undolistStyleMaster.Count > 0)
            {
                StyleMaster Perobj = (StyleMaster)this.undolistStyleMaster[this.undolistStyleMaster.Count - 1];


                //////////////////////////////刪除原數據子信息，還原主信息//////////////////////////////////////               
                foreach (StyleProcedure_F sp in this.Master.StyleProcedure_Fs)
                {
                    try
                    {
                        (this.DataContext as LineBalanceIIDataContext).StyleProcedure_Fs.DeleteOnSubmit(sp);
                    }
                    catch { continue; }

                }

                this.Master.BKH = Perobj.BKH;
                this.Master.CPLB = Perobj.CPLB;
                this.Master.SizeYJ = Perobj.SizeYJ;
                this.Master.IsUsed = Perobj.IsUsed;
                this.Master.Phase = Perobj.Phase;
                this.Master.AuditFlag = Perobj.AuditFlag;
                this.Master.Auditor = Perobj.Auditor;
                this.Master.Ipack = Perobj.Ipack;
                this.Master.BestLineValue = Perobj.BestLineValue;
                this.Master.Selected = Perobj.Selected;


                this.Master.StyleProcedure_Fs.Clear();
                this.RefreshPageData();

                //////////////////////////////來原原數據//////////////////////////

                foreach (StyleProcedure_F obj in Perobj.StyleProcedure_Fs)
                {
                    StyleProcedure_F newobj = new StyleProcedure_F();

                    EntityCopy(newobj, obj);

                    (this.DataContext as LineBalanceIIDataContext).StyleProcedure_Fs.InsertOnSubmit(newobj);

                    this.Master.StyleProcedure_Fs.Add(newobj);
                }
                this.undolistStyleMaster.RemoveAt(undolistStyleMaster.Count - 1);

                ////////////////////////////////刷新數據////////////////////////
                this.InitPhase();
                this.CalSummary();
                this.RefreshPageData();

                if (this.undolistStyleMaster.Count == 0)
                    this.barToolbarsListItemUndo.Enabled = false;

            }

        }

        /// copy StyleProcedure_F
        /// <summary>
        /// copy StyleProcedure_F
        /// </summary>
        /// <param name="newobj"></param>
        /// <param name="oldobj"></param>
        private void EntityCopy(StyleProcedure_F newobj, StyleProcedure_F oldobj)
        {
            newobj.KHKH = oldobj.KHKH;
            newobj.PHKH = oldobj.PHKH;
            newobj.Edition = oldobj.Edition;
            newobj.ZH = oldobj.ZH;
            newobj.ID = oldobj.ID;
            newobj.XH = oldobj.XH;
            newobj.TeamGSD = oldobj.TeamGSD;
            newobj.TeamYH = oldobj.TeamYH;
            newobj.SN = oldobj.SN;
            newobj.WorkSN = oldobj.WorkSN;
            newobj.CPGS = oldobj.CPGS;
            newobj.GSDBN = oldobj.GSDBN;
            newobj.CJBH = oldobj.CJBH;
            newobj.YHBN = oldobj.YHBN;
            newobj.GSDCP = oldobj.GSDCP;
            newobj.CJCP = oldobj.CJCP;
            newobj.YHCP = oldobj.YHCP;

            newobj.WorkName = oldobj.WorkName;
            newobj.WorkNameEN = oldobj.WorkNameEN;
            newobj.YCDM = oldobj.YCDM;
            newobj.YCType = oldobj.YCType;
            newobj.YCTypeEN = oldobj.YCTypeEN;

            newobj.YCAdj = oldobj.YCAdj;
            newobj.GSDSAHSN = oldobj.GSDSAHSN;
            newobj.JSCL = oldobj.JSCL;
            newobj.CWorkSN = oldobj.CWorkSN;
            newobj.JWorkSN = oldobj.JWorkSN;
            newobj.BNCX = oldobj.BNCX;
            newobj.YHBNCX = oldobj.YHBNCX;
            newobj.JSCBNCX = oldobj.JSCBNCX;
            newobj.CJQR = oldobj.CJQR;
            newobj.Move = oldobj.Move;
            newobj.LDL = oldobj.LDL;
            newobj.GZW = oldobj.GZW;
            newobj.GZW_Support = oldobj.GZW_Support;
            newobj.GZW_Floater = oldobj.GZW_Floater;
            newobj.GRDH = oldobj.GRDH;
            newobj.YHMTM = oldobj.YHMTM;
            newobj.YHSAHSN = oldobj.YHSAHSN;
            newobj.BisYHMTM = oldobj.BisYHMTM;
            newobj.BisYHSAHSN = oldobj.BisYHSAHSN;
            newobj.JSCSAHSN = oldobj.JSCSAHSN;
            newobj.PJHMTM = oldobj.PJHMTM;
            newobj.PJHSAHSN = oldobj.PJHSAHSN;
            newobj.BestMTM = oldobj.BestMTM;
            newobj.BestSAHSN = oldobj.BestSAHSN;
            newobj.JGJJ = oldobj.JGJJ;
            newobj.CFlag = oldobj.CFlag;
            newobj.JFlag = oldobj.JFlag;
            newobj.BeforeJSCCFlag = oldobj.BeforeJSCCFlag;
            newobj.BeforeJSCJFlag = oldobj.BeforeJSCJFlag;
            newobj.GZWMergeShowValue = oldobj.GZWMergeShowValue;
            newobj.BurstNo = oldobj.BurstNo;
            newobj.Width = oldobj.Width;
            newobj.Length = oldobj.Length;
            newobj.YHLineValue = oldobj.YHLineValue;
            newobj.BestLineValue = oldobj.BestLineValue;
            newobj.YCSD = oldobj.YCSD;
            newobj.FAE = oldobj.FAE;


        }
        #endregion

        /// 取得明細中所在列的indexno
        /// <summary>
        /// 取得明細中所在列的indexno
        /// </summary>
        /// <returns></returns>
        private int GetSelectRowIndex()
        {
            int indexno = 0;
            for (int i = 0; i < this.styleProcedureListForm_F1.BindingSource.Count; i++)
            {
                if (((StyleProcedure_F)this.styleProcedureListForm_F1.BindingSource[i]).XH == ((StyleProcedure_F)this.styleProcedureListForm_F1.BindingSource.Current).XH)
                {
                    indexno = i;
                    break;
                }
            }

            return indexno;

        }

        /// 刷新界面的數據
        /// <summary>
        /// 刷新界面的數據
        /// </summary>
        private void RefreshPageData()
        {

            this.styleProcedureListForm_F1.DataSource = from a in this.Master.StyleProcedure_Fs
                                                        orderby a.XH
                                                        select a;
            this.styleProcedureListForm_F1.gridView1.RefreshData();

        }

        /// 刷新界面的數據
        /// <summary>
        /// 刷新界面的數據
        /// </summary>
        private void RefreshPageData(StyleMaster sm)
        {
            //(this.DataContext as LineBalanceIIDataContext).StyleProcedure_Fs.DeleteAllOnSubmit(this.Master.StyleProcedure_Fs); 

            this.styleProcedureListForm_F1.DataSource = from a in sm.StyleProcedure_Fs
                                                        orderby a.XH
                                                        select a;

            this.styleProcedureListForm_F1.gridView1.RefreshData();

        }

        /// 將linq裡的值delete
        /// <summary>
        /// 將linq裡的值delete
        /// </summary>
        private void LinqDataDelete()
        {
            foreach (StyleProcedure_F sp in this.Master.StyleProcedure_Fs)
            {
                try
                {
                    (this.DataContext as LineBalanceIIDataContext).StyleProcedure_Fs.DeleteOnSubmit(sp);
                }
                catch { continue; }
            }
        }

        /// 將linq裡的值insert
        /// <summary>
        /// 將linq裡的值insert
        /// </summary>
        private void LinqDataInsert()
        {
            foreach (StyleProcedure_F info in this.Master.StyleProcedure_Fs)
            {
                (this.DataContext as LineBalanceIIDataContext).StyleProcedure_Fs.InsertOnSubmit(info);
            }
        }

        /// <summary>
        /// 在做了上移和下移后，处理jfalg,cfalg 的值
        /// </summary>

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.barToolBarYH = new DevExpress.XtraBars.Bar();
            this.barToolbarsListItemAutoOptimize = new DevExpress.XtraBars.BarEditItem();
            this.ItemCheckAutoOptimize = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.barToolbarsListItemAutoBisOptimize = new DevExpress.XtraBars.BarEditItem();
            this.ItemCheckAutoBisOptimize = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.barToolbarsListItemAutoJSC = new DevExpress.XtraBars.BarEditItem();
            this.ItemCheckAutoJSC = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.barToolbarsListItemAutoPJH = new DevExpress.XtraBars.BarEditItem();
            this.ItemCheckAutoPJH = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.barToolbar = new DevExpress.XtraBars.Bar();
            this.barToolbarsListItemFixed = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbarsListItemMovePrevious = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbarsListItemMoveNext = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbarsListItemDelete = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbarsListItemCopy = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbarsListItemCut = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbarsListItemPaste = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbarsListItemCOp = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbarsListItemJOp = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbarsListImportData = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbarsListItemUndo = new DevExpress.XtraBars.BarButtonItem();
            this.bar3 = new DevExpress.XtraBars.Bar();
            this.barDockControl1 = new DevExpress.XtraBars.BarDockControl();
            this.barDockControl2 = new DevExpress.XtraBars.BarDockControl();
            this.barDockControl3 = new DevExpress.XtraBars.BarDockControl();
            this.barDockControl4 = new DevExpress.XtraBars.BarDockControl();
            this.barToolbarsListItemCal = new DevExpress.XtraBars.BarButtonItem();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.repositoryItemTextEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.lblCustomerStyle = new System.Windows.Forms.Label();
            this.lblPHStyle = new System.Windows.Forms.Label();
            this.txtKHKH = new DevExpress.XtraEditors.TextEdit();
            this.txtCPLB = new DevExpress.XtraEditors.TextEdit();
            this.lblCategory = new System.Windows.Forms.Label();
            this.lblSize = new System.Windows.Forms.Label();
            this.txtSizeYJ = new DevExpress.XtraEditors.TextEdit();
            this.lblZH = new System.Windows.Forms.Label();
            this.lblEdition = new System.Windows.Forms.Label();
            this.txtEdition = new DevExpress.XtraEditors.TextEdit();
            this.txtZH = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtPHKH = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblValid = new System.Windows.Forms.Label();
            this.dockManager = new DevExpress.XtraBars.Docking.DockManager(this.components);
            this.hideContainerBottom = new DevExpress.XtraBars.Docking.AutoHideContainer();
            this.dockPanelSummary = new DevExpress.XtraBars.Docking.DockPanel();
            this.dockPanel1_Container = new DevExpress.XtraBars.Docking.ControlContainer();
            this.tableSum = new System.Windows.Forms.TableLayoutPanel();
            this.lblNonLB = new System.Windows.Forms.Label();
            this.lblJKLM1_Z = new System.Windows.Forms.Label();
            this.lblJKLM1_Y = new System.Windows.Forms.Label();
            this.lblGSD = new System.Windows.Forms.Label();
            this.lblAGroup = new System.Windows.Forms.Label();
            this.lblBGroup = new System.Windows.Forms.Label();
            this.lblCGroup = new System.Windows.Forms.Label();
            this.lblSection = new System.Windows.Forms.Label();
            this.lblWorkforce = new System.Windows.Forms.Label();
            this.lblWorkStation = new System.Windows.Forms.Label();
            this.lblMaxSAH = new System.Windows.Forms.Label();
            this.lblMinSAH = new System.Windows.Forms.Label();
            this.lblLBUsage = new System.Windows.Forms.Label();
            this.lblUsage = new System.Windows.Forms.Label();
            this.lblJKLM1_O = new System.Windows.Forms.Label();
            this.lblJKLM1_R = new System.Windows.Forms.Label();
            this.lblJKLM2_O = new System.Windows.Forms.Label();
            this.lblJKLM3_O = new System.Windows.Forms.Label();
            this.lblJKLM4_O = new System.Windows.Forms.Label();
            this.lblJKLM6_O = new System.Windows.Forms.Label();
            this.lblJKLM6_R = new System.Windows.Forms.Label();
            this.lblJKLM7_R = new System.Windows.Forms.Label();
            this.lblJKLM7_O = new System.Windows.Forms.Label();
            this.lblJKLM9_O = new System.Windows.Forms.Label();
            this.lblJKLM9_R = new System.Windows.Forms.Label();
            this.lblJKLM10_O = new System.Windows.Forms.Label();
            this.lblJKLM10_R = new System.Windows.Forms.Label();
            this.lblJKLM13_R = new System.Windows.Forms.Label();
            this.lblJKLM14_O = new System.Windows.Forms.Label();
            this.lblJKLM14_R = new System.Windows.Forms.Label();
            this.lblJKLM8_O = new System.Windows.Forms.Label();
            this.lblJKLM8_R = new System.Windows.Forms.Label();
            this.lblJKLM2_Y = new System.Windows.Forms.Label();
            this.lblJKLM2_Z = new System.Windows.Forms.Label();
            this.lblJKLM3_Y = new System.Windows.Forms.Label();
            this.lblJKLM4_Y = new System.Windows.Forms.Label();
            this.lblJKLM6_Y = new System.Windows.Forms.Label();
            this.lblJKLM7_Y = new System.Windows.Forms.Label();
            this.lblJKLM8_Y = new System.Windows.Forms.Label();
            this.lblJKLM9_Y = new System.Windows.Forms.Label();
            this.lblJKLM10_Y = new System.Windows.Forms.Label();
            this.lblJKLM13_Y = new System.Windows.Forms.Label();
            this.lblJKLM14_Y = new System.Windows.Forms.Label();
            this.lblJKLM3_Z = new System.Windows.Forms.Label();
            this.lblJKLM4_Z = new System.Windows.Forms.Label();
            this.lblJKLM6_Z = new System.Windows.Forms.Label();
            this.lblJKLM7_Z = new System.Windows.Forms.Label();
            this.lblJKLM8_Z = new System.Windows.Forms.Label();
            this.lblJKLM9_Z = new System.Windows.Forms.Label();
            this.lblJKLM10_Z = new System.Windows.Forms.Label();
            this.lblJKLM13_Z = new System.Windows.Forms.Label();
            this.lblJKLM14_Z = new System.Windows.Forms.Label();
            this.lblJSC = new System.Windows.Forms.Label();
            this.lblPJH = new System.Windows.Forms.Label();
            this.lblCJLB = new System.Windows.Forms.Label();
            this.label107 = new System.Windows.Forms.Label();
            this.lblMinZJ = new System.Windows.Forms.Label();
            this.lblLine = new System.Windows.Forms.Label();
            this.lblJKLM13_O = new System.Windows.Forms.Label();
            this.lblJKLM3_R = new System.Windows.Forms.Label();
            this.lblJKLM4_R = new System.Windows.Forms.Label();
            this.lblJKLM21_O = new System.Windows.Forms.Label();
            this.lblJKLM21_R = new System.Windows.Forms.Label();
            this.lblJKLM21_Y = new System.Windows.Forms.Label();
            this.lblJKLM21_Z = new System.Windows.Forms.Label();
            this.lblJKLM2_R = new System.Windows.Forms.Label();
            this.lblFloater = new System.Windows.Forms.Label();
            this.lblSumFloater = new System.Windows.Forms.Label();
            this.lblDetail = new System.Windows.Forms.Label();
            this.lblBestLB = new System.Windows.Forms.Label();
            this.lblJKLM20_Y = new System.Windows.Forms.Label();
            this.dockPanelMemo = new DevExpress.XtraBars.Docking.DockPanel();
            this.dockPanel2_Container = new DevExpress.XtraBars.Docking.ControlContainer();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.lblIEConfirm = new System.Windows.Forms.Label();
            this.lblCreator = new System.Windows.Forms.Label();
            this.lblCreateDT = new System.Windows.Forms.Label();
            this.lblWorkShopConfirm = new System.Windows.Forms.Label();
            this.lblDate = new System.Windows.Forms.Label();
            this.lblPrepareMan = new System.Windows.Forms.Label();
            this.lblDate1 = new System.Windows.Forms.Label();
            this.lblDate2 = new System.Windows.Forms.Label();
            this.lblConf_IE = new System.Windows.Forms.Label();
            this.lblDate_IE = new System.Windows.Forms.Label();
            this.lblConfirm_Prod = new System.Windows.Forms.Label();
            this.lblDate_Prod = new System.Windows.Forms.Label();
            this.tableLayoutPanel2 = new System.Windows.Forms.TableLayoutPanel();
            this.lblExplain = new System.Windows.Forms.Label();
            this.lblConfirm = new System.Windows.Forms.Label();
            this.lblSplit = new System.Windows.Forms.Label();
            this.lblMerge = new System.Windows.Forms.Label();
            this.lblConfirmOp2 = new System.Windows.Forms.Label();
            this.lblConfirmOp1 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lblBest = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.gridNoCJGZW = new DevExpress.XtraGrid.GridControl();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBandNonLB = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandColNonLBCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandColNonLBType = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandColNonLBCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand24 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn7 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn8 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn9 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand25 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn10 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn11 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn12 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand26 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn13 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn14 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn15 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn16 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.dockPanel3 = new DevExpress.XtraBars.Docking.DockPanel();
            this.dockPanel3_Container = new DevExpress.XtraBars.Docking.ControlContainer();
            this.barToolbars_Print = new DevExpress.XtraBars.BarButtonItem();
            this.barToolbars_ExportGraph = new DevExpress.XtraBars.BarButtonItem();
            this.tableLayoutPanel3 = new System.Windows.Forms.TableLayoutPanel();
            this.edtUpdateTime = new DevExpress.XtraEditors.TextEdit();
            this.lblUpdateTime = new DevExpress.XtraEditors.LabelControl();
            this.edtUpdater = new DevExpress.XtraEditors.TextEdit();
            this.edtCreater = new DevExpress.XtraEditors.TextEdit();
            this.lblUpdater = new DevExpress.XtraEditors.LabelControl();
            this.lblCust = new System.Windows.Forms.Label();
            this.lblCreater = new DevExpress.XtraEditors.LabelControl();
            this.txtCust = new DevExpress.XtraEditors.TextEdit();
            this.edtJZ_Prod = new DevExpress.XtraEditors.TextEdit();
            this.lblJZ_Prod = new System.Windows.Forms.Label();
            this.lblProc = new System.Windows.Forms.Label();
            this.cbbProc = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblStatu = new System.Windows.Forms.Label();
            this.lueStatu = new DevExpress.XtraEditors.LookUpEdit();
            this.deValid = new DevExpress.XtraEditors.DateEdit();
            this.lblCreateTime = new DevExpress.XtraEditors.LabelControl();
            this.edtCreateTime = new DevExpress.XtraEditors.TextEdit();
            this.lblFac = new System.Windows.Forms.Label();
            this.cbbFac = new DevExpress.XtraEditors.ComboBoxEdit();
            this.barToolbarsListItemPrint = new DevExpress.XtraBars.BarButtonItem();
            this.btnExportGraph = new DevExpress.XtraBars.BarButtonItem();
            this.styleProcedureListForm_F1 = new PH.LineBalanceII.UI.StyleProcedureListForm_F();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).BeginInit();
            this.headerTitleBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemCheckAutoOptimize)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemCheckAutoBisOptimize)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemCheckAutoJSC)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemCheckAutoPJH)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtKHKH.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCPLB.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSizeYJ.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEdition.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtZH.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPHKH.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dockManager)).BeginInit();
            this.hideContainerBottom.SuspendLayout();
            this.dockPanelSummary.SuspendLayout();
            this.dockPanel1_Container.SuspendLayout();
            this.tableSum.SuspendLayout();
            this.dockPanelMemo.SuspendLayout();
            this.dockPanel2_Container.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            this.tableLayoutPanel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridNoCJGZW)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.dockPanel3.SuspendLayout();
            this.tableLayoutPanel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.edtUpdateTime.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtUpdater.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCreater.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCust.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtJZ_Prod.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbProc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueStatu.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deValid.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deValid.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCreateTime.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbFac.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEdtbarManager
            // 
            this.objEdtbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barToolbarsListItemPrint,
            this.btnExportGraph,
            this.barButtonItem1});
            this.objEdtbarManager.MaxItemId = 24;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            this.objEditBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemPrint, "", true, true, false, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnExportGraph, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1, true)});
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 161);
            this.splitterControl1.Size = new System.Drawing.Size(1128, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.tableLayoutPanel3);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 78);
            this.headerTitleBar.Size = new System.Drawing.Size(1128, 83);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.tableLayoutPanel3, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Controls.Add(this.styleProcedureListForm_F1);
            this.panelControl1.Location = new System.Drawing.Point(0, 161);
            this.panelControl1.Size = new System.Drawing.Size(1128, 217);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 1;
            this.panelControl1.Controls.SetChildIndex(this.xtraTabControl1, 0);
            this.panelControl1.Controls.SetChildIndex(this.styleProcedureListForm_F1, 0);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Size = new System.Drawing.Size(3, 22);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Dock = System.Windows.Forms.DockStyle.None;
            this.xtraTabControl1.Location = new System.Drawing.Point(929, 163);
            this.xtraTabControl1.SelectedTabPage = this.xtraTabPage1;
            this.xtraTabControl1.Size = new System.Drawing.Size(12, 54);
            this.xtraTabControl1.Visible = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LineBalanceII.BO.StyleMaster);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(32767, 0);
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.barToolBarYH,
            this.barToolbar,
            this.bar3});
            this.barManager1.DockControls.Add(this.barDockControl1);
            this.barManager1.DockControls.Add(this.barDockControl2);
            this.barManager1.DockControls.Add(this.barDockControl3);
            this.barManager1.DockControls.Add(this.barDockControl4);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barToolbarsListItemAutoOptimize,
            this.barToolbarsListItemAutoBisOptimize,
            this.barToolbarsListItemAutoJSC,
            this.barToolbarsListItemAutoPJH,
            this.barToolbarsListItemFixed,
            this.barToolbarsListItemMovePrevious,
            this.barToolbarsListItemMoveNext,
            this.barToolbarsListItemDelete,
            this.barToolbarsListItemCopy,
            this.barToolbarsListItemCut,
            this.barToolbarsListItemPaste,
            this.barToolbarsListItemCOp,
            this.barToolbarsListItemJOp,
            this.barToolbarsListImportData,
            this.barToolbarsListItemCal,
            this.barToolbarsListItemUndo});
            this.barManager1.MainMenu = this.barToolbar;
            this.barManager1.MaxItemId = 24;
            this.barManager1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1,
            this.repositoryItemTextEdit2,
            this.ItemCheckAutoOptimize,
            this.ItemCheckAutoBisOptimize,
            this.ItemCheckAutoJSC,
            this.ItemCheckAutoPJH});
            this.barManager1.StatusBar = this.bar3;
            // 
            // barToolBarYH
            // 
            this.barToolBarYH.BarName = "Tools";
            this.barToolBarYH.DockCol = 0;
            this.barToolBarYH.DockRow = 1;
            this.barToolBarYH.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.barToolBarYH.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(((DevExpress.XtraBars.BarLinkUserDefines)((DevExpress.XtraBars.BarLinkUserDefines.PaintStyle | DevExpress.XtraBars.BarLinkUserDefines.Width))), this.barToolbarsListItemAutoOptimize, "", true, true, true, 50, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemAutoBisOptimize, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(((DevExpress.XtraBars.BarLinkUserDefines)((DevExpress.XtraBars.BarLinkUserDefines.PaintStyle | DevExpress.XtraBars.BarLinkUserDefines.Width))), this.barToolbarsListItemAutoJSC, "", false, true, true, 50, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemAutoPJH, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.barToolBarYH.Text = "YHToolBar";
            // 
            // barToolbarsListItemAutoOptimize
            // 
            this.barToolbarsListItemAutoOptimize.AutoHideEdit = false;
            this.barToolbarsListItemAutoOptimize.Caption = "自動優化";
            this.barToolbarsListItemAutoOptimize.Edit = this.ItemCheckAutoOptimize;
            this.barToolbarsListItemAutoOptimize.EditValue = false;
            this.barToolbarsListItemAutoOptimize.Id = 28;
            this.barToolbarsListItemAutoOptimize.Name = "barToolbarsListItemAutoOptimize";
            this.barToolbarsListItemAutoOptimize.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // ItemCheckAutoOptimize
            // 
            this.ItemCheckAutoOptimize.AutoHeight = false;
            this.ItemCheckAutoOptimize.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Style1;
            this.ItemCheckAutoOptimize.Name = "ItemCheckAutoOptimize";
            this.ItemCheckAutoOptimize.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.ItemCheckAutoOptimize.CheckedChanged += new System.EventHandler(this.ItemCheckAutoOptimize_CheckedChanged);
            // 
            // barToolbarsListItemAutoBisOptimize
            // 
            this.barToolbarsListItemAutoBisOptimize.Caption = "自動二度優化";
            this.barToolbarsListItemAutoBisOptimize.Edit = this.ItemCheckAutoBisOptimize;
            this.barToolbarsListItemAutoBisOptimize.EditValue = false;
            this.barToolbarsListItemAutoBisOptimize.Id = 3;
            this.barToolbarsListItemAutoBisOptimize.Name = "barToolbarsListItemAutoBisOptimize";
            this.barToolbarsListItemAutoBisOptimize.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // ItemCheckAutoBisOptimize
            // 
            this.ItemCheckAutoBisOptimize.AutoHeight = false;
            this.ItemCheckAutoBisOptimize.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Style1;
            this.ItemCheckAutoBisOptimize.Name = "ItemCheckAutoBisOptimize";
            this.ItemCheckAutoBisOptimize.CheckedChanged += new System.EventHandler(this.ItemCheckAutoBisOptimize_CheckedChanged);
            // 
            // barToolbarsListItemAutoJSC
            // 
            this.barToolbarsListItemAutoJSC.AccessibleDescription = "Interval Split";
            this.barToolbarsListItemAutoJSC.Caption = "優化(間時拆)";
            this.barToolbarsListItemAutoJSC.Edit = this.ItemCheckAutoJSC;
            this.barToolbarsListItemAutoJSC.EditValue = false;
            this.barToolbarsListItemAutoJSC.Id = 4;
            this.barToolbarsListItemAutoJSC.Name = "barToolbarsListItemAutoJSC";
            // 
            // ItemCheckAutoJSC
            // 
            this.ItemCheckAutoJSC.AutoHeight = false;
            this.ItemCheckAutoJSC.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Style1;
            this.ItemCheckAutoJSC.Name = "ItemCheckAutoJSC";
            this.ItemCheckAutoJSC.CheckedChanged += new System.EventHandler(this.ItemCheckAutoJSC_CheckedChanged);
            // 
            // barToolbarsListItemAutoPJH
            // 
            this.barToolbarsListItemAutoPJH.Caption = "優化(平准化)";
            this.barToolbarsListItemAutoPJH.Edit = this.ItemCheckAutoPJH;
            this.barToolbarsListItemAutoPJH.EditValue = false;
            this.barToolbarsListItemAutoPJH.Id = 5;
            this.barToolbarsListItemAutoPJH.Name = "barToolbarsListItemAutoPJH";
            // 
            // ItemCheckAutoPJH
            // 
            this.ItemCheckAutoPJH.AutoHeight = false;
            this.ItemCheckAutoPJH.CheckStyle = DevExpress.XtraEditors.Controls.CheckStyles.Style1;
            this.ItemCheckAutoPJH.Name = "ItemCheckAutoPJH";
            this.ItemCheckAutoPJH.CheckedChanged += new System.EventHandler(this.ItemCheckAutoPJH_CheckedChanged);
            // 
            // barToolbar
            // 
            this.barToolbar.BarName = "Main menu";
            this.barToolbar.DockCol = 0;
            this.barToolbar.DockRow = 0;
            this.barToolbar.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.barToolbar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemFixed, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemMovePrevious, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemMoveNext, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemDelete, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemCopy, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemCut, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemPaste, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemCOp, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemJOp, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListImportData, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barToolbarsListItemUndo, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.barToolbar.OptionsBar.MultiLine = true;
            this.barToolbar.OptionsBar.UseWholeRow = true;
            this.barToolbar.Text = "Toolbar";
            // 
            // barToolbarsListItemFixed
            // 
            this.barToolbarsListItemFixed.Caption = "固定列";
            this.barToolbarsListItemFixed.Id = 6;
            this.barToolbarsListItemFixed.Name = "barToolbarsListItemFixed";
            this.barToolbarsListItemFixed.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemFixed_ItemClick);
            // 
            // barToolbarsListItemMovePrevious
            // 
            this.barToolbarsListItemMovePrevious.Caption = "上移";
            this.barToolbarsListItemMovePrevious.Id = 7;
            this.barToolbarsListItemMovePrevious.Name = "barToolbarsListItemMovePrevious";
            this.barToolbarsListItemMovePrevious.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemMovePrevious_ItemClick);
            // 
            // barToolbarsListItemMoveNext
            // 
            this.barToolbarsListItemMoveNext.Caption = "下移";
            this.barToolbarsListItemMoveNext.Id = 8;
            this.barToolbarsListItemMoveNext.Name = "barToolbarsListItemMoveNext";
            this.barToolbarsListItemMoveNext.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemMoveNext_ItemClick);
            // 
            // barToolbarsListItemDelete
            // 
            this.barToolbarsListItemDelete.Caption = "刪除";
            this.barToolbarsListItemDelete.Id = 9;
            this.barToolbarsListItemDelete.Name = "barToolbarsListItemDelete";
            this.barToolbarsListItemDelete.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemDelete_ItemClick);
            // 
            // barToolbarsListItemCopy
            // 
            this.barToolbarsListItemCopy.Caption = "複製";
            this.barToolbarsListItemCopy.Id = 10;
            this.barToolbarsListItemCopy.Name = "barToolbarsListItemCopy";
            this.barToolbarsListItemCopy.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemCopy_ItemClick);
            // 
            // barToolbarsListItemCut
            // 
            this.barToolbarsListItemCut.Caption = "剪切";
            this.barToolbarsListItemCut.Id = 11;
            this.barToolbarsListItemCut.Name = "barToolbarsListItemCut";
            this.barToolbarsListItemCut.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemCut_ItemClick);
            // 
            // barToolbarsListItemPaste
            // 
            this.barToolbarsListItemPaste.Caption = "粘貼";
            this.barToolbarsListItemPaste.Id = 12;
            this.barToolbarsListItemPaste.Name = "barToolbarsListItemPaste";
            this.barToolbarsListItemPaste.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemPaste_ItemClick);
            // 
            // barToolbarsListItemCOp
            // 
            this.barToolbarsListItemCOp.Caption = "拆";
            this.barToolbarsListItemCOp.Id = 13;
            this.barToolbarsListItemCOp.Name = "barToolbarsListItemCOp";
            this.barToolbarsListItemCOp.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemCOp_ItemClick);
            // 
            // barToolbarsListItemJOp
            // 
            this.barToolbarsListItemJOp.Caption = "夾";
            this.barToolbarsListItemJOp.Id = 14;
            this.barToolbarsListItemJOp.Name = "barToolbarsListItemJOp";
            this.barToolbarsListItemJOp.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemJOp_ItemClick);
            // 
            // barToolbarsListImportData
            // 
            this.barToolbarsListImportData.Caption = "導入資料";
            this.barToolbarsListImportData.Id = 15;
            this.barToolbarsListImportData.Name = "barToolbarsListImportData";
            this.barToolbarsListImportData.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListImportData_ItemClick);
            // 
            // barToolbarsListItemUndo
            // 
            this.barToolbarsListItemUndo.Caption = "撤消";
            this.barToolbarsListItemUndo.Id = 23;
            this.barToolbarsListItemUndo.Name = "barToolbarsListItemUndo";
            this.barToolbarsListItemUndo.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemUndo_ItemClick);
            // 
            // bar3
            // 
            this.bar3.BarName = "Status bar";
            this.bar3.CanDockStyle = DevExpress.XtraBars.BarCanDockStyle.Bottom;
            this.bar3.DockCol = 0;
            this.bar3.DockRow = 0;
            this.bar3.DockStyle = DevExpress.XtraBars.BarDockStyle.Bottom;
            this.bar3.OptionsBar.AllowQuickCustomization = false;
            this.bar3.OptionsBar.DrawDragBorder = false;
            this.bar3.OptionsBar.UseWholeRow = true;
            this.bar3.Text = "Status bar";
            // 
            // barDockControl1
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControl1, null);
            // 
            // barDockControl2
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControl2, null);
            // 
            // barDockControl3
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControl3, null);
            // 
            // barDockControl4
            // 
            this.PlatetoolTipController.SetSuperTip(this.barDockControl4, null);
            // 
            // barToolbarsListItemCal
            // 
            this.barToolbarsListItemCal.Caption = "計算摘要";
            this.barToolbarsListItemCal.Id = 20;
            this.barToolbarsListItemCal.Name = "barToolbarsListItemCal";
            this.barToolbarsListItemCal.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemCal_ItemClick);
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // repositoryItemTextEdit2
            // 
            this.repositoryItemTextEdit2.Name = "repositoryItemTextEdit2";
            // 
            // lblCustomerStyle
            // 
            this.lblCustomerStyle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCustomerStyle.Location = new System.Drawing.Point(3, 0);
            this.lblCustomerStyle.Name = "lblCustomerStyle";
            this.lblCustomerStyle.Size = new System.Drawing.Size(59, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblCustomerStyle, null);
            this.lblCustomerStyle.TabIndex = 0;
            this.lblCustomerStyle.Text = "客戶款號";
            this.lblCustomerStyle.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblPHStyle
            // 
            this.lblPHStyle.AutoSize = true;
            this.lblPHStyle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblPHStyle.ForeColor = System.Drawing.Color.Red;
            this.lblPHStyle.Location = new System.Drawing.Point(174, 0);
            this.lblPHStyle.Name = "lblPHStyle";
            this.lblPHStyle.Size = new System.Drawing.Size(43, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblPHStyle, null);
            this.lblPHStyle.TabIndex = 1;
            this.lblPHStyle.Text = "PH款號";
            this.lblPHStyle.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtKHKH
            // 
            this.txtKHKH.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "KHKH", true));
            this.txtKHKH.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtKHKH.EditValue = "";
            this.txtKHKH.Location = new System.Drawing.Point(68, 3);
            this.txtKHKH.Name = "txtKHKH";
            this.txtKHKH.Size = new System.Drawing.Size(100, 21);
            this.txtKHKH.TabIndex = 2;
            this.txtKHKH.Tag = "KHKH";
            this.txtKHKH.Validated += new System.EventHandler(this.txtKHKH_Validated);
            // 
            // txtCPLB
            // 
            this.txtCPLB.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CPLB", true));
            this.txtCPLB.Location = new System.Drawing.Point(388, 3);
            this.txtCPLB.Name = "txtCPLB";
            this.txtCPLB.Size = new System.Drawing.Size(61, 21);
            this.txtCPLB.TabIndex = 5;
            this.txtCPLB.Tag = "CPLB";
            // 
            // lblCategory
            // 
            this.lblCategory.AutoSize = true;
            this.lblCategory.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCategory.Location = new System.Drawing.Point(329, 0);
            this.lblCategory.Name = "lblCategory";
            this.lblCategory.Size = new System.Drawing.Size(53, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblCategory, null);
            this.lblCategory.TabIndex = 16;
            this.lblCategory.Text = "產品類別";
            this.lblCategory.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblSize
            // 
            this.lblSize.AutoSize = true;
            this.lblSize.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblSize.Location = new System.Drawing.Point(455, 0);
            this.lblSize.Name = "lblSize";
            this.lblSize.Size = new System.Drawing.Size(109, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblSize, null);
            this.lblSize.TabIndex = 17;
            this.lblSize.Text = "基值(IE晒士依據)";
            this.lblSize.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtSizeYJ
            // 
            this.txtSizeYJ.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SizeYJ", true));
            this.txtSizeYJ.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtSizeYJ.Location = new System.Drawing.Point(570, 3);
            this.txtSizeYJ.Name = "txtSizeYJ";
            this.txtSizeYJ.Size = new System.Drawing.Size(72, 21);
            this.txtSizeYJ.TabIndex = 8;
            this.txtSizeYJ.Tag = "SizeYJ";
            // 
            // lblZH
            // 
            this.lblZH.AutoSize = true;
            this.lblZH.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblZH.Location = new System.Drawing.Point(174, 30);
            this.lblZH.Name = "lblZH";
            this.lblZH.Size = new System.Drawing.Size(43, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblZH, null);
            this.lblZH.TabIndex = 18;
            this.lblZH.Text = "組合";
            this.lblZH.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblEdition
            // 
            this.lblEdition.AutoSize = true;
            this.lblEdition.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblEdition.Location = new System.Drawing.Point(648, 0);
            this.lblEdition.Name = "lblEdition";
            this.lblEdition.Size = new System.Drawing.Size(29, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblEdition, null);
            this.lblEdition.TabIndex = 19;
            this.lblEdition.Text = "版本";
            this.lblEdition.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtEdition
            // 
            this.txtEdition.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Edition", true));
            this.txtEdition.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtEdition.Enabled = false;
            this.txtEdition.Location = new System.Drawing.Point(683, 3);
            this.txtEdition.Name = "txtEdition";
            this.txtEdition.Size = new System.Drawing.Size(62, 21);
            this.txtEdition.TabIndex = 12;
            this.txtEdition.Tag = "Edition";
            // 
            // txtZH
            // 
            this.txtZH.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ZH", true));
            this.txtZH.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtZH.Location = new System.Drawing.Point(223, 33);
            this.txtZH.Name = "txtZH";
            this.txtZH.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtZH.Size = new System.Drawing.Size(100, 21);
            this.txtZH.TabIndex = 22;
            this.txtZH.Tag = "ZH";
            // 
            // txtPHKH
            // 
            this.txtPHKH.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PHKH", true));
            this.txtPHKH.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtPHKH.Location = new System.Drawing.Point(223, 3);
            this.txtPHKH.Name = "txtPHKH";
            this.txtPHKH.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtPHKH.Size = new System.Drawing.Size(100, 21);
            this.txtPHKH.TabIndex = 23;
            this.txtPHKH.Tag = "PHKH";
            // 
            // lblValid
            // 
            this.lblValid.AutoSize = true;
            this.lblValid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblValid.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.lblValid.Location = new System.Drawing.Point(751, 0);
            this.lblValid.Name = "lblValid";
            this.lblValid.Size = new System.Drawing.Size(53, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblValid, null);
            this.lblValid.TabIndex = 26;
            this.lblValid.Text = "有效期至";
            this.lblValid.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // dockManager
            // 
            this.dockManager.AutoHideContainers.AddRange(new DevExpress.XtraBars.Docking.AutoHideContainer[] {
            this.hideContainerBottom});
            this.dockManager.Form = this;
            this.dockManager.HiddenPanels.AddRange(new DevExpress.XtraBars.Docking.DockPanel[] {
            this.dockPanel3});
            this.dockManager.TopZIndexControls.AddRange(new string[] {
            "DevExpress.XtraBars.BarDockControl",
            "System.Windows.Forms.StatusBar",
            "DevExpress.XtraBars.Ribbon.RibbonStatusBar",
            "DevExpress.XtraBars.Ribbon.RibbonControl"});
            // 
            // hideContainerBottom
            // 
            this.hideContainerBottom.Controls.Add(this.dockPanelSummary);
            this.hideContainerBottom.Controls.Add(this.dockPanelMemo);
            this.hideContainerBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.hideContainerBottom.Location = new System.Drawing.Point(0, 378);
            this.hideContainerBottom.Name = "hideContainerBottom";
            this.hideContainerBottom.Size = new System.Drawing.Size(1128, 20);
            this.PlatetoolTipController.SetSuperTip(this.hideContainerBottom, null);
            this.hideContainerBottom.Text = "摘要";
            // 
            // dockPanelSummary
            // 
            this.dockPanelSummary.Controls.Add(this.dockPanel1_Container);
            this.dockPanelSummary.Dock = DevExpress.XtraBars.Docking.DockingStyle.Bottom;
            this.dockPanelSummary.ID = new System.Guid("2263d79b-e612-4894-920d-481d6f124eeb");
            this.dockPanelSummary.Location = new System.Drawing.Point(0, 0);
            this.dockPanelSummary.Name = "dockPanelSummary";
            this.dockPanelSummary.SavedDock = DevExpress.XtraBars.Docking.DockingStyle.Bottom;
            this.dockPanelSummary.SavedIndex = 0;
            this.dockPanelSummary.Size = new System.Drawing.Size(1128, 373);
            this.dockPanelSummary.Text = "摘要";
            this.dockPanelSummary.Visibility = DevExpress.XtraBars.Docking.DockVisibility.AutoHide;
            // 
            // dockPanel1_Container
            // 
            this.dockPanel1_Container.Controls.Add(this.tableSum);
            this.dockPanel1_Container.Location = new System.Drawing.Point(3, 25);
            this.dockPanel1_Container.Name = "dockPanel1_Container";
            this.dockPanel1_Container.Size = new System.Drawing.Size(1122, 345);
            this.PlatetoolTipController.SetSuperTip(this.dockPanel1_Container, null);
            this.dockPanel1_Container.TabIndex = 0;
            // 
            // tableSum
            // 
            this.tableSum.CellBorderStyle = System.Windows.Forms.TableLayoutPanelCellBorderStyle.Single;
            this.tableSum.ColumnCount = 5;
            this.tableSum.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 190F));
            this.tableSum.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 90F));
            this.tableSum.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 90F));
            this.tableSum.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 90F));
            this.tableSum.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 299F));
            this.tableSum.Controls.Add(this.lblNonLB, 1, 0);
            this.tableSum.Controls.Add(this.lblJKLM1_Z, 4, 2);
            this.tableSum.Controls.Add(this.lblJKLM1_Y, 3, 2);
            this.tableSum.Controls.Add(this.lblGSD, 0, 2);
            this.tableSum.Controls.Add(this.lblAGroup, 0, 3);
            this.tableSum.Controls.Add(this.lblBGroup, 0, 4);
            this.tableSum.Controls.Add(this.lblCGroup, 0, 5);
            this.tableSum.Controls.Add(this.lblSection, 0, 6);
            this.tableSum.Controls.Add(this.lblWorkforce, 0, 7);
            this.tableSum.Controls.Add(this.lblWorkStation, 0, 9);
            this.tableSum.Controls.Add(this.lblMaxSAH, 0, 10);
            this.tableSum.Controls.Add(this.lblMinSAH, 0, 12);
            this.tableSum.Controls.Add(this.lblLBUsage, 0, 13);
            this.tableSum.Controls.Add(this.lblUsage, 0, 15);
            this.tableSum.Controls.Add(this.lblJKLM1_O, 1, 2);
            this.tableSum.Controls.Add(this.lblJKLM1_R, 2, 2);
            this.tableSum.Controls.Add(this.lblJKLM2_O, 1, 3);
            this.tableSum.Controls.Add(this.lblJKLM3_O, 1, 4);
            this.tableSum.Controls.Add(this.lblJKLM4_O, 1, 5);
            this.tableSum.Controls.Add(this.lblJKLM6_O, 1, 6);
            this.tableSum.Controls.Add(this.lblJKLM6_R, 2, 6);
            this.tableSum.Controls.Add(this.lblJKLM7_R, 2, 7);
            this.tableSum.Controls.Add(this.lblJKLM7_O, 1, 7);
            this.tableSum.Controls.Add(this.lblJKLM9_O, 1, 10);
            this.tableSum.Controls.Add(this.lblJKLM9_R, 2, 10);
            this.tableSum.Controls.Add(this.lblJKLM10_O, 1, 12);
            this.tableSum.Controls.Add(this.lblJKLM10_R, 2, 12);
            this.tableSum.Controls.Add(this.lblJKLM13_R, 2, 13);
            this.tableSum.Controls.Add(this.lblJKLM14_O, 1, 15);
            this.tableSum.Controls.Add(this.lblJKLM14_R, 2, 15);
            this.tableSum.Controls.Add(this.lblJKLM8_O, 1, 9);
            this.tableSum.Controls.Add(this.lblJKLM8_R, 2, 9);
            this.tableSum.Controls.Add(this.lblJKLM2_Y, 3, 3);
            this.tableSum.Controls.Add(this.lblJKLM2_Z, 4, 3);
            this.tableSum.Controls.Add(this.lblJKLM3_Y, 3, 4);
            this.tableSum.Controls.Add(this.lblJKLM4_Y, 3, 5);
            this.tableSum.Controls.Add(this.lblJKLM6_Y, 3, 6);
            this.tableSum.Controls.Add(this.lblJKLM7_Y, 3, 7);
            this.tableSum.Controls.Add(this.lblJKLM8_Y, 3, 9);
            this.tableSum.Controls.Add(this.lblJKLM9_Y, 3, 10);
            this.tableSum.Controls.Add(this.lblJKLM10_Y, 3, 12);
            this.tableSum.Controls.Add(this.lblJKLM13_Y, 3, 13);
            this.tableSum.Controls.Add(this.lblJKLM14_Y, 3, 15);
            this.tableSum.Controls.Add(this.lblJKLM3_Z, 4, 4);
            this.tableSum.Controls.Add(this.lblJKLM4_Z, 4, 5);
            this.tableSum.Controls.Add(this.lblJKLM6_Z, 4, 6);
            this.tableSum.Controls.Add(this.lblJKLM7_Z, 4, 7);
            this.tableSum.Controls.Add(this.lblJKLM8_Z, 4, 9);
            this.tableSum.Controls.Add(this.lblJKLM9_Z, 4, 10);
            this.tableSum.Controls.Add(this.lblJKLM10_Z, 4, 12);
            this.tableSum.Controls.Add(this.lblJKLM13_Z, 4, 13);
            this.tableSum.Controls.Add(this.lblJKLM14_Z, 4, 15);
            this.tableSum.Controls.Add(this.lblJSC, 3, 1);
            this.tableSum.Controls.Add(this.lblPJH, 4, 1);
            this.tableSum.Controls.Add(this.lblCJLB, 2, 0);
            this.tableSum.Controls.Add(this.label107, 0, 16);
            this.tableSum.Controls.Add(this.lblMinZJ, 0, 11);
            this.tableSum.Controls.Add(this.lblLine, 0, 14);
            this.tableSum.Controls.Add(this.lblJKLM13_O, 1, 13);
            this.tableSum.Controls.Add(this.lblJKLM3_R, 2, 4);
            this.tableSum.Controls.Add(this.lblJKLM4_R, 2, 5);
            this.tableSum.Controls.Add(this.lblJKLM21_O, 1, 11);
            this.tableSum.Controls.Add(this.lblJKLM21_R, 2, 11);
            this.tableSum.Controls.Add(this.lblJKLM21_Y, 3, 11);
            this.tableSum.Controls.Add(this.lblJKLM21_Z, 4, 11);
            this.tableSum.Controls.Add(this.lblJKLM2_R, 2, 3);
            this.tableSum.Controls.Add(this.lblFloater, 0, 8);
            this.tableSum.Controls.Add(this.lblSumFloater, 3, 8);
            this.tableSum.Controls.Add(this.lblDetail, 0, 0);
            this.tableSum.Controls.Add(this.lblBestLB, 3, 0);
            this.tableSum.Controls.Add(this.lblJKLM20_Y, 3, 14);
            this.tableSum.Location = new System.Drawing.Point(6, 3);
            this.tableSum.Name = "tableSum";
            this.tableSum.RowCount = 17;
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 18F));
            this.tableSum.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 18F));
            this.tableSum.Size = new System.Drawing.Size(687, 360);
            this.PlatetoolTipController.SetSuperTip(this.tableSum, null);
            this.tableSum.TabIndex = 2;
            // 
            // lblNonLB
            // 
            this.lblNonLB.AutoSize = true;
            this.lblNonLB.BackColor = System.Drawing.Color.WhiteSmoke;
            this.lblNonLB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblNonLB.Location = new System.Drawing.Point(195, 1);
            this.lblNonLB.Name = "lblNonLB";
            this.tableSum.SetRowSpan(this.lblNonLB, 2);
            this.lblNonLB.Size = new System.Drawing.Size(84, 41);
            this.PlatetoolTipController.SetSuperTip(this.lblNonLB, null);
            this.lblNonLB.TabIndex = 93;
            this.lblNonLB.Text = "標準SAH未作LB";
            this.lblNonLB.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM1_Z
            // 
            this.lblJKLM1_Z.AutoSize = true;
            this.lblJKLM1_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM1_Z.Location = new System.Drawing.Point(468, 43);
            this.lblJKLM1_Z.Name = "lblJKLM1_Z";
            this.lblJKLM1_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM1_Z, null);
            this.lblJKLM1_Z.TabIndex = 66;
            this.lblJKLM1_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM1_Y
            // 
            this.lblJKLM1_Y.AutoSize = true;
            this.lblJKLM1_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM1_Y.Location = new System.Drawing.Point(377, 43);
            this.lblJKLM1_Y.Name = "lblJKLM1_Y";
            this.lblJKLM1_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM1_Y, null);
            this.lblJKLM1_Y.TabIndex = 65;
            this.lblJKLM1_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblGSD
            // 
            this.lblGSD.AutoSize = true;
            this.lblGSD.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblGSD.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblGSD.Location = new System.Drawing.Point(4, 43);
            this.lblGSD.Name = "lblGSD";
            this.lblGSD.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblGSD, null);
            this.lblGSD.TabIndex = 0;
            this.lblGSD.Text = "GSD SAH 合計(不含包裝SAH)";
            this.lblGSD.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblAGroup
            // 
            this.lblAGroup.AutoSize = true;
            this.lblAGroup.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblAGroup.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblAGroup.Location = new System.Drawing.Point(4, 64);
            this.lblAGroup.Name = "lblAGroup";
            this.lblAGroup.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblAGroup, null);
            this.lblAGroup.TabIndex = 1;
            this.lblAGroup.Text = "A 組 SAH 小計";
            this.lblAGroup.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblBGroup
            // 
            this.lblBGroup.AutoSize = true;
            this.lblBGroup.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblBGroup.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblBGroup.Location = new System.Drawing.Point(4, 85);
            this.lblBGroup.Name = "lblBGroup";
            this.lblBGroup.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblBGroup, null);
            this.lblBGroup.TabIndex = 2;
            this.lblBGroup.Text = "B 組 SAH 小計";
            this.lblBGroup.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblBGroup.Visible = false;
            // 
            // lblCGroup
            // 
            this.lblCGroup.AutoSize = true;
            this.lblCGroup.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCGroup.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblCGroup.Location = new System.Drawing.Point(4, 106);
            this.lblCGroup.Name = "lblCGroup";
            this.lblCGroup.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblCGroup, null);
            this.lblCGroup.TabIndex = 3;
            this.lblCGroup.Text = "C 組 SAH 小計";
            this.lblCGroup.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblSection
            // 
            this.lblSection.AutoSize = true;
            this.lblSection.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblSection.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblSection.Location = new System.Drawing.Point(4, 127);
            this.lblSection.Name = "lblSection";
            this.lblSection.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblSection, null);
            this.lblSection.TabIndex = 5;
            this.lblSection.Text = "拉節時產量  (件）";
            this.lblSection.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblWorkforce
            // 
            this.lblWorkforce.AutoSize = true;
            this.lblWorkforce.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblWorkforce.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblWorkforce.Location = new System.Drawing.Point(4, 148);
            this.lblWorkforce.Name = "lblWorkforce";
            this.lblWorkforce.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblWorkforce, null);
            this.lblWorkforce.TabIndex = 6;
            this.lblWorkforce.Text = "勞動力合計";
            this.lblWorkforce.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblWorkStation
            // 
            this.lblWorkStation.AutoSize = true;
            this.lblWorkStation.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblWorkStation.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblWorkStation.Location = new System.Drawing.Point(4, 190);
            this.lblWorkStation.Name = "lblWorkStation";
            this.lblWorkStation.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblWorkStation, null);
            this.lblWorkStation.TabIndex = 7;
            this.lblWorkStation.Text = "工作位（衣車+手工台）合計";
            this.lblWorkStation.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblMaxSAH
            // 
            this.lblMaxSAH.AutoSize = true;
            this.lblMaxSAH.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblMaxSAH.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblMaxSAH.Location = new System.Drawing.Point(4, 211);
            this.lblMaxSAH.Name = "lblMaxSAH";
            this.lblMaxSAH.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblMaxSAH, null);
            this.lblMaxSAH.TabIndex = 8;
            this.lblMaxSAH.Text = "最大樽頸 SAH";
            this.lblMaxSAH.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblMinSAH
            // 
            this.lblMinSAH.AutoSize = true;
            this.lblMinSAH.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblMinSAH.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblMinSAH.Location = new System.Drawing.Point(4, 253);
            this.lblMinSAH.Name = "lblMinSAH";
            this.lblMinSAH.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblMinSAH, null);
            this.lblMinSAH.TabIndex = 9;
            this.lblMinSAH.Text = "最小SAH";
            this.lblMinSAH.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblLBUsage
            // 
            this.lblLBUsage.AutoSize = true;
            this.lblLBUsage.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblLBUsage.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblLBUsage.Location = new System.Drawing.Point(4, 274);
            this.lblLBUsage.Name = "lblLBUsage";
            this.lblLBUsage.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblLBUsage, null);
            this.lblLBUsage.TabIndex = 12;
            this.lblLBUsage.Text = "拉平衡率";
            this.lblLBUsage.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblUsage
            // 
            this.lblUsage.AutoSize = true;
            this.lblUsage.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblUsage.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblUsage.Location = new System.Drawing.Point(4, 316);
            this.lblUsage.Name = "lblUsage";
            this.lblUsage.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblUsage, null);
            this.lblUsage.TabIndex = 13;
            this.lblUsage.Text = "SAH中位數(參考)";
            this.lblUsage.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM1_O
            // 
            this.lblJKLM1_O.AutoSize = true;
            this.lblJKLM1_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM1_O.Location = new System.Drawing.Point(195, 43);
            this.lblJKLM1_O.Name = "lblJKLM1_O";
            this.lblJKLM1_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM1_O, null);
            this.lblJKLM1_O.TabIndex = 14;
            this.lblJKLM1_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM1_R
            // 
            this.lblJKLM1_R.AutoSize = true;
            this.lblJKLM1_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM1_R.Location = new System.Drawing.Point(286, 43);
            this.lblJKLM1_R.Name = "lblJKLM1_R";
            this.lblJKLM1_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM1_R, null);
            this.lblJKLM1_R.TabIndex = 15;
            this.lblJKLM1_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM2_O
            // 
            this.lblJKLM2_O.AutoSize = true;
            this.lblJKLM2_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM2_O.Location = new System.Drawing.Point(195, 64);
            this.lblJKLM2_O.Name = "lblJKLM2_O";
            this.lblJKLM2_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM2_O, null);
            this.lblJKLM2_O.TabIndex = 17;
            this.lblJKLM2_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM3_O
            // 
            this.lblJKLM3_O.AutoSize = true;
            this.lblJKLM3_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM3_O.Location = new System.Drawing.Point(195, 85);
            this.lblJKLM3_O.Name = "lblJKLM3_O";
            this.lblJKLM3_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM3_O, null);
            this.lblJKLM3_O.TabIndex = 18;
            this.lblJKLM3_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblJKLM3_O.Visible = false;
            // 
            // lblJKLM4_O
            // 
            this.lblJKLM4_O.AutoSize = true;
            this.lblJKLM4_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM4_O.Location = new System.Drawing.Point(195, 106);
            this.lblJKLM4_O.Name = "lblJKLM4_O";
            this.lblJKLM4_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM4_O, null);
            this.lblJKLM4_O.TabIndex = 19;
            this.lblJKLM4_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblJKLM4_O.Visible = false;
            // 
            // lblJKLM6_O
            // 
            this.lblJKLM6_O.AutoSize = true;
            this.lblJKLM6_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM6_O.Location = new System.Drawing.Point(195, 127);
            this.lblJKLM6_O.Name = "lblJKLM6_O";
            this.lblJKLM6_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM6_O, null);
            this.lblJKLM6_O.TabIndex = 26;
            this.lblJKLM6_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM6_R
            // 
            this.lblJKLM6_R.AutoSize = true;
            this.lblJKLM6_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM6_R.Location = new System.Drawing.Point(286, 127);
            this.lblJKLM6_R.Name = "lblJKLM6_R";
            this.lblJKLM6_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM6_R, null);
            this.lblJKLM6_R.TabIndex = 27;
            this.lblJKLM6_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM7_R
            // 
            this.lblJKLM7_R.AutoSize = true;
            this.lblJKLM7_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM7_R.Location = new System.Drawing.Point(286, 148);
            this.lblJKLM7_R.Name = "lblJKLM7_R";
            this.lblJKLM7_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM7_R, null);
            this.lblJKLM7_R.TabIndex = 30;
            this.lblJKLM7_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM7_O
            // 
            this.lblJKLM7_O.AutoSize = true;
            this.lblJKLM7_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM7_O.Location = new System.Drawing.Point(195, 148);
            this.lblJKLM7_O.Name = "lblJKLM7_O";
            this.lblJKLM7_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM7_O, null);
            this.lblJKLM7_O.TabIndex = 32;
            this.lblJKLM7_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM9_O
            // 
            this.lblJKLM9_O.AutoSize = true;
            this.lblJKLM9_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM9_O.Location = new System.Drawing.Point(195, 211);
            this.lblJKLM9_O.Name = "lblJKLM9_O";
            this.lblJKLM9_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM9_O, null);
            this.lblJKLM9_O.TabIndex = 33;
            this.lblJKLM9_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM9_R
            // 
            this.lblJKLM9_R.AutoSize = true;
            this.lblJKLM9_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM9_R.Location = new System.Drawing.Point(286, 211);
            this.lblJKLM9_R.Name = "lblJKLM9_R";
            this.lblJKLM9_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM9_R, null);
            this.lblJKLM9_R.TabIndex = 34;
            this.lblJKLM9_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM10_O
            // 
            this.lblJKLM10_O.AutoSize = true;
            this.lblJKLM10_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM10_O.Location = new System.Drawing.Point(195, 253);
            this.lblJKLM10_O.Name = "lblJKLM10_O";
            this.lblJKLM10_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM10_O, null);
            this.lblJKLM10_O.TabIndex = 36;
            this.lblJKLM10_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM10_R
            // 
            this.lblJKLM10_R.AutoSize = true;
            this.lblJKLM10_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM10_R.Location = new System.Drawing.Point(286, 253);
            this.lblJKLM10_R.Name = "lblJKLM10_R";
            this.lblJKLM10_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM10_R, null);
            this.lblJKLM10_R.TabIndex = 37;
            this.lblJKLM10_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM13_R
            // 
            this.lblJKLM13_R.AutoSize = true;
            this.lblJKLM13_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM13_R.Location = new System.Drawing.Point(286, 274);
            this.lblJKLM13_R.Name = "lblJKLM13_R";
            this.lblJKLM13_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM13_R, null);
            this.lblJKLM13_R.TabIndex = 43;
            this.lblJKLM13_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM14_O
            // 
            this.lblJKLM14_O.AutoSize = true;
            this.lblJKLM14_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM14_O.Location = new System.Drawing.Point(195, 316);
            this.lblJKLM14_O.Name = "lblJKLM14_O";
            this.lblJKLM14_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM14_O, null);
            this.lblJKLM14_O.TabIndex = 45;
            this.lblJKLM14_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM14_R
            // 
            this.lblJKLM14_R.AutoSize = true;
            this.lblJKLM14_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM14_R.Location = new System.Drawing.Point(286, 316);
            this.lblJKLM14_R.Name = "lblJKLM14_R";
            this.lblJKLM14_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM14_R, null);
            this.lblJKLM14_R.TabIndex = 46;
            this.lblJKLM14_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM8_O
            // 
            this.lblJKLM8_O.AutoSize = true;
            this.lblJKLM8_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM8_O.Font = new System.Drawing.Font("Arial", 9F);
            this.lblJKLM8_O.Location = new System.Drawing.Point(195, 190);
            this.lblJKLM8_O.Name = "lblJKLM8_O";
            this.lblJKLM8_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM8_O, null);
            this.lblJKLM8_O.TabIndex = 48;
            this.lblJKLM8_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM8_R
            // 
            this.lblJKLM8_R.AutoSize = true;
            this.lblJKLM8_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM8_R.Location = new System.Drawing.Point(286, 190);
            this.lblJKLM8_R.Name = "lblJKLM8_R";
            this.lblJKLM8_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM8_R, null);
            this.lblJKLM8_R.TabIndex = 49;
            this.lblJKLM8_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM2_Y
            // 
            this.lblJKLM2_Y.AutoSize = true;
            this.lblJKLM2_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM2_Y.Location = new System.Drawing.Point(377, 64);
            this.lblJKLM2_Y.Name = "lblJKLM2_Y";
            this.lblJKLM2_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM2_Y, null);
            this.lblJKLM2_Y.TabIndex = 67;
            this.lblJKLM2_Y.Text = "N.A.";
            this.lblJKLM2_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM2_Z
            // 
            this.lblJKLM2_Z.AutoSize = true;
            this.lblJKLM2_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM2_Z.Location = new System.Drawing.Point(468, 64);
            this.lblJKLM2_Z.Name = "lblJKLM2_Z";
            this.lblJKLM2_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM2_Z, null);
            this.lblJKLM2_Z.TabIndex = 68;
            this.lblJKLM2_Z.Text = "N.A.";
            this.lblJKLM2_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM3_Y
            // 
            this.lblJKLM3_Y.AutoSize = true;
            this.lblJKLM3_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM3_Y.Location = new System.Drawing.Point(377, 85);
            this.lblJKLM3_Y.Name = "lblJKLM3_Y";
            this.lblJKLM3_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM3_Y, null);
            this.lblJKLM3_Y.TabIndex = 69;
            this.lblJKLM3_Y.Text = "N.A.";
            this.lblJKLM3_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblJKLM3_Y.Visible = false;
            // 
            // lblJKLM4_Y
            // 
            this.lblJKLM4_Y.AutoSize = true;
            this.lblJKLM4_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM4_Y.Location = new System.Drawing.Point(377, 106);
            this.lblJKLM4_Y.Name = "lblJKLM4_Y";
            this.lblJKLM4_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM4_Y, null);
            this.lblJKLM4_Y.TabIndex = 70;
            this.lblJKLM4_Y.Tag = "";
            this.lblJKLM4_Y.Text = "N.A.";
            this.lblJKLM4_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblJKLM4_Y.Visible = false;
            // 
            // lblJKLM6_Y
            // 
            this.lblJKLM6_Y.AutoSize = true;
            this.lblJKLM6_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM6_Y.Location = new System.Drawing.Point(377, 127);
            this.lblJKLM6_Y.Name = "lblJKLM6_Y";
            this.lblJKLM6_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM6_Y, null);
            this.lblJKLM6_Y.TabIndex = 72;
            this.lblJKLM6_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM7_Y
            // 
            this.lblJKLM7_Y.AutoSize = true;
            this.lblJKLM7_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM7_Y.Location = new System.Drawing.Point(377, 148);
            this.lblJKLM7_Y.Name = "lblJKLM7_Y";
            this.lblJKLM7_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM7_Y, null);
            this.lblJKLM7_Y.TabIndex = 73;
            this.lblJKLM7_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM8_Y
            // 
            this.lblJKLM8_Y.AutoSize = true;
            this.lblJKLM8_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM8_Y.Location = new System.Drawing.Point(377, 190);
            this.lblJKLM8_Y.Name = "lblJKLM8_Y";
            this.lblJKLM8_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM8_Y, null);
            this.lblJKLM8_Y.TabIndex = 74;
            this.lblJKLM8_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM9_Y
            // 
            this.lblJKLM9_Y.AutoSize = true;
            this.lblJKLM9_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM9_Y.Location = new System.Drawing.Point(377, 211);
            this.lblJKLM9_Y.Name = "lblJKLM9_Y";
            this.lblJKLM9_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM9_Y, null);
            this.lblJKLM9_Y.TabIndex = 75;
            this.lblJKLM9_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM10_Y
            // 
            this.lblJKLM10_Y.AutoSize = true;
            this.lblJKLM10_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM10_Y.Location = new System.Drawing.Point(377, 253);
            this.lblJKLM10_Y.Name = "lblJKLM10_Y";
            this.lblJKLM10_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM10_Y, null);
            this.lblJKLM10_Y.TabIndex = 76;
            this.lblJKLM10_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM13_Y
            // 
            this.lblJKLM13_Y.AutoSize = true;
            this.lblJKLM13_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM13_Y.Location = new System.Drawing.Point(377, 274);
            this.lblJKLM13_Y.Name = "lblJKLM13_Y";
            this.lblJKLM13_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM13_Y, null);
            this.lblJKLM13_Y.TabIndex = 79;
            this.lblJKLM13_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM14_Y
            // 
            this.lblJKLM14_Y.AutoSize = true;
            this.lblJKLM14_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM14_Y.Location = new System.Drawing.Point(377, 316);
            this.lblJKLM14_Y.Name = "lblJKLM14_Y";
            this.lblJKLM14_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM14_Y, null);
            this.lblJKLM14_Y.TabIndex = 80;
            this.lblJKLM14_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM3_Z
            // 
            this.lblJKLM3_Z.AutoSize = true;
            this.lblJKLM3_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM3_Z.Location = new System.Drawing.Point(468, 85);
            this.lblJKLM3_Z.Name = "lblJKLM3_Z";
            this.lblJKLM3_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM3_Z, null);
            this.lblJKLM3_Z.TabIndex = 81;
            this.lblJKLM3_Z.Text = "N.A.";
            this.lblJKLM3_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblJKLM3_Z.Visible = false;
            // 
            // lblJKLM4_Z
            // 
            this.lblJKLM4_Z.AutoSize = true;
            this.lblJKLM4_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM4_Z.Location = new System.Drawing.Point(468, 106);
            this.lblJKLM4_Z.Name = "lblJKLM4_Z";
            this.lblJKLM4_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM4_Z, null);
            this.lblJKLM4_Z.TabIndex = 82;
            this.lblJKLM4_Z.Text = "N.A.";
            this.lblJKLM4_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblJKLM4_Z.Visible = false;
            // 
            // lblJKLM6_Z
            // 
            this.lblJKLM6_Z.AutoSize = true;
            this.lblJKLM6_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM6_Z.Location = new System.Drawing.Point(468, 127);
            this.lblJKLM6_Z.Name = "lblJKLM6_Z";
            this.lblJKLM6_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM6_Z, null);
            this.lblJKLM6_Z.TabIndex = 84;
            this.lblJKLM6_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM7_Z
            // 
            this.lblJKLM7_Z.AutoSize = true;
            this.lblJKLM7_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM7_Z.Location = new System.Drawing.Point(468, 148);
            this.lblJKLM7_Z.Name = "lblJKLM7_Z";
            this.lblJKLM7_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM7_Z, null);
            this.lblJKLM7_Z.TabIndex = 85;
            this.lblJKLM7_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM8_Z
            // 
            this.lblJKLM8_Z.AutoSize = true;
            this.lblJKLM8_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM8_Z.Location = new System.Drawing.Point(468, 190);
            this.lblJKLM8_Z.Name = "lblJKLM8_Z";
            this.lblJKLM8_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM8_Z, null);
            this.lblJKLM8_Z.TabIndex = 86;
            this.lblJKLM8_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM9_Z
            // 
            this.lblJKLM9_Z.AutoSize = true;
            this.lblJKLM9_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM9_Z.Location = new System.Drawing.Point(468, 211);
            this.lblJKLM9_Z.Name = "lblJKLM9_Z";
            this.lblJKLM9_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM9_Z, null);
            this.lblJKLM9_Z.TabIndex = 87;
            this.lblJKLM9_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM10_Z
            // 
            this.lblJKLM10_Z.AutoSize = true;
            this.lblJKLM10_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM10_Z.Location = new System.Drawing.Point(468, 253);
            this.lblJKLM10_Z.Name = "lblJKLM10_Z";
            this.lblJKLM10_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM10_Z, null);
            this.lblJKLM10_Z.TabIndex = 88;
            this.lblJKLM10_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM13_Z
            // 
            this.lblJKLM13_Z.AutoSize = true;
            this.lblJKLM13_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM13_Z.Location = new System.Drawing.Point(468, 274);
            this.lblJKLM13_Z.Name = "lblJKLM13_Z";
            this.lblJKLM13_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM13_Z, null);
            this.lblJKLM13_Z.TabIndex = 91;
            this.lblJKLM13_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM14_Z
            // 
            this.lblJKLM14_Z.AutoSize = true;
            this.lblJKLM14_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM14_Z.Location = new System.Drawing.Point(468, 316);
            this.lblJKLM14_Z.Name = "lblJKLM14_Z";
            this.lblJKLM14_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM14_Z, null);
            this.lblJKLM14_Z.TabIndex = 92;
            this.lblJKLM14_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJSC
            // 
            this.lblJSC.AutoSize = true;
            this.lblJSC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJSC.Location = new System.Drawing.Point(377, 22);
            this.lblJSC.Name = "lblJSC";
            this.lblJSC.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJSC, null);
            this.lblJSC.TabIndex = 96;
            this.lblJSC.Text = "間時拆";
            this.lblJSC.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblPJH
            // 
            this.lblPJH.AutoSize = true;
            this.lblPJH.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblPJH.Location = new System.Drawing.Point(468, 22);
            this.lblPJH.Name = "lblPJH";
            this.lblPJH.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblPJH, null);
            this.lblPJH.TabIndex = 98;
            this.lblPJH.Text = "平准化";
            this.lblPJH.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblCJLB
            // 
            this.lblCJLB.AutoSize = true;
            this.lblCJLB.BackColor = System.Drawing.Color.WhiteSmoke;
            this.lblCJLB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCJLB.Location = new System.Drawing.Point(286, 1);
            this.lblCJLB.Name = "lblCJLB";
            this.tableSum.SetRowSpan(this.lblCJLB, 2);
            this.lblCJLB.Size = new System.Drawing.Size(84, 41);
            this.PlatetoolTipController.SetSuperTip(this.lblCJLB, null);
            this.lblCJLB.TabIndex = 97;
            this.lblCJLB.Text = "拆夾SAH拆夾LB";
            this.lblCJLB.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label107
            // 
            this.label107.AutoSize = true;
            this.label107.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label107.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.label107.Location = new System.Drawing.Point(4, 337);
            this.label107.Name = "label107";
            this.label107.Size = new System.Drawing.Size(184, 22);
            this.PlatetoolTipController.SetSuperTip(this.label107, null);
            this.label107.TabIndex = 101;
            this.label107.Text = "設備使用率(優化)";
            this.label107.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblMinZJ
            // 
            this.lblMinZJ.AutoSize = true;
            this.lblMinZJ.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblMinZJ.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblMinZJ.Location = new System.Drawing.Point(4, 232);
            this.lblMinZJ.Name = "lblMinZJ";
            this.lblMinZJ.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblMinZJ, null);
            this.lblMinZJ.TabIndex = 102;
            this.lblMinZJ.Text = "最小樽頸SAH";
            this.lblMinZJ.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblLine
            // 
            this.lblLine.AutoSize = true;
            this.lblLine.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblLine.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblLine.Location = new System.Drawing.Point(4, 295);
            this.lblLine.Name = "lblLine";
            this.lblLine.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblLine, null);
            this.lblLine.TabIndex = 107;
            this.lblLine.Text = "間時拆指標線";
            this.lblLine.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM13_O
            // 
            this.lblJKLM13_O.AutoSize = true;
            this.lblJKLM13_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM13_O.Font = new System.Drawing.Font("Tahoma", 9F);
            this.lblJKLM13_O.Location = new System.Drawing.Point(195, 274);
            this.lblJKLM13_O.Name = "lblJKLM13_O";
            this.lblJKLM13_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM13_O, null);
            this.lblJKLM13_O.TabIndex = 108;
            this.lblJKLM13_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM3_R
            // 
            this.lblJKLM3_R.AutoSize = true;
            this.lblJKLM3_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM3_R.Location = new System.Drawing.Point(286, 85);
            this.lblJKLM3_R.Name = "lblJKLM3_R";
            this.lblJKLM3_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM3_R, null);
            this.lblJKLM3_R.TabIndex = 116;
            this.lblJKLM3_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblJKLM3_R.Visible = false;
            // 
            // lblJKLM4_R
            // 
            this.lblJKLM4_R.AutoSize = true;
            this.lblJKLM4_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM4_R.Location = new System.Drawing.Point(286, 106);
            this.lblJKLM4_R.Name = "lblJKLM4_R";
            this.lblJKLM4_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM4_R, null);
            this.lblJKLM4_R.TabIndex = 117;
            this.lblJKLM4_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblJKLM4_R.Visible = false;
            // 
            // lblJKLM21_O
            // 
            this.lblJKLM21_O.AutoSize = true;
            this.lblJKLM21_O.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM21_O.Location = new System.Drawing.Point(195, 232);
            this.lblJKLM21_O.Name = "lblJKLM21_O";
            this.lblJKLM21_O.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM21_O, null);
            this.lblJKLM21_O.TabIndex = 118;
            this.lblJKLM21_O.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM21_R
            // 
            this.lblJKLM21_R.AutoSize = true;
            this.lblJKLM21_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM21_R.Location = new System.Drawing.Point(286, 232);
            this.lblJKLM21_R.Name = "lblJKLM21_R";
            this.lblJKLM21_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM21_R, null);
            this.lblJKLM21_R.TabIndex = 119;
            this.lblJKLM21_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM21_Y
            // 
            this.lblJKLM21_Y.AutoSize = true;
            this.lblJKLM21_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM21_Y.Location = new System.Drawing.Point(377, 232);
            this.lblJKLM21_Y.Name = "lblJKLM21_Y";
            this.lblJKLM21_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM21_Y, null);
            this.lblJKLM21_Y.TabIndex = 122;
            this.lblJKLM21_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM21_Z
            // 
            this.lblJKLM21_Z.AutoSize = true;
            this.lblJKLM21_Z.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM21_Z.Location = new System.Drawing.Point(468, 232);
            this.lblJKLM21_Z.Name = "lblJKLM21_Z";
            this.lblJKLM21_Z.Size = new System.Drawing.Size(293, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM21_Z, null);
            this.lblJKLM21_Z.TabIndex = 123;
            this.lblJKLM21_Z.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM2_R
            // 
            this.lblJKLM2_R.AutoSize = true;
            this.lblJKLM2_R.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM2_R.Location = new System.Drawing.Point(286, 64);
            this.lblJKLM2_R.Name = "lblJKLM2_R";
            this.lblJKLM2_R.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM2_R, null);
            this.lblJKLM2_R.TabIndex = 125;
            this.lblJKLM2_R.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblFloater
            // 
            this.lblFloater.AutoSize = true;
            this.lblFloater.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblFloater.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold);
            this.lblFloater.Location = new System.Drawing.Point(4, 169);
            this.lblFloater.Name = "lblFloater";
            this.lblFloater.Size = new System.Drawing.Size(184, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblFloater, null);
            this.lblFloater.TabIndex = 126;
            this.lblFloater.Text = "Floater合計";
            this.lblFloater.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblSumFloater
            // 
            this.lblSumFloater.AutoSize = true;
            this.lblSumFloater.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblSumFloater.Font = new System.Drawing.Font("Tahoma", 9F);
            this.lblSumFloater.Location = new System.Drawing.Point(377, 169);
            this.lblSumFloater.Name = "lblSumFloater";
            this.lblSumFloater.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblSumFloater, null);
            this.lblSumFloater.TabIndex = 127;
            this.lblSumFloater.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblDetail
            // 
            this.lblDetail.AutoSize = true;
            this.lblDetail.BackColor = System.Drawing.Color.WhiteSmoke;
            this.lblDetail.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblDetail.Location = new System.Drawing.Point(4, 1);
            this.lblDetail.Name = "lblDetail";
            this.tableSum.SetRowSpan(this.lblDetail, 2);
            this.lblDetail.Size = new System.Drawing.Size(184, 41);
            this.PlatetoolTipController.SetSuperTip(this.lblDetail, null);
            this.lblDetail.TabIndex = 128;
            this.lblDetail.Text = "實施LB步驟明細";
            this.lblDetail.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblBestLB
            // 
            this.lblBestLB.AutoSize = true;
            this.lblBestLB.BackColor = System.Drawing.Color.WhiteSmoke;
            this.tableSum.SetColumnSpan(this.lblBestLB, 2);
            this.lblBestLB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblBestLB.Location = new System.Drawing.Point(377, 1);
            this.lblBestLB.Name = "lblBestLB";
            this.lblBestLB.Size = new System.Drawing.Size(384, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblBestLB, null);
            this.lblBestLB.TabIndex = 129;
            this.lblBestLB.Text = "優化";
            this.lblBestLB.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblJKLM20_Y
            // 
            this.lblJKLM20_Y.AutoSize = true;
            this.lblJKLM20_Y.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJKLM20_Y.Location = new System.Drawing.Point(377, 295);
            this.lblJKLM20_Y.Name = "lblJKLM20_Y";
            this.lblJKLM20_Y.Size = new System.Drawing.Size(84, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblJKLM20_Y, null);
            this.lblJKLM20_Y.TabIndex = 130;
            this.lblJKLM20_Y.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // dockPanelMemo
            // 
            this.dockPanelMemo.Controls.Add(this.dockPanel2_Container);
            this.dockPanelMemo.Dock = DevExpress.XtraBars.Docking.DockingStyle.Bottom;
            this.dockPanelMemo.ID = new System.Guid("8d6fb096-0024-4d5f-8899-7def0aedf097");
            this.dockPanelMemo.Location = new System.Drawing.Point(0, 0);
            this.dockPanelMemo.Name = "dockPanelMemo";
            this.dockPanelMemo.SavedDock = DevExpress.XtraBars.Docking.DockingStyle.Bottom;
            this.dockPanelMemo.SavedIndex = 0;
            this.dockPanelMemo.Size = new System.Drawing.Size(1128, 446);
            this.dockPanelMemo.Text = "備注";
            this.dockPanelMemo.Visibility = DevExpress.XtraBars.Docking.DockVisibility.AutoHide;
            // 
            // dockPanel2_Container
            // 
            this.dockPanel2_Container.Controls.Add(this.panelControl2);
            this.dockPanel2_Container.Controls.Add(this.gridNoCJGZW);
            this.dockPanel2_Container.Location = new System.Drawing.Point(3, 25);
            this.dockPanel2_Container.Name = "dockPanel2_Container";
            this.dockPanel2_Container.Size = new System.Drawing.Size(1122, 418);
            this.PlatetoolTipController.SetSuperTip(this.dockPanel2_Container, null);
            this.dockPanel2_Container.TabIndex = 0;
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.tableLayoutPanel1);
            this.panelControl2.Controls.Add(this.tableLayoutPanel2);
            this.panelControl2.Controls.Add(this.label22);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelControl2.Location = new System.Drawing.Point(0, 0);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(278, 418);
            this.PlatetoolTipController.SetSuperTip(this.panelControl2, null);
            this.panelControl2.TabIndex = 2;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.CellBorderStyle = System.Windows.Forms.TableLayoutPanelCellBorderStyle.Single;
            this.tableLayoutPanel1.ColumnCount = 2;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 51.16279F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 48.83721F));
            this.tableLayoutPanel1.Controls.Add(this.lblIEConfirm, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.lblCreator, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.lblCreateDT, 1, 1);
            this.tableLayoutPanel1.Controls.Add(this.lblWorkShopConfirm, 0, 4);
            this.tableLayoutPanel1.Controls.Add(this.lblDate, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.lblPrepareMan, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.lblDate1, 0, 3);
            this.tableLayoutPanel1.Controls.Add(this.lblDate2, 0, 5);
            this.tableLayoutPanel1.Controls.Add(this.lblConf_IE, 1, 2);
            this.tableLayoutPanel1.Controls.Add(this.lblDate_IE, 1, 3);
            this.tableLayoutPanel1.Controls.Add(this.lblConfirm_Prod, 1, 4);
            this.tableLayoutPanel1.Controls.Add(this.lblDate_Prod, 1, 5);
            this.tableLayoutPanel1.Location = new System.Drawing.Point(12, 202);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 6;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 31F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 34F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 33F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 30F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 28F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 12F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 33F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 39F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(251, 199);
            this.PlatetoolTipController.SetSuperTip(this.tableLayoutPanel1, null);
            this.tableLayoutPanel1.TabIndex = 2;
            // 
            // lblIEConfirm
            // 
            this.lblIEConfirm.AutoSize = true;
            this.lblIEConfirm.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblIEConfirm.Location = new System.Drawing.Point(4, 68);
            this.lblIEConfirm.Name = "lblIEConfirm";
            this.lblIEConfirm.Size = new System.Drawing.Size(120, 33);
            this.PlatetoolTipController.SetSuperTip(this.lblIEConfirm, null);
            this.lblIEConfirm.TabIndex = 5;
            this.lblIEConfirm.Text = "IE部確認";
            this.lblIEConfirm.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblCreator
            // 
            this.lblCreator.AutoSize = true;
            this.lblCreator.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCreator.Location = new System.Drawing.Point(131, 1);
            this.lblCreator.Name = "lblCreator";
            this.lblCreator.Size = new System.Drawing.Size(116, 31);
            this.PlatetoolTipController.SetSuperTip(this.lblCreator, null);
            this.lblCreator.TabIndex = 3;
            this.lblCreator.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblCreateDT
            // 
            this.lblCreateDT.AutoSize = true;
            this.lblCreateDT.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCreateDT.Location = new System.Drawing.Point(131, 33);
            this.lblCreateDT.Name = "lblCreateDT";
            this.lblCreateDT.Size = new System.Drawing.Size(116, 34);
            this.PlatetoolTipController.SetSuperTip(this.lblCreateDT, null);
            this.lblCreateDT.TabIndex = 1;
            this.lblCreateDT.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblWorkShopConfirm
            // 
            this.lblWorkShopConfirm.AutoSize = true;
            this.lblWorkShopConfirm.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblWorkShopConfirm.Location = new System.Drawing.Point(4, 133);
            this.lblWorkShopConfirm.Name = "lblWorkShopConfirm";
            this.lblWorkShopConfirm.Size = new System.Drawing.Size(120, 28);
            this.PlatetoolTipController.SetSuperTip(this.lblWorkShopConfirm, null);
            this.lblWorkShopConfirm.TabIndex = 4;
            this.lblWorkShopConfirm.Text = "生產部確認";
            this.lblWorkShopConfirm.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblDate
            // 
            this.lblDate.AutoSize = true;
            this.lblDate.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblDate.Location = new System.Drawing.Point(4, 33);
            this.lblDate.Name = "lblDate";
            this.lblDate.Size = new System.Drawing.Size(120, 34);
            this.PlatetoolTipController.SetSuperTip(this.lblDate, null);
            this.lblDate.TabIndex = 0;
            this.lblDate.Text = "製錶日期";
            this.lblDate.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblPrepareMan
            // 
            this.lblPrepareMan.AutoSize = true;
            this.lblPrepareMan.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblPrepareMan.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.lblPrepareMan.Location = new System.Drawing.Point(4, 1);
            this.lblPrepareMan.Name = "lblPrepareMan";
            this.lblPrepareMan.Size = new System.Drawing.Size(120, 31);
            this.PlatetoolTipController.SetSuperTip(this.lblPrepareMan, null);
            this.lblPrepareMan.TabIndex = 2;
            this.lblPrepareMan.Text = "製錶人";
            this.lblPrepareMan.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblDate1
            // 
            this.lblDate1.AutoSize = true;
            this.lblDate1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblDate1.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.lblDate1.Location = new System.Drawing.Point(4, 102);
            this.lblDate1.Name = "lblDate1";
            this.lblDate1.Size = new System.Drawing.Size(120, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblDate1, null);
            this.lblDate1.TabIndex = 6;
            this.lblDate1.Text = "日期";
            this.lblDate1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblDate2
            // 
            this.lblDate2.AutoSize = true;
            this.lblDate2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblDate2.Location = new System.Drawing.Point(4, 162);
            this.lblDate2.Name = "lblDate2";
            this.lblDate2.Size = new System.Drawing.Size(120, 36);
            this.PlatetoolTipController.SetSuperTip(this.lblDate2, null);
            this.lblDate2.TabIndex = 7;
            this.lblDate2.Text = "日期";
            this.lblDate2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblConf_IE
            // 
            this.lblConf_IE.AutoSize = true;
            this.lblConf_IE.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblConf_IE.Location = new System.Drawing.Point(131, 68);
            this.lblConf_IE.Name = "lblConf_IE";
            this.lblConf_IE.Size = new System.Drawing.Size(116, 33);
            this.PlatetoolTipController.SetSuperTip(this.lblConf_IE, null);
            this.lblConf_IE.TabIndex = 8;
            this.lblConf_IE.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblDate_IE
            // 
            this.lblDate_IE.AutoSize = true;
            this.lblDate_IE.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblDate_IE.Location = new System.Drawing.Point(131, 102);
            this.lblDate_IE.Name = "lblDate_IE";
            this.lblDate_IE.Size = new System.Drawing.Size(116, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblDate_IE, null);
            this.lblDate_IE.TabIndex = 9;
            this.lblDate_IE.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblConfirm_Prod
            // 
            this.lblConfirm_Prod.AutoSize = true;
            this.lblConfirm_Prod.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblConfirm_Prod.Location = new System.Drawing.Point(131, 133);
            this.lblConfirm_Prod.Name = "lblConfirm_Prod";
            this.lblConfirm_Prod.Size = new System.Drawing.Size(116, 28);
            this.PlatetoolTipController.SetSuperTip(this.lblConfirm_Prod, null);
            this.lblConfirm_Prod.TabIndex = 10;
            this.lblConfirm_Prod.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblDate_Prod
            // 
            this.lblDate_Prod.AutoSize = true;
            this.lblDate_Prod.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblDate_Prod.Location = new System.Drawing.Point(131, 162);
            this.lblDate_Prod.Name = "lblDate_Prod";
            this.lblDate_Prod.Size = new System.Drawing.Size(116, 36);
            this.PlatetoolTipController.SetSuperTip(this.lblDate_Prod, null);
            this.lblDate_Prod.TabIndex = 11;
            this.lblDate_Prod.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // tableLayoutPanel2
            // 
            this.tableLayoutPanel2.ColumnCount = 5;
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 50F));
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 50F));
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 50F));
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 53F));
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 122F));
            this.tableLayoutPanel2.Controls.Add(this.lblExplain, 0, 1);
            this.tableLayoutPanel2.Controls.Add(this.lblConfirm, 0, 4);
            this.tableLayoutPanel2.Controls.Add(this.lblSplit, 1, 2);
            this.tableLayoutPanel2.Controls.Add(this.lblMerge, 2, 2);
            this.tableLayoutPanel2.Controls.Add(this.lblConfirmOp2, 1, 7);
            this.tableLayoutPanel2.Controls.Add(this.lblConfirmOp1, 1, 5);
            this.tableLayoutPanel2.Controls.Add(this.label1, 0, 0);
            this.tableLayoutPanel2.Controls.Add(this.lblBest, 3, 2);
            this.tableLayoutPanel2.Location = new System.Drawing.Point(12, 10);
            this.tableLayoutPanel2.Name = "tableLayoutPanel2";
            this.tableLayoutPanel2.RowCount = 9;
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel2.Size = new System.Drawing.Size(251, 179);
            this.PlatetoolTipController.SetSuperTip(this.tableLayoutPanel2, null);
            this.tableLayoutPanel2.TabIndex = 1;
            // 
            // lblExplain
            // 
            this.lblExplain.AutoSize = true;
            this.tableLayoutPanel2.SetColumnSpan(this.lblExplain, 2);
            this.lblExplain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblExplain.ForeColor = System.Drawing.Color.Blue;
            this.lblExplain.Location = new System.Drawing.Point(3, 20);
            this.lblExplain.Name = "lblExplain";
            this.lblExplain.Size = new System.Drawing.Size(94, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblExplain, null);
            this.lblExplain.TabIndex = 11;
            this.lblExplain.Text = "備註";
            this.lblExplain.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblConfirm
            // 
            this.lblConfirm.AutoSize = true;
            this.tableLayoutPanel2.SetColumnSpan(this.lblConfirm, 5);
            this.lblConfirm.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblConfirm.ForeColor = System.Drawing.Color.Blue;
            this.lblConfirm.Location = new System.Drawing.Point(3, 80);
            this.lblConfirm.Name = "lblConfirm";
            this.lblConfirm.Size = new System.Drawing.Size(319, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblConfirm, null);
            this.lblConfirm.TabIndex = 2;
            this.lblConfirm.Text = "2.車間確認代碼";
            this.lblConfirm.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lblSplit
            // 
            this.lblSplit.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(153)))), ((int)(((byte)(204)))));
            this.lblSplit.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblSplit.Location = new System.Drawing.Point(53, 40);
            this.lblSplit.Name = "lblSplit";
            this.lblSplit.Size = new System.Drawing.Size(44, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblSplit, null);
            this.lblSplit.TabIndex = 2;
            this.lblSplit.Text = "拆";
            this.lblSplit.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblMerge
            // 
            this.lblMerge.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.lblMerge.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblMerge.Location = new System.Drawing.Point(103, 40);
            this.lblMerge.Name = "lblMerge";
            this.lblMerge.Size = new System.Drawing.Size(44, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblMerge, null);
            this.lblMerge.TabIndex = 12;
            this.lblMerge.Text = "夾";
            this.lblMerge.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblConfirmOp2
            // 
            this.lblConfirmOp2.AutoSize = true;
            this.tableLayoutPanel2.SetColumnSpan(this.lblConfirmOp2, 4);
            this.lblConfirmOp2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblConfirmOp2.Location = new System.Drawing.Point(53, 140);
            this.lblConfirmOp2.Name = "lblConfirmOp2";
            this.lblConfirmOp2.Size = new System.Drawing.Size(269, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblConfirmOp2, null);
            this.lblConfirmOp2.TabIndex = 6;
            this.lblConfirmOp2.Text = "1 代表車間確認工序正確";
            this.lblConfirmOp2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lblConfirmOp1
            // 
            this.lblConfirmOp1.AutoSize = true;
            this.tableLayoutPanel2.SetColumnSpan(this.lblConfirmOp1, 4);
            this.lblConfirmOp1.Dock = System.Windows.Forms.DockStyle.Left;
            this.lblConfirmOp1.Location = new System.Drawing.Point(53, 100);
            this.lblConfirmOp1.Name = "lblConfirmOp1";
            this.tableLayoutPanel2.SetRowSpan(this.lblConfirmOp1, 2);
            this.lblConfirmOp1.Size = new System.Drawing.Size(267, 40);
            this.PlatetoolTipController.SetSuperTip(this.lblConfirmOp1, null);
            this.lblConfirmOp1.TabIndex = 5;
            this.lblConfirmOp1.Text = "0 代表車間確認了此工序之SAH,但未確認工序選擇是否錯誤";
            this.lblConfirmOp1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.tableLayoutPanel2.SetColumnSpan(this.label1, 4);
            this.label1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(3, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(197, 20);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 15;
            this.label1.Text = "1.圖示說明﹕";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lblBest
            // 
            this.lblBest.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(153)))), ((int)(((byte)(255)))));
            this.lblBest.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblBest.Location = new System.Drawing.Point(153, 40);
            this.lblBest.Name = "lblBest";
            this.lblBest.Size = new System.Drawing.Size(47, 20);
            this.PlatetoolTipController.SetSuperTip(this.lblBest, null);
            this.lblBest.TabIndex = 13;
            this.lblBest.Text = "優化";
            this.lblBest.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(186, 107);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(39, 12);
            this.PlatetoolTipController.SetSuperTip(this.label22, null);
            this.label22.TabIndex = 0;
            this.label22.Text = "label22";
            // 
            // gridNoCJGZW
            // 
            this.gridNoCJGZW.EmbeddedNavigator.Name = "";
            this.gridNoCJGZW.Location = new System.Drawing.Point(292, 0);
            this.gridNoCJGZW.MainView = this.bandedGridView1;
            this.gridNoCJGZW.Name = "gridNoCJGZW";
            this.gridNoCJGZW.Size = new System.Drawing.Size(798, 400);
            this.gridNoCJGZW.TabIndex = 85;
            this.gridNoCJGZW.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.GroupPanel.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.bandedGridView1.Appearance.GroupPanel.Options.UseBackColor = true;
            this.bandedGridView1.Appearance.Row.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.bandedGridView1.Appearance.Row.Options.UseBackColor = true;
            this.bandedGridView1.BandPanelRowHeight = 40;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBandNonLB,
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand5});
            this.bandedGridView1.ColumnPanelRowHeight = 40;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.bandColNonLBCode,
            this.bandColNonLBType,
            this.bandColNonLBCount,
            this.bandedGridColumn7,
            this.bandedGridColumn8,
            this.bandedGridColumn9,
            this.bandedGridColumn10,
            this.bandedGridColumn11,
            this.bandedGridColumn12,
            this.bandedGridColumn13,
            this.bandedGridColumn14,
            this.bandedGridColumn15,
            this.bandedGridColumn16});
            this.bandedGridView1.GridControl = this.gridNoCJGZW;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.OptionsView.ShowGroupPanel = false;
            this.bandedGridView1.OptionsView.ShowIndicator = false;
            this.bandedGridView1.CustomDrawFooterCell += new DevExpress.XtraGrid.Views.Grid.FooterCellCustomDrawEventHandler(this.bandedGridView1_CustomDrawFooterCell);
            // 
            // gridBandNonLB
            // 
            this.gridBandNonLB.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBandNonLB.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBandNonLB.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBandNonLB.Caption = "工作位";
            this.gridBandNonLB.Columns.Add(this.bandColNonLBCode);
            this.gridBandNonLB.Columns.Add(this.bandColNonLBType);
            this.gridBandNonLB.Name = "gridBandNonLB";
            this.gridBandNonLB.Width = 122;
            // 
            // bandColNonLBCode
            // 
            this.bandColNonLBCode.AppearanceCell.Options.UseTextOptions = true;
            this.bandColNonLBCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandColNonLBCode.AppearanceHeader.Options.UseTextOptions = true;
            this.bandColNonLBCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandColNonLBCode.Caption = "代碼";
            this.bandColNonLBCode.FieldName = "YCDM";
            this.bandColNonLBCode.Name = "bandColNonLBCode";
            this.bandColNonLBCode.OptionsColumn.AllowEdit = false;
            this.bandColNonLBCode.OptionsColumn.AllowFocus = false;
            this.bandColNonLBCode.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandColNonLBCode.OptionsFilter.AllowAutoFilter = false;
            this.bandColNonLBCode.OptionsFilter.AllowFilter = false;
            this.bandColNonLBCode.Visible = true;
            this.bandColNonLBCode.Width = 54;
            // 
            // bandColNonLBType
            // 
            this.bandColNonLBType.AppearanceCell.Options.UseTextOptions = true;
            this.bandColNonLBType.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandColNonLBType.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.bandColNonLBType.AppearanceHeader.Options.UseTextOptions = true;
            this.bandColNonLBType.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandColNonLBType.Caption = "衣車種類";
            this.bandColNonLBType.FieldName = "YCType";
            this.bandColNonLBType.Name = "bandColNonLBType";
            this.bandColNonLBType.OptionsColumn.AllowEdit = false;
            this.bandColNonLBType.OptionsColumn.AllowFocus = false;
            this.bandColNonLBType.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandColNonLBType.OptionsFilter.AllowAutoFilter = false;
            this.bandColNonLBType.OptionsFilter.AllowFilter = false;
            this.bandColNonLBType.Visible = true;
            this.bandColNonLBType.Width = 68;
            // 
            // gridBand1
            // 
            this.gridBand1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand1.Caption = "未拆夾LB";
            this.gridBand1.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand6});
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 100;
            // 
            // gridBand6
            // 
            this.gridBand6.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand6.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand6.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand6.Caption = "數量 (衣車 + 手工臺)";
            this.gridBand6.Columns.Add(this.bandColNonLBCount);
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.ToolTip = null;
            this.gridBand6.Width = 100;
            // 
            // bandColNonLBCount
            // 
            this.bandColNonLBCount.AppearanceCell.Options.UseTextOptions = true;
            this.bandColNonLBCount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandColNonLBCount.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.bandColNonLBCount.AppearanceHeader.Options.UseTextOptions = true;
            this.bandColNonLBCount.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandColNonLBCount.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandColNonLBCount.Caption = "總數";
            this.bandColNonLBCount.FieldName = "NoneLBYCCount";
            this.bandColNonLBCount.Name = "bandColNonLBCount";
            this.bandColNonLBCount.OptionsColumn.AllowEdit = false;
            this.bandColNonLBCount.OptionsColumn.AllowFocus = false;
            this.bandColNonLBCount.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandColNonLBCount.OptionsFilter.AllowAutoFilter = false;
            this.bandColNonLBCount.OptionsFilter.AllowFilter = false;
            this.bandColNonLBCount.SummaryItem.DisplayFormat = "{0:N0}";
            this.bandColNonLBCount.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.bandColNonLBCount.Visible = true;
            this.bandColNonLBCount.Width = 100;
            // 
            // gridBand2
            // 
            this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand2.Caption = "拆夾LB";
            this.gridBand2.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand24});
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 171;
            // 
            // gridBand24
            // 
            this.gridBand24.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand24.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand24.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand24.Caption = "數量 (衣車 + 手工臺)";
            this.gridBand24.Columns.Add(this.bandedGridColumn7);
            this.gridBand24.Columns.Add(this.bandedGridColumn8);
            this.gridBand24.Columns.Add(this.bandedGridColumn9);
            this.gridBand24.Name = "gridBand24";
            this.gridBand24.ToolTip = null;
            this.gridBand24.Width = 171;
            // 
            // bandedGridColumn7
            // 
            this.bandedGridColumn7.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn7.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn7.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn7.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn7.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn7.Caption = "生産線主區";
            this.bandedGridColumn7.FieldName = "CJLBMainAreaYCCount";
            this.bandedGridColumn7.Name = "bandedGridColumn7";
            this.bandedGridColumn7.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn7.OptionsColumn.AllowFocus = false;
            this.bandedGridColumn7.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn7.OptionsFilter.AllowAutoFilter = false;
            this.bandedGridColumn7.OptionsFilter.AllowFilter = false;
            this.bandedGridColumn7.SummaryItem.DisplayFormat = "{0:N0}";
            this.bandedGridColumn7.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.bandedGridColumn7.Visible = true;
            this.bandedGridColumn7.Width = 53;
            // 
            // bandedGridColumn8
            // 
            this.bandedGridColumn8.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn8.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn8.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn8.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn8.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn8.Caption = "生産線支援區";
            this.bandedGridColumn8.FieldName = "CJLBSupportAreaYCCount";
            this.bandedGridColumn8.Name = "bandedGridColumn8";
            this.bandedGridColumn8.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn8.OptionsColumn.AllowFocus = false;
            this.bandedGridColumn8.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn8.OptionsFilter.AllowAutoFilter = false;
            this.bandedGridColumn8.OptionsFilter.AllowFilter = false;
            this.bandedGridColumn8.SummaryItem.DisplayFormat = "{0:N0}";
            this.bandedGridColumn8.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.bandedGridColumn8.Visible = true;
            this.bandedGridColumn8.Width = 54;
            // 
            // bandedGridColumn9
            // 
            this.bandedGridColumn9.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn9.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn9.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn9.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn9.Caption = "總數";
            this.bandedGridColumn9.FieldName = "CJLBYCCount";
            this.bandedGridColumn9.Name = "bandedGridColumn9";
            this.bandedGridColumn9.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn9.OptionsColumn.AllowFocus = false;
            this.bandedGridColumn9.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn9.OptionsFilter.AllowAutoFilter = false;
            this.bandedGridColumn9.OptionsFilter.AllowFilter = false;
            this.bandedGridColumn9.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.bandedGridColumn9.Visible = true;
            this.bandedGridColumn9.Width = 64;
            // 
            // gridBand3
            // 
            this.gridBand3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand3.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand3.Caption = "優化LB";
            this.gridBand3.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand25});
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Visible = false;
            this.gridBand3.Width = 159;
            // 
            // gridBand25
            // 
            this.gridBand25.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand25.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand25.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand25.Caption = "數量 (衣車 + 手工臺)";
            this.gridBand25.Columns.Add(this.bandedGridColumn10);
            this.gridBand25.Columns.Add(this.bandedGridColumn11);
            this.gridBand25.Columns.Add(this.bandedGridColumn12);
            this.gridBand25.Name = "gridBand25";
            this.gridBand25.ToolTip = null;
            this.gridBand25.Width = 159;
            // 
            // bandedGridColumn10
            // 
            this.bandedGridColumn10.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn10.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn10.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn10.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn10.Caption = "主區";
            this.bandedGridColumn10.FieldName = "YHLBMainAreaYCCount";
            this.bandedGridColumn10.Name = "bandedGridColumn10";
            this.bandedGridColumn10.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn10.OptionsColumn.AllowFocus = false;
            this.bandedGridColumn10.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn10.OptionsFilter.AllowAutoFilter = false;
            this.bandedGridColumn10.OptionsFilter.AllowFilter = false;
            this.bandedGridColumn10.SummaryItem.DisplayFormat = "{0:N0}";
            this.bandedGridColumn10.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.bandedGridColumn10.Visible = true;
            this.bandedGridColumn10.Width = 38;
            // 
            // bandedGridColumn11
            // 
            this.bandedGridColumn11.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn11.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn11.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn11.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn11.Caption = "支援區";
            this.bandedGridColumn11.FieldName = "YHLBSupportAreaYCCount";
            this.bandedGridColumn11.Name = "bandedGridColumn11";
            this.bandedGridColumn11.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn11.OptionsColumn.AllowFocus = false;
            this.bandedGridColumn11.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn11.OptionsFilter.AllowAutoFilter = false;
            this.bandedGridColumn11.OptionsFilter.AllowFilter = false;
            this.bandedGridColumn11.SummaryItem.DisplayFormat = "{0:N0}";
            this.bandedGridColumn11.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.bandedGridColumn11.Visible = true;
            this.bandedGridColumn11.Width = 54;
            // 
            // bandedGridColumn12
            // 
            this.bandedGridColumn12.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn12.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn12.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn12.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn12.Caption = "總數";
            this.bandedGridColumn12.FieldName = "YHLBYCCount";
            this.bandedGridColumn12.Name = "bandedGridColumn12";
            this.bandedGridColumn12.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn12.OptionsColumn.AllowFocus = false;
            this.bandedGridColumn12.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn12.OptionsFilter.AllowAutoFilter = false;
            this.bandedGridColumn12.OptionsFilter.AllowFilter = false;
            this.bandedGridColumn12.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.bandedGridColumn12.Visible = true;
            this.bandedGridColumn12.Width = 67;
            // 
            // gridBand5
            // 
            this.gridBand5.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand5.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand5.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand5.Caption = "間時拆LB";
            this.gridBand5.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand26});
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 163;
            // 
            // gridBand26
            // 
            this.gridBand26.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand26.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand26.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand26.Caption = "數量 (衣車 + 手工臺)";
            this.gridBand26.Columns.Add(this.bandedGridColumn13);
            this.gridBand26.Columns.Add(this.bandedGridColumn14);
            this.gridBand26.Columns.Add(this.bandedGridColumn15);
            this.gridBand26.Columns.Add(this.bandedGridColumn16);
            this.gridBand26.Name = "gridBand26";
            this.gridBand26.ToolTip = null;
            this.gridBand26.Width = 163;
            // 
            // bandedGridColumn13
            // 
            this.bandedGridColumn13.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn13.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn13.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn13.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn13.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn13.Caption = "生産線主區";
            this.bandedGridColumn13.FieldName = "BestLBMainAreaYCCount";
            this.bandedGridColumn13.Name = "bandedGridColumn13";
            this.bandedGridColumn13.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn13.OptionsColumn.AllowFocus = false;
            this.bandedGridColumn13.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn13.OptionsFilter.AllowAutoFilter = false;
            this.bandedGridColumn13.OptionsFilter.AllowFilter = false;
            this.bandedGridColumn13.SummaryItem.DisplayFormat = "{0:N0}";
            this.bandedGridColumn13.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.bandedGridColumn13.Visible = true;
            this.bandedGridColumn13.Width = 46;
            // 
            // bandedGridColumn14
            // 
            this.bandedGridColumn14.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn14.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn14.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn14.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn14.Caption = "支援區";
            this.bandedGridColumn14.FieldName = "BestLBSupportAreaYCCount";
            this.bandedGridColumn14.Name = "bandedGridColumn14";
            this.bandedGridColumn14.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn14.OptionsColumn.AllowFocus = false;
            this.bandedGridColumn14.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn14.OptionsFilter.AllowAutoFilter = false;
            this.bandedGridColumn14.OptionsFilter.AllowFilter = false;
            this.bandedGridColumn14.SummaryItem.DisplayFormat = "{0:N0}";
            this.bandedGridColumn14.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.bandedGridColumn14.Width = 61;
            // 
            // bandedGridColumn15
            // 
            this.bandedGridColumn15.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn15.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn15.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn15.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn15.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn15.Caption = "生産線支援區";
            this.bandedGridColumn15.FieldName = "BestLBFloaterAreaYCCount";
            this.bandedGridColumn15.Name = "bandedGridColumn15";
            this.bandedGridColumn15.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn15.OptionsColumn.AllowFocus = false;
            this.bandedGridColumn15.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            this.bandedGridColumn15.OptionsFilter.AllowAutoFilter = false;
            this.bandedGridColumn15.OptionsFilter.AllowFilter = false;
            this.bandedGridColumn15.SummaryItem.DisplayFormat = "{0:N0}";
            this.bandedGridColumn15.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.bandedGridColumn15.Visible = true;
            this.bandedGridColumn15.Width = 50;
            // 
            // bandedGridColumn16
            // 
            this.bandedGridColumn16.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn16.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn16.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn16.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn16.Caption = "總數";
            this.bandedGridColumn16.FieldName = "BestLBYCCount";
            this.bandedGridColumn16.Name = "bandedGridColumn16";
            this.bandedGridColumn16.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn16.OptionsColumn.AllowFocus = false;
            this.bandedGridColumn16.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn16.OptionsFilter.AllowAutoFilter = false;
            this.bandedGridColumn16.OptionsFilter.AllowFilter = false;
            this.bandedGridColumn16.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.bandedGridColumn16.Visible = true;
            this.bandedGridColumn16.Width = 67;
            // 
            // dockPanel3
            // 
            this.dockPanel3.Controls.Add(this.dockPanel3_Container);
            this.dockPanel3.Dock = DevExpress.XtraBars.Docking.DockingStyle.Float;
            this.dockPanel3.ID = new System.Guid("06ce055d-158a-464c-9bd6-c188e7ff234f");
            this.dockPanel3.Location = new System.Drawing.Point(-32768, -32768);
            this.dockPanel3.Name = "dockPanel3";
            this.dockPanel3.SavedIndex = 2;
            this.dockPanel3.Size = new System.Drawing.Size(200, 200);
            this.dockPanel3.Visibility = DevExpress.XtraBars.Docking.DockVisibility.Hidden;
            // 
            // dockPanel3_Container
            // 
            this.dockPanel3_Container.Location = new System.Drawing.Point(2, 24);
            this.dockPanel3_Container.Name = "dockPanel3_Container";
            this.dockPanel3_Container.Size = new System.Drawing.Size(200, 100);
            this.PlatetoolTipController.SetSuperTip(this.dockPanel3_Container, null);
            this.dockPanel3_Container.TabIndex = 0;
            // 
            // barToolbars_Print
            // 
            this.barToolbars_Print.Id = 19;
            this.barToolbars_Print.Name = "barToolbars_Print";
            this.barToolbars_Print.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbars_Print_ItemClick);
            // 
            // barToolbars_ExportGraph
            // 
            this.barToolbars_ExportGraph.Id = 20;
            this.barToolbars_ExportGraph.Name = "barToolbars_ExportGraph";
            this.barToolbars_ExportGraph.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbars_ExportGraph_ItemClick);
            // 
            // tableLayoutPanel3
            // 
            this.tableLayoutPanel3.ColumnCount = 18;
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel3.Controls.Add(this.lblCustomerStyle, 0, 1);
            this.tableLayoutPanel3.Controls.Add(this.txtKHKH, 1, 1);
            this.tableLayoutPanel3.Controls.Add(this.lblPHStyle, 2, 1);
            this.tableLayoutPanel3.Controls.Add(this.txtPHKH, 3, 1);
            this.tableLayoutPanel3.Controls.Add(this.edtUpdateTime, 17, 1);
            this.tableLayoutPanel3.Controls.Add(this.lblUpdateTime, 16, 1);
            this.tableLayoutPanel3.Controls.Add(this.edtUpdater, 13, 1);
            this.tableLayoutPanel3.Controls.Add(this.edtCreater, 13, 2);
            this.tableLayoutPanel3.Controls.Add(this.lblUpdater, 12, 1);
            this.tableLayoutPanel3.Controls.Add(this.lblCust, 0, 2);
            this.tableLayoutPanel3.Controls.Add(this.lblCreater, 12, 2);
            this.tableLayoutPanel3.Controls.Add(this.txtCust, 1, 2);
            this.tableLayoutPanel3.Controls.Add(this.lblCategory, 4, 1);
            this.tableLayoutPanel3.Controls.Add(this.txtCPLB, 5, 1);
            this.tableLayoutPanel3.Controls.Add(this.lblSize, 6, 1);
            this.tableLayoutPanel3.Controls.Add(this.txtSizeYJ, 7, 1);
            this.tableLayoutPanel3.Controls.Add(this.edtJZ_Prod, 7, 2);
            this.tableLayoutPanel3.Controls.Add(this.lblJZ_Prod, 6, 2);
            this.tableLayoutPanel3.Controls.Add(this.lblZH, 2, 2);
            this.tableLayoutPanel3.Controls.Add(this.txtZH, 3, 2);
            this.tableLayoutPanel3.Controls.Add(this.lblProc, 4, 2);
            this.tableLayoutPanel3.Controls.Add(this.cbbProc, 5, 2);
            this.tableLayoutPanel3.Controls.Add(this.lblEdition, 8, 1);
            this.tableLayoutPanel3.Controls.Add(this.txtEdition, 9, 1);
            this.tableLayoutPanel3.Controls.Add(this.lblStatu, 8, 2);
            this.tableLayoutPanel3.Controls.Add(this.lueStatu, 9, 2);
            this.tableLayoutPanel3.Controls.Add(this.lblValid, 10, 1);
            this.tableLayoutPanel3.Controls.Add(this.deValid, 11, 1);
            this.tableLayoutPanel3.Controls.Add(this.lblCreateTime, 10, 2);
            this.tableLayoutPanel3.Controls.Add(this.edtCreateTime, 11, 2);
            this.tableLayoutPanel3.Controls.Add(this.lblFac, 16, 2);
            this.tableLayoutPanel3.Controls.Add(this.cbbFac, 17, 2);
            this.tableLayoutPanel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel3.Location = new System.Drawing.Point(2, 21);
            this.tableLayoutPanel3.Name = "tableLayoutPanel3";
            this.tableLayoutPanel3.RowCount = 3;
            this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel3.Size = new System.Drawing.Size(1124, 60);
            this.PlatetoolTipController.SetSuperTip(this.tableLayoutPanel3, null);
            this.tableLayoutPanel3.TabIndex = 27;
            // 
            // edtUpdateTime
            // 
            this.edtUpdateTime.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UpdateTime", true));
            this.edtUpdateTime.Location = new System.Drawing.Point(1043, 3);
            this.edtUpdateTime.Name = "edtUpdateTime";
            this.edtUpdateTime.Size = new System.Drawing.Size(88, 21);
            this.edtUpdateTime.TabIndex = 30;
            // 
            // lblUpdateTime
            // 
            this.lblUpdateTime.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblUpdateTime.Location = new System.Drawing.Point(989, 3);
            this.lblUpdateTime.Name = "lblUpdateTime";
            this.lblUpdateTime.Size = new System.Drawing.Size(48, 14);
            this.lblUpdateTime.TabIndex = 34;
            this.lblUpdateTime.Text = "修改時間";
            // 
            // edtUpdater
            // 
            this.edtUpdater.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UpdateBy", true));
            this.edtUpdater.Location = new System.Drawing.Point(932, 3);
            this.edtUpdater.Name = "edtUpdater";
            this.edtUpdater.Size = new System.Drawing.Size(51, 21);
            this.edtUpdater.TabIndex = 29;
            // 
            // edtCreater
            // 
            this.edtCreater.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateBy", true));
            this.edtCreater.Location = new System.Drawing.Point(932, 33);
            this.edtCreater.Name = "edtCreater";
            this.edtCreater.Size = new System.Drawing.Size(51, 21);
            this.edtCreater.TabIndex = 27;
            // 
            // lblUpdater
            // 
            this.lblUpdater.Location = new System.Drawing.Point(890, 3);
            this.lblUpdater.Name = "lblUpdater";
            this.lblUpdater.Size = new System.Drawing.Size(36, 14);
            this.lblUpdater.TabIndex = 33;
            this.lblUpdater.Text = "修改人";
            // 
            // lblCust
            // 
            this.lblCust.AutoSize = true;
            this.lblCust.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCust.Location = new System.Drawing.Point(3, 30);
            this.lblCust.Name = "lblCust";
            this.lblCust.Size = new System.Drawing.Size(59, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblCust, null);
            this.lblCust.TabIndex = 36;
            this.lblCust.Text = "客 戶 號";
            this.lblCust.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblCreater
            // 
            this.lblCreater.Location = new System.Drawing.Point(890, 33);
            this.lblCreater.Name = "lblCreater";
            this.lblCreater.Size = new System.Drawing.Size(36, 14);
            this.lblCreater.TabIndex = 31;
            this.lblCreater.Text = "建立人";
            // 
            // txtCust
            // 
            this.txtCust.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustNo", true));
            this.txtCust.Location = new System.Drawing.Point(68, 33);
            this.txtCust.Name = "txtCust";
            this.txtCust.Size = new System.Drawing.Size(100, 21);
            this.txtCust.TabIndex = 37;
            // 
            // edtJZ_Prod
            // 
            this.edtJZ_Prod.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SizeYJ_Prod", true));
            this.edtJZ_Prod.Dock = System.Windows.Forms.DockStyle.Fill;
            this.edtJZ_Prod.Location = new System.Drawing.Point(570, 33);
            this.edtJZ_Prod.Name = "edtJZ_Prod";
            this.edtJZ_Prod.Size = new System.Drawing.Size(72, 21);
            this.edtJZ_Prod.TabIndex = 43;
            // 
            // lblJZ_Prod
            // 
            this.lblJZ_Prod.AutoSize = true;
            this.lblJZ_Prod.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblJZ_Prod.Location = new System.Drawing.Point(455, 30);
            this.lblJZ_Prod.Name = "lblJZ_Prod";
            this.lblJZ_Prod.Size = new System.Drawing.Size(109, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblJZ_Prod, null);
            this.lblJZ_Prod.TabIndex = 44;
            this.lblJZ_Prod.Text = "基值(生產晒士依據)";
            this.lblJZ_Prod.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblProc
            // 
            this.lblProc.AutoSize = true;
            this.lblProc.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblProc.Location = new System.Drawing.Point(329, 30);
            this.lblProc.Name = "lblProc";
            this.lblProc.Size = new System.Drawing.Size(53, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblProc, null);
            this.lblProc.TabIndex = 42;
            this.lblProc.Text = "工場流程";
            this.lblProc.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // cbbProc
            // 
            this.cbbProc.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ProcDesc", true));
            this.cbbProc.Location = new System.Drawing.Point(388, 33);
            this.cbbProc.Name = "cbbProc";
            this.cbbProc.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbProc.Size = new System.Drawing.Size(61, 21);
            this.cbbProc.TabIndex = 41;
            // 
            // lblStatu
            // 
            this.lblStatu.AutoSize = true;
            this.lblStatu.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblStatu.Location = new System.Drawing.Point(648, 30);
            this.lblStatu.Name = "lblStatu";
            this.lblStatu.Size = new System.Drawing.Size(29, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblStatu, null);
            this.lblStatu.TabIndex = 35;
            this.lblStatu.Text = "狀態";
            this.lblStatu.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lueStatu
            // 
            this.lueStatu.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Statu", true));
            this.lueStatu.Location = new System.Drawing.Point(683, 33);
            this.lueStatu.Name = "lueStatu";
            this.lueStatu.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueStatu.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DataCode", "Code", 30),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DataName", "Name", 50)});
            this.lueStatu.Properties.NullText = "";
            this.lueStatu.Properties.PopupWidth = 120;
            this.lueStatu.Size = new System.Drawing.Size(62, 21);
            this.lueStatu.TabIndex = 40;
            // 
            // deValid
            // 
            this.deValid.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ValidDate", true));
            this.deValid.EditValue = null;
            this.deValid.Location = new System.Drawing.Point(810, 3);
            this.deValid.Name = "deValid";
            this.deValid.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deValid.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.deValid.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deValid.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deValid.Size = new System.Drawing.Size(74, 21);
            this.deValid.TabIndex = 26;
            // 
            // lblCreateTime
            // 
            this.lblCreateTime.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCreateTime.Location = new System.Drawing.Point(751, 33);
            this.lblCreateTime.Name = "lblCreateTime";
            this.lblCreateTime.Size = new System.Drawing.Size(48, 14);
            this.lblCreateTime.TabIndex = 32;
            this.lblCreateTime.Text = "建立時間";
            // 
            // edtCreateTime
            // 
            this.edtCreateTime.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateTime", true));
            this.edtCreateTime.Location = new System.Drawing.Point(810, 33);
            this.edtCreateTime.Name = "edtCreateTime";
            this.edtCreateTime.Size = new System.Drawing.Size(74, 21);
            this.edtCreateTime.TabIndex = 28;
            // 
            // lblFac
            // 
            this.lblFac.AutoSize = true;
            this.lblFac.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblFac.Location = new System.Drawing.Point(989, 30);
            this.lblFac.Name = "lblFac";
            this.lblFac.Size = new System.Drawing.Size(48, 30);
            this.PlatetoolTipController.SetSuperTip(this.lblFac, null);
            this.lblFac.TabIndex = 39;
            this.lblFac.Text = "工廠";
            this.lblFac.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblFac.Visible = false;
            // 
            // cbbFac
            // 
            this.cbbFac.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Factory", true));
            this.cbbFac.EditValue = "SL";
            this.cbbFac.Location = new System.Drawing.Point(1043, 33);
            this.cbbFac.Name = "cbbFac";
            this.cbbFac.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbFac.Properties.Items.AddRange(new object[] {
            "SL",
            "GG",
            "RX"});
            this.cbbFac.Size = new System.Drawing.Size(88, 21);
            this.cbbFac.TabIndex = 38;
            this.cbbFac.Visible = false;
            // 
            // barToolbarsListItemPrint
            // 
            this.barToolbarsListItemPrint.Caption = "列印";
            this.barToolbarsListItemPrint.Id = 19;
            this.barToolbarsListItemPrint.Name = "barToolbarsListItemPrint";
            this.barToolbarsListItemPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barToolbarsListItemPrint_ItemClick);
            // 
            // btnExportGraph
            // 
            this.btnExportGraph.Caption = "出圖";
            this.btnExportGraph.Id = 20;
            this.btnExportGraph.Name = "btnExportGraph";
            this.btnExportGraph.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnExportGraph_ItemClick);
            // 
            // styleProcedureListForm_F1
            // 
            this.styleProcedureListForm_F1.AllowAddRow = true;
            this.styleProcedureListForm_F1.AlwaysShowDesignLayout = false;
            this.styleProcedureListForm_F1.AutoOpenDetailForm = false;
            this.styleProcedureListForm_F1.DataContext = null;
            this.styleProcedureListForm_F1.DataSource = null;
            this.styleProcedureListForm_F1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.styleProcedureListForm_F1.EditorTypeName = null;
            this.styleProcedureListForm_F1.FileID = null;
            this.styleProcedureListForm_F1.FirstForm = null;
            this.styleProcedureListForm_F1.FormName = "StyleProcedureListForm_F";
            this.styleProcedureListForm_F1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.styleProcedureListForm_F1.FormTitle = "PH.LineBalanceII.UI.StyleProcedureListForm_F";
            this.styleProcedureListForm_F1.IsCancelList = false;
            this.styleProcedureListForm_F1.IsShowPivotTable = false;
            this.styleProcedureListForm_F1.LayoutData = null;
            this.styleProcedureListForm_F1.LayoutName = null;
            this.styleProcedureListForm_F1.ListForm = null;
            this.styleProcedureListForm_F1.Location = new System.Drawing.Point(2, 2);
            this.styleProcedureListForm_F1.MenuID = ((long)(0));
            this.styleProcedureListForm_F1.Name = "styleProcedureListForm_F1";
            this.styleProcedureListForm_F1.NeedCheckPermission = false;
            this.styleProcedureListForm_F1.NextForm = null;
            this.styleProcedureListForm_F1.ParentForm = null;
            this.styleProcedureListForm_F1.PrevForm = null;
            this.styleProcedureListForm_F1.RowChangeAutoSave = true;
            this.styleProcedureListForm_F1.ShowMultiCheck = false;
            this.styleProcedureListForm_F1.SideProgramID = null;
            this.styleProcedureListForm_F1.Size = new System.Drawing.Size(1124, 213);
            this.PlatetoolTipController.SetSuperTip(this.styleProcedureListForm_F1, null);
            this.styleProcedureListForm_F1.TabControls = null;
            this.styleProcedureListForm_F1.TabIndex = 13;
            this.styleProcedureListForm_F1.TabPage = null;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "打印";
            this.barButtonItem1.Id = 23;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // StyleMasterDetailForm_F
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.hideContainerBottom);
            this.Controls.Add(this.barDockControl3);
            this.Controls.Add(this.barDockControl4);
            this.Controls.Add(this.barDockControl2);
            this.Controls.Add(this.barDockControl1);
            this.Name = "StyleMasterDetailForm_F";
            this.Size = new System.Drawing.Size(1128, 420);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.barDockControl1, 0);
            this.Controls.SetChildIndex(this.barDockControl2, 0);
            this.Controls.SetChildIndex(this.barDockControl4, 0);
            this.Controls.SetChildIndex(this.barDockControl3, 0);
            this.Controls.SetChildIndex(this.hideContainerBottom, 0);
            this.Controls.SetChildIndex(this.headerTitleBar, 0);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.splitterControl1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).EndInit();
            this.headerTitleBar.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemCheckAutoOptimize)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemCheckAutoBisOptimize)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemCheckAutoJSC)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemCheckAutoPJH)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtKHKH.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCPLB.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSizeYJ.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEdition.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtZH.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPHKH.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dockManager)).EndInit();
            this.hideContainerBottom.ResumeLayout(false);
            this.dockPanelSummary.ResumeLayout(false);
            this.dockPanel1_Container.ResumeLayout(false);
            this.tableSum.ResumeLayout(false);
            this.tableSum.PerformLayout();
            this.dockPanelMemo.ResumeLayout(false);
            this.dockPanel2_Container.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            this.panelControl2.PerformLayout();
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.tableLayoutPanel2.ResumeLayout(false);
            this.tableLayoutPanel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridNoCJGZW)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.dockPanel3.ResumeLayout(false);
            this.tableLayoutPanel3.ResumeLayout(false);
            this.tableLayoutPanel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.edtUpdateTime.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtUpdater.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCreater.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCust.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtJZ_Prod.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbProc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueStatu.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deValid.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deValid.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCreateTime.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbFac.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        public int SelectIndex;
        public bool IsPrintEngLish;
        private void barButtonItem1_ItemClick(object sender, ItemClickEventArgs e)
        {


            string OperType = (this.PrevForm as StyleMasterListForm).OperType;
          


            FrmPrintSetup fPrintSetup = new FrmPrintSetup(this,  "F");
            fPrintSetup.StartPosition = FormStartPosition.CenterScreen;
            if (fPrintSetup.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }

            this.Cursor = Cursors.WaitCursor;

            try
            {
                string[,] _left = new string[11, 3];
                string[] _bott = new string[6];
                StyleMaster curr = (StyleMaster)this.BindingSource.Current;
                string[,] _lst = new string[3, 3];
                _lst[0, 0] = lblJKLM7_O.Text; _lst[0, 1] = lblJKLM7_R.Text; _lst[0, 2] = lblJKLM7_Y.Text;
                _lst[1, 0] = lblJKLM8_O.Text; _lst[1, 1] = lblJKLM8_R.Text; _lst[1, 2] = lblJKLM8_Y.Text;
                _lst[2, 0] = lblJKLM13_O.Text; _lst[2, 1] = lblJKLM13_R.Text; _lst[2, 2] = lblJKLM13_Y.Text;

      


                if (SelectIndex == 0)
                {
                    rptLineBalance rpt = new rptLineBalance(curr, OperType, _lst, IsPrintEngLish);
                    rpt.ShowPreview();
                }
                else if (SelectIndex == 1)
                {
                    SetLeftPart(_left);
                    SetBottm(_bott);
                    rptAttachInfo rpt = new rptAttachInfo(curr, _left, _bott, IsPrintEngLish);
                    rpt.ShowPreview();
                }
                else if (SelectIndex == 2)
                {
                    DevExpress.XtraReports.UI.XtraReport _masterreport = new DevExpress.XtraReports.UI.XtraReport();

                    rptLineBalance rpt1 = new rptLineBalance(curr, OperType, _lst, IsPrintEngLish);
                    rpt1.xrPageInfo1.Visible = true;
                    rpt1.CreateDocument();
                    _masterreport.Pages.AddRange(rpt1.Pages);

                    SetLeftPart(_left);
                    SetBottm(_bott);
                    rptAttachInfo rpt2 = new rptAttachInfo(curr, _left, _bott, IsPrintEngLish);
                    rpt2.xrPageInfo2.Visible = true;
                    rpt2.CreateDocument();
                    _masterreport.Pages.AddRange(rpt2.Pages);
                    _masterreport.PrintingSystem.ContinuousPageNumbering = true;
                    _masterreport.ShowPreview();

                    //RibbonForm1 frm = new RibbonForm1();

                    //FrmPrintAll frm = new FrmPrintAll();
                    //frm.printControl1.PrintingSystem = _masterreport.PrintingSystem;
                    //frm.WindowState = FormWindowState.Maximized;
                    //frm.Show();
                    //frm.BringToFront();
                }


            }
            finally
            {
                this.Cursor = Cursors.Default;
                //this.styleProcedureListForm1.gridView1.Columns["YCSD"].Visible = true;

            }
        }

        private void SetBottm(string[] bott)
        {

            //lblCreator lblCreateDT lblConf_IE lblDate_IE lblConfirm_Prod  lblDate_Prod
            bott[0] = Master.CreateBy; bott[1] = Master.Auditor; bott[2] = Master.ConfirmByProd;
            bott[3] = Master.CreateTime.HasValue ? Master.CreateTime.GetValueOrDefault().ToShortDateString() : "";
            bott[4] = Master.ConfirmDate_IE.HasValue ? Master.ConfirmDate_IE.GetValueOrDefault().ToShortDateString() : "";
            bott[5] = Master.ConfirmDate_Prod.HasValue ? Master.ConfirmDate_Prod.GetValueOrDefault().ToShortDateString() : "";
        }

        private void SetLeftPart(string[,] left)
        {
            left[0, 0] = lblJKLM1_O.Text; left[0, 1] = lblJKLM1_R.Text; left[0, 2] = lblJKLM1_Y.Text;
            left[1, 0] = lblJKLM2_O.Text; left[1, 1] = lblJKLM2_R.Text; left[1, 2] = lblJKLM2_R.Text;
            left[2, 0] = lblJKLM6_O.Text; left[2, 1] = lblJKLM6_R.Text; left[2, 2] = lblJKLM6_Y.Text; //拉節時

            left[3, 0] = lblJKLM7_O.Text; left[3, 1] = lblJKLM7_R.Text; left[3, 2] = lblJKLM7_Y.Text; //勞動力合計:

            left[4, 0] = "N.A."; left[4, 1] = "N.A."; left[4, 2] = lblSumFloater.Text; //Floater合計:

            left[5, 0] = lblJKLM8_O.Text; left[5, 1] = lblJKLM8_R.Text; left[5, 2] = lblJKLM8_Y.Text;  //工作位(衣車+手工台)合計:

            left[6, 0] = lblJKLM9_O.Text; left[6, 1] = lblJKLM9_R.Text; left[6, 2] = lblJKLM9_Y.Text; //最大樽頸 SAH:
            left[7, 0] = lblJKLM21_O.Text; left[7, 1] = lblJKLM21_R.Text; left[7, 2] = lblJKLM21_Y.Text; //最小樽頸SAH:

            left[8, 0] = lblJKLM10_O.Text; left[8, 1] = lblJKLM10_R.Text; left[8, 2] = lblJKLM10_Y.Text; //最小SAH:
            left[9, 0] = lblJKLM13_O.Text; left[9, 1] = lblJKLM13_R.Text; left[9, 2] = lblJKLM13_Y.Text;
            //left[10, 0] = lblJKLM13_R.Text; left[10, 1] = lblJKLM13_Y.Text; left[10, 2] = lblJKLM2_O.Text;

            left[10, 0] = lblJKLM14_O.Text; left[10, 1] = lblJKLM14_R.Text; left[10, 2] = lblJKLM14_Y.Text;


        }


    }
}
