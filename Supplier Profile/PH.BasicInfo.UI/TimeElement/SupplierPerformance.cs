using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI0;
using PH.BasicInfo.BO;
using PH.Platform.BO;
using DevExpress.XtraEditors;
using PH.Platform.AuthMgr.BO;
using System.Collections;
using System.Data.Linq;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class SupplierPerformance : BlankForm
    {
        private SupplierProfile _currSupp
        {
            get
            {
                return this.supplierProfileBindingSource.Current as SupplierProfile;
            }
        }

        private BasicInfoDataContext _context;
        public BasicInfoDataContext Context
        {
            get
            {
                if (_context == null)
                    _context = ContextBuilder.CreateContext<BasicInfoDataContext>();
                return _context;
            }
        }
        public SupplierPerformance()
        {
            InitializeComponent();
            BindSupplier();
        }

        string _dept;
        public SupplierPerformance(string dept)
        {
            InitializeComponent();
            _dept = dept;
            BindSupplier();
        }

        private void BindSupplier()
        {
            //var supps = from a in Context.SupplierProfiles
            //            where !(a.DeleteFlag ?? false)
            //            orderby a.ERPSupplier
            //            select a;
            this.supplierProfileBindingSource.DataSource = typeof(SupplierProfile);

            string sql =@"SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED 
SELECT a.* from [PH.BasicInfo].[dbo].[SupplierProfile] a where a.DeleteFlag=0 or a.DeleteFlag is null
and exists (select *  FROM [PH.POPC].[dbo].[POHeader] b
where b.versionflag=1 and b.[OrderDate]>DateAdd(month,-6,getdate())  and isnull(b.[Flag],'')='' and a.ERPSupplier=b.supplier)
order by a.erpsupplier";

            this.supplierProfileBindingSource.DataSource = Context.ExecuteQuery<SupplierProfile>(sql);
            this.gcSupplier.DataSource = this.supplierProfileBindingSource;

            BindingPositionChangedEvent();
        }


        #region PositionChanged

        private void BindingPositionChangedEvent()
        {
            CurrencyManager currencyManager = (CurrencyManager)this.BindingContext[this.supplierProfileBindingSource];
            currencyManager.PositionChanged += new EventHandler(CurrencyManager_PositionChanged);
            MainPositionChanged(currencyManager);
        }
        private void CurrencyManager_PositionChanged(object sender, EventArgs e)
        {
            MainPositionChanged((BindingManagerBase)sender);
        }
        protected virtual void MainPositionChanged(BindingManagerBase sender)
        {
            int iPosition = ((BindingManagerBase)sender).Position;

            this.performanceBindingSource.DataSource = null;
            var ps = _currSupp.Performances;
            if (ps.Count == 0)
                AddDefaultItem();
            var ps1 = from a in _currSupp.Performances
                      where string.IsNullOrEmpty(_dept) || a.Dept == _dept
                      orderby a.Category
                      select a;
            this.performanceBindingSource.DataSource = ps1;
        }

        private void MoveToMainPosition(int iPosition)
        {
            CurrencyManager currencyManager = (CurrencyManager)this.BindingContext[this.supplierProfileBindingSource];
            currencyManager.Position = iPosition;
        }

        #endregion

        private void AddDefaultItem()
        {
            var dis = Context.PerformanceItems.Select(p => new { p.Category, p.Dept }).Distinct();

            foreach (var di in dis)
            {
                //Performance p = this.performanceBindingSource.AddNew() as Performance;
                Performance p = new Performance();
                p.SupplierProfile = this._currSupp;
                p.CurrentDataContext = this.Context;
                p.CurrentBindingSource = this.performanceBindingSource;

                p.ERPSupplier = this._currSupp.ERPSupplier;
                p.Category = di.Category;
                p.Dept = di.Dept;

                _currSupp.Performances.Add(p);

                this.Context.SubmitChanges();

                var pis = from a in Context.PerformanceItems
                          where a.Category == p.Category
                          orderby a.Seq
                          select a;

                foreach (var pi in pis)
                {
                    PerformanceRanking pr = new PerformanceRanking();
                    pr.Performance = p;
                    pr.CurrentDataContext = this.Context;
                    //pr.CurrentBindingSource = this.performanceBindingSource;

                    pr.ERPSupplier = p.ERPSupplier;
                    pr.Category = p.Category;
                    pr.ItemCode = pi.ItemCode;
                    pr.Seq = pi.Seq;

                    p.PerformanceRankings.Add(pr);

                }
                this.Context.SubmitChanges(ConflictMode.ContinueOnConflict);
            }
        }

        private void Save_Click(object sender, EventArgs e)
        {
            this.Context.SubmitChanges(ConflictMode.ContinueOnConflict);
            MessageBox.Show("Save successful!");
        }

        private void gvPerformanceRanking_ValidatingEditor(object sender, DevExpress.XtraEditors.Controls.BaseContainerValidateEditorEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = (this.gcPerformance.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView);
            if (view == null) return;

            PerformanceRanking pr = view.GetRow(view.FocusedRowHandle) as PerformanceRanking;
            if (pr == null) return;

            object[] reply = null;
            if (view.FocusedColumn.FieldName == "Weight") reply = this.IsTrueCondition(e.Value, pr);
            //if (gvPerformanceRanking.FocusedColumn.FieldName == "Quantity") reply = validationControl2.IsTrueCondition(e.Value);
            //if (gvPerformanceRanking.FocusedColumn.FieldName == "Discount") reply = validationControl3.IsTrueCondition(e.Value);


            if (reply != null && !(bool)reply[0])
            {
                e.ErrorText = reply[1].ToString();
                e.Valid = false;
            }
        }

        public object[] IsTrueCondition(object val, PerformanceRanking pr)
        {
            double dValue = Convert.ToDouble(val);
            double value1 = 0;// Convert.ToDecimal(spinEdit1.EditValue);
            double value2 = pr.MaxWeight;// Convert.ToDecimal(spinEdit2.EditValue);
            int condition1 = 0;// imageComboBoxEdit1.SelectedIndex;
            int condition2 = 2;// imageComboBoxEdit2.SelectedIndex;
            bool greater = false;
            string reply = "";
            if (condition1 == 2)
            {
                reply = "The value must be less than " + value1.ToString();
                return new object[] { (dValue < value1), reply };
            }
            if (condition1 == 3)
            {
                reply = "The value must be less than or equal to " + value1.ToString();
                return new object[] { (dValue <= value1), reply };
            }
            if (condition1 == 4)
            {
                reply = "The value must not equal " + value1.ToString();
                return new object[] { (dValue != value1), reply };
            }
            if (condition1 == 0)
            {
                reply = "The value must be greater than " + value1.ToString();
                greater = dValue > value1;
            }
            if (condition1 == 1)
            {
                reply = "The value must be greater than or equal to " + value1.ToString();
                greater = dValue >= value1;
            }
            if (condition2 == 0) return new object[] { greater, reply };
            if (greater)
            {
                if (condition2 == 1)
                {
                    reply = "The value must be less than " + value2.ToString();
                    return new object[] { (greater && dValue < value2), reply };
                }
                if (condition2 == 2)
                {
                    reply = "The value must be less than or equal to " + value2.ToString();
                    return new object[] { (greater && dValue <= value2), reply };
                }
            }
            return new object[] { false, reply };
        }

    }

}
