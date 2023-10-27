/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.DefectListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/2 上午 11:48:52 $   
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
using PH.Platform.BO;
using PH.Platform.UI.CS.DataQuery;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI
{
    public partial class DefectListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Company;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Style_Code;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Name;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Code;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Name_Eng;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Name_Kb;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Remark;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Remark_Eng;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Remark_Kb;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit2;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit3;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit4;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit5;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit6;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialGroupShow;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Seq_NO;
        #endregion

        public DefectListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(DefectDetailForm).FullName;
        }


        public override void DataBind()
        {

            //new
            //Fabric_Defect_FileList fabric_Defect_FilesList = new Fabric_Defect_FileList();

            //this.BindingSource.DataSource = fabric_Defect_FilesList.GetFabric_Defect_FilesList();
            //this.DataContext = fabric_Defect_FilesList.CurrentDataContext;

            FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();

            var objs = from c in context.Fabric_Defect_Files select c;

            this.BindingSource.DataSource = objs;
            this.DataContext = context;

            this.EditorTypeName = typeof(DefectDetailForm).FullName;

        }

        private void DefectListForm_Load(object sender, EventArgs e)
        {
            //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
 
            //            var objs = from c in context.Fabric_Defect_Files
            //            from p in context.PHQCDefects
            //            where c.Defect_Code == p.PHDefectCode
            //            select new { c.Company, c.Defect_Code, c.Style_Code, p.DefectEnglishName, p.DefectChineseName, p.DefectThaiName, c.Seq_No, p.DefectEnglishRemark, p.DefectChineseRemark, p.DefectThaiRemark };

            //var objs = (from c in context.Fabric_Defect_Files
            //            from p in context.PHQCDefects
            //            where c.Defect_Code == p.PHDefectCode
            //            select new { c.Company, c.Defect_Code, c.Style_Code, p.DefectEnglishName, p.DefectChineseName, p.DefectThaiName, c.Seq_No, p.DefectEnglishRemark, p.DefectChineseRemark, p.DefectThaiRemark }).ToList();

            //this.objListGridControl.DataSource  = objs;

        }

        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Style_Code = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Name = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Code = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Seq_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Name_Eng = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Name_Kb = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Remark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Remark_Eng = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Remark_Kb = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.repositoryItemTextEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.repositoryItemTextEdit3 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.repositoryItemTextEdit4 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.repositoryItemTextEdit5 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.repositoryItemTextEdit6 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.colMaterialGroupShow = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit6)).BeginInit();
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
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1,
            this.repositoryItemTextEdit2,
            this.repositoryItemTextEdit3,
            this.repositoryItemTextEdit4,
            this.repositoryItemTextEdit5,
            this.repositoryItemTextEdit6});
            this.objListGridControl.Size = new System.Drawing.Size(1186, 445);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Company,
            this.Columns_Style_Code,
            this.Columns_Defect_Code,
            this.Columns_Defect_Name_Eng,
            this.Columns_Defect_Name,
            this.Columns_Defect_Name_Kb,
            this.Columns_Seq_NO,
            this.Columns_Defect_Remark_Eng,
            this.Columns_Defect_Remark,
            this.Columns_Defect_Remark_Kb,
            this.colMaterialGroupShow});
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
            // 
            // Columns_Style_Code
            // 
            this.Columns_Style_Code.Caption = "Style Code";
            this.Columns_Style_Code.FieldName = "Style_Code";
            this.Columns_Style_Code.Name = "Columns_Style_Code";
            this.Columns_Style_Code.Visible = true;
            this.Columns_Style_Code.VisibleIndex = 1;
            // 
            // Columns_Defect_Name
            // 
            this.Columns_Defect_Name.Caption = "Defect Name";
            this.Columns_Defect_Name.FieldName = "DefectChineseName";
            this.Columns_Defect_Name.Name = "Columns_Defect_Name";
            this.Columns_Defect_Name.Visible = true;
            this.Columns_Defect_Name.VisibleIndex = 4;
            this.Columns_Defect_Name.Width = 124;
            // 
            // Columns_Defect_Code
            // 
            this.Columns_Defect_Code.Caption = "Defect Code";
            this.Columns_Defect_Code.FieldName = "Defect_Code";
            this.Columns_Defect_Code.Name = "Columns_Defect_Code";
            this.Columns_Defect_Code.Visible = true;
            this.Columns_Defect_Code.VisibleIndex = 2;
            this.Columns_Defect_Code.Width = 99;
            // 
            // Columns_Seq_NO
            // 
            this.Columns_Seq_NO.Caption = "Seq NO";
            this.Columns_Seq_NO.FieldName = "Seq_No";
            this.Columns_Seq_NO.Name = "Columns_Seq_NO";
            this.Columns_Seq_NO.Visible = true;
            this.Columns_Seq_NO.VisibleIndex = 6;
            // 
            // Columns_Defect_Name_Eng
            // 
            this.Columns_Defect_Name_Eng.Caption = "Defect Name Eng";
            this.Columns_Defect_Name_Eng.FieldName = "DefectEnglishName";
            this.Columns_Defect_Name_Eng.Name = "Columns_Defect_Name_Eng";
            this.Columns_Defect_Name_Eng.Visible = true;
            this.Columns_Defect_Name_Eng.VisibleIndex = 3;
            this.Columns_Defect_Name_Eng.Width = 124;
            // 
            // Columns_Defect_Name_Kb
            // 
            this.Columns_Defect_Name_Kb.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F);
            this.Columns_Defect_Name_Kb.AppearanceCell.Options.UseFont = true;
            this.Columns_Defect_Name_Kb.Caption = "Defect Name Kb";
            this.Columns_Defect_Name_Kb.FieldName = "DefectThaiName";
            this.Columns_Defect_Name_Kb.Name = "Columns_Defect_Name_Kb";
            this.Columns_Defect_Name_Kb.Visible = true;
            this.Columns_Defect_Name_Kb.VisibleIndex = 5;
            this.Columns_Defect_Name_Kb.Width = 124;
            // 
            // Columns_Defect_Remark
            // 
            this.Columns_Defect_Remark.Caption = "Defect Remark";
            this.Columns_Defect_Remark.FieldName = "DefectChineseRemark";
            this.Columns_Defect_Remark.Name = "Columns_Defect_Remark";
            this.Columns_Defect_Remark.Visible = true;
            this.Columns_Defect_Remark.VisibleIndex = 8;
            // 
            // Columns_Defect_Remark_Eng
            // 
            this.Columns_Defect_Remark_Eng.Caption = "Defect Remark Eng";
            this.Columns_Defect_Remark_Eng.FieldName = "DefectEnglishRemark";
            this.Columns_Defect_Remark_Eng.Name = "Columns_Defect_Remark_Eng";
            this.Columns_Defect_Remark_Eng.Visible = true;
            this.Columns_Defect_Remark_Eng.VisibleIndex = 7;
            // 
            // Columns_Defect_Remark_Kb
            // 
            this.Columns_Defect_Remark_Kb.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F);
            this.Columns_Defect_Remark_Kb.AppearanceCell.Options.UseFont = true;
            this.Columns_Defect_Remark_Kb.Caption = "Defect Remark Kb";
            this.Columns_Defect_Remark_Kb.FieldName = "DefectThaiRemark";
            this.Columns_Defect_Remark_Kb.Name = "Columns_Defect_Remark_Kb";
            this.Columns_Defect_Remark_Kb.Visible = true;
            this.Columns_Defect_Remark_Kb.VisibleIndex = 9;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // repositoryItemTextEdit2
            // 
            this.repositoryItemTextEdit2.AutoHeight = false;
            this.repositoryItemTextEdit2.Name = "repositoryItemTextEdit2";
            // 
            // repositoryItemTextEdit3
            // 
            this.repositoryItemTextEdit3.AutoHeight = false;
            this.repositoryItemTextEdit3.Name = "repositoryItemTextEdit3";
            // 
            // repositoryItemTextEdit4
            // 
            this.repositoryItemTextEdit4.AutoHeight = false;
            this.repositoryItemTextEdit4.Name = "repositoryItemTextEdit4";
            // 
            // repositoryItemTextEdit5
            // 
            this.repositoryItemTextEdit5.AutoHeight = false;
            this.repositoryItemTextEdit5.Name = "repositoryItemTextEdit5";
            // 
            // repositoryItemTextEdit6
            // 
            this.repositoryItemTextEdit6.AutoHeight = false;
            this.repositoryItemTextEdit6.Name = "repositoryItemTextEdit6";
            // 
            // colMaterialGroupShow
            // 
            this.colMaterialGroupShow.Caption = "Materia Group";
            this.colMaterialGroupShow.FieldName = "MaterialGroupShow";
            this.colMaterialGroupShow.Name = "colMaterialGroupShow";
            this.colMaterialGroupShow.Visible = true;
            this.colMaterialGroupShow.VisibleIndex = 10;
            this.colMaterialGroupShow.Width = 127;
            // 
            // DefectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DefectListForm";
            this.Size = new System.Drawing.Size(1186, 472);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.DefectListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit6)).EndInit();
            this.ResumeLayout(false);

        }

    }
}
