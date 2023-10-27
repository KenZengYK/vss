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
    public partial class MaterialTypeSizeCupListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        private DevExpress.XtraGrid.Columns.GridColumn colCategory;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeCup;
        private DevExpress.XtraGrid.Columns.GridColumn colDescription;
        private DevExpress.XtraGrid.Columns.GridColumn colSeq;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraGrid.Columns.GridColumn colStandardGroupName;
        private DevExpress.XtraGrid.Columns.GridColumn colGroupCode;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox ImgComboBox_Group;
        #region//auto code
        private System.ComponentModel.IContainer components = null;
        #endregion

        public MaterialTypeSizeCupListForm()
        {
            InitializeComponent();

        }



        //Xsj:為了將Size劃分到多個SizeMask中而添加如下代碼
        #region
        //Xsj:初始下SpecialGroup下拉選項
        private void InitGroupNameImgComboxList()
        {
            PH.MIDc.BO.MIDcDataContext dc = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var groupInfoList = dc.ColorSizeCupGroups.Select(p => new { p.GroupCode, p.GroupName }).Distinct().ToList();
            this.ImgComboBox_Group.Items.Clear();
            foreach (var item in groupInfoList)
            {
                DevExpress.XtraEditors.Controls.ImageComboBoxItem imgCBItem=new DevExpress.XtraEditors.Controls.ImageComboBoxItem ();
                imgCBItem .Value =item.GroupCode ;
                imgCBItem .Description =item.GroupName ;
                this.ImgComboBox_Group.Items.Add(imgCBItem);
            }
        }
        #endregion


        public override void DataBind()
        {
            base.DataBind();
            //this.EditorTypeName = typeof(MaterialTypeSizeCupListForm).FullName;
            this.RowChangeAutoSave = true;
            this.AllowAddRow = true;
            this.AllowGridEdit = true;
            InitGroupNameImgComboxList();
        }

        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.colCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colSizeCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDescription = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStandardGroupName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGroupCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ImgComboBox_Group = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ImgComboBox_Group)).BeginInit();
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
            this.repositoryItemComboBox2,
            this.ImgComboBox_Group});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCategory,
            this.colSizeCup,
            this.colDescription,
            this.colSeq,
            this.colStandardGroupName,
            this.colGroupCode});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.MaterialTypeSizeCup);
            // 
            // colCategory
            // 
            this.colCategory.Caption = "Category";
            this.colCategory.ColumnEdit = this.repositoryItemComboBox2;
            this.colCategory.FieldName = "Category";
            this.colCategory.Name = "colCategory";
            this.colCategory.Visible = true;
            this.colCategory.VisibleIndex = 0;
            this.colCategory.Width = 117;
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "Size",
            "Cup"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            this.repositoryItemComboBox2.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colSizeCup
            // 
            this.colSizeCup.Caption = "Size/Cup";
            this.colSizeCup.FieldName = "SizeCup";
            this.colSizeCup.Name = "colSizeCup";
            this.colSizeCup.Visible = true;
            this.colSizeCup.VisibleIndex = 1;
            this.colSizeCup.Width = 99;
            // 
            // colDescription
            // 
            this.colDescription.Caption = "Description";
            this.colDescription.FieldName = "Description";
            this.colDescription.Name = "colDescription";
            this.colDescription.Visible = true;
            this.colDescription.VisibleIndex = 2;
            this.colDescription.Width = 181;
            // 
            // colSeq
            // 
            this.colSeq.Caption = "Seq";
            this.colSeq.FieldName = "Seq";
            this.colSeq.Name = "colSeq";
            this.colSeq.Visible = true;
            this.colSeq.VisibleIndex = 3;
            this.colSeq.Width = 95;
            // 
            // colStandardGroupName
            // 
            this.colStandardGroupName.Caption = "StandardGroupName";
            this.colStandardGroupName.FieldName = "StandardGroupName";
            this.colStandardGroupName.Name = "colStandardGroupName";
            this.colStandardGroupName.OptionsColumn.AllowEdit = false;
            this.colStandardGroupName.OptionsColumn.AllowFocus = false;
            this.colStandardGroupName.OptionsColumn.ReadOnly = true;
            this.colStandardGroupName.Visible = true;
            this.colStandardGroupName.VisibleIndex = 4;
            this.colStandardGroupName.Width = 158;
            // 
            // colGroupCode
            // 
            this.colGroupCode.Caption = "GroupCode";
            this.colGroupCode.FieldName = "StandardGroupCode";
            this.colGroupCode.Name = "colGroupCode";
            this.colGroupCode.OptionsColumn.AllowEdit = false;
            this.colGroupCode.OptionsColumn.AllowFocus = false;
            this.colGroupCode.Visible = true;
            this.colGroupCode.VisibleIndex = 5;
            this.colGroupCode.Width = 128;
            // 
            // ImgComboBox_Group
            // 
            this.ImgComboBox_Group.AutoHeight = false;
            this.ImgComboBox_Group.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ImgComboBox_Group.Name = "ImgComboBox_Group";
            // 
            // MaterialTypeSizeCupListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MaterialTypeSizeCupListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ImgComboBox_Group)).EndInit();
            this.ResumeLayout(false);

        }

    }
}
