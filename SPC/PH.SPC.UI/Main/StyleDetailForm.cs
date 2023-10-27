using System;
using System.Data;
using System.Data.Linq;
using System.Linq;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.Platform.Misc.BO;
using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class StyleDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm //PH.UI.UI2.ParentChildForm
    {
        #region
        internal StyleSortListForm _frmStyleSort;

        public Style CurrentStyle
        {
            get
            {
                return this.BindingSource.Current as Style;
            }

        }

        #endregion

        public StyleDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            //  this.CurrentStyle = this.BindingSource.Current as Style;

            //this.styleSampleProgressSheetListForm1.EditorTypeName = typeof(StyleSampleProgressSheetDetailForm).FullName;
            //this.styleBOMListForm1.EditorTypeName = typeof(StyleBOMDetailForm).FullName;
            this.styleSortListForm1.EditorTypeName = typeof(StyleSortDetailForm).FullName;


            styleSortListForm1.BindingSource.DataSource = this.CurrentStyle.StyleSorts;
            _frmStyleSort = styleSortListForm1;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

            FillStyleButton();

            PrepareData();
        }

        void PrepareData()
        {
            //产品种类
            SPCDataContext db = this.DataContext as SPCDataContext;
            string SqlStr = @"select DataCode as ProductCategoryCode, Description as ProductCategoryName
                             from [PH.Platform.Misc].[dbo].[Misc_DataDictionary]
                             where DataType = 'PH.Project.ProductCategory'
                             order by DataCode";

            DataTable dtProductCategory = db.ExecuteDataTable(SqlStr, "dtProductCategory");
            txtcbProductCategory.Properties.DataSource = dtProductCategory;
            txtcbProductCategory.Properties.ValueMember = "ProductCategoryCode";
            txtcbProductCategory.Properties.DisplayMember = "ProductCategoryCode";

            //制作工场
            SqlStr = "select Code, ENDes as NameEN, CHDes as NameCN from [PH.DespatchSample]..Sample_WN";
            DataTable dtProductWs = db.ExecuteDataTable(SqlStr, "dtProductWs");
            txtProductWs.Properties.DataSource = dtProductWs;
            txtProductWs.Properties.ValueMember = "Code";
            txtProductWs.Properties.DisplayMember = "Code";
        }

        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            //IsCompleteLabel.Enabled = dateEdit1.Enabled = false;
        }

        public override void EditCurrent()
        {
            if (CurrentStyle.IsComplete ?? false)
            {
                MessageBox.Show("已完成Style不能修改！");
                return;
            }

            base.EditCurrent();
        }

        protected override void OnClickDelete()
        {
            if (CurrentStyle.IsComplete ?? false)
            {
                MessageBox.Show("已完成Style不能刪除！");
                return;
            }
            base.OnClickDelete();
        }

        protected override void SaveCurrent()
        {
            base.SaveCurrent();

            //自动生成第三层Sample Type和第四层Edition (新结构)
            if (CurrentStyle == null) return;

            if (CurrentStyle.StyleSorts.Count() > 0) return;

            //Sample Type
            StyleSort NewSampeType = new StyleSort();
            NewSampeType.Style = CurrentStyle;
            NewSampeType.SortID = CurrentStyle.SampleOrder.SampleType;
            NewSampeType.SortDate = DateTime.Now;
            CurrentStyle.StyleSorts.Add(NewSampeType);

            //Version
            StyleSortEdition NewVersion = new StyleSortEdition();
            NewVersion.StyleSort = NewSampeType;
            NewVersion.SortID = NewSampeType.SortID;
            NewVersion.EditionID = 1;
            NewVersion.EditionDate = DateTime.Now;
            NewSampeType.StyleSortEditions.Add(NewVersion);

            this.DataContext.SubmitChanges();
            styleSortListForm1.BindingSource.ResetBindings(false);
        }


        private bool CheckIsCanComplete()
        {
            foreach (StyleSort item in CurrentStyle.StyleSorts)
            {
                StyleSortEdition obj = (from c in item.StyleSortEditions
                                        where c.EditionID == item.StyleSortEditions.Max(p => p.EditionID)
                                        select c).FirstOrDefault();

                if (obj.EditionActualDate == null || obj.BeforehandData == null)
                {
                    MessageBox.Show("SortID:[" + obj.SortID + "],EditionID:[" + obj.EditionID + "] 版本的‘實際完成日期’不能为空！");
                    return false;
                }

            }

            return true;
        }

        private void FillStyleButton()
        {
            if (CurrentStyle.IsComplete ?? false)
            {
                this.btnComplete.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.btnUnComplete.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            }
            else
            {
                this.btnComplete.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                this.btnUnComplete.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }
        }

        private void ChangeStyle(bool isComplete)
        {
            CurrentStyle.IsComplete = isComplete;
            if (isComplete)
                CurrentStyle.CompleteDate = DateTime.Now;
            else
                CurrentStyle.CompleteDate = null;
            CurrentStyle.Save();
            //this.DataContext.SubmitChanges();
        }

        private bool ChildIsCompleted()
        {
            foreach (StyleSort styleSort in CurrentStyle.StyleSorts)
            {
                if (!styleSort.IsComplete ?? false)
                {
                    return false;
                }
            }
            return true;
        }


        private void StyleDetailForm_Load(object sender, EventArgs e)
        {
            //從數據字典中得到Season供用戶選擇
            //edtSeason.Properties.Items.Clear();
            //SeasonList list = new SeasonList();
            //foreach (Misc_DataDictionary obj in list.GetAllSeason())
            //{
            //    edtSeason.Properties.Items.Add(obj.DataName);
            //}

            //從Default Size Ratio中得到Brand供用戶選擇
            //cbBrand.Properties.Items.Clear();
            //SPCDataContext db = this.DataContext as SPCDataContext;
            //ISingleResult<sp_GetBrandResult> result = db.sp_GetBrand(this.CurrentStyle.SampleOrder.CustomerID);
            //var brands = (from a in result
            //              select a.Brand).Distinct();
            //foreach (var obj in brands)
            //{
            //    cbBrand.Properties.Items.Add(obj);
            //}

            //DictionaryList list2 = new DictionaryList();
            //this.cbb_SizeMatrix.Properties.DataSource = list2.GetDataDictionaryMutiLang("PH.WO.SizeMatrix");
            //this.cbb_SizeMatrix.Properties.DisplayMember = "Description";
            //this.cbb_SizeMatrix.Properties.ValueMember = "DataCode";
        }

        private void btnComplete_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurrentStyle == null)
                return;

            if (!CheckIsCanComplete())
                return;

            if (MessageBox.Show("確定要Complete Style嗎?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;

            ChangeStyle(true);
            FillStyleButton();
        }

        private void btnUnComplete_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurrentStyle == null)
                return;

            if (MessageBox.Show("確定要Un-Complete Style嗎?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;
            ChangeStyle(false);

            //PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            FillStyleButton();
        }

        private void cbBrand_TextChanged(object sender, EventArgs e)
        {
            ////從Default Size Ratio中得到产品类别供用戶選擇
            //SPCDataContext db = this.DataContext as SPCDataContext;
            //cbProductCategory.Properties.Items.Clear();

            //ISingleResult<sp_GetBrandResult> list = db.sp_GetBrand(this.CurrentStyle.SampleOrder.CustomerID);
            //var brands = (from a in list
            //              where a.Brand == this.cbBrand.Text
            //              select a.ProductCategory).Distinct();
            //foreach (var obj in brands)
            //{
            //    this.cbProductCategory.Properties.Items.Add(obj);
            //}
        }

        private void btnSizeRatio_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //zrtag
            //SalesDataContext context = ContextBuilder.CreateContext<Sales.BO.SalesDataContext>();
            //string cust = this.CurrentStyle.SampleOrder.CustomerID == "HBI" ? "SARA" : this.CurrentStyle.SampleOrder.CustomerID;
            //var PivotTableDataSource = from a in context.Details
            //                           where a.Customer == cust && a.Brand == this.CurrentStyle.Brand && a.ProductCategory == this.CurrentStyle.ProductCategory
            //                           select a;

            //PivotTableForm pivotTableForm = new PivotTableForm(PivotTableDataSource);
            //pivotTableForm.ShowDialog();
        }



    }
}
