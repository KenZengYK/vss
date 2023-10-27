/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.ParameterListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/2 上午 11:49:59 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI
{
    public partial class ParameterListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Company;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Parameter_Code;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ParameterEhglishDesc;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ParameterThaiDesc;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Parameter_Description;
        #endregion

        public ParameterListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(ParameterDetailForm).FullName;
        }

        public override void DataBind()
        {

            //new
            Fabric_Sys_ParameterList fabric_Sys_ParameterList = new Fabric_Sys_ParameterList();
            
            this.BindingSource.DataSource = fabric_Sys_ParameterList.GetFabric_Sys_ParameterList();
            this.DataContext = fabric_Sys_ParameterList.CurrentDataContext;
            this.EditorTypeName = typeof(ParameterDetailForm).FullName; 

        }


        private void ParameterListForm_Load(object sender, EventArgs e)
        {
            //old
            //PH.FabricInspection.BO.FabricInspectionDataContext context =  PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();

            //this.DataContext = context;
            
            //this.CurBindingSource.DataSource = from c in context.Fabric_Sys_Parameters select c;

            //demo
            //TestProjDataContext context = ContextBuilder.CreateContext<TestProjDataContext>();//new TestProjDataContext();
            //StudentList sl = new StudentList();
            //this.DataContext = sl.CurrentDataContext;
            //this.BindingSource.DataSource = sl.GetAllData();
            //this.EditorTypeName = typeof(StudentSingelDetailForm).FullName;                      



        }

        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Parameter_Code = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Parameter_Description = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ParameterEhglishDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ParameterThaiDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Company,
            this.Columns_Parameter_Code,
            this.Columns_Parameter_Description,
            this.Columns_ParameterEhglishDesc,
            this.Columns_ParameterThaiDesc});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // Columns_Company
            // 
            this.Columns_Company.Caption = "Company";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            this.Columns_Company.Visible = true;
            this.Columns_Company.VisibleIndex = 0;
            this.Columns_Company.Width = 100;
            // 
            // Columns_Parameter_Code
            // 
            this.Columns_Parameter_Code.Caption = "Parameter Code";
            this.Columns_Parameter_Code.FieldName = "Parameter_Key";
            this.Columns_Parameter_Code.Name = "Columns_Parameter_Code";
            this.Columns_Parameter_Code.Visible = true;
            this.Columns_Parameter_Code.VisibleIndex = 1;
            this.Columns_Parameter_Code.Width = 128;
            // 
            // Columns_Parameter_Description
            // 
            this.Columns_Parameter_Description.Caption = "Parameter Chinese Description";
            this.Columns_Parameter_Description.FieldName = "Parameter_Desc";
            this.Columns_Parameter_Description.Name = "Columns_Parameter_Description";
            this.Columns_Parameter_Description.Visible = true;
            this.Columns_Parameter_Description.VisibleIndex = 2;
            this.Columns_Parameter_Description.Width = 192;
            // 
            // Columns_ParameterEhglishDesc
            // 
            this.Columns_ParameterEhglishDesc.Caption = "Parameter English Description";
            this.Columns_ParameterEhglishDesc.FieldName = "ParameterEnglishDesc";
            this.Columns_ParameterEhglishDesc.Name = "Columns_ParameterEhglishDesc";
            this.Columns_ParameterEhglishDesc.Visible = true;
            this.Columns_ParameterEhglishDesc.VisibleIndex = 3;
            this.Columns_ParameterEhglishDesc.Width = 185;
            // 
            // Columns_ParameterThaiDesc
            // 
            this.Columns_ParameterThaiDesc.Caption = "Parameter Thai Description";
            this.Columns_ParameterThaiDesc.FieldName = "ParameterThaiDesc";
            this.Columns_ParameterThaiDesc.Name = "Columns_ParameterThaiDesc";
            this.Columns_ParameterThaiDesc.Visible = true;
            this.Columns_ParameterThaiDesc.VisibleIndex = 4;
            this.Columns_ParameterThaiDesc.Width = 174;
            // 
            // ParameterListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ParameterListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ParameterListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }


 
    }
}
