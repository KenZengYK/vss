using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid;
using PH.Platform.BO;
using PH.MR.BO;
using DevExpress.XtraEditors.Repository;

namespace PH.MR.UI.StyleSizeWeight
{
    public partial class StyleSizeWeightListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public StyleSizeWeightListForm()
        {
            InitializeComponent();
            this.objListGridView.OptionsView.ColumnAutoWidth = true;
        }

        public override void DataBind()
        {
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            this.DataContext = dcon;
            this.BindingSource.DataSource = dcon.StyleSizeWeights;
            this.objListGridView.RefreshData();

            foreach (GridColumn item in this.objListGridView.Columns)
            {
                if (item.FieldName != "Weight" && item.FieldName != "Remark")
                {
                    item.OptionsColumn.AllowEdit = false;
                    item.AppearanceCell.BackColor = Color.FromArgb(210, 253, 253);
                }
            }
            base.DataBind();

            this.ShowMultiCheck = true;  //開啟勾選欄位， 由david增加 2019-05-23
        }

        protected override void OnClickAddNew()
        {
            PH.MR.BO.MRDataContext dcon = this.DataContext as PH.MR.BO.MRDataContext;
            DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm();
            try
            {
                waitform.Show();
                dcon.P_GetStyleSizeInfo(PH.Platform.Common.SysParamHelper.Instance.UserID);
                DataBind();
            }
            finally
            {
                waitform.Close();
            }
            MessageBox.Show("操作完畢！", "系統提示");
        }

        private void barBtn_Refresh_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm();
            try
            {
                DataBind();
            }
            finally
            {
                waitform.Close();
            }
        }

        public override void SaveData()
        {
            this.objListGridView.CloseEditor();
            this.BindingSource.EndEdit();
            if (this.DataContext.GetChangeSet().Updates.Count == 1)
            {
                PH.MR.BO.StyleSizeWeight bo = (PH.MR.BO.StyleSizeWeight)this.DataContext.GetChangeSet().Updates[0];
                if (bo != null)
                {
                    bo.AlterUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                    bo.AlterDate = DateTime.Now;
                }
            }
            base.SaveData();
        }

        #region 增加勾選后，計算勾選項所有Weight的平均Weight， 由david增加 2019-05-23
        private decimal GetAVGWeight()
        {
            decimal SumWeight = 0;
            int Count = 0;
            for (int i = 0; i < this.BindingSource.List.Count; i++)
            {
                if ((this.BindingSource[i] as BaseEntity).CheckFlag)
                {
                    Count++;
                    SumWeight += (this.BindingSource[i] as PH.MR.BO.StyleSizeWeight).Weight ?? 0;
                }
            }

            if (Count == 0)
                return 0;

            return Math.Round(SumWeight / Count, 4);
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (item.FieldName == "Weight" && e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                e.TotalValue = this.GetAVGWeight();
            }
        }

        private void objListGridView_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (e.Column.FieldName == "Weight")
            {
                this.objListGridView.UpdateSummary();
            }
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            RepositoryItemCheckEdit ItemCheckEdit = this.objListGridView.Columns["CheckFlag"].ColumnEdit as RepositoryItemCheckEdit;
            ItemCheckEdit.CheckedChanged += new EventHandler(ItemCheckEdit_CheckedChanged);
        }

        void ItemCheckEdit_CheckedChanged(object sender, EventArgs e)
        {
            this.objListGridView.UpdateSummary();
        }

        #endregion




    }
}
