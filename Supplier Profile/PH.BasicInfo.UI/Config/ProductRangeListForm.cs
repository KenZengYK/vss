using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.BasicInfo.BO;
using PH.Platform.UI;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.AuthMgr.BO;


namespace PH.BasicInfo.UI
{
    public partial class ProductRangeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        private System.ComponentModel.IContainer components;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_MaterialGroup;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ProductRangeInfo;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Description;
        #endregion

        public ProductRangeListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(ProductRangeDetailForm).FullName;
        }

        public override void DataBind()
        { 
            //在此設置DataSource和context。
            ProductRangeList pl = new ProductRangeList();
            this.DataContext = pl.CurrentDataContext;
            this.BindingSource.DataSource = pl.GetAllProductRange();
            base.DataBind();
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();


            PH.Platform.AuthMgr.BO.Auth_FunRight auth = new Auth_FunRight();
            auth.AddFunRight(this.MenuID, "barBtnAddNew", "AddNew");

            IList<PH.Platform.AuthMgr.BO.Auth_FunRight> Rightlist = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID);  //PH.BasicInfo.UI.ProductRangeListForm


            if (Rightlist.Where(p => p.FunRight == "barBtnAddNew").FirstOrDefault() != null)
            {
                this.barBtnDel.Enabled = this.barBtnAddNew.Enabled = true;
            }
            else
            {
                this.barBtnDel.Enabled = this.barBtnAddNew.Enabled = false;
            }





        }      

        private void InitializeComponent()
        {
            this.Columns_MaterialGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ProductRangeInfo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Description = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_MaterialGroup,
            this.Columns_ProductRangeInfo,
            this.Columns_Description});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 25);
            this.objListGridControl.Size = new System.Drawing.Size(803, 274);
            // 
            // Columns_MaterialGroup
            // 
            this.Columns_MaterialGroup.Caption = "Material Group";
            this.Columns_MaterialGroup.FieldName = "MaterialGroup";
            this.Columns_MaterialGroup.Name = "Columns_MaterialGroup";
            this.Columns_MaterialGroup.Visible = true;
            this.Columns_MaterialGroup.VisibleIndex = 0;
            this.Columns_MaterialGroup.Width = 131;
            // 
            // Columns_ProductRangeInfo
            // 
            this.Columns_ProductRangeInfo.Caption = "Product Range Info";
            this.Columns_ProductRangeInfo.FieldName = "ProductRangeInfo";
            this.Columns_ProductRangeInfo.Name = "Columns_ProductRangeInfo";
            this.Columns_ProductRangeInfo.Visible = true;
            this.Columns_ProductRangeInfo.VisibleIndex = 1;
            this.Columns_ProductRangeInfo.Width = 133;
            // 
            // Columns_Description
            // 
            this.Columns_Description.Caption = "Description";
            this.Columns_Description.FieldName = "Description";
            this.Columns_Description.Name = "Columns_Description";
            this.Columns_Description.Visible = true;
            this.Columns_Description.VisibleIndex = 2;
            this.Columns_Description.Width = 118;
            // 
            // ProductRangeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ProductRangeListForm";
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

   

    }
}
