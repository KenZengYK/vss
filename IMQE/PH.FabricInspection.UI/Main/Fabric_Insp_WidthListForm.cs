/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.WidthListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/2 下午 04:35:21 $   
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

namespace PH.FabricInspection.UI
{
    public partial class WidthListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_System_NO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Usable_Width;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_SideToSide_Width;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Detect_Turn_No;
        #endregion

        public WidthListForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.Columns_System_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Usable_Width = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SideToSide_Width = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Detect_Turn_No = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.Columns_System_NO,
            this.Columns_Usable_Width,
            this.Columns_SideToSide_Width,
            this.Columns_Detect_Turn_No});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // Columns_System_NO
            // 
            this.Columns_System_NO.Caption = "System_NO";
            this.Columns_System_NO.FieldName = "System_Install_No";
            this.Columns_System_NO.Name = "Columns_System_NO";
            // 
            // Columns_Usable_Width
            // 
            this.Columns_Usable_Width.Caption = "Usable Width";
            this.Columns_Usable_Width.FieldName = "Usable_Width";
            this.Columns_Usable_Width.Name = "Columns_Usable_Width";
            this.Columns_Usable_Width.Visible = true;
            this.Columns_Usable_Width.VisibleIndex = 1;
            this.Columns_Usable_Width.Width = 149;
            // 
            // Columns_SideToSide_Width
            // 
            this.Columns_SideToSide_Width.Caption = "Side To Side Width";
            this.Columns_SideToSide_Width.FieldName = "SideToSide_Width";
            this.Columns_SideToSide_Width.Name = "Columns_SideToSide_Width";
            this.Columns_SideToSide_Width.Visible = true;
            this.Columns_SideToSide_Width.VisibleIndex = 2;
            this.Columns_SideToSide_Width.Width = 161;
            // 
            // Columns_Detect_Turn_No
            // 
            this.Columns_Detect_Turn_No.Caption = "Broad No";
            this.Columns_Detect_Turn_No.FieldName = "Detect_Turn_No";
            this.Columns_Detect_Turn_No.Name = "Columns_Detect_Turn_No";
            this.Columns_Detect_Turn_No.Visible = true;
            this.Columns_Detect_Turn_No.VisibleIndex = 0;
            this.Columns_Detect_Turn_No.Width = 180;
            // 
            // WidthListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WidthListForm";
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

    }
}
