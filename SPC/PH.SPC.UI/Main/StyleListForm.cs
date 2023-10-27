using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Linq;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraBars;
using DevExpress.XtraGrid;
using PH.Platform.ExtendLibrary;
using PH.Platform.Misc.BO;
using PH.Platform.UI.CS.PivotGrid;
using PH.SPC.BO;
using PH.Platform.BO;
using System.Data;
using PH.SPC.UI.Main;
using DevExpress.XtraGrid.Views.Grid;
using PH.SPC.UI.Report;

namespace PH.SPC.UI
{
    public partial class StyleListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region myproperties

        IList SourceList = null;

        private Style CurrentStyle
        {
            get
            {
                return this.BindingSource.Current as Style;
            }
        }

        private string CustomerID
        {
            get
            {
                return CurrentStyle.SampleOrder.CustomerID;
            }
        }

        private string Factory
        {
            get
            {
                return CurrentStyle.SampleOrder.Factory;
            }
        }

        #endregion

        public StyleListForm()
        {
            InitializeComponent();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;

            this.objListGridView.OptionsDetail.EnableMasterViewMode = true;
            this.EditorTypeName = typeof(StyleDetailForm).FullName;

            colSampleOrderNoShow.OptionsColumn.AllowEdit = false;
            colChildSampleOrderSuffix.OptionsColumn.AllowEdit = false;
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();

            //處理功能權限
            var SampleRoomInterfaceRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "SampleRoomInterface");
            barSubItem1.Visibility = SampleRoomInterfaceRight == null ? BarItemVisibility.Never : BarItemVisibility.Always;
        }

        public override void ProcessBORight()
        {
            base.ProcessBORight();
            btnAction.Visibility = BarItemVisibility.Always;
            if (!this.BoAuthList.Contains("addnew"))
            {
                btnAction.Visibility = BarItemVisibility.Never;
            }
        }

        public override void SaveData()
        {
            base.SaveData();
            Style obj = this.BindingSource.Current as Style;
            if (obj != null)
            {
                obj.SampleOrder.ReCalculateTotalInformation();
            }
        }

        public void FilterStyle(Style currentStyle)
        {
            if (currentStyle != null)
            {
                this.objListGridView.ActiveFilter.Clear();
                this.objListGridView.ActiveFilter.Add(this.objListGridView.Columns["StyleID"],
                    new DevExpress.XtraGrid.Columns.ColumnFilterInfo("[StyleID]='" + currentStyle.StyleID + "'"));
            }
        }

        private void PrintWorkNoteReport(StyleSortEdition edition)
        {
            if (edition == null) return;

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.SPC.BackEnd.dll";　//當前dll全名
            data.ClassFullName = "PH.SPC.BackEnd.RunWorkNoteReport";//報表全名
            data.JobName = "SPC樣辦制造通知單";//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = Convert.ToString(edition.OID);
            //data.Parameter = string.Format("{0};{1};{2};{3};", edition.SampleOrderID, edition.StyleID, edition.SortID, edition.EditionID);
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");


            //PH.SPC.BackEnd.WorkNoteReport aa = new PH.SPC.BackEnd.WorkNoteReport();
            //PH.SPC.BO.WorkNoteList wn = new PH.SPC.BO.WorkNoteList();
            //aa.DataSource = wn.GetStyleSortEditions(edition.SampleOrderID, edition.StyleID, edition.SortID, edition.EditionID);
            //aa.ShowPreview();
        }

        private int GetMaxEditionID(StyleSortEdition obj)
        {
            if (obj == null || obj.StyleSort == null)
            {
                return 1;
            }
            else
            {
                SPCDataContext con = this.DataContext as SPCDataContext;
                //int maxEditionID = this._edition.StyleSort.StyleSortEditions.Max(a => a.EditionID);
                var aa = from a in con.StyleSortEditions
                         where a.SampleOrderID == obj.SampleOrderID
                         && a.StyleID == obj.StyleID && a.SortID == obj.SortID
                         select a;
                int maxEditionID;
                if (aa.ToList().Count == 0) maxEditionID = 0;
                else
                    maxEditionID = aa.Max(a => a.EditionID ?? 0);
                return maxEditionID == 0 ? 1 : maxEditionID + 1;
            }
        }

        #region Valiate

        #region Style

        private void objListGridView_ValidatingEditor(object sender, DevExpress.XtraEditors.Controls.BaseContainerValidateEditorEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
            if (view.FocusedColumn.FieldName == "StyleID")
            {
                //Get the currently edited value
                string style = Convert.ToString(e.Value);
                //Specify validation criteria
                if (string.IsNullOrEmpty(style))
                {
                    e.Valid = false;
                    e.ErrorText = "請輸入PH款號.";
                }
            }
        }

        private void objListGridView_InvalidValueException(object sender, DevExpress.XtraEditors.Controls.InvalidValueExceptionEventArgs e)
        {
            //Do not perform any default action
            e.ExceptionMode = DevExpress.XtraEditors.Controls.ExceptionMode.ThrowException;
            //Show the message with the error text specified
            //MessageBox.Show(e.ErrorText);

        }

        #endregion

        #region StyleSort

        private void gridStyleSort_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            DevExpress.XtraGrid.Views.Base.ColumnView view = sender as DevExpress.XtraGrid.Views.Base.ColumnView;
            DevExpress.XtraGrid.Columns.GridColumn column1 = view.Columns["SortID"];
            //Get the value of the first column
            string sort = (string)view.GetRowCellValue(e.RowHandle, column1);
            //Validity criterion
            if (string.IsNullOrEmpty(sort))
            {
                e.Valid = false;
                //Set errors with specific descriptions for the columns
                view.SetColumnError(column1, "請選擇制辦種類!", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Information);
            }
        }

        private void gridStyleSort_InvalidRowException(object sender, DevExpress.XtraGrid.Views.Base.InvalidRowExceptionEventArgs e)
        {
            e.ExceptionMode = DevExpress.XtraEditors.Controls.ExceptionMode.NoAction;

        }

        #endregion

        #region Edition

        private void gridStyleSortEdition_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            // EditionDate
            //請錄入要求完成日期 
            DevExpress.XtraGrid.Views.Base.ColumnView view = sender as DevExpress.XtraGrid.Views.Base.ColumnView;
            DevExpress.XtraGrid.Columns.GridColumn column1 = view.Columns["EditionDate"];
            //Get the value of the first column
            object o = view.GetRowCellValue(e.RowHandle, column1);
            //Validity criterion
            if (o == null)
            {
                e.Valid = false;
                //Set errors with specific descriptions for the columns
                view.SetColumnError(column1, "請錄入發單日期.", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Information);
            }


            column1 = view.Columns["EditionDueDate"];
            //Get the value of the first column
            o = view.GetRowCellValue(e.RowHandle, column1);
            //Validity criterion
            if (o == null)
            {
                e.Valid = false;
                //Set errors with specific descriptions for the columns
                view.SetColumnError(column1, "請錄入要求完成日期.", DevExpress.XtraEditors.DXErrorProvider.ErrorType.Information);
            }

        }

        private void gridStyleSortEdition_InvalidRowException(object sender, DevExpress.XtraGrid.Views.Base.InvalidRowExceptionEventArgs e)
        {
            e.ExceptionMode = DevExpress.XtraEditors.Controls.ExceptionMode.NoAction;

        }

        #endregion


        #endregion

        private void StyleListForm_Load(object sender, EventArgs e)
        {
            this.RowChangeAutoSave = false;
            ////從數據字典中得到Season供用戶選擇
            //ItemComboBoxSeason.Properties.Items.Clear();
            //SeasonList list = new SeasonList();
            //foreach (Misc_DataDictionary obj in list.GetAllSeason())
            //{
            //    ItemComboBoxSeason.Properties.Items.Add(obj.DataName);
            //}

            ////從Default Size Ratio中得到Brand供用戶選擇
            //ItemComboBoxBrand.Properties.Items.Clear();
            //SPCDataContext db = this.DataContext as SPCDataContext;
            //string CustomerID = (this.BindingSource.Current as Style).SampleOrder.CustomerID;
            //ISingleResult<sp_GetBrandResult> result = db.sp_GetBrand(CustomerID);
            //var brands = (from a in result
            //              select a.Brand).Distinct();
            //foreach (var obj in brands)
            //{
            //    ItemComboBoxBrand.Properties.Items.Add(obj);
            //}

            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;

            DictionaryList list2 = new DictionaryList();
            this.repositoryItemLookUpEdit1.Properties.DataSource = list2.GetDataDictionaryMutiLang("PH.WO.SizeMatrix");
            this.repositoryItemLookUpEdit1.Properties.DisplayMember = "Description";
            this.repositoryItemLookUpEdit1.Properties.ValueMember = "DataCode";

            this.repositoryItemLookUpEdit2.Properties.DataSource = list2.GetDataDictionaryMutiLang("PH.SPC.StyleSortEdition.Sample");
            this.repositoryItemLookUpEdit2.Properties.DisplayMember = "DataName";
            this.repositoryItemLookUpEdit2.Properties.ValueMember = "DataName";


            //制作工场
            SPCDataContext db = this.DataContext as SPCDataContext;
            string SqlStr = "select Code, ENDes as NameEN, CHDes as NameCN from [PH.DespatchSample]..Sample_WN";
            DataTable dtProductWs = db.ExecuteDataTable(SqlStr, "dtProductWs");
            repositoryItemLookUpEdit_ProductWs.Properties.DataSource = dtProductWs;
            repositoryItemLookUpEdit_ProductWs.Properties.ValueMember = "Code";
            repositoryItemLookUpEdit_ProductWs.Properties.DisplayMember = "Code";

        }

        public override PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass CreatePivotTableParameters()
        {
            PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass p = new PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass();
            p.BOType = typeof(StyleSize);
            p.Header1_Label = "Size";
            p.Header2_Label = "Total";
            p.LFields = new string[]
            {
                "SampleOrderID",
               // "ProjectID",
                "StyleID",
                "SortID",
                "EditionID",
                "ColorID",
                "Cup"               
            };

            p.LLabels = new string[]
            {
                "Sample Order",
                //"Project",
                "Style",
                "Sort",
                "Edition",
                "Color",
                "Cup"               
            };

            p.RFields = new string[]
            {
                "SizeID",
                "SizeWorld"
            };

            p.RSubTotalLabels = new string[] { "標準碼", "國際碼" };

            p.RValueField = "Qty";

            p.SourceList = SourceList;
            return p;
        }

        private void objListGridControl_FocusedViewChanged(object sender, DevExpress.XtraGrid.ViewFocusEventArgs e)
        {

            if (e.View == null) return;

            this.btnPrintWorkOrderNote.Enabled = (e.View.Name == "gridStyleSortEdition") ? true : false;
            this.barSubItem1.Enabled = (e.View.Name == "gridStyleSortEdition") ? true : false;
            this.barbut_AutoData1.Enabled = (e.View.Name == "gridStyleSortEdition") ? true : false;
            this.barbut_AutoData2.Enabled = (e.View.Name == "gridStyleSortEdition") ? true : false;

            //this.btnAutoDataToPP.Enabled = e.View.Name == "gridStyleSortEdition";

            if (e.View.Name == "gridStyleSortEdition")
            {
                this.IsShowPivotTable = true;
                StyleSortEdition obj = (e.View as DevExpress.XtraGrid.Views.Grid.GridView).GetFocusedRow() as StyleSortEdition;
                if (obj != null && obj.StyleSizes != null)
                {
                    this.SourceList = obj.StyleSizes;

                    this.OnBeforeShowPivotGrid += new BeforeShowPivotGridHanlder(StyleListForm_OnBeforeShowPivotGrid);
                    this.OnAfterShowPivotGrid += new AfterShowPivotGridHandler(StyleListForm_OnAfterShowPivotGrid);
                }
            }
            else
            {
                this.IsShowPivotTable = false;
            }

            //btnAction.Enabled = e.View.Name == "gridStyleSort";
        }

        private void StyleListForm_OnBeforeShowPivotGrid(PH.Platform.UI.CS.PivotGrid.PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {
            //在這裏控制L列的顯示
            aPovitGrid.SetColumnVisible("L1", false);
            aPovitGrid.SetColumnVisible("L2", false);
            //aPovitGrid.SetColumnVisible("L3", false);
        }

        private void StyleListForm_OnAfterShowPivotGrid(PH.Platform.UI.CS.PivotGrid.PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {
            //LoadData();
        }

        private void objListGridView_ShowingEditor(object sender, CancelEventArgs e)
        {
            //MessageBox.Show(this.objListGridView.FocusedColumn.FieldName);
            switch (this.objListGridView.FocusedColumn.FieldName)
            {
                case "Season": //從數據字典中得到Season供用戶選擇
                    ItemComboBoxSeason.Properties.Items.Clear();
                    SeasonList list = new SeasonList();
                    foreach (Misc_DataDictionary obj in list.GetAllSeason())
                    {
                        ItemComboBoxSeason.Properties.Items.Add(obj.DataName);
                    }
                    break;

                case "Brand": //從Default Size Ratio中得到Brand供用戶選擇
                    ItemComboBoxBrand.Properties.Items.Clear();
                    ISingleResult<sp_GetBrandResult> result = (this.DataContext as SPCDataContext).sp_GetBrand(CustomerID);
                    var brands = (from a in result
                                  select a.Brand).Distinct();
                    foreach (var obj in brands)
                    {
                        ItemComboBoxBrand.Properties.Items.Add(obj);
                    }
                    break;

                case "ProductCategory": //從Default Size Ratio中得到产品类别供用戶選擇
                    ItemComboBoxProductCategory.Properties.Items.Clear();
                    ISingleResult<sp_GetBrandResult> lists = (this.DataContext as SPCDataContext).sp_GetBrand(CustomerID);
                    //var ProBrands = (from a in lists
                    //                 where a.Brand == CurrentStyle.Brand
                    //                 select a.ProductCategory).Distinct();
                    foreach (var obj in lists)
                    {
                        this.ItemComboBoxProductCategory.Properties.Items.Add(obj.ProductCategory);
                    }
                    break;
            }
        }

        private void gridStyleSort_ShowingEditor(object sender, CancelEventArgs e)
        {
            //MessageBox.Show((this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Base.ColumnView).FocusedColumn.FieldName);
            switch ((this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Base.ColumnView).FocusedColumn.FieldName)
            {
                case "SortID": //制辦種類讓用戶下拉選擇
                    ISingleResult<GetCustomerSampleOrderSortResult> sampleOrderSortList = (this.DataContext as SPCDataContext).GetCustomerSampleOrderSort(CustomerID, Factory, "");
                    ItemComboBoxSortID.Properties.Items.Clear();
                    foreach (var obj in sampleOrderSortList)
                    {
                        this.ItemComboBoxSortID.Properties.Items.Add(obj.SampleOrderType);
                    }
                    break;

                //Pattern Source 纸样来源
                case "MarkSource":
                    string SqlStr = "select DataType as Code, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'PatternSource'";
                    DataTable dtPatternSource = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtPatternSource");
                    ItemComboBoxMarkSource.Properties.Items.Clear();
                    foreach (DataRow dr in dtPatternSource.Rows)
                    {
                        ItemComboBoxMarkSource.Properties.Items.Add(dr["Code"].ToString());
                    }

                    //ItemComboBoxMarkSource.Properties.Items.AddRange(new object[] { "PH設計", "來圖來樣", "來圖出樣", "來板出樣", "來圖來電子紙樣", "來圖來軟卡紙樣" });
                    break;

                //物料情况 Mat's Status
                case "MaterialStatus":
                    SqlStr = "select DataType as Code, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'MaterialStatus'";
                    DataTable dtMaterialStatus = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtMaterialStatus");
                    repositoryItemComboBox_MaterialStatus.Properties.Items.Clear();
                    foreach (DataRow dr in dtMaterialStatus.Rows)
                    {
                        repositoryItemComboBox_MaterialStatus.Properties.Items.Add(dr["Code"].ToString());
                    }
                    break;

                case "BLQB": //辦料齊備讓用戶下拉選擇
                    ItemComboBoxBLQB.Properties.Items.Clear();
                    ItemComboBoxBLQB.Properties.Items.AddRange(new object[] { "齊", "不齊", "要改" });
                    break;

                case "ProduceDepartment": //製作部門讓用戶下拉選擇
                    //this.ItemComboBoxProduceDepartment.Properties.Items.Clear();
                    //PH.Platform.Misc.BO.Misc_DataDictionaryList list = new PH.Platform.Misc.BO.Misc_DataDictionaryList();
                    //foreach (var item in list.GetAllMisc_DataDictionaryByCondition("PH.SPC.StyleSort.ProduceDepartment"))
                    //{
                    //    this.ItemComboBoxProduceDepartment.Properties.Items.Add(item.DataName);
                    //}
                    //ItemComboBoxProduceDepartment.Properties.Items.Clear();
                    //ItemComboBoxProduceDepartment.Properties.Items.AddRange(new object[] { "Sample Room", "Pilot Room", "Sewing Floor" });
                    this.ItemComboBoxProduceDepartment.Properties.Items.Clear();
                    PH.DespatchSample.BO.SAMPLE_WNList list = new PH.DespatchSample.BO.SAMPLE_WNList();
                    foreach (var item in list.GetAllData())
                    {
                        this.ItemComboBoxProduceDepartment.Properties.Items.Add(item.Code);
                    }
                    break;

                case "ZYQB": //紙樣齊備讓用戶下拉選擇
                    ItemComboBoxZYQB.Properties.Items.Clear();
                    ItemComboBoxZYQB.Properties.Items.AddRange(new object[] { "齊", "不齊", "要改" });
                    break;

                case "StyleType": //StyleType讓用戶下拉選擇
                    ItemComboBoxStyleType.Properties.Items.Clear();
                    ItemComboBoxStyleType.Properties.Items.AddRange(new object[] { "CORE", "FASHION" });
                    break;
            }
        }

        private void gridStyleSortEdition_ShowingEditor(object sender, CancelEventArgs e)
        {
            switch ((this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Base.ColumnView).FocusedColumn.FieldName)
            {
                case "MaterialStatus": //物料情況讓用戶下拉選擇
                    ItemComboBoxMaterialStatus.Properties.Items.Clear();
                    ItemComboBoxMaterialStatus.Properties.Items.AddRange(new object[] { "RVS", "NC" });
                    break;

                case "BaseSizeSpec": //基碼規格讓用戶下拉選擇
                    ItemComboBoxBaseSizeSpec.Properties.Items.Clear();
                    ItemComboBoxBaseSizeSpec.Properties.Items.AddRange(new object[] { "RVS", "NC" });
                    break;

                case "SizeSpec": //放碼規則讓用戶下拉選擇
                    ItemComboBoxSizeSpec.Properties.Items.Clear();
                    ItemComboBoxSizeSpec.Properties.Items.AddRange(new object[] { "RVS", "NC" });
                    break;

                case "Structure": //結構讓用戶下拉選擇
                    ItemComboBoxStructure.Properties.Items.Clear();
                    ItemComboBoxStructure.Properties.Items.AddRange(new object[] { "RVS", "NC" });
                    break;

                case "DelayCause": //從數據字典中得到DelayCause供用戶選擇
                    ItemComboBoxDelayCause.Properties.Items.Clear();
                    DelayCauseList list = new DelayCauseList();
                    foreach (Misc_DataDictionary obj in list.GetAllDelayCause())
                    {
                        ItemComboBoxDelayCause.Properties.Items.Add(obj.Description);
                    }
                    break;

                //This Sample Type Purpose
                case "ActionRemark":
                    string SqlStr = "select DataType as Code, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'SampleTypePurpose'";
                    DataTable dtSampleTypePurpose = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtSampleTypePurpose");
                    repositoryItemComboBox_MaterialStatus.Properties.Items.Clear();
                    foreach (DataRow dr in dtSampleTypePurpose.Rows)
                    {
                        repositoryItemComboBox_SampleTypePurpose.Properties.Items.Add(dr["Code"].ToString());
                    }
                    break;
            }


        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = (this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView);
            if (view == null) return;
            StyleSortEdition obj = view.GetRow(view.FocusedRowHandle) as StyleSortEdition;
            StyleSort StyleSortObj = obj.StyleSort;
            Style StyleObj = StyleSortObj.Style;
            SampleOrder Obj = StyleObj.SampleOrder;
            SampleOrderDvp Rpt = new SampleOrderDvp(Obj, StyleObj, StyleSortObj, obj);
            Rpt.ShowPreview();

            //DevExpress.XtraGrid.Views.Grid.GridView view = (this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView);
            //if (view == null) return;

            //StyleSortEdition obj = view.GetRow(view.FocusedRowHandle) as StyleSortEdition;
            //PrintWorkNoteReport(obj);
        }

        private void gridStyleSortEdition_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = (this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView);
            if (view == null) return;

            StyleSortEdition obj = view.GetRow(e.FocusedRowHandle) as StyleSortEdition;
            if (obj != null && obj.StyleSizes != null)
            {
                this.SourceList = obj.StyleSizes;

                this.OnBeforeShowPivotGrid += new BeforeShowPivotGridHanlder(StyleListForm_OnBeforeShowPivotGrid);
                this.OnAfterShowPivotGrid += new AfterShowPivotGridHandler(StyleListForm_OnAfterShowPivotGrid);
            }
        }

        private void gridStyleSortEdition_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = (this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView);
            if (view == null) return;
            SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();
            StyleSortEdition curObj = view.GetRow(e.RowHandle) as StyleSortEdition;
            curObj.PlanComfirmData = context.fn_PlanConfirmData(CurrentStyle.SampleOrder.DueDate, CurrentStyle.SampleOrder.CustomerID, CurrentStyle.SampleOrder.Factory);
        }

        private void barbut_OpenStyleGCD_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (this.CurrentStyle == null)
            {
                MessageBox.Show(string.Format("No this Style No: {0}.", this.CurrentStyle.StyleID));
                return;
            }

            PH.RWO.BO.StyleList list = new PH.RWO.BO.StyleList();
            PH.RWO.BO.Style style = list.GetStyleList("P1", this.CurrentStyle.StyleID).FirstOrDefault();
            if (style == null)
            {
                MessageBox.Show(string.Format("No this Style No: {0}.", this.CurrentStyle.StyleID));
                return;
            }

            base.CreateProgramForm(typeof(PH.RWO.UI.StyleListForm), this.CurrentStyle.StyleID + " Detail", true, new object[] { style, "GCD", this.TabControls.SelectedTabPage }, null);
        }

        //導入辦單資料到紙樣部排期系統
        private void barbut_AutoDataPDDSystem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = (this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView);
            if (view == null) return;

            StyleSortEdition obj = view.GetRow(view.FocusedRowHandle) as StyleSortEdition;
            if (obj == null) return;
            PH.SPC.BO.SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();

            //if ((context.fn_SPC2PDDSystemExists(obj.SampleOrderID, obj.StyleID, obj.SortID, obj.EditionID) ?? false))
            if ((context.fn_SPC2PDDSystemExists(obj.SampleOrderNoShow, obj.PHStyleNoShow, obj.SampleTypeShow, obj.EditionID) ?? false))
            {
                if (MessageBox.Show("此辦單已經存在於\"紙樣部排期系統\", 是否再生成一次?", "提示", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    context.sp_SPC2PDDSystem(obj.StyleSort.Style.SampleOrder.OID, obj.OID);
                    //context.sp_SPC2PDDSystem(obj.SampleOrderNoShow, obj.PHStyleNoShow, obj.SampleTypeShow, obj.EditionID);
                    //context.sp_SPC2PDDSystem(obj.SampleOrderID, obj.StyleID, obj.SortID, obj.EditionID);
                    MessageBox.Show("成功生成！数据已到\"紙樣部排期系統\"", "提示");
                }
            }
            else if (DialogResult.Yes == MessageBox.Show("是否生成数据到\"紙樣部排期系統\"?", "提示", MessageBoxButtons.YesNo))
            {
                context.sp_SPC2PDDSystem(obj.StyleSort.Style.SampleOrder.OID, obj.OID);
                //context.sp_SPC2PDDSystem(obj.SampleOrderNoShow, obj.PHStyleNoShow, obj.SampleTypeShow, obj.EditionID);
                //context.sp_SPC2PDDSystem(obj.SampleOrderID, obj.StyleID, obj.SortID, obj.EditionID);
                MessageBox.Show("成功生成！数据已到\"紙樣部排期系統\"", "提示");
            }
        }

        //導入辦單資料到板房排期系統
        private void barbut_AutoDataSamepleSystem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = (this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView);
            if (view == null) return;

            StyleSortEdition obj = view.GetRow(view.FocusedRowHandle) as StyleSortEdition;
            if (obj == null) return;
            PH.SPC.BO.SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();

            //if ((context.fn_SPC2SamepleSystemExists(obj.SampleOrderID, obj.StyleID, obj.SortID, obj.EditionID) ?? false))
            if ((context.fn_SPC2SamepleSystemExists(obj.SampleOrderNoShow, obj.PHStyleNoShow, obj.SampleTypeShow, obj.EditionID) ?? false))
            {
                if (MessageBox.Show("此辦單已經存在於\"板房排期系統\", 是否再生成一次?", "提示", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    context.sp_SPC2SamepleSystem(obj.StyleSort.Style.SampleOrder.OID, obj.OID);

                    //context.sp_SPC2SamepleSystem(obj.SampleOrderNoShow, obj.PHStyleNoShow, obj.SampleTypeShow, obj.EditionID);
                    //context.sp_SPC2SamepleSystem(obj.SampleOrderID, obj.StyleID, obj.SortID, obj.EditionID);
                    MessageBox.Show("生成成功！数据已到\"板房排期系統\"", "提示");
                }
            }
            else if (DialogResult.Yes == MessageBox.Show("是否生成数据到\"板房排期系統\"?", "提示", MessageBoxButtons.YesNo))
            {
                context.sp_SPC2SamepleSystem(obj.StyleSort.Style.SampleOrder.OID, obj.OID);

                //context.sp_SPC2SamepleSystem(obj.SampleOrderNoShow, obj.PHStyleNoShow, obj.SampleTypeShow, obj.EditionID);
                //context.sp_SPC2SamepleSystem(obj.SampleOrderID, obj.StyleID, obj.SortID, obj.EditionID);
                MessageBox.Show("生成成功！数据已到\"板房排期系統\"", "提示");
            }
        }

        //導入辦單資料到預產工場排期系統
        private void btnAutoDataToPP_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = (this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView);
            if (view == null) return;

            StyleSortEdition obj = view.GetRow(view.FocusedRowHandle) as StyleSortEdition;
            if (obj == null) return;
            SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();

            //板單信息入到預產工廠系統中, 由David增加 2021-11-26
            SampleOrder sampleOrder = obj.StyleSort.Style.SampleOrder;
            string SqlStr = string.Format("exec sp_SPC2Pre_SamepleSystem {0}, '{1}'", sampleOrder.OID, sampleOrder.SampleOrderID + "-" + sampleOrder.SuffixNoShow);
            context.ExecuteCommand(SqlStr);
            MessageBox.Show("成功生成！数据已到\"預產工場排期系統\"", "提示");

            //string[] PPSortIDs = new string[] { "TOP", "PP", "PPS", "SMS" };
            //if (!PPSortIDs.Contains(obj.StyleSort.SortID.ToUpper()))
            //{
            //    MessageBox.Show("只有製板種類: [TOP,PP,PPS,SMS]才能生成到\"預產工場排期系統\"", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //    return;
            //}

            //if ((context.fn_SPC2Pre_SamepleSystemExists(obj.SampleOrderID, obj.StyleID, obj.SortID, obj.EditionID) ?? false))
            //{
            //    if (MessageBox.Show("此辦單已經存在於\"預產工場排期系統\", 是否再生成一次?", "提示", MessageBoxButtons.YesNo) == DialogResult.Yes)
            //    {
            //        context.sp_SPC2Pre_SamepleSystem(obj.SampleOrderID, obj.StyleID, obj.SortID, obj.EditionID);
            //        MessageBox.Show("成功生成！数据已到\"預產工場排期系統\"", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    }
            //}
            //else if (DialogResult.Yes == MessageBox.Show("是否生成数据到\"預產工場排期系統\"?", "提示", MessageBoxButtons.YesNo))
            //{
            //    context.sp_SPC2Pre_SamepleSystem(obj.SampleOrderID, obj.StyleID, obj.SortID, obj.EditionID);
            //    MessageBox.Show("成功生成！数据已到\"預產工場排期系統\"", "提示");
            //}

        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<Style> lists = objListGridView.FilteredList().Cast<Style>();

                switch (item.FieldName)
                {
                    case "SampleOrderNoShow":
                        e.TotalValue = lists.Select(p => p.SampleOrderNoShow).Distinct().Count();
                        break;

                    case "ChildSampleOrderSuffixShow":
                        e.TotalValue = lists.Select(p => p.ChildSampleOrderSuffixShow).Distinct().Count();
                        break;

                    case "StyleID":
                        e.TotalValue = lists.Select(p => p.StyleID).Distinct().Count();
                        break;

                    case "Stage":
                        e.TotalValue = lists.Where(p => p.Stage.HasValue).Select(p => p.Stage).Distinct().Count();
                        break;

                    case "ProductWs":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.ProductWs)).Select(p => p.ProductWs).Distinct().Count();
                        break;

                    case "ProductCategory":
                        e.TotalValue = lists.Select(p => p.ProductCategory).Distinct().Count();
                        break;
                }

            }
        }

        private void barButtonItemPassForwardS_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (CurrentStyle == null) return;
            if (MessageBox.Show("Do you confirm set to the PASS FWD(S) status?", "confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;

            ActionNavigationForm frmAction = new ActionNavigationForm(CurrentStyle, ActionNavigationWorkModes.PassForward_S);
            if (frmAction.ShowDialog() == DialogResult.OK)
            {
                CurrentStyle.Status = (int)StyleStatus.PassForward_Single;
                GenerateNewSampleOrderResult GenerateResult = GenerateNewSampleOrder(frmAction.Stage, frmAction.SampleType, StyleStatus.PassForward_Single);
                if (GenerateResult.Result)
                {
                    string Str = string.Format("Set PASS FWD(S) was succeed. SplO#: {0}", GenerateResult.Msg);
                    MessageBox.Show(Str, "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show(GenerateResult.Msg, "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }

                //string NewSampleOrderNo = GenerateNewSampleOrder(frmAction.Stage, frmAction.SampleType, StyleStatus.PassForward_Single);
                //if (NewSampleOrderNo == "") return;
                //string Str = string.Format("Set PASS FWD(S) was succeed. SplO#: {0}", NewSampleOrderNo);
                //MessageBox.Show(Str, "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void barButtonItemPassForwardP_ItemClick(object sender, ItemClickEventArgs e)
        {
            Style style = this.BindingSource.Current as Style;
            if (style == null) return;

            if (MessageBox.Show("Do you confirm set to the PASS FWD(P) status?", "confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;

            ActionNavigationForm frmAction = new ActionNavigationForm(style, ActionNavigationWorkModes.PassForward_P);
            if (frmAction.ShowDialog() == DialogResult.OK)
            {
                style.Status = (int)StyleStatus.PassForward_Multi;

                //string NewSampleOrderNos = "";

                string Str = "";
                List<string> SampleTypeList = frmAction.SampleTypeList;
                foreach (var SampleType in SampleTypeList)
                {
                    GenerateNewSampleOrderResult GenerateResult = GenerateNewSampleOrder(frmAction.Stage, SampleType, StyleStatus.PassForward_Multi);
                    if (GenerateResult.Result)
                    {
                        Str += string.Format("Smpl Type: {0} was generated in {1}", SampleType, GenerateResult.Msg) + Environment.NewLine;
                    }
                    else
                    {
                        Str += string.Format("Smpl Type: {0} generate was failed, {1}", SampleType, GenerateResult.Msg) + Environment.NewLine; ;
                    }
                }
                string HintMsg = "Set PASS FWD(P):" + Environment.NewLine + Str;
                MessageBox.Show(HintMsg, "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void barButtonItemRedo_ItemClick(object sender, ItemClickEventArgs e)
        {
            Style obj = this.BindingSource.Current as Style;
            if (obj == null) return;

            if (MessageBox.Show("Do you confirm set to the REDO status?", "confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;
            {
                obj.Status = (int)StyleStatus.Redo;

                SampleOrder CurrentSampleOrder = obj.SampleOrder;
                GenerateNewSampleOrderResult GenerateResult = GenerateNewSampleOrder(CurrentSampleOrder.StageCode, CurrentSampleOrder.SampleType, StyleStatus.Redo);
                if (GenerateResult.Result)
                {
                    string Str = string.Format("Set REDO was succeed. SplO#: {0}", GenerateResult.Msg);
                    MessageBox.Show(Str, "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show(GenerateResult.Msg, "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

        private void barButtonItemComplete_ItemClick(object sender, ItemClickEventArgs e)
        {
            Style obj = this.BindingSource.Current as Style;
            if (obj == null) return;

            if (MessageBox.Show("Do you confirm set to the CMPL status?", "confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;
            {
                obj.Status = (int)StyleStatus.Completed;
                obj.IsComplete = true;
                obj.CompleteDate = DateTime.Now;
                (this.DataContext as SPCDataContext).SubmitChanges();
                MessageBox.Show("Set CMPL was succeed", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }

        private void barButtonItemDrop_ItemClick(object sender, ItemClickEventArgs e)
        {
            Style obj = this.BindingSource.Current as Style;
            if (obj == null) return;

            if (MessageBox.Show("Do you confirm set to the DROP status?", "confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;
            {
                obj.Status = (int)StyleStatus.Drop;
                (this.DataContext as SPCDataContext).SubmitChanges();
                MessageBox.Show("Set DROP was succeed", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnRestart_ItemClick(object sender, ItemClickEventArgs e)
        {
            Style obj = this.BindingSource.Current as Style;
            if (obj == null) return;

            if (MessageBox.Show("Do you confirm set to the RESTART status?", "confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;
            {
                obj.Status = null;
                (this.DataContext as SPCDataContext).SubmitChanges();
                MessageBox.Show("Set RESTART was succeed", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        GenerateNewSampleOrderResult GenerateNewSampleOrder(string Stage, string SampleType, StyleStatus AStyleStatus)
        {
            GenerateNewSampleOrderResult GenerateResult = new GenerateNewSampleOrderResult() { Result = true, Msg = "" };

            SPCDataContext db = ContextBuilder.CreateContext<SPCDataContext>();
            SampleOrder CurrentSampleOrder = CurrentStyle.SampleOrder;

            bool NeedNewSampleOrder = true;
            SampleOrder NewSampleOrder = null;

            if (AStyleStatus == StyleStatus.Redo) //Redo的时候也有合并的情况
            {
                //NeedNewSampleOrder = true;

                //判断是否需要合并
                NewSampleOrder = (this.DataContext as SPCDataContext).SampleOrders
                    .Where(p => p.SampleOrderID == CurrentSampleOrder.SampleOrderID && p.SampleType == SampleType &&
                               (p.CreateDate ?? DateTime.MaxValue).Date == DateTime.Now.Date && (p.Version2 ?? 0) > 0)
                    .OrderByDescending(p => p.Version1).ThenByDescending(p => p.Version2).FirstOrDefault();

                NeedNewSampleOrder = NewSampleOrder == null; //是否需要新增一个Sample Order
                if (NewSampleOrder != null)
                {
                    Style ExistsStyle = NewSampleOrder.Styles.FirstOrDefault(p => p.StyleID == CurrentStyle.StyleID);
                    if (ExistsStyle != null)
                    {
                        GenerateResult.Result = false;
                        GenerateResult.Msg = string.Format("Exists REDO of Style#: {0} in SplO#: {1} ", CurrentStyle.StyleID, NewSampleOrder.SampleOrderID + "-" + NewSampleOrder.SuffixNoShow);
                        return GenerateResult;
                    }
                }
            }
            else if (AStyleStatus == StyleStatus.PassForward_Single || AStyleStatus == StyleStatus.PassForward_Multi)
            {
                //判断是否需要合并
                NewSampleOrder = (this.DataContext as SPCDataContext).SampleOrders
                    .Where(p => p.SampleOrderID == CurrentSampleOrder.SampleOrderID && p.SampleType == SampleType && (p.CreateDate ?? DateTime.MaxValue).Date == DateTime.Now.Date)
                    .OrderByDescending(p => p.Version1).FirstOrDefault();

                NeedNewSampleOrder = NewSampleOrder == null; //是否需要新增一个Sample Order

                if (NewSampleOrder != null)
                {
                    //MessageBox.Show("合并到 SplO#:" + NewSampleOrder.SampleOrderID + "-" + NewSampleOrder.SuffixNoShow);
                    Style ExistsStyle = NewSampleOrder.Styles.FirstOrDefault(p => p.StyleID == CurrentStyle.StyleID);
                    if (ExistsStyle != null)
                    {
                        GenerateResult.Result = false;
                        GenerateResult.Msg = string.Format("Exists Style#: {0} in SplO#: {1} ", CurrentStyle.StyleID, NewSampleOrder.SampleOrderID + "-" + NewSampleOrder.SuffixNoShow);
                        return GenerateResult;
                    }
                }
            }

            if (NeedNewSampleOrder) //需要新增一个SampleOrder
            {
                NewSampleOrder = new SampleOrder();
                NewSampleOrder.SampleOrderID = CurrentSampleOrder.SampleOrderID;
                if (AStyleStatus == StyleStatus.PassForward_Single || AStyleStatus == StyleStatus.PassForward_Multi)
                {
                    NewSampleOrder.Version1 = db.SampleOrders.Where(p => p.SampleOrderID == CurrentSampleOrder.SampleOrderID).Select(p => (p.Version1 ?? 0)).Max() + 1;
                    NewSampleOrder.Version2 = 0;
                }
                else if (AStyleStatus == StyleStatus.Redo)
                {
                    NewSampleOrder.Version1 = CurrentSampleOrder.Version1;
                    NewSampleOrder.Version2 = db.SampleOrders.Where(p => p.SampleOrderID == CurrentSampleOrder.SampleOrderID && p.Version1 == CurrentSampleOrder.Version1)
                        .Select(p => (p.Version2 ?? 0)).Max() + 1;
                }
                NewSampleOrder.SampleType = SampleType;
                NewSampleOrder.StageCode = Stage;
                NewSampleOrder.SamplePurpose = CurrentSampleOrder.SamplePurpose;
                NewSampleOrder.CustomerID = CurrentSampleOrder.CustomerID;
                NewSampleOrder.DueDate = CurrentSampleOrder.DueDate;
                NewSampleOrder.Confirm = CurrentSampleOrder.Confirm;
                NewSampleOrder.Table = PH.Platform.Common.SysParamHelper.Instance.UserID;
                NewSampleOrder.ProjectNo = CurrentSampleOrder.ProjectNo;
                NewSampleOrder.CompleteDate = null;
                NewSampleOrder.IsComplete = null;
                NewSampleOrder.Garment1stDelDate = CurrentSampleOrder.Garment1stDelDate;
                NewSampleOrder.SamplerOrderOther = CurrentSampleOrder.SamplerOrderOther;
                NewSampleOrder.CustDept = CurrentSampleOrder.CustDept;
                NewSampleOrder.FactoryStartDate = CurrentSampleOrder.FactoryStartDate;
                NewSampleOrder.ShipmentDate = CurrentSampleOrder.ShipmentDate;
                NewSampleOrder.Factory = CurrentSampleOrder.Factory;
                NewSampleOrder.CreateDate = DateTime.Now;
                NewSampleOrder.Season = CurrentSampleOrder.Season;
                NewSampleOrder.ProductGroup = CurrentSampleOrder.ProductGroup;
                NewSampleOrder.CustomerGroup = CurrentSampleOrder.CustomerGroup;
                NewSampleOrder.TotalStyle = null;
                NewSampleOrder.TotalSampleOrderQty = null;
                NewSampleOrder.PatternSource = CurrentSampleOrder.PatternSource;
                NewSampleOrder.PatternReadyDate = CurrentSampleOrder.PatternReadyDate;

            }

            //Style
            Style NewStyle = new Style();
            NewStyle.SampleOrder = NewSampleOrder;
            NewStyle.StyleID = CurrentStyle.StyleID;
            NewStyle.CustomerStyle = CurrentStyle.CustomerStyle;
            NewStyle.CustomerLDStyle = CurrentStyle.CustomerLDStyle;
            NewStyle.WorkOrderID = CurrentStyle.WorkOrderID;
            NewStyle.ProductGroup = CurrentStyle.ProductGroup;
            NewStyle.SizeScope1 = CurrentStyle.SizeScope1;
            NewStyle.SizeScope2 = CurrentStyle.SizeScope2;
            NewStyle.SizeScope3 = CurrentStyle.SizeScope3;
            NewStyle.SizeScope4 = CurrentStyle.SizeScope4;
            NewStyle.Brand = CurrentStyle.Brand;
            NewStyle.Group = CurrentStyle.Group;
            NewStyle.Season = CurrentStyle.Season;
            NewStyle.YBCB = CurrentStyle.YBCB;
            NewStyle.ReceivePay = CurrentStyle.ReceivePay;
            NewStyle.IsComplete = null;
            NewStyle.CompleteDate = null;
            NewStyle.ProductCategory = CurrentStyle.ProductCategory;
            NewStyle.ProductDesc = CurrentStyle.ProductDesc;
            NewStyle.SizeMatrix = CurrentStyle.SizeMatrix;
            NewStyle.ProductWs = CurrentStyle.ProductWs;
            NewStyle.ProductSite = CurrentStyle.ProductSite;
            NewStyle.Class = CurrentStyle.Class;
            NewStyle.ProjectNo = CurrentStyle.ProjectNo;
            NewStyle.FWStartDate = CurrentStyle.FWStartDate;
            NewStyle.ExftyDate = CurrentStyle.ExftyDate;
            NewStyle.Status = null;
            NewStyle.Date = null;
            NewSampleOrder.Styles.Add(NewStyle);

            //如果选择的Sample Type与新建的Sample Type相同，需要复制Sample Type、Version、SKU的数据
            bool NeedCopyFromOldSampleType = CurrentStyle.StyleSorts.FirstOrDefault(p => p.SortID == SampleType) != null;

            if (AStyleStatus == StyleStatus.Redo) //REDO时不需要复制
            {
                NeedCopyFromOldSampleType = false;
            }

            if (NeedCopyFromOldSampleType) //旧数据中，可能将Smpl Type复制出来，如果Dvp复制到Dvp
            {
                //Sample Type
                StyleSort CurrentSampleType = CurrentStyle.StyleSorts.FirstOrDefault(p => p.SortID == SampleType);
                StyleSort NewSampleType = new StyleSort();
                NewSampleType.Style = NewStyle;
                NewSampleType.SortID = SampleType;
                NewSampleType.SortDate = CurrentSampleType.SortDate;
                NewSampleType.DueDate = CurrentSampleType.DueDate;
                NewSampleType.ActualDate = CurrentSampleType.ActualDate;
                NewSampleType.ProduceDays = CurrentSampleType.ProduceDays;
                NewSampleType.IsComplete = null;
                NewSampleType.CompleteDate = null;
                NewSampleType.ProduceDepartment = CurrentSampleType.ProduceDepartment;
                NewSampleType.ZYQB = CurrentSampleType.ZYQB;
                NewSampleType.BLQB = CurrentSampleType.BLQB;
                NewSampleType.YBCB = CurrentSampleType.YBCB;
                NewSampleType.StyleType = CurrentSampleType.StyleType;
                NewSampleType.SampleNumber = CurrentSampleType.SampleNumber;
                NewSampleType.MarkSource = CurrentSampleType.MarkSource;
                NewSampleType.MaterialStatus = CurrentSampleType.MaterialStatus;
                NewStyle.StyleSorts.Add(NewSampleType);

                //Version
                StyleSortEdition CurrentVersion = CurrentSampleType.StyleSortEditions.OrderByDescending(p => p.EditionID).FirstOrDefault(); //取最大的版本
                StyleSortEdition NewVersion = new StyleSortEdition();

                NewVersion = new StyleSortEdition();
                NewVersion.StyleSort = NewSampleType;

                NewVersion.EditionID = (NewSampleOrder.Version2 ?? 0) + 1;
                NewVersion.EditionDate = CurrentVersion.EditionDate;  //DateTime.Now;
                NewVersion.EditionDueDate = CurrentVersion.EditionDueDate;
                NewVersion.EditionActualDate = CurrentVersion.EditionActualDate;
                NewVersion.ProduceDays = CurrentVersion.ProduceDays;
                NewVersion.DifferenceDays = CurrentVersion.DifferenceDays;
                NewVersion.ActualProduceDays = CurrentVersion.ActualProduceDays;
                NewVersion.ActionRemark = CurrentVersion.ActionRemark;
                NewVersion.SampleStatus = CurrentVersion.SampleStatus;
                NewVersion.RejectReason = CurrentVersion.RejectReason;
                NewVersion.IsComplete = null;
                NewVersion.CompleteDate = CurrentVersion.CompleteDate;
                NewVersion.Sample = CurrentVersion.Sample;
                NewVersion.SampleType = CurrentVersion.SampleType;
                NewVersion.MaterialStatus = CurrentVersion.MaterialStatus;
                NewVersion.BaseSizeSpec = CurrentVersion.BaseSizeSpec;
                NewVersion.InsteadMaterial = CurrentVersion.InsteadMaterial;
                NewVersion.SizeSpec = CurrentVersion.SizeSpec;
                NewVersion.WinningBid = CurrentVersion.WinningBid;
                NewVersion.Structure = CurrentVersion.Structure;
                NewVersion.DelayCause = CurrentVersion.DelayCause;
                NewVersion.BeforehandData = CurrentVersion.BeforehandData;
                NewVersion.PlanComfirmData = CurrentVersion.PlanComfirmData;

                ////Angle Yuan要求，REDO的时候，不复制几个日期
                //if (AStyleStatus == StyleStatus.Redo)
                //{
                //    NewVersion.EditionDate = null;
                //    NewVersion.EditionDueDate = null;
                //    NewVersion.EditionActualDate = null;
                //}

                NewSampleType.StyleSortEditions.Add(NewVersion);

                //SKU
                foreach (StyleSize sku in CurrentVersion.StyleSizes)
                {
                    StyleSize NewStyleSize = new StyleSize();
                    NewStyleSize.StyleSortEdition = NewVersion;
                    NewStyleSize.ColorID = sku.ColorID;
                    NewStyleSize.Cup = sku.Cup;
                    NewStyleSize.SizeID = sku.SizeID;
                    NewStyleSize.SizeWorld = sku.SizeWorld;
                    NewStyleSize.Qty = sku.Qty;
                    NewStyleSize.KeepQty = sku.KeepQty;
                    NewStyleSize.ColorName = sku.ColorName;
                    NewVersion.StyleSizes.Add(NewStyleSize);
                }

            }
            else //不需要从当前选择的Sample Type中复制数据，自动生成Sample Type和Version的记录，但SKU不生成
            {
                //Sample Type
                StyleSort NewSampleType = new StyleSort();
                NewSampleType.Style = NewStyle;
                NewSampleType.SortID = SampleType;
                NewSampleType.SortDate = DateTime.Now;
                NewSampleType.MarkSource = NewSampleOrder.PatternSource;
                NewStyle.StyleSorts.Add(NewSampleType);

                //Version
                StyleSortEdition NewVersion = new StyleSortEdition();
                NewVersion.StyleSort = NewSampleType;
                NewVersion.EditionID = (NewSampleOrder.Version2 ?? 0) + 1;
                NewVersion.EditionDate = DateTime.Now;
                NewSampleType.StyleSortEditions.Add(NewVersion);

                //SKU不需要生成
            }

            NewSampleOrder.ReCalculateTotalInformation();
            if (NeedNewSampleOrder)
            {
                (this.ParentForm.ListForm as SampleOrderListForm).BindingSource.Add(NewSampleOrder); //将新增加的Sample Order放到UI上
                (DataContext as SPCDataContext).SampleOrders.InsertOnSubmit(NewSampleOrder);
            }
            DataContext.SubmitChanges();

            GenerateResult.Result = true;
            GenerateResult.Msg = NewSampleOrder.SampleOrderID + "-" + NewSampleOrder.SuffixNoShow;
            return GenerateResult;

            //return NewSampleOrder.SampleOrderID + "-" + NewSampleOrder.SuffixNoShow;
        }




        //string SelectSampleType = "";
        private void gridStyleSort_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            //GridView grid = sender as GridView;
            //SelectSampleType = grid.GetRowCellValue(e.FocusedRowHandle, "SortID").ToString();
        }



        //private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{

        //    PH.RWO.BO.RWOSOPCDataContext db = ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
        //    PH.RWO.BO.WorkOrder wo =  db.WorkOrders.FirstOrDefault(p=>p.WorkOrderNo=="W297671");

        //    SampleOrderList obj = new SampleOrderList();

        //    obj.AutoGenerateSPC(wo);
        //}

    }

    public class GenerateNewSampleOrderResult
    {
        public bool Result { get; set; }
        public string Msg { get; set; }
    }
}
