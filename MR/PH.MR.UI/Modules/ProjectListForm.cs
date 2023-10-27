using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid.Views.Base;
using System.Linq;
using PH.MR.BO;


namespace PH.MR.UI
{

    public partial class ProjectListForm :PH.Platform.UI.CS.UI2.ListForm
    {
        #region//properties
        private DevExpress.XtraGrid.Columns.GridColumn Companys;
        private DevExpress.XtraGrid.Columns.GridColumn Project;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        List<ProjectList> _projectLists;
        #endregion

        public ProjectListForm()
        { 
            InitializeComponent();        
 
        }        

        //public override void DataBind()
        //{
        //    this.EditorTypeName = typeof(ProjectDetailForm).FullName;

            //MessageBox.Show("start");
            //string strSQL = "select distinct COMPANY,PROJECT from MR_VERSION order by Project,Company";
            //DataTable TA = PH.MR.BO.DB.GetDataByPage_SQL2000(strSQL);  

            //_projectLists = TableORM.GetObjects<ProjectList>(TA, true);

            //PH.MR.BO.MRDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();


            //this.DataContext = context;       

            //this.BindingSource.DataSource = from c in this._projectLists
            //                                select c;
        

        //}  
        
        private void InitializeComponent()
        {
            this.Companys = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Project = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(770, 458);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Companys,
            this.Project,
            this.gridColumn1});
            this.objListGridView.GroupCount = 1;
            this.objListGridView.GroupFormat = "[#image]{1} {2}";
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowGroupPanel = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gridColumn1, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // Companys
            // 
            this.Companys.Caption = "Company";
            this.Companys.FieldName = "Company";
            this.Companys.Name = "Companys";
            this.Companys.Visible = true;
            this.Companys.VisibleIndex = 0;
            this.Companys.Width = 84;
            // 
            // Project
            // 
            this.Project.Caption = "Project";
            this.Project.FieldName = "Project";
            this.Project.Name = "Project";
            this.Project.Visible = true;
            this.Project.VisibleIndex = 1;
            this.Project.Width = 142;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Customer";
            this.gridColumn1.FieldName = "Customer";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Width = 102;
            // 
            // ProjectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "ProjectListForm";
            this.Size = new System.Drawing.Size(770, 484); 
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            this.ResumeLayout(false);

        }
 

        

    }
}

