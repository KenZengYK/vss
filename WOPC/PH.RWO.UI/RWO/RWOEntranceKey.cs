using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.Data;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.Utils;
using PH.RWO.BO;
using System.Linq;

namespace PH.RWO.UI.RWO
{
    public partial class RWOEntranceKey : DevExpress.XtraEditors.XtraForm
    {
        public RWOEntranceKey(WorkOrderColor woc)
        {
            InitializeComponent();
            //Xsj:記錄源數據
            _oWOc = woc;
            InitData();
        }

        #region Fields

        private WorkOrderColor _oWOc;//源WOc
        private RWOSOPCDataContext _context;
        public RWOSOPCDataContext Context
        {
            get
            {
                if (_context == null) _context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                return _context;
            }
        }

        /// <summary>
        /// Xsj:MultiRWO頁簽中，FW Start Date 和 Ex-fty的關係。
        /// =0 ：取決 FW
        /// =1 ：取決 Exfty
        /// =2 ：同時取決 FW & Exfty
        /// </summary>
        internal TempFWExfty FWExftyOption
        {
            get
            {
                if (this.ceFW.Checked) return TempFWExfty.FW;
                else if (this.ceExfty.Checked) return TempFWExfty.Exfty;
                else if (this.ceFWExfty.Checked) return TempFWExfty.Both;
                else return TempFWExfty.None;
            }
        }

        protected string EntranceKeyTitle
        {
            get
            {
                return this.lbTitle.Text;
            }
            set
            {
                this.lbTitle.Text = value;
            }
        }

        /// <summary>
        /// Xsj:標識SingleRow或MultiRow（First Page的單選控件的值）
        /// </summary>
        private bool _isSingleRWO
        {
            get
            {
                return Convert.ToBoolean(rwoOption.EditValue);
            }
        }
        private bool _needDoT3
        {
            get
            {
                return Convert.ToBoolean(this.rgT3.EditValue);
            }
        }
        private DevExpress.XtraTab.XtraTabPage _currentPage
        {
            get
            {
                return this.tcMain.SelectedTabPage;
            }
        }

        List<TempWOc> WOcs;
        /// <summary>
        /// Xsj:外部傳進來的WorkOrderColor對象（this.workOrderColorBindingSource.Current）。
        /// </summary>
        private TempWOc _tempWOc { get { return this.workOrderColorBindingSource.Current as TempWOc; } }
        public TempWOc WOc { get { return _tempWOc; } }

        int balance = 0;
        AppearanceDefault footerAppRed = new AppearanceDefault(Color.Red, Color.Empty, new Font(AppearanceObject.DefaultFont, FontStyle.Bold));
        AppearanceDefault footerAppBlue = new AppearanceDefault(Color.Blue, Color.Empty, new Font(AppearanceObject.DefaultFont, FontStyle.Bold));
        #endregion

        #region Init Value

        /// <summary>
        /// Xsj:初始化數據（界面）
        /// </summary>
        private void InitData()
        {
            this.tcMain.SelectedTabPage = this.pageFirst;
            gvFWChoose.OptionsView.ShowColumnHeaders = false;
            this.riceChosen.EditValueChanged += new System.EventHandler(this.riceChosen_EditValueChanged);

            this.lbProjWOColor.Text = string.Format("Project No.: {0}   WO#.: {1}  ERP Color Code: {2}", _oWOc.ProjectNo, _oWOc.WorkOrderNo, _oWOc.ColorCode);
            this.tcMain.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
            InitShipWindowOption();
            //var aa = from a in Context.WorkOrderColors
            //         where a.Company == _oWOc.Company && a.SalesOrderNo == _oWOc.SalesOrderNo && a.WorkOrderNo == _oWOc.WorkOrderNo && a.ColorCode == _oWOc.ColorCode
            //         select a;

            WOcs = new List<TempWOc>();
            TempWOc woc = new TempWOc(_oWOc);
            woc.Context = this.Context;

            //woc.ProjectNo = _oWOc.ProjectNo;
            //woc.SalesOrderNo = _oWOc.SalesOrderNo;
            //woc.Customer = _oWOc.Customer;
            //woc.Factory = _oWOc.Factory;
            //woc.WorkOrderNo = _oWOc.WorkOrderNo;

            //woc.ColorCode = _oWOc.ColorCode;
            //woc.FWStartDate = _oWOc.FWStartDate;
            //woc.ExFtyDate = _oWOc.ExFtyDate;
            //woc.TotalQty = _oWOc.TotalQty;

            WOcs.Add(woc);

            this.workOrderColorBindingSource.DataSource = WOcs;
        }

