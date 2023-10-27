using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using DevExpress.XtraBars;

namespace PH.SPC.UI
{
    public partial class StyleSortDetailForm : PH.UI.UI2.ParentListForm
    {
        //public StyleSortDetailForm()
        //{
        //    InitializeComponent();
        //}

        //protected override void BindingDataSource()
        //{
        //    base.BindingDataSource();
        //    this.textEdit1.DataBindings.Add("Text", this.BindingSource, "SortID");
        //}

        public StyleSortDetailForm()
        {
            InitializeComponent();            
        }

        private StyleSort _styleSort;
        private StyleSortEditionListForm _frmStyleSortEdition;

        private StyleSizeListForm _frmStyleSize; //色碼/尺碼分配
        private StyleProduceRemarkListForm _frmStyleProduceRemark;  //樣辦製作要求


        //private StyleSizeListForm _frmStyleSize;

        protected override void BindingDataSource()
        {
            base.BindingDataSource();
            _styleSort = this.BindingSource.Current as StyleSort;

            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

            //this.txtStyleID.DataBindings.Add("Text", this.BindingSource, "StyleID");
            //this.txtEditionID.DataBindings.Add("Text", this.BindingSource, "EditionID");
            //this.txtSortID.DataBindings.Add("Text", this.BindingSource, "SortID");
            //this.txtProduceDays.DataBindings.Add("Text", this.BindingSource, "ProduceDays");
            //this.txtActualDate.DataBindings.Add("Text", this.BindingSource, "ActualDate");
            //this.txtDueDate.DataBindings.Add("Text", this.BindingSource, "DueDate");
            //this.txtSortDate.DataBindings.Add("Text", this.BindingSource, "SortDate");


            //this.textEdit1.DataBindings.Add("Text", this.BindingSource, "StyleID");
           
            //this.frmStyleSortList1.DataSource = ((Style)this.BindingSource.Current).StyleSort;

            //-------第2页--
            //_frmStyleSize = new StyleSizeListForm(_style);
            //_frmStyleSize.Dock = DockStyle.Fill;
            //_frmStyleSize.Show();
            //this.xtraTabPage2.Controls.Add(_frmStyleSize);

            //---放在第1页的最后生成--------
            _frmStyleSortEdition = new StyleSortEditionListForm(_styleSort);
            _frmStyleSortEdition.Dock = DockStyle.Fill;
            _frmStyleSortEdition.Show();
            this.xtraTabPage1.Controls.Add(_frmStyleSortEdition);
            this.SelectPage(this.xtraTabPage1);//important

            //-------色碼/尺碼分配---------------------------------------------------
            _frmStyleSize = new StyleSizeListForm(_styleSort);
            _frmStyleSize.Dock = DockStyle.Fill;
            _frmStyleSize.Show();
            this.xtraTabPage2.Controls.Add(_frmStyleSize);

            //-------樣辦製作要求----------------------------------------------------
            _frmStyleProduceRemark = new StyleProduceRemarkListForm(_styleSort);
            _frmStyleProduceRemark.Dock = DockStyle.Fill;
            _frmStyleProduceRemark.Show();
            this.xtraTabPage3.Controls.Add(_frmStyleProduceRemark);

            this.txtSortID.Properties.Items.Clear();
            if (!string.IsNullOrEmpty(this._styleSort.Style.SampleOrder.CustomerID))
            {
                string[] SortIDs = _styleSortIDList[_styleSort.Style.SampleOrder.CustomerID];
                this.txtSortID.Properties.Items.AddRange(SortIDs);
            }
        }

        static readonly SortedList<string, string[]> _styleSortIDList = GetStyleSortIDList();

        private static SortedList<string, string[]> GetStyleSortIDList()
        {
            SortedList<string, String[]> result = new SortedList<string, string[]>();
            result.Add("LARD", new string[] { "DVP", "Quotation", "RVS", "SS", "PS" });
            result.Add("ETAM", new string[] { "DVP", "Quotation", "RVS", "SS", "PS" });
            result.Add("M&S", new string[] {"CG","Quotation","WT","C/S+GS","DGS","PTS" });
            result.Add("SARA", new string[] { "DVP", "RVS", "Quotation", "SL QA Sample", "KB QA Sample", "Size Set Sample", });

            return result;
        }


