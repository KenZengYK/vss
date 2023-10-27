using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class DimensionDetailListForm : ListForm 
    {
        public DimensionDetailListForm()
        {
            InitializeComponent();
            
        }

        public override void DataBind()
        {
            base.DataBind();
            MaterialTypeLookUpEdit.DataSource = ClsFun.GetMaterilType();
            var ds = (this.DataContext as BasicInfoDataContext).Dimensions.ToList();           
            ds.Insert(0, new Dimension());
            DimensionLookUpEdit1.DataSource = ds;
        }
        private void objListGridControl_Click(object sender, EventArgs e)
        {

        }

        private void DimensionDetailListForm_Load(object sender, EventArgs e)
        {

        }

        private void objListGridView_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        {
            
        }

        //private void objListGridView_KeyDown(object sender, KeyEventArgs e)
        //{
            
        //    if (this.BindingSource.Current!=null)
        //    {
        //        if (string.IsNullOrEmpty((this.BindingSource.Current as MaterialTypeDimension).MaterialType)) return;
        //    }
            
        //    if (((this.ParentForm as SupplierDetailForm).BindingSource.Current as SupplierProfile).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New || ((this.ParentForm as SupplierDetailForm).BindingSource.Current as SupplierProfile).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
        //    {
        //        if (e.Control == true && e.KeyCode == Keys.Enter)
        //        {
        //            MaterialTypeDimension Ld = new MaterialTypeDimension();
        //            Ld.MaterialType = string.Empty;                    
        //            this.BindingSource.Add(Ld);
        //            //this.DataContext.SubmitChanges();
        //            this.objListGridView.FocusedColumn = objListGridView.Columns["MaterialType"];
        //        }
        //    }           
        //}

        //private void objListGridView_ValidatingEditor(object sender, DevExpress.XtraEditors.Controls.BaseContainerValidateEditorEventArgs e)
        //{
        //    if (objListGridView.FocusedColumn.Name != "colMaterialType") return;
        //    if (string.IsNullOrEmpty(e.Value.ToString()))
        //    {
        //        e.Valid = false;
        //    }
        //}

        //private void objListGridView_BeforeLeaveRow(object sender, DevExpress.XtraGrid.Views.Base.RowAllowEventArgs e)
        //{
        //    if (this.BindingSource.Current == null) return;
        //    if (string.IsNullOrEmpty((this.BindingSource.Current as MaterialTypeDimension).MaterialType))
        //    {
        //        MessageBox.Show("Please select MaterialType!!");
        //        e.Allow = false;
        //        this.objListGridView.FocusedColumn = objListGridView.Columns["MaterialType"];
        //    }
        //}
    }
}