        /// <summary>
        /// Xsj:設置數據源（FW Start Date _ Ex-fty Date for each RWO、aT3 Date、How many line(s) suggested  by PPC )頁簽表格的數據源
        /// </summary>
        private void AssignSplitRWOSource()
        {
            //assign datasource
            this.splitRWOsBindingSource.DataSource = this._tempWOc.SplitRWOs;

            this.gcFWExfty.DataSource = null;
            this.gcFWExfty.DataSource = splitRWOsBindingSource;

            this.gcT3.DataSource = null;
            this.gcT3.DataSource = splitRWOsBindingSource;

            this.gcLine.DataSource = null;
            this.gcLine.DataSource = splitRWOsBindingSource;
        }


        /// <summary>
        /// Xsj:依MultiRWO的FW Start Date 和 Ex-fty時間取決關係，
        /// 控制頁簽（pageFWExfty----FW Start Date 、 Ex-fty Date for each RWO:）的colExFtyDate，colExFtyDate可編輯性
        /// </summary>
        private void InitRwoInfor()
        {
            #region
            //if (rgFWExfty.EditValue == null) return;
            //int n = Convert.ToInt32(editRwoNo.Text);

            //_tempWOc.InitSplitRWOs();

            //foreach (TempWOc woc in WOcs)
            //{
            //    woc.SplitRWOs.Clear();
            //    for (int i = 0; i < n; i++)
            //    {
            //        TempSplitRWO sr = new TempSplitRWO();
            //        sr.WOc = woc;
            //        sr.ColorCode = woc.ColorCode;
            //        sr.Rwo = i + 1;
            //        sr.TotalRwo = n;
            //        sr.FWStartDate = woc.FWStartDate;
            //        sr.ExFtyDate = woc.ExFtyDate;
            //        //sr.FWSuggested = sr.FWStartDate.Value.AddDays(10 + 2 * i);
            //        //sr.DefaultLine = 2 + 0.2;

            //        woc.SplitRWOs.Add(sr);
            //    }
            //}
            #endregion

            //Xsj:獲取MultiRWO的FW Start Date 和 Ex-fty時間取決關係
            TempFWExfty fwexfty = this._tempWOc.FWExftyOption;

            //Xsj:根據時間取決關係控制頁簽（pageFWExfty----FW Start Date && Ex-fty Date for each RWO:）的列可編輯性。
            this.colFWStartDate1.OptionsColumn.AllowEdit = fwexfty == TempFWExfty.FW || fwexfty == TempFWExfty.Both;
            this.colExFtyDate1.OptionsColumn.AllowEdit = fwexfty == TempFWExfty.Exfty || fwexfty == TempFWExfty.Both;

            //Xsj:同時對頁簽（pageFWExfty----FW Start Date && Ex-fty Date for each RWO:），（pageAT3----aT3 Date:），（pageLine----How many line(s) suggested  by PPC ?）
            //的colExFtyDate，colExFtyDate進行合拼。
            //merge
            this.colExFtyDate1.OptionsColumn.AllowMerge = this.colExFtyDate2.OptionsColumn.AllowMerge = this.colExFtyDate3.OptionsColumn.AllowMerge =
                (fwexfty == TempFWExfty.FW) ?
                DevExpress.Utils.DefaultBoolean.True : DevExpress.Utils.DefaultBoolean.False;
            this.colFWStartDate1.OptionsColumn.AllowMerge = this.colFWStartDate2.OptionsColumn.AllowMerge = this.colFWStartDate3.OptionsColumn.AllowMerge =
                (fwexfty == TempFWExfty.Exfty) ?
                DevExpress.Utils.DefaultBoolean.True : DevExpress.Utils.DefaultBoolean.False;

            //color
            this.colExFtyDate1.AppearanceCell.BackColor = (fwexfty == TempFWExfty.FW) ? Color.FromArgb(255, 255, 192) : Color.White;
            this.colFWStartDate1.AppearanceCell.BackColor = (fwexfty == TempFWExfty.Exfty) ? Color.FromArgb(255, 255, 192) : Color.White;

            //assign datasource
            //this.splitRWOsBindingSource.DataSource = this._tempWOc.SplitRWOs;

            //this.gcFWExfty.DataSource = null;
            //this.gcFWExfty.DataSource = splitRWOsBindingSource;

            //this.gcT3.DataSource = null;
            //this.gcT3.DataSource = splitRWOsBindingSource;

            //this.gcLine.DataSource = null;
            //this.gcLine.DataSource = splitRWOsBindingSource;
        }