        protected override void Return()
        {
            base.Return();

            (this.PrevControl as StyleSortListForm).RefreshData();
        }

        public override void FillToolbar()
        {
            base.FillToolbar();

            FillCompleteButton();
        }

        private void FillCompleteButton()
        {
            this.ToolbarManager.RemoveButton("btnCompleteItem");
            this.ToolbarManager.RemoveButton("btnUnCompleteItem");
            
         //   if (!_styleSort.Style.IsComplete)
            {
                ToolbarManager.AddButton("btnCompleteItem", "Complete", null, "Complete", new DevExpress.XtraBars.ItemClickEventHandler(btnCompleteItemClick));
                ToolbarManager.AddButton("btnUnCompleteItem", "UnComplete", null, "UnComplete", new DevExpress.XtraBars.ItemClickEventHandler(btnUnCompleteItemClick));                    

                if (_styleSort.IsComplete)
                    this.ToolbarManager.RemoveButton("btnCompleteItem");
                else
                    this.ToolbarManager.RemoveButton("btnUnCompleteItem");
            }
        }

        public override void ClearToolbar()
        {
            this.ToolbarManager.RemoveButton("btnCompleteItem");
            this.ToolbarManager.RemoveButton("btnUnCompleteItem");

            base.ClearToolbar();
        }

        void btnCompleteItemClick(object sender, ItemClickEventArgs e)
        {
            if (_styleSort == null)
                return;

            ChangeStyleSort(true);

            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            FillCompleteButton();
        }


        void btnUnCompleteItemClick(object sender, ItemClickEventArgs e)
        {
            if (_styleSort == null)
                return;

            ChangeStyleSort(false);
            
            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            FillCompleteButton();
        }

        private void ChangeStyleSort(bool isComplete)
        {
            _styleSort.Style.IsDirty = true;
            _styleSort.Style.SampleOrder.IsDirty = true;
            _styleSort.IsDirty = true;

            if (isComplete)
                _styleSort.CompleteDate = DateTime.Now.ToString();
            else
                _styleSort.CompleteDate = null;

            _styleSort.IsComplete = isComplete;            

            DataStore.Db.BeginTransaction();
            try
            {
                this.Save();
                _styleSort.Style.Save();
                _styleSort.Style.SampleOrder.Save();

                DataStore.Db.CommitTransaction();
            }
            catch
            {
                DataStore.Db.RollbackTransaction();
                throw;
            }
        }
        
        public override void EditCurrent()
        {
            if (this.IsNew && this.spinEdit1.Value == -1)
            {
                this.spinEdit1.EditValue = this._styleSort.Style.YBCB;
            }

            if (_styleSort.IsComplete)
            {
                MessageBox.Show("樣板種類已經完成，不能修改!");
                return;
            }

            if (this.txtSortDate.DateTime == DateTime.MinValue)
            {
                this.txtSortDate.DateTime = DateTime.Now;
            }

            if (this.txtDueDate.DateTime == DateTime.MinValue)
            {
                this.txtDueDate.DateTime = DateTime.Now;
            }

            if (this.txtActualDate.DateTime == DateTime.MinValue)
            {
                this.txtActualDate.DateTime = DateTime.Now;
            }


            base.EditCurrent();
           
            isCompleteCheckBox.Enabled = false;
            txtCompleteDate.Enabled = false;
        }

        protected override void AcceptCurrent()
        {
            _styleSort.ProduceDays = Convert.ToInt32(Math.Ceiling((this.txtActualDate.DateTime - this.txtDueDate.DateTime).TotalDays));
            base.AcceptCurrent();
        }

        protected override void DeleteCurrent()
        {
            if (_styleSort.IsComplete)
            {
                MessageBox.Show("樣板種類已經完成，不能刪除!");
                return;
            }

            base.DeleteCurrent();
        }       
        
 
        private void labelControl10_Click(object sender, EventArgs e)
        {
        }

        private void txtSortID_Validating(object sender, CancelEventArgs e)
        {
            string s = txtSortID.EditValue.ToString();
            if (txtSortID.Properties.Items.IndexOf(s) == -1)
                e.Cancel = true;
        }

        private void txtSortID_InvalidValue(object sender, DevExpress.XtraEditors.Controls.InvalidValueExceptionEventArgs e)
        {
            e.ErrorText = "制辦種類輸入錯誤！";
        } 
    }
}
