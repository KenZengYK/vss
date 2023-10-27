/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.PartDefectListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/2 下午 04:28:01 $   
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
    public partial class sPartDefectListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_System_NO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Type;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Name;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Detect_Turn_No;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Degree;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Degree_Count;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Place;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_NameName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit rItemHyperLinkEdit_PhotoA;
        private DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit rItemHyperLinkEdit_PhotoB;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Defect_Deduce_Points;
        #endregion

        public sPartDefectListForm()
        {
            InitializeComponent();

            #region
            //Xsj:屏閉圖片列的讀寫,用於開啟點擊響應
            this.objListGridView.OptionsBehavior.Editable = true;
            foreach (DevExpress.XtraGrid.Columns.GridColumn itemCol in this.objListGridView.Columns)
            {
                /*
                if (itemCol.FieldName == "Photo_A" || itemCol.FieldName == "Photo_B")
                {
                    itemCol.OptionsColumn.AllowEdit = true;
                }
                else
                {
                    itemCol.OptionsColumn.AllowEdit = false;
                }
                 * */
            }
            #endregion
        }

        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.Columns_System_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Type = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Name = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Detect_Turn_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Degree = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Degree_Count = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Deduce_Points = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Place = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_NameName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rItemHyperLinkEdit_PhotoA = new DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rItemHyperLinkEdit_PhotoB = new DevExpress.XtraEditors.Repository.RepositoryItemHyperLinkEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rItemHyperLinkEdit_PhotoA)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rItemHyperLinkEdit_PhotoB)).BeginInit();
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
            this.rItemHyperLinkEdit_PhotoA,
            this.rItemHyperLinkEdit_PhotoB});
            this.objListGridControl.Size = new System.Drawing.Size(818, 276);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_System_NO,
            this.Columns_Defect_Type,
            this.Columns_Defect_Name,
            this.Columns_Defect_NameName,
            this.Columns_Detect_Turn_No,
            this.Columns_Defect_Degree,
            this.Columns_Defect_Degree_Count,
            this.Columns_Defect_Deduce_Points,
            this.Columns_Defect_Place,
            this.gridColumn1,
            this.gridColumn2});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // Columns_System_NO
            // 
            this.Columns_System_NO.Caption = "System NO";
            this.Columns_System_NO.FieldName = "System_Install_No";
            this.Columns_System_NO.Name = "Columns_System_NO";
            // 
            // Columns_Defect_Type
            // 
            this.Columns_Defect_Type.Caption = "Defect Type";
            this.Columns_Defect_Type.FieldName = "Defect_Type";
            this.Columns_Defect_Type.Name = "Columns_Defect_Type";
            this.Columns_Defect_Type.Width = 102;
            // 
            // Columns_Defect_Name
            // 
            this.Columns_Defect_Name.Caption = "Defect Code";
            this.Columns_Defect_Name.FieldName = "Defect_Name";
            this.Columns_Defect_Name.Name = "Columns_Defect_Name";
            this.Columns_Defect_Name.Visible = true;
            this.Columns_Defect_Name.VisibleIndex = 1;
            this.Columns_Defect_Name.Width = 123;
            // 
            // Columns_Detect_Turn_No
            // 
            this.Columns_Detect_Turn_No.Caption = "Board No";
            this.Columns_Detect_Turn_No.FieldName = "Detect_Turn_No";
            this.Columns_Detect_Turn_No.Name = "Columns_Detect_Turn_No";
            this.Columns_Detect_Turn_No.Visible = true;
            this.Columns_Detect_Turn_No.VisibleIndex = 0;
            this.Columns_Detect_Turn_No.Width = 91;
            // 
            // Columns_Defect_Degree
            // 
            this.Columns_Defect_Degree.Caption = "Degree";
            this.Columns_Defect_Degree.FieldName = "Defect_Degree";
            this.Columns_Defect_Degree.Name = "Columns_Defect_Degree";
            this.Columns_Defect_Degree.Visible = true;
            this.Columns_Defect_Degree.VisibleIndex = 3;
            this.Columns_Defect_Degree.Width = 92;
            // 
            // Columns_Defect_Degree_Count
            // 
            this.Columns_Defect_Degree_Count.Caption = "Count";
            this.Columns_Defect_Degree_Count.FieldName = "Defect_Degree_Count";
            this.Columns_Defect_Degree_Count.Name = "Columns_Defect_Degree_Count";
            this.Columns_Defect_Degree_Count.Visible = true;
            this.Columns_Defect_Degree_Count.VisibleIndex = 4;
            this.Columns_Defect_Degree_Count.Width = 82;
            // 
            // Columns_Defect_Deduce_Points
            // 
            this.Columns_Defect_Deduce_Points.Caption = "Deduce";
            this.Columns_Defect_Deduce_Points.FieldName = "Defect_Deduce_Points";
            this.Columns_Defect_Deduce_Points.Name = "Columns_Defect_Deduce_Points";
            this.Columns_Defect_Deduce_Points.Visible = true;
            this.Columns_Defect_Deduce_Points.VisibleIndex = 5;
            this.Columns_Defect_Deduce_Points.Width = 112;
            // 
            // Columns_Defect_Place
            // 
            this.Columns_Defect_Place.Caption = "Location";
            this.Columns_Defect_Place.FieldName = "Defect_Place";
            this.Columns_Defect_Place.Name = "Columns_Defect_Place";
            this.Columns_Defect_Place.Visible = true;
            this.Columns_Defect_Place.VisibleIndex = 6;
            this.Columns_Defect_Place.Width = 60;
            // 
            // Columns_Defect_NameName
            // 
            this.Columns_Defect_NameName.Caption = "Defect Name";
            this.Columns_Defect_NameName.FieldName = "Defect_NameName";
            this.Columns_Defect_NameName.Name = "Columns_Defect_NameName";
            this.Columns_Defect_NameName.Visible = true;
            this.Columns_Defect_NameName.VisibleIndex = 2;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Photo_A";
            this.gridColumn1.ColumnEdit = this.rItemHyperLinkEdit_PhotoA;
            this.gridColumn1.FieldName = "Photo_A";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 7;
            // 
            // rItemHyperLinkEdit_PhotoA
            // 
            this.rItemHyperLinkEdit_PhotoA.AutoHeight = false;
            this.rItemHyperLinkEdit_PhotoA.Name = "rItemHyperLinkEdit_PhotoA";
            this.rItemHyperLinkEdit_PhotoA.DoubleClick += new System.EventHandler(this.rItemHyperLinkEdit_PhotoA_DoubleClick);
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Photo_B";
            this.gridColumn2.ColumnEdit = this.rItemHyperLinkEdit_PhotoB;
            this.gridColumn2.FieldName = "Photo_B";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 8;
            // 
            // rItemHyperLinkEdit_PhotoB
            // 
            this.rItemHyperLinkEdit_PhotoB.AutoHeight = false;
            this.rItemHyperLinkEdit_PhotoB.Name = "rItemHyperLinkEdit_PhotoB";
            this.rItemHyperLinkEdit_PhotoB.DoubleClick += new System.EventHandler(this.rItemHyperLinkEdit_PhotoB_DoubleClick);
            // 
            // PartDefectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PartDefectListForm";
            this.Size = new System.Drawing.Size(818, 301);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rItemHyperLinkEdit_PhotoA)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rItemHyperLinkEdit_PhotoB)).EndInit();
            this.ResumeLayout(false);

        }


        //Xsj:Defect圖片路徑集
        private List<string> DefectPhotoPathList
        {
            get
            {
                if (this._defectPhotoPathList == null)
                {
                    this._defectPhotoPathList = new List<string>();
                    foreach (PH.FabricInspection.BO.Fabric_Insp_PartDefect item in this.BindingSource.List)
                    {
                        if (item.Photo_A != null)
                        {
                            this._defectPhotoPathList.Add(item.Photo_A.PicPath);
                        }
                        if (item.Photo_B != null)
                        {
                            this._defectPhotoPathList.Add(item.Photo_B.PicPath);
                        }
                    }
                }
                return this._defectPhotoPathList;
            }
        }
        private List<string> _defectPhotoPathList;


        //Xsj:點擊打開圖片A
        private void rItemHyperLinkEdit_PhotoA_DoubleClick(object sender, EventArgs e)
        {
            
            try
            {
                this.Cursor = Cursors.WaitCursor;
                PH.FabricInspection.BO.Fabric_Insp_PartDefect fPartdefect = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_PartDefect;
                if (fPartdefect.Photo_A == null)
                {
                    this.Cursor = Cursors.Default;
                    return;
                }
                FrmImageViewer imgViewer = new FrmImageViewer();
                imgViewer.IsEditing = (fPartdefect.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit || fPartdefect.Fabric_Insp_Header.BOWorkMode== PH.Platform.BO.Interface.WorkMode .Edit);
                imgViewer.ImgPath = fPartdefect.Photo_A.PicPath;
                imgViewer.DefectPhotoPathList = this.DefectPhotoPathList;
                imgViewer.FISPartDefect = fPartdefect;
                imgViewer.ShowDialog();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
            /* * */
        }

        //Xsj:點擊打開圖片B
        private void rItemHyperLinkEdit_PhotoB_DoubleClick(object sender, EventArgs e)
        {
         
            try
            {
                this.Cursor = Cursors.WaitCursor;
                PH.FabricInspection.BO.Fabric_Insp_PartDefect fPartdefect = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_PartDefect;
                if (fPartdefect.Photo_B == null)
                {
                    this.Cursor = Cursors.Default;
                    return;
                }
                FrmImageViewer imgViewer = new FrmImageViewer();
                imgViewer.IsEditing = (fPartdefect.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit || fPartdefect.Fabric_Insp_Header.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit);
                imgViewer.ImgPath = fPartdefect.Photo_B.PicPath;
                imgViewer.DefectPhotoPathList = this.DefectPhotoPathList;
                imgViewer.FISPartDefect = fPartdefect;
                imgViewer.ShowDialog();                
            }
            catch (Exception ex)
            {

            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
            /* * */
        }


    }
}