        /// <summary>
        /// Xsj:初始化審核流程數據
        /// </summary>
        private void InitFWChoose()
        {
            List<TempFWChoose> FWChooses = new List<TempFWChoose>();

            foreach (TempSplitRWO item in this._tempWOc.SplitRWOs)
            {
                //Xsj:初始化RWO的審核流程
                item.InitFWChooses();
                //Xsj:記錄審核流程
                FWChooses.AddRange(item.FWChooses);
            }
            //Xsj:綁定審核流程數據源
            fwChooseBindingSource.DataSource = FWChooses;

            this.gcFWChoose.DataSource = null;
            this.gcFWChoose.DataSource = fwChooseBindingSource;

        }

        /// <summary>
        /// Xsj:Line數量改變后，從新計算FW建議開始日期
        /// </summary>
        private void InitSuggestFW()
        {
            if (this.gvLine.PostEditor())
            {
                this.gvLine.UpdateCurrentRow();
                this.gvLine.HideEditor();
            }

            foreach (TempSplitRWO sr in this._tempWOc.SplitRWOs)
            {
                //if (!sr.FWSuggested.HasValue)
                //Xsj:Line數量改變后，從新計算FW建議開始日期
                sr.NumberOfLineChanged();
            }
        }

        /// <summary>
        /// Xsj20160402:初始化Multiple RWO(pageDifferent)頁簽的Radio狀態（FW Start Date和Ex-Fty Date的依賴關係)。
        /// </summary>
        private void InitShipWindowOption()
        {
            //Xsj:對應客戶HBIU，才有Ex-fty Date dependent。其他的客戶度是Ex-fty Date independent。所以其他的客戶不能選擇第2、3項。
            this.ceExfty.Enabled = this.ceFWExfty.Enabled = lbShipWindow1.Enabled = lbShipWindow2.Enabled = (this._oWOc.WorkOrder.IsShipWindow);
        }
        #endregion

        #region Step

        private void tcMain_SelectedPageChanged(object sender, DevExpress.XtraTab.TabPageChangedEventArgs e)
        {
            EntranceKeyTitle = e.Page.Text;

            this.btnBack.Enabled = e.Page != this.pageFirst;
            this.btnNext.Text = e.Page == pageFWChoose ? "&Finish" : "&Next >";

        }

