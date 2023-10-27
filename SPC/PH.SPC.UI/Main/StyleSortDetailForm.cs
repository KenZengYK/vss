using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using PH.Platform.BO;

namespace PH.SPC.UI
{
    public partial class StyleSortDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm  //PH.UI.UI2.ParentChildForm
    {
        private StyleSort _styleSort;
        public StyleSort CurStyleSort
        {
            get
            {
                return this.BindingSource.Current as StyleSort;
            }
        }

        public StyleSortDetailForm()
        {
            InitializeComponent();

            BandCombox();
            //this.styleSizeListForm1.EditorTypeName = typeof(StyleSizeDetailForm).FullName;
            //this.styleProduceRemarkListForm1.EditorTypeName = typeof(StyleProduceRemarkDetailForm).FullName;
        }


        public override void DataBind()
        {
            base.DataBind();
            _styleSort = this.BindingSource.Current as StyleSort;
            styleSortEditionListForm1.BindingSource.DataSource = _styleSort.StyleSortEditions;

            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.ControlCompleteShowState();

            Style s = (this.PrevForm as StyleDetailForm).BindingSource.Current as Style;
            if (this._styleSort.Style == null)
                this._styleSort.Style = s;

            //this.txtSortID.Properties.Items.Clear();
            //if (!string.IsNullOrEmpty(this._styleSort.Style.SampleOrder.CustomerID))
            if (!string.IsNullOrEmpty(s.SampleOrder.CustomerID))
            {
                SetStyleSortList(s.SampleOrder.CustomerID, s.SampleOrder.Factory);

                //string[] SortIDs = _styleSortIDList[_styleSort.Style.SampleOrder.CustomerID];
                //string[] SortIDs = _styleSortIDList[s.SampleOrder.CustomerID];
                //this.txtSortID.Properties.Items.AddRange(SortIDs);
            }

            PrepareData();
        }

        void PrepareData()
        {
            //Pattern Source 纸样来源
            string SqlStr = "select DataType as Code, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'PatternSource'";
            DataTable dtPatternSource = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtPatternSource");
            txtMarkSource.Properties.Items.Clear();
            foreach (DataRow dr in dtPatternSource.Rows)
            {
                txtMarkSource.Properties.Items.Add(dr["Code"].ToString());
            }

            //物料情况 Mat's Status
            SqlStr = "select DataType as Code, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'MaterialStatus'";
            DataTable dtMaterialStatus = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtMaterialStatus");
            txtMaterialStatus.Properties.Items.Clear();
            foreach (DataRow dr in dtMaterialStatus.Rows)
            {
                txtMaterialStatus.Properties.Items.Add(dr["Code"].ToString());
            }
        }

        public override void EditCurrent()
        {
            _styleSort = this.BindingSource.Current as StyleSort;

            if (this.IsNew)// && this.spinEdit1.Value == -1)
            {
                //this.spinEdit1.EditValue = this._styleSort.Style.YBCB;
                _styleSort.YBCB = _styleSort.Style.YBCB;
            }

            //if (_styleSort.IsComplete ?? false)
            //{
            //    MessageBox.Show("樣板種類已經完成，不能修改!");
            //    return;
            //}

            if (this.txtSortDate.DateTime == DateTime.MinValue)
            {
                this.txtSortDate.DateTime = DateTime.Now;
            }

            if (this.txtDueDate.DateTime == DateTime.MinValue)
            {
                this.txtDueDate.DateTime = DateTime.Now;
            }

            //if (this.txtActualDate.DateTime == DateTime.MinValue)
            //{
            //    this.txtActualDate.DateTime = DateTime.Now;
            //}


            base.EditCurrent();

            isCompleteLabel.Enabled = false;
            txtCompleteDate.Enabled = false;
        }

        private void SetStyleSortList(string customer, string factory)
        {
            List<GetCustomerSampleOrderSortResult> sampleOrderSortList = (this.DataContext as SPCDataContext).GetCustomerSampleOrderSort(customer, factory, "").ToList<GetCustomerSampleOrderSortResult>();
            this.txtSortID.Properties.DataSource = sampleOrderSortList;
            this.txtSortID.Properties.DisplayMember = "SampleOrderType";
            this.txtSortID.Properties.ValueMember = "SampleOrderType";

            if (sampleOrderSortList.Count() == 0)
            {
                txtSortID.Visible = false;
                txtD_SortID.Visible = true;
            }
            else
            {
                txtSortID.Visible = true;
                txtD_SortID.Visible = false;

                //if (!IsNew && this.CurStyleSort != null)
                //{
                //    if ((from c in sampleOrderSortList where c.SampleOrderType == this.CurStyleSort.SortID select c).Count() == 0)
                //    {
                //        txtSortID.Visible = false;
                //        txtD_SortID.Visible = true;
                //    }
                //}
            }


        }

        static readonly SortedList<string, string[]> _styleSortIDList = GetStyleSortIDList();

