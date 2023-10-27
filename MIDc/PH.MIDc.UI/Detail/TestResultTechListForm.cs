/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.MIDc.UI.TechInforTestListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2009-1-13 15:53:34 $   
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
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class TechInforTestListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_IndexNo;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_SuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Color;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ColorCategory;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_IDNr;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_StandardWept;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_StandardWarp;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ElongationWept;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ElongationWarp;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_RecoveryWept;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_RecoveryWarp;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_FapplyWept;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_FapplyWarp;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_AutoResult;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_FinalResult;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Remark;
        #endregion

        public TechInforTestListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

        }

        private void InitializeComponent()
        {
            this.Columns_IndexNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Color = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ColorCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_IDNr = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_StandardWept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_StandardWarp = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ElongationWept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ElongationWarp = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_RecoveryWept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_RecoveryWarp = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_FapplyWept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_FapplyWarp = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_AutoResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_FinalResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Remark = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_IndexNo,
            this.Columns_SuppRef,
            this.Columns_Color,
            this.Columns_ColorCategory,
            this.Columns_IDNr,
            this.Columns_ProjectNo,
            this.Columns_StandardWept,
            this.Columns_StandardWarp,
            this.Columns_ElongationWept,
            this.Columns_ElongationWarp,
            this.Columns_RecoveryWept,
            this.Columns_RecoveryWarp,
            this.Columns_FapplyWept,
            this.Columns_FapplyWarp,
            this.Columns_AutoResult,
            this.Columns_FinalResult,
            this.Columns_Remark});
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.AllowDrop = true;
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1256, 273);
            // 
            // barBtnOpen
            // 
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // Columns_IndexNo
            // 
            this.Columns_IndexNo.Caption = "IndexNo";
            this.Columns_IndexNo.FieldName = "IndexNo";
            this.Columns_IndexNo.Name = "Columns_IndexNo";
            // 
            // Columns_SuppRef
            // 
            this.Columns_SuppRef.Caption = "SuppRef";
            this.Columns_SuppRef.FieldName = "SuppRef";
            this.Columns_SuppRef.Name = "Columns_SuppRef";
            // 
            // Columns_Color
            // 
            this.Columns_Color.Caption = "Color";
            this.Columns_Color.FieldName = "Color";
            this.Columns_Color.Name = "Columns_Color";
            // 
            // Columns_ColorCategory
            // 
            this.Columns_ColorCategory.Caption = "ColorCategory";
            this.Columns_ColorCategory.FieldName = "ColorCategory";
            this.Columns_ColorCategory.Name = "Columns_ColorCategory";
            // 
            // Columns_IDNr
            // 
            this.Columns_IDNr.Caption = "IDNr";
            this.Columns_IDNr.FieldName = "IDNr";
            this.Columns_IDNr.Name = "Columns_IDNr";
            this.Columns_IDNr.Visible = true;
            this.Columns_IDNr.VisibleIndex = 0;
            // 
            // Columns_ProjectNo
            // 
            this.Columns_ProjectNo.Caption = "ProjectNo";
            this.Columns_ProjectNo.FieldName = "ProjectNo";
            this.Columns_ProjectNo.Name = "Columns_ProjectNo";
            this.Columns_ProjectNo.Visible = true;
            this.Columns_ProjectNo.VisibleIndex = 1;
            // 
            // Columns_StandardWept
            // 
            this.Columns_StandardWept.Caption = "Sta.Weft";
            this.Columns_StandardWept.FieldName = "StandardWept";
            this.Columns_StandardWept.Name = "Columns_StandardWept";
            this.Columns_StandardWept.Visible = true;
            this.Columns_StandardWept.VisibleIndex = 2;
            this.Columns_StandardWept.Width = 76;
            // 
            // Columns_StandardWarp
            // 
            this.Columns_StandardWarp.Caption = "Sta.Warp";
            this.Columns_StandardWarp.FieldName = "StandardWarp";
            this.Columns_StandardWarp.Name = "Columns_StandardWarp";
            this.Columns_StandardWarp.Visible = true;
            this.Columns_StandardWarp.VisibleIndex = 3;
            // 
            // Columns_ElongationWept
            // 
            this.Columns_ElongationWept.Caption = "Elo.Weft";
            this.Columns_ElongationWept.FieldName = "ElongationWept";
            this.Columns_ElongationWept.Name = "Columns_ElongationWept";
            this.Columns_ElongationWept.Visible = true;
            this.Columns_ElongationWept.VisibleIndex = 4;
            this.Columns_ElongationWept.Width = 73;
            // 
            // Columns_ElongationWarp
            // 
            this.Columns_ElongationWarp.Caption = "Elo.Warp";
            this.Columns_ElongationWarp.FieldName = "ElongationWarp";
            this.Columns_ElongationWarp.Name = "Columns_ElongationWarp";
            this.Columns_ElongationWarp.Visible = true;
            this.Columns_ElongationWarp.VisibleIndex = 5;
            // 
            // Columns_RecoveryWept
            // 
            this.Columns_RecoveryWept.Caption = "Rec.Weft";
            this.Columns_RecoveryWept.FieldName = "RecoveryWept";
            this.Columns_RecoveryWept.Name = "Columns_RecoveryWept";
            this.Columns_RecoveryWept.Visible = true;
            this.Columns_RecoveryWept.VisibleIndex = 6;
            // 
            // Columns_RecoveryWarp
            // 
            this.Columns_RecoveryWarp.Caption = "Rec.Warp";
            this.Columns_RecoveryWarp.FieldName = "RecoveryWarp";
            this.Columns_RecoveryWarp.Name = "Columns_RecoveryWarp";
            this.Columns_RecoveryWarp.Visible = true;
            this.Columns_RecoveryWarp.VisibleIndex = 7;
            this.Columns_RecoveryWarp.Width = 76;
            // 
            // Columns_FapplyWept
            // 
            this.Columns_FapplyWept.Caption = "Fap.Weft";
            this.Columns_FapplyWept.FieldName = "FapplyWept";
            this.Columns_FapplyWept.Name = "Columns_FapplyWept";
            this.Columns_FapplyWept.Visible = true;
            this.Columns_FapplyWept.VisibleIndex = 8;
            // 
            // Columns_FapplyWarp
            // 
            this.Columns_FapplyWarp.Caption = "Fap.Warp";
            this.Columns_FapplyWarp.FieldName = "FapplyWarp";
            this.Columns_FapplyWarp.Name = "Columns_FapplyWarp";
            this.Columns_FapplyWarp.Visible = true;
            this.Columns_FapplyWarp.VisibleIndex = 9;
            // 
            // Columns_AutoResult
            // 
            this.Columns_AutoResult.Caption = "Result";
            this.Columns_AutoResult.FieldName = "AutoResult";
            this.Columns_AutoResult.Name = "Columns_AutoResult";
            this.Columns_AutoResult.Visible = true;
            this.Columns_AutoResult.VisibleIndex = 10;
            // 
            // Columns_FinalResult
            // 
            this.Columns_FinalResult.Caption = "FinalResult";
            this.Columns_FinalResult.FieldName = "FinalResult";
            this.Columns_FinalResult.Name = "Columns_FinalResult";
            this.Columns_FinalResult.Visible = true;
            this.Columns_FinalResult.VisibleIndex = 11;
            this.Columns_FinalResult.Width = 79;
            // 
            // Columns_Remark
            // 
            this.Columns_Remark.Caption = "Remark";
            this.Columns_Remark.FieldName = "Remark";
            this.Columns_Remark.Name = "Columns_Remark";
            this.Columns_Remark.Visible = true;
            this.Columns_Remark.VisibleIndex = 12;
            // 
            // TechInforTestListForm
            // 
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.Name = "TechInforTestListForm";
            this.Size = new System.Drawing.Size(1256, 299);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

    }
}