        /// <summary>
        ///  Xsj:Pre按鈕點擊事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnBack_Click(object sender, EventArgs e)
        {
            this.btnNext.Enabled = true;
            //dependent
            if (this._currentPage == this.pageDifferent)
            {
                this.tcMain.SelectedTabPage = pageFirst;
            }
            //fw ex-fty
            else if (this._currentPage == this.pageFWExfty)
            {
                this.tcMain.SelectedTabPage = pageDifferent;
            }
            //do T3?
            else if (this._currentPage == this.pageT3Option)
            {
                this.tcMain.SelectedTabPage = _isSingleRWO ? this.pageFirst : this.pageFWExfty;
            }
            //aT3
            else if (this._currentPage == this.pageAT3)
            {
                this.tcMain.SelectedTabPage = this.pageT3Option;
            }
            //line
            else if (this._currentPage == this.pageLine)
            {
                this.tcMain.SelectedTabPage = _needDoT3 ? this.pageAT3 : this.pageT3Option;
            }
            //fw option choose
            else if (this._currentPage == this.pageFWChoose)
            {
                this.tcMain.SelectedTabPage = this.pageLine;
            }
        }


        /// <summary>
        /// Xsj:Next按鈕點擊動作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnNext_Click(object sender, EventArgs e)
        {
            bool bValidate;
            //first
            if (this._currentPage == this.pageFirst)
            {
                //Xsj:記錄是Single或Multi RWO。
                this._tempWOc.IsSingleRWO = _isSingleRWO;
                if (_isSingleRWO)
                {
                    //Xsj:指派分割數據源
                    AssignSplitRWOSource();
                }

                this.tcMain.SelectedTabPage = _isSingleRWO ? this.pageT3Option : this.pageDifferent;
            }
            //dependent
            else if (this._currentPage == this.pageDifferent)
            {
                //dxValidationProvider1.Validate(this.rgFWExfty)
                //Xsj:驗證輸入的RWONO輪數和事件限制
                bValidate = dxValidationProvider1.Validate(this.editRwoNo) && FWExftyOption != TempFWExfty.None;
                if (bValidate)
                {
                    //Xsj:記錄輪數，并產生預拆的輪信息。
                    this._tempWOc.RoundTotal = Convert.ToInt32(editRwoNo.Text);
                    //Xsj:記錄時間的取決信息
                    this._tempWOc.FWExftyOption = this.FWExftyOption;
                    //Xsj:控制頁簽（pageFWExfty----FW Start Date && Ex-fty Date for each RWO:）的colExFtyDate，colExFtyDate可編輯性
                    InitRwoInfor();
                    //Xsj:設置頁簽的數據源
                    AssignSplitRWOSource();
                    this.tcMain.SelectedTabPage = pageFWExfty;
                }
            }
            //fw ex-fty
            else if (this._currentPage == this.pageFWExfty)
            {
                this.tcMain.SelectedTabPage = pageT3Option;
            }
            //do T3?
            else if (this._currentPage == this.pageT3Option)
            {
                //Xsj:驗證是否選擇了T3
                bValidate = dxValidationProvider1.Validate(this.rgT3);
                if (bValidate)
                {
                    //Xsj:創建等待提示
                    CreateWaitDialog();
                    try
                    {
                        //Xsj:設置等待窗體的Caption
                        SetWaitDialogCaption("calculate T3 Date");
                        //Xsj:計算每一輪的入倉日期（T3 Date）,由廠別和離廠日期推算而來。
                        this._tempWOc.CalcT3Date();

                        if (!_needDoT3)
                        {
                            SetWaitDialogCaption("calculate default line");
                            //Xsj:計算需要分配的拉的數量
                            this._tempWOc.CalcDefalutFWandLine();
                        }
                        this.tcMain.SelectedTabPage = _needDoT3 ? this.pageAT3 : this.pageLine;
                    }
                    finally
                    {
                        //Xsj:關閉等待提示
                        ReleaseWaitDialog();
                    }
                }
            }
            //aT3
            else if (this._currentPage == this.pageAT3)
            {
                if (CheckAT3())
                {
                    CreateWaitDialog("Please wait", "calculate default line");
                    try
                    {
                        this._tempWOc.CalcDefalutFWandLine();
                        this.tcMain.SelectedTabPage = pageLine;
                    }
                    finally
                    {
                        ReleaseWaitDialog();
                    }
                }
                else
                {
                    MessageBox.Show(string.Format("Must input aT3 for all RWO# !"), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            //line
            else if (this._currentPage == this.pageLine)
            {
                //Xsj:檢查是否每RWO都填寫了Line數
                if (CheckLine())
                {
                    CreateWaitDialog("Please wait", "calculate Options");
                    try
                    {
                        //Xsj:Line數量改變后，從新計算FW建議開始日期
                        InitSuggestFW();
                        //Xsj:初始化審核流程數據
                        InitFWChoose();
                        this.tcMain.SelectedTabPage = this.pageFWChoose;
                    }
                    finally
                    {
                        ReleaseWaitDialog();
                    }
                }
                else
                {
                    MessageBox.Show(string.Format("Must enter Suggest No. of Line for all RWO# !"), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }

            }
            //fw option choose--> Finish
            else if (this._currentPage == this.pageFWChoose)
            {
                if (CheckOptionChosen())
                    this.DialogResult = DialogResult.OK;
                else
                    MessageBox.Show(string.Format("Must choose all RWO# option!"), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }
        }

        #endregion

        #region Need Input aT3/Line

        private bool CheckAT3()
        {
            foreach (TempSplitRWO sr in this._tempWOc.SplitRWOs)
            {
                if (!sr.AT3Date.HasValue)
                    return false;
            }
            return true;
        }

        /// <summary>
        /// Xsj:檢查是否每RWO都填寫了Line數
        /// </summary>
        /// <returns></returns>
        private bool CheckLine()
        {
            foreach (TempSplitRWO sr in this._tempWOc.SplitRWOs)
            {
                if (!sr.NumberOfLine.HasValue)
                    return false;
            }
            return true;
        }

        private void rideAT3_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (e.Button.Index == 1)//same as T3
            {
                TempSplitRWO sr = this.splitRWOsBindingSource.Current as TempSplitRWO;
                if (sr == null) return;
                sr.AT3Date = sr.T3Date;
                if (this.gvT3.PostEditor())
                {
                    this.gvT3.UpdateCurrentRow();
                    this.gvT3.HideEditor();
                }
            }
        }
        private void ribeNumberOfLine_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            TempSplitRWO sr = this.splitRWOsBindingSource.Current as TempSplitRWO;
            if (sr == null) return;

            if (this.gvLine.PostEditor())
            {
                this.gvLine.UpdateCurrentRow();
                //this.gvLine.HideEditor();
            }

            if (!sr.NumberOfLine.HasValue)
                return;

            sr.NumberOfLineChanged();

            if (this.gvLine.PostEditor())
            {
                this.gvLine.UpdateCurrentRow();
                //this.gvLine.HideEditor();
            }
        }

        #endregion

        #region Summary

        private void gvFWExfty_CustomSummaryCalculate(object sender, CustomSummaryEventArgs e)
        {
            // Get the summary ID.
            //int summaryID = Convert.ToInt32((e.Item as GridSummaryItem).Tag);
            GridView View = sender as GridView;

            // Initialization
            if (e.SummaryProcess == CustomSummaryProcess.Start)
            {
                balance = 0;
            }
            // Calculation
            if (e.SummaryProcess == CustomSummaryProcess.Calculate)
            {
                //bool isDiscontinued = (bool)View.GetRowCellValue(e.RowHandle, "Discontinued");
                //switch (summaryID)
                //{
                //    case 1: // The total summary calculated against the 'UnitPrice' column.
                //        if (!isDiscontinued) customSum += Convert.ToDecimal(e.FieldValue);
                //        break;
                //    case 2: // The group summary.
                //if (isDiscontinued) 
                balance += Convert.ToInt32(e.FieldValue);
                //        break;
                //}
            }
            // Finalization
            if (e.SummaryProcess == CustomSummaryProcess.Finalize)
            {
                //switch (summaryID)
                //{
                //    case 1:
                //        e.TotalValue = customSum;
                //        break;
                //    case 2:
                e.TotalValue = this._tempWOc.BulkQty - balance;

                //break;
                //}
            }
        }
        private void gvFWExfty_CustomDrawFooterCell(object sender, FooterCellCustomDrawEventArgs e)
        {
            int ii = (this._tempWOc.BulkQty ?? 0) - balance;
            this.btnNext.Enabled = ii == 0;

            if (e.Column.FieldName == "Qty" && ii < 0)
            {
                AppearanceHelper.Apply(e.Appearance, footerAppRed);
            }
            else if (e.Column.FieldName == "Qty" && ii == 0)
            {
                AppearanceHelper.Apply(e.Appearance, footerAppBlue);
            }
        }

        #endregion

        #region FW Option Choose

        private bool CheckOptionChosen()
        {
            foreach (TempSplitRWO sr in this._tempWOc.SplitRWOs)
            {
                bool chosen = false;
                foreach (TempFWChoose fwc in sr.FWChooses)
                {
                    if (fwc.Chosen)
                    {
                        chosen = true;
                        break;
                    }
                }
                if (!chosen) return false;
            }
            return true;
        }

        private void gvFWChoose_CellMerge(object sender, CellMergeEventArgs e)
        {
            TempFWChoose cfw1 = this.gvFWChoose.GetRow(e.RowHandle1) as TempFWChoose;
            TempFWChoose cfw2 = this.gvFWChoose.GetRow(e.RowHandle2) as TempFWChoose;
            switch (e.Column.FieldName)
            {
                case "RwoNo":
                case "Opt3vs1":
                case "Opt3vs2":
                case "Opt2vs1":
                case "Opt4vs2":
                    e.Merge = cfw1.RwoNo == cfw2.RwoNo;
                    e.Handled = true;
                    break;
            }

        }
        private void ribeAction_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            TempFWChoose fc = gvFWChoose.GetFocusedRow() as TempFWChoose;
            if (fc == null) return;

            if (!fc.FWStartDate.HasValue) return;

            if (MessageBox.Show(string.Format("Are you sure to agree RWO#-{0}  Option {1} ?", fc.RwoNo, fc.Seq), "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                return;

            gvFWChoose.BeginDataUpdate();
            try
            {
                foreach (var item in fc.SplitRWO.FWChooses)
                {
                    item.Chosen = false;
                }
                fc.Chosen = true;
            }
            finally
            {
                gvFWChoose.EndDataUpdate();
            }
        }
        private void gvFWChoose_RowCellStyle(object sender, RowCellStyleEventArgs e)
        {
            object obj = gvFWChoose.GetRowCellValue(e.RowHandle, "Chosen");
            if (obj == null) return;

            bool isChoose = obj.Equals(true);
            if ((e.Column.FieldName == "Seq" || e.Column.FieldName == "FWStartDate") && isChoose)
            {
                //e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                e.Appearance.ForeColor = Color.Red;
            }
        }
        private void gvFWChoose_ShowingEditor(object sender, CancelEventArgs e)
        {
            TempFWChoose fwc = this.fwChooseBindingSource.Current as TempFWChoose;
            if (fwc == null) return; if (gvFWChoose.FocusedColumn.FieldName == "FWStartDate")
            {
                bool bReadOnly = (fwc.Seq != 4) || !fwc.SplitRWO.CanAgreeOpt4;
                //gvFWChoose.FocusedColumn.OptionsColumn.AllowEdit = !bReadOnly;
                e.Cancel = bReadOnly;
            }
            else if (gvFWChoose.FocusedColumn.FieldName == "Chosen")
            {
                bool bReadOnly = (!fwc.FWStartDate.HasValue);
                e.Cancel = bReadOnly;
            }
        }

        /// <summary>
        /// Xsj:FW Start Date Chosen Option(pageFWChoose)頁簽，表格的行選擇改變事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void riceChosen_EditValueChanged(object sender, EventArgs e)
        {
            DevExpress.XtraEditors.CheckEdit editor = sender as DevExpress.XtraEditors.CheckEdit;
            bool chosen = editor.Checked;
            if (this.gvFWChoose.PostEditor())
            {
                this.gvFWChoose.UpdateCurrentRow();
                this.gvFWChoose.HideEditor();
            }

            if (!chosen) return;

            TempFWChoose fc = fwChooseBindingSource.Current as TempFWChoose;// gvFWChoose.GetFocusedRow() as TempFWChoose;
            if (fc == null) return;

            if (!fc.FWStartDate.HasValue)
            {
                fc.Chosen = false;
                return;
            }

            this.riceChosen.EditValueChanged -= new System.EventHandler(this.riceChosen_EditValueChanged);
            gvFWChoose.BeginDataUpdate();
            try
            {
                foreach (var item in fc.SplitRWO.FWChooses)
                {
                    item.Chosen = false;
                }
                fc.Chosen = true;
            }
            finally
            {
                gvFWChoose.EndDataUpdate();
                this.riceChosen.EditValueChanged += new System.EventHandler(this.riceChosen_EditValueChanged);
            }
        }

        #endregion

        #region WaitDialog
        private DevExpress.Utils.WaitDialogForm dlg = null;
        /// <summary>
        /// Xsj:創建等待提示
        /// </summary>
        public void CreateWaitDialog()
        {
            CreateWaitDialog("Please wait", "Loading .....");
        }
        /// <summary>
        /// Xsj:創建等待提示
        /// </summary>
        /// <param name="caption"></param>
        /// <param name="title"></param>
        public void CreateWaitDialog(string caption, string title)
        {
            dlg = new DevExpress.Utils.WaitDialogForm(caption, title);
        }
        /// <summary>
        /// Xsj:創建等待提示
        /// </summary>
        /// <param name="caption"></param>
        /// <param name="title"></param>
        /// <param name="size"></param>
        public void CreateWaitDialog(string caption, string title, Size size)
        {
            dlg = new DevExpress.Utils.WaitDialogForm(caption, title, size);
        }
        /// <summary>
        /// Xsj:設置等待窗體的Caption
        /// </summary>
        /// <param name="fCaption"></param>
        public void SetWaitDialogCaption(string fCaption)
        {
            if (dlg != null)
                dlg.Caption = fCaption;
        }
        /// <summary>
        /// Xsj:關閉等待提示
        /// </summary>
        public void ReleaseWaitDialog()
        {
            if (dlg != null) dlg.Close();
        }
        #endregion

        #region RWO SKU
 
        //Xsj: 每輪RWO的BulkQtyt數量改變按鈕點擊事件
        private void ribeQty_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            TempSplitRWO sr = this.splitRWOsBindingSource.Current as TempSplitRWO;
            if (sr == null) return;

            this.Visible = false;
            try
            {
                //Xsj:RoundWorkOrderDetail的BulkQty數量分拆窗體。
                SplitQtyForm frm = new SplitQtyForm(sr);
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    sr.Qty = sr.SumSubQty;

                    //Xsj20160406:----添加以下代碼用於分拆SampleQty--------
                    sr.SampleQty = sr.SumSubSampleQty;

                    //----------------------End----------------------------


                    if (this.gvFWExfty.PostEditor())
                    {
                        this.gvFWExfty.UpdateCurrentRow();
                        //this.gvLine.HideEditor();
                    }
                    this.gvFWExfty.RefreshData();

                }
            }
            finally
            {
                this.Visible = true;
                this.BringToFront();
            }

        }

        #endregion




    }
}