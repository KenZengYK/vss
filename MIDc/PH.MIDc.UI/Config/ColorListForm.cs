/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: /PH/PH.MIDc.root/PH.MIDc/PH.MIDc.UI/Config/ColorListForm.cs $   
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
using PH.Platform.BO;//.BO;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class ColorListForm :  PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Color;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Description;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Season;
        private DevExpress.XtraGrid.Columns.GridColumn colColorType;
        private DevExpress.XtraGrid.Columns.GridColumn colPantoneNumber;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Status;
        #endregion

        public ColorListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

        } 

        public override void DataBind()
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = from c in context.Colors select c;
            this.EditorTypeName = typeof(ColorDetailForm).FullName;
            base.DataBind();
        }

        private void InitializeComponent()
        {
            this.Columns_Color = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Description = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Season = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Status = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPantoneNumber = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.Color);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.Size = new System.Drawing.Size(932, 357);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Color,
            this.Columns_Description,
            this.Columns_Season,
            this.Columns_Status,
            this.colColorType,
            this.colPantoneNumber,
            this.colCreateDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // Columns_Color
            // 
            this.Columns_Color.Caption = "Color";
            this.Columns_Color.FieldName = "Color1";
            this.Columns_Color.Name = "Columns_Color";
            this.Columns_Color.Visible = true;
            this.Columns_Color.VisibleIndex = 0;
            this.Columns_Color.Width = 92;
            // 
            // Columns_Description
            // 
            this.Columns_Description.Caption = "Description";
            this.Columns_Description.FieldName = "Description";
            this.Columns_Description.Name = "Columns_Description";
            this.Columns_Description.Visible = true;
            this.Columns_Description.VisibleIndex = 1;
            this.Columns_Description.Width = 189;
            // 
            // Columns_Season
            // 
            this.Columns_Season.Caption = "Season";
            this.Columns_Season.FieldName = "Season";
            this.Columns_Season.Name = "Columns_Season";
            this.Columns_Season.Visible = true;
            this.Columns_Season.VisibleIndex = 3;
            this.Columns_Season.Width = 103;
            // 
            // Columns_Status
            // 
            this.Columns_Status.Caption = "Status";
            this.Columns_Status.FieldName = "Status";
            this.Columns_Status.Name = "Columns_Status";
            this.Columns_Status.Visible = true;
            this.Columns_Status.VisibleIndex = 4;
            this.Columns_Status.Width = 109;
            // 
            // colColorType
            // 
            this.colColorType.Caption = "Color Type";
            this.colColorType.FieldName = "ColorType";
            this.colColorType.Name = "colColorType";
            this.colColorType.Visible = true;
            this.colColorType.VisibleIndex = 2;
            this.colColorType.Width = 106;
            // 
            // colPantoneNumber
            // 
            this.colPantoneNumber.Caption = "Pantone Number";
            this.colPantoneNumber.FieldName = "PantoneNumber";
            this.colPantoneNumber.Name = "colPantoneNumber";
            this.colPantoneNumber.Visible = true;
            this.colPantoneNumber.VisibleIndex = 5;
            this.colPantoneNumber.Width = 146;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "Create Date";
            this.colCreateDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colCreateDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 6;
            this.colCreateDate.Width = 94;
            // 
            // ColorListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ColorListForm";
            this.Size = new System.Drawing.Size(932, 384);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

    }
}