        private static SortedList<string, string[]> GetStyleSortIDList()
        {
            SortedList<string, String[]> result = new SortedList<string, string[]>();
            result.Add("LARD", new string[] { "DVP", "QTN", "RVS", "SS", "PS", "PPS", "CMS", "SH" });
            //result.Add("LARD", new string[] { "DVP", "Quotation", "RVS", "SS", "PS", "PPS", "CMS", "SH" });
            result.Add("ETAM", new string[] { "DVP", "QTN", "RVS", "SS", "PS", "PPS", "CMS", "SH" });
            //result.Add("ETAM", new string[] { "DVP", "Quotation", "RVS", "SS", "PS", "PPS", "CMS", "SH" });

            result.Add("TAMA", new string[] { "CG", "QTN", "WT", "CGS", "DGS", "PTS", "CBS", "CS", "CMS", "SH", "RS", "WS", "FIT" });
            //result.Add("TAMA", new string[] { "CG", "Quotation", "WT", "C/S+GS", "DGS", "PTS" });

            result.Add("SALL", new string[] { "FIT", "QTN", "PS", "WT", "SS", "PP", "CBS", "CS", "CMS", "SH", "TOP", "MTL" });
            //result.Add("SALL", new string[] { "CG", "Quotation", "Photo", "WT", "Size Set", "PP" });


            result.Add("HBI", new string[] { "CG", "QTN", "QA", "WT", "SS", "MW", "CBS", "PPA", "CTL", "CMS", "SH", "CRP", "PTS" });
            //result.Add("HBI", new string[] { "CG", "Quotation", "QA", "WT", "SS", "MW", "CBS" });

            result.Add("CMYR", new string[] { "DVP", "RVS", "QTN", "QA", "SS", "WT", "WS", "SH", "CMS", "AD", "PS" });
            //result.Add("CMYR", new string[] { "DVP", "RVS", "Quotation", "QASample", "SizeSetSampleStatus" });

            result.Add("WARN", new string[] { "DVP", "RVS", "QTN", "FIT", "SS", "PPS", "GTS", "WT", "TOP", "SH", "CMS", "MW" });
            //result.Add("WARN", new string[] { "DVP", "RVS", "Quotation", "FitSample", "SizeSetSampleStatus", "PreProductionSample" });

            result.Add("PH", new string[] { "DVP", "QTN", "RVS" });
            //result.Add("PH", new string[] { "DVP", "Quotation", "RVS" });
            result.Add("MAST", new string[] { "DVP", "RVS", "QTN", "FIT", "SS", "PPS", "GTS", "WT", "TOP", "SH", "CMS", "MW" });
            //result.Add("MAST", new string[] { "DVP", "RVS", "Quotation", "FitSample", "SizeSetSampleStatus", "PreProductionSample" });


            //result.Add("SARA", new string[] { "DVP", "RVS", "QTN", "SLQASample", "KBQASample", "SS", });
            //result.Add("SARA", new string[] { "DVP", "RVS", "QTN", "SLQASample", "KBQASample", "SizeSetSample", });

            result.Add("CALD", new string[] { "DVP", "QTN", "RVS", "SS", "PS", "PPS", "CMS", "SH" });
            result.Add("DAXO", new string[] { "DVP", "QTN", "RVS", "SS", "PS", "PPS", "CMS", "SH" });
            result.Add("EMPR", new string[] { "DVP", "QTN", "RVS", "SS", "PS", "PPS", "CMS", "SH" });
            result.Add("TAIL", new string[] { "DVP", "QTN", "RVS", "SS", "PS", "PPS", "CMS", "SH" });
            result.Add("MONO", new string[] { "DVP", "QTN", "RVS", "SS", "PS", "PPS", "CMS", "SH" });
            result.Add("ESSE", new string[] { "DVP", "QTN", "RVS", "SS", "PS", "PPS", "CMS", "SH" });


            return result;
        }

        private void ControlCompleteShowState()
        {
            //if (_styleSort.IsComplete ?? false)
            //{
            //    this.btnCompleteItem.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            //    this.btnUnCompleteItem.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            //}
            //else
            //{
            //    this.btnCompleteItem.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            //    this.btnUnCompleteItem.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            //}
        }

        private void BandCombox()
        {
            //this.cbbe_ProduceDepartment.Properties.Items.Clear();
            //PH.DespatchSample.BO.SAMPLE_WNList list = new PH.DespatchSample.BO.SAMPLE_WNList();
            //foreach (var item in list.GetAllData())
            //{
            //    this.cbbe_ProduceDepartment.Properties.Items.Add(item.Code);
            //}

        }

        private void ChangeStyleSort(bool isComplete)
        {
            if (isComplete)
                _styleSort.CompleteDate = DateTime.Now;
            else
                _styleSort.CompleteDate = null;

            _styleSort.IsComplete = isComplete;
            this.DataContext.SubmitChanges();
        }

        private void btnCompleteItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (_styleSort == null)
                return;

            if (MessageBox.Show("確定要Complete嗎?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;

            ChangeStyleSort(true);

            this.ControlCompleteShowState();
        }

        private void btnUnCompleteItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (_styleSort == null)
                return;

            ChangeStyleSort(false);
            this.ControlCompleteShowState();
        }

        private void StyleSortDetailForm_Load(object sender, EventArgs e)
        {
            //this.txtSortID.Properties.Items.Clear();
            //if (!string.IsNullOrEmpty(this._styleSort.Style.SampleOrder.CustomerID))
            //{
            //    string[] SortIDs = _styleSortIDList[_styleSort.Style.SampleOrder.CustomerID];
            //    this.txtSortID.Properties.Items.AddRange(SortIDs);
            //}
        }



    }
}
