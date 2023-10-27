/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: /PH/PH.MIDc.root/PH.MIDc/PH.MIDc.UI/Config/TechnicalInformationDefaultListForm.cs $   
* $Author: Water Zhang $  
* $Date: 08-08-27 10:37 $   
* $Revision: 1 $   
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
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class TechnicalInformationDefaultListForm :  PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ID;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Group;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_TestType;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_TestMethod;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Grade;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_SpecifyMethod;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Remark;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_TestMethodList;
        #endregion

        public TechnicalInformationDefaultListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

        }

       public override void  DataBind()
       {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = from c in context.TechnicalInformationDefaults select c;
            this.EditorTypeName = typeof(TechnicalInformationDefaultDetailForm).FullName;

            base.DataBind();
        }

        private void InitializeComponent()
        {
            this.Columns_ID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Group = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_TestType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_TestMethod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Grade = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SpecifyMethod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Remark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_TestMethodList = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.Columns_ID,
            this.Columns_Group,
            this.Columns_TestType,
            this.Columns_TestMethod,
            this.Columns_Grade,
            this.Columns_SpecifyMethod,
            this.Columns_Remark,
            this.Columns_TestMethodList});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // Columns_ID
            // 
            this.Columns_ID.Caption = "ID";
            this.Columns_ID.FieldName = "ID";
            this.Columns_ID.Name = "Columns_ID";
            this.Columns_ID.Visible = true;
            this.Columns_ID.VisibleIndex = 0;
            // 
            // Columns_Group
            // 
            this.Columns_Group.Caption = "Group";
            this.Columns_Group.FieldName = "TypeGroup";
            this.Columns_Group.Name = "Columns_Group";
            this.Columns_Group.Visible = true;
            this.Columns_Group.VisibleIndex = 1;
            // 
            // Columns_TestType
            // 
            this.Columns_TestType.Caption = "TestType";
            this.Columns_TestType.FieldName = "TestType";
            this.Columns_TestType.Name = "Columns_TestType";
            this.Columns_TestType.Visible = true;
            this.Columns_TestType.VisibleIndex = 2;
            // 
            // Columns_TestMethod
            // 
            this.Columns_TestMethod.Caption = "TestMethod";
            this.Columns_TestMethod.FieldName = "TestMethod";
            this.Columns_TestMethod.Name = "Columns_TestMethod";
            this.Columns_TestMethod.Visible = true;
            this.Columns_TestMethod.VisibleIndex = 3;
            // 
            // Columns_Grade
            // 
            this.Columns_Grade.Caption = "Grade";
            this.Columns_Grade.FieldName = "Grade";
            this.Columns_Grade.Name = "Columns_Grade";
            this.Columns_Grade.Visible = true;
            this.Columns_Grade.VisibleIndex = 4;
            // 
            // Columns_SpecifyMethod
            // 
            this.Columns_SpecifyMethod.Caption = "SpecifyMethod";
            this.Columns_SpecifyMethod.FieldName = "SpecifyMethod";
            this.Columns_SpecifyMethod.Name = "Columns_SpecifyMethod";
            this.Columns_SpecifyMethod.Visible = true;
            this.Columns_SpecifyMethod.VisibleIndex = 5;
            // 
            // Columns_Remark
            // 
            this.Columns_Remark.Caption = "Remark";
            this.Columns_Remark.FieldName = "Remark";
            this.Columns_Remark.Name = "Columns_Remark";
            this.Columns_Remark.Visible = true;
            this.Columns_Remark.VisibleIndex = 6;
            // 
            // Columns_TestMethodList
            // 
            this.Columns_TestMethodList.Caption = "TestMethodList";
            this.Columns_TestMethodList.FieldName = "TestMethodList";
            this.Columns_TestMethodList.Name = "Columns_TestMethodList";
            this.Columns_TestMethodList.Visible = true;
            this.Columns_TestMethodList.VisibleIndex = 7;
            // 
            // TechnicalInformationDefaultListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TechnicalInformationDefaultListForm";
            //this.Load += new System.EventHandler(this.TechnicalInformationDefaultListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

    }
}
