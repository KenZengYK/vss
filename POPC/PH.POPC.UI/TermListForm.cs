/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.TermListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/19 下午 02:47:21 $   
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
namespace PH.POPC.UI
{
    public partial class TermListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_TermCode;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_LanguageCode;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Remark;
        #endregion

        public TermListForm()
        {
            InitializeComponent();
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = from a in context.Terms select a;
            this.EditorTypeName = typeof(TermDetailForm).FullName;
        }

        private void InitializeComponent()
        {
            this.Columns_TermCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_LanguageCode = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.Columns_TermCode,
            this.Columns_LanguageCode,
            this.Columns_Remark});
            this.objListGridView.GroupCount = 1;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsCustomization.AllowSort = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.Columns_TermCode, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.Size = new System.Drawing.Size(690, 298);
            // 
            // Columns_TermCode
            // 
            this.Columns_TermCode.Caption = "TermCode";
            this.Columns_TermCode.FieldName = "TermCode";
            this.Columns_TermCode.Name = "Columns_TermCode";
            this.Columns_TermCode.Width = 129;
            // 
            // Columns_LanguageCode
            // 
            this.Columns_LanguageCode.Caption = "LanguageCode";
            this.Columns_LanguageCode.FieldName = "LanguageCode";
            this.Columns_LanguageCode.Name = "Columns_LanguageCode";
            this.Columns_LanguageCode.Visible = true;
            this.Columns_LanguageCode.VisibleIndex = 0;
            this.Columns_LanguageCode.Width = 108;
            // 
            // Columns_Remark
            // 
            this.Columns_Remark.Caption = "Remark";
            this.Columns_Remark.FieldName = "Remark";
            this.Columns_Remark.Name = "Columns_Remark";
            this.Columns_Remark.Visible = true;
            this.Columns_Remark.VisibleIndex = 1;
            this.Columns_Remark.Width = 746;
            // 
            // TermListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TermListForm";
            this.Size = new System.Drawing.Size(690, 325);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }



    }
}
