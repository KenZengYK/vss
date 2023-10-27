/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.SpreadDefectListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/2 下午 04:34:11 $   
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
namespace PH.FabricInspection.UI.SupplierQE.Allover
{
    public partial class sSpreadDefectListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_System_NO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Type;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Name;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Place_From;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_NameName;
        private DevExpress.XtraGrid.Columns.GridColumn colAddtionalPercent;
        private DevExpress.XtraGrid.Columns.GridColumn colFrom_Place_Length;
        private DevExpress.XtraGrid.Columns.GridColumn colTo_Place_Length;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Spread_Defect_Degree;
        private DevExpress.XtraGrid.Columns.GridColumn colIsCutOut;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Place_To;
        #endregion

        public sSpreadDefectListForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.Columns_Spread_Defect_Degree = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_System_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Type = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Name = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Place_From = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Place_To = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_NameName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAddtionalPercent = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFrom_Place_Length = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTo_Place_Length = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsCutOut = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
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
            this.repositoryItemCheckEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1167, 336);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_System_NO,
            this.Columns_Defect_Type,
            this.Columns_Defect_Name,
            this.Columns_Defect_NameName,
            this.Columns_Spread_Defect_Degree,
            this.colIsCutOut,
            this.Columns_Place_From,
            this.Columns_Place_To,
            this.colAddtionalPercent,
            this.colFrom_Place_Length,
            this.colTo_Place_Length});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // Columns_Spread_Defect_Degree
            // 
            this.Columns_Spread_Defect_Degree.Caption = "Point";
            this.Columns_Spread_Defect_Degree.FieldName = "Spread_Defect_Degree";
            this.Columns_Spread_Defect_Degree.Name = "Columns_Spread_Defect_Degree";
            this.Columns_Spread_Defect_Degree.Visible = true;
            this.Columns_Spread_Defect_Degree.VisibleIndex = 2;
            this.Columns_Spread_Defect_Degree.Width = 98;
            // 
            // Columns_System_NO
            // 
            this.Columns_System_NO.Caption = "System No";
            this.Columns_System_NO.FieldName = "System_Install_No";
            this.Columns_System_NO.Name = "Columns_System_NO";
            // 
            // Columns_Defect_Type
            // 
            this.Columns_Defect_Type.Caption = "Defect Type";
            this.Columns_Defect_Type.FieldName = "Defect_Type";
            this.Columns_Defect_Type.Name = "Columns_Defect_Type";
            this.Columns_Defect_Type.Width = 119;
            // 
            // Columns_Defect_Name
            // 
            this.Columns_Defect_Name.Caption = "Defect Code";
            this.Columns_Defect_Name.FieldName = "Defect_Name";
            this.Columns_Defect_Name.Name = "Columns_Defect_Name";
            this.Columns_Defect_Name.Visible = true;
            this.Columns_Defect_Name.VisibleIndex = 0;
            this.Columns_Defect_Name.Width = 101;
            // 
            // Columns_Place_From
            // 
            this.Columns_Place_From.Caption = "Width From Location (mm)";
            this.Columns_Place_From.FieldName = "From_Place";
            this.Columns_Place_From.Name = "Columns_Place_From";
            this.Columns_Place_From.Visible = true;
            this.Columns_Place_From.VisibleIndex = 4;
            this.Columns_Place_From.Width = 170;
            // 
            // Columns_Place_To
            // 
            this.Columns_Place_To.Caption = "Width To Location (mm)";
            this.Columns_Place_To.FieldName = "To_Place";
            this.Columns_Place_To.Name = "Columns_Place_To";
            this.Columns_Place_To.Visible = true;
            this.Columns_Place_To.VisibleIndex = 5;
            this.Columns_Place_To.Width = 158;
            // 
            // Columns_Defect_NameName
            // 
            this.Columns_Defect_NameName.Caption = "Defect Name";
            this.Columns_Defect_NameName.FieldName = "Defect_NameName";
            this.Columns_Defect_NameName.Name = "Columns_Defect_NameName";
            this.Columns_Defect_NameName.Visible = true;
            this.Columns_Defect_NameName.VisibleIndex = 1;
            this.Columns_Defect_NameName.Width = 94;
            // 
            // colAddtionalPercent
            // 
            this.colAddtionalPercent.Caption = "Add\'l %";
            this.colAddtionalPercent.FieldName = "AddtionalPercent";
            this.colAddtionalPercent.Name = "colAddtionalPercent";
            this.colAddtionalPercent.Visible = true;
            this.colAddtionalPercent.VisibleIndex = 8;
            // 
            // colFrom_Place_Length
            // 
            this.colFrom_Place_Length.Caption = "Length From Location (m)";
            this.colFrom_Place_Length.FieldName = "From_Place_Length";
            this.colFrom_Place_Length.Name = "colFrom_Place_Length";
            this.colFrom_Place_Length.Visible = true;
            this.colFrom_Place_Length.VisibleIndex = 6;
            this.colFrom_Place_Length.Width = 166;
            // 
            // colTo_Place_Length
            // 
            this.colTo_Place_Length.Caption = "Length To Location (m)";
            this.colTo_Place_Length.FieldName = "To_Place_Length";
            this.colTo_Place_Length.Name = "colTo_Place_Length";
            this.colTo_Place_Length.Visible = true;
            this.colTo_Place_Length.VisibleIndex = 7;
            this.colTo_Place_Length.Width = 154;
            // 
            // colIsCutOut
            // 
            this.colIsCutOut.Caption = "Is Cut Out";
            this.colIsCutOut.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colIsCutOut.FieldName = "IsCutOut";
            this.colIsCutOut.Name = "colIsCutOut";
            this.colIsCutOut.Visible = true;
            this.colIsCutOut.VisibleIndex = 3;
            this.colIsCutOut.Width = 79;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // SpreadDefectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "SpreadDefectListForm";
            this.Size = new System.Drawing.Size(1167, 363);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

    }
}
