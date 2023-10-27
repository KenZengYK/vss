/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.MIDc.UI.TechReferInfoListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2009-1-7 9:32:10 $   
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
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public partial class TechReferInfoListForm :  PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_CustmerID;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ReferInfo;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Description;
        #endregion

        public TechReferInfoListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

            this.EditorTypeName = typeof(TechReferInfoDetailForm).FullName;
        }

        public override void DataBind()
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = from c in context.TechReferInfos select c;

            base.DataBind();
        }

       

        private void InitializeComponent()
        {
            this.Columns_CustmerID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ReferInfo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Description = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.Columns_CustmerID,
            this.Columns_ReferInfo,
            this.Columns_Description});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // Columns_CustmerID
            // 
            this.Columns_CustmerID.Caption = "CustmerID";
            this.Columns_CustmerID.FieldName = "CustmerID";
            this.Columns_CustmerID.Name = "Columns_CustmerID";
            this.Columns_CustmerID.Visible = true;
            this.Columns_CustmerID.VisibleIndex = 0;
            // 
            // Columns_ReferInfo
            // 
            this.Columns_ReferInfo.Caption = "ReferInfo";
            this.Columns_ReferInfo.FieldName = "ReferInfo";
            this.Columns_ReferInfo.Name = "Columns_ReferInfo";
            this.Columns_ReferInfo.Visible = true;
            this.Columns_ReferInfo.VisibleIndex = 1;
            // 
            // Columns_Description
            // 
            this.Columns_Description.Caption = "Description";
            this.Columns_Description.FieldName = "Description";
            this.Columns_Description.Name = "Columns_Description";
            this.Columns_Description.Visible = true;
            this.Columns_Description.VisibleIndex = 2;
            // 
            // TechReferInfoListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TechReferInfoListForm";
            //this.Load += new System.EventHandler(this.TechReferInfoListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

    }
}
