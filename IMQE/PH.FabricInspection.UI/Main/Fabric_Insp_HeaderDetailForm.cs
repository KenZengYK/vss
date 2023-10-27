/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.MasterDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/2 下午 04:28:00 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;
using System.Collections;


namespace PH.FabricInspection.UI
{
    public class MasterDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        #region//auto code

        private DevExpress.XtraTab.XtraTabPage SpreadDefect123;
        private SpreadDefectListForm fiSpreadDefectListForm1;
        private DevExpress.XtraTab.XtraTabPage Width;
        private WidthListForm fiWidthListForm1;
        private DevExpress.XtraTab.XtraTabPage Picture;
        private PartDefectListForm fiPartDefectListForm1;
        private PictureListForm fiPictureListForm1;


        private TextEdit textEdit1;
        private TextEdit textEdit2;
        private Label Color_Group_StatusLabel;
        private MemoExEdit memoExEdit1;
        private Label Insp_Result_ReasonLabel;
        private MemoExEdit txtD_Spread_Remark;
        private ImageComboBoxEdit txtD_Mould_Proc_Status;
        private ImageComboBoxEdit txtD_Spread_Proc_Status;
        private ImageComboBoxEdit txtD_Insp_Result;
        private ImageComboBoxEdit txtD_part_Insp_Result;
        private Label Change_DateLabel;
        private TextEdit txtD_Inspection_Date;
        private Label System_Install_NoLabel;
        private Label LightStatusLabel;
        private Label Lot_IdLabel;
        private Label Item_NoLabel;
        private Label Stock_In_DateLabel;
        private Label Spread_Insp_ResultLabel;
        private Label Special_MarkerLabel;
        private Label Spread_RemarkLabel;
        private Label Mould_Trial_ResultLabel;
        private Label Mould_Trial_RemarkLabel;
        private Label Insp_LengthLabel;
        private Label Actual_WeightLabel;
        private Label Usable_WidthLabel;
        private Label Supplier_WidthLabel;
        private Label Roll_NoLabel;
        private Label Actual_LengthLabel;
        private Label Supplich_BatchLabel;
        private Label Total_PointsLabel;
        private Label Item_DescLabel;
        private Label Points_Hundred_SQMLabel;
        private Label Deductive_QtyLabel;
        private Label WastageLabel;
        private Label Insp_ResultLabel;
        private Label Party_Insp_ResultLabel;
        private Label PH_SampleLabel;
        private Label Panel_Size1Label;
        private Label lable_Panel_Size2;
        private TextEdit txtD_Panel_Size2;
        private TextEdit txtD_Panel_Size1;
        private TextEdit txtD_PH_Sample;
        private TextEdit txtD_Wastage;
        private TextEdit txtD_Deductive_Qty;
        private TextEdit txtD_Potions_Hundred_Sqm;
        private TextEdit txtD_Item_Description;
        private TextEdit txtD_Total_Points;
        private TextEdit txtD_Supplier_Batch;
        private TextEdit txtD_Actual_Length;
        private TextEdit txtD_Roll_NO;
        private TextEdit txtD_Actual_Width;
        private TextEdit txtD_Usable_Width;
        private TextEdit txtD_Actual_Weigth;
        private TextEdit txtD_Insp_Length;
        private TextEdit txtD_Special_Marker;
        private TextEdit txtD_StockIn_Date;
        private TextEdit txtD_Item_NO;
        private TextEdit txtD_Lot_ID;
        private TextEdit txtLightStatus;
        private TextEdit txtD_System_NO;
        private Label WeftYarnLabel;
        private TextEdit txtDWeftYarn;
        private Label ElongationLabel;
        private Label WeftYarnPercentageLabel;
        private Label WeftYarmClassLabel;
        private TextEdit txtWeftYarnPercentage;
        private TextEdit txtWeftYarnClass;
        private Label ElongationStatusLabel;
        private Label WeftYarnStautsLabel;
        private ImageComboBoxEdit txtDElongationStatus;
        private ImageComboBoxEdit txtDWeftYarnStatus;
        private MemoExEdit txtD_Mould_Trial_Remark;
        private Label lbMouldTrial;


        #endregion
        private IContainer components;
        private TextEdit textEdit3;
        private TextEdit textEdit4;
        private Label lbAgreedByCutting;
        private Label lbColorMatching;
        private ComboBoxEdit txtColorMatchingResult;
        private Label lbColorMatchingResult;
        private ComboBoxEdit txtColorMatching;
        private ComboBoxEdit txtBondingResult;
        private Label lbBondingResult;
        private ComboBoxEdit txtBonding;
        private Label lbBonding;
        private ComboBoxEdit txtMouldTrialResult;
        private Label lbMouldTrialResult;
        private ComboBoxEdit txtMouldTrial;
        private ComboBoxEdit txtElongationResult;
        private Label lbElongation;
        private ComboBoxEdit txtElongation;
        private ComboBoxEdit txtLaminationResult;
        private Label lbLaminationResult;
        private ComboBoxEdit txtLamination;
        private Label lbLamination;


        private EditMode currentMode = EditMode.ReadOnly;

        public MasterDetailForm()
        {

            InitializeComponent();
            this.fiPartDefectListForm1.EditorTypeName = typeof(PartDefectDetailForm).FullName;
            this.fiSpreadDefectListForm1.EditorTypeName = typeof(SpreadDefectDetailForm).FullName;
            this.fiWidthListForm1.EditorTypeName = typeof(WidthDetailForm).FullName;

            #region
            //Xsj:20111102取消原來顯示圖片的邏輯
            //this.fiPictureListForm1.EditorTypeName = typeof(PictureDetailForm).FullName;
            #endregion
            setEditMode(EditMode.ReadOnly);
        }


        //Xsj20120830:添加右鍵菜單從R/N Maintenance 跳到Information Maintenance

        public MasterDetailForm(ProblemMasterDetailForm PFrm, PH.FabricInspection.BO.FabricInspectionDataContext Edc, Fabric_Insp_Header FISHeader)
            : this()
        {
            this.DataContext = Edc;
            this.fiPartDefectListForm1.DataContext = Edc;
            this.BindingSource.DataSource = FISHeader;

            this.PrevForm = null;
            this.FirstForm = this;

            this.barBtnSaveAndReturn.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barToolbarsListRet.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            //DevExpress.XtraBars.BarButtonItem btnItem = new DevExpress.XtraBars.BarButtonItem();
            //btnItem.Caption = "R/N Maintenance";
            //btnItem.Tag = PFrm;
            ////btnItem.Hint = ParentForm.Name;
            //base.NavigatItem = new Stack<DevExpress.XtraBars.BarButtonItem>();
            //base.NavigatItem.Push(btnItem);
            //btnItem.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(btnItem_ItemClick);
            //barToolbarsListRet.AddItem(btnItem);
        }

        //void btnItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{

        //    Control c = (e.Item as DevExpress.XtraBars.BarButtonItem).Tag as Control;
        //    base.SetChildFormProperty(c);
        //    c.BringToFront();
        //    if ((c is PH.Platform.UI.CS.BaseListForm) || (c is PH.Platform.UI.CS.UI2.ParentChildForm))
        //    {

        //        //BaseForm curForm = (BaseForm)c;
        //        //curForm.InitFormNavigator();
        //        this.Dispose();
        //        GC.Collect();
        //    }
        //    NavigatLabel.Clear();
        //    NavigatItem.Clear();

        //    //把當前對象也加進去顯示在主介面上
        //    //BarEditItem item = new BarEditItem();
        //    //item.EditValue = c.Name + "-->";
        //    //item.Tag = c;
        //    //item.Hint = c.Name;
        //    //BarButtonItem item1 = new BarButtonItem();
        //    //item1.Caption = ">";
        //    //NavigatItem.Push(item1);

        //    DevExpress.XtraBars.BarButtonItem item = new DevExpress.XtraBars.BarButtonItem();
        //    item.Caption = c.Name;
        //    item.Tag = c;
        //    item.Hint = c.Name;
        //    NavigatItem.Push(item);

        //    AddReturnListBarBtn(c as PH.Platform.UI.CS.BaseForm);
        //    //設置各個BarButtonItem的Enabel狀態
        //    //this.SetNavigatLink();
        //    //ifenabel = true; //還原為初始值
        //    //this.NavigatItem.First();
        //    //NavigateItemRefresh();
        //    NavigateItemRefresh_new();
        //}



        public override void DataBind()
        {
            Fabric_Insp_Header parentObject = this.BindingSource.Current as Fabric_Insp_Header;

            this.fiPartDefectListForm1.BindingSource.DataSource = parentObject.Fabric_Insp_PartDefects; //當然你可以用Linq排序 
            this.fiSpreadDefectListForm1.BindingSource.DataSource = parentObject.Fabric_Insp_SpreadDefects; //當然你可以用Linq排序 
            this.fiWidthListForm1.BindingSource.DataSource = parentObject.Fabric_Insp_Widths; //當然你可以用Linq排序 

            #region
            //this.fiPartDefectListForm1.EditorTypeName = typeof(PartDefectDetailForm).FullName;
            //Xsj:20111102取消原來顯示圖片的邏輯
            //this.fiPictureListForm1.BindingSource.DataSource = parentObject.Fabric_Insp_Pictures; //當然你可以用Linq排序 
            //this.fiPictureListForm1.EditorTypeName = typeof(PictureDetailForm).FullName;
            //this.fiSpreadDefectListForm1.EditorTypeName = typeof(SpreadDefectDetailForm).FullName;
            //this.fiWidthListForm1.EditorTypeName = typeof(WidthDetailForm).FullName;
            #endregion

            base.DataBind();
        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout1 = new PH.Platform.BO.UI_GridViewLayout();
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout2 = new PH.Platform.BO.UI_GridViewLayout();
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout3 = new PH.Platform.BO.UI_GridViewLayout();
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout4 = new PH.Platform.BO.UI_GridViewLayout();
            this.fiPartDefectListForm1 = new PH.FabricInspection.UI.PartDefectListForm();
            this.SpreadDefect123 = new DevExpress.XtraTab.XtraTabPage();
            this.fiSpreadDefectListForm1 = new PH.FabricInspection.UI.SpreadDefectListForm();
            this.Width = new DevExpress.XtraTab.XtraTabPage();
            this.fiWidthListForm1 = new PH.FabricInspection.UI.WidthListForm();
            this.Picture = new DevExpress.XtraTab.XtraTabPage();
            this.fiPictureListForm1 = new PH.FabricInspection.UI.PictureListForm();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.Color_Group_StatusLabel = new System.Windows.Forms.Label();
            this.memoExEdit1 = new DevExpress.XtraEditors.MemoExEdit();
            this.Insp_Result_ReasonLabel = new System.Windows.Forms.Label();
            this.txtD_Spread_Remark = new DevExpress.XtraEditors.MemoExEdit();
            this.txtD_Mould_Proc_Status = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.txtD_Spread_Proc_Status = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.txtD_Insp_Result = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.txtD_part_Insp_Result = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.Change_DateLabel = new System.Windows.Forms.Label();
            this.txtD_Inspection_Date = new DevExpress.XtraEditors.TextEdit();
            this.System_Install_NoLabel = new System.Windows.Forms.Label();
            this.LightStatusLabel = new System.Windows.Forms.Label();
            this.Lot_IdLabel = new System.Windows.Forms.Label();
            this.Item_NoLabel = new System.Windows.Forms.Label();
            this.Stock_In_DateLabel = new System.Windows.Forms.Label();
            this.Spread_Insp_ResultLabel = new System.Windows.Forms.Label();
            this.Special_MarkerLabel = new System.Windows.Forms.Label();
            this.Spread_RemarkLabel = new System.Windows.Forms.Label();
            this.Mould_Trial_ResultLabel = new System.Windows.Forms.Label();
            this.Mould_Trial_RemarkLabel = new System.Windows.Forms.Label();
            this.Insp_LengthLabel = new System.Windows.Forms.Label();
            this.Actual_WeightLabel = new System.Windows.Forms.Label();
            this.Usable_WidthLabel = new System.Windows.Forms.Label();
            this.Supplier_WidthLabel = new System.Windows.Forms.Label();
            this.Roll_NoLabel = new System.Windows.Forms.Label();
            this.Actual_LengthLabel = new System.Windows.Forms.Label();
            this.Supplich_BatchLabel = new System.Windows.Forms.Label();
            this.Total_PointsLabel = new System.Windows.Forms.Label();
            this.Item_DescLabel = new System.Windows.Forms.Label();
            this.Points_Hundred_SQMLabel = new System.Windows.Forms.Label();
            this.Deductive_QtyLabel = new System.Windows.Forms.Label();
            this.WastageLabel = new System.Windows.Forms.Label();
            this.Insp_ResultLabel = new System.Windows.Forms.Label();
            this.Party_Insp_ResultLabel = new System.Windows.Forms.Label();
            this.PH_SampleLabel = new System.Windows.Forms.Label();
            this.Panel_Size1Label = new System.Windows.Forms.Label();
            this.lable_Panel_Size2 = new System.Windows.Forms.Label();
            this.txtD_Panel_Size2 = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Panel_Size1 = new DevExpress.XtraEditors.TextEdit();
            this.txtD_PH_Sample = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Wastage = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Deductive_Qty = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Potions_Hundred_Sqm = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Item_Description = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Total_Points = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Supplier_Batch = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Actual_Length = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Roll_NO = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Actual_Width = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Usable_Width = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Actual_Weigth = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Insp_Length = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Special_Marker = new DevExpress.XtraEditors.TextEdit();
            this.txtD_StockIn_Date = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Item_NO = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Lot_ID = new DevExpress.XtraEditors.TextEdit();
            this.txtLightStatus = new DevExpress.XtraEditors.TextEdit();
            this.txtD_System_NO = new DevExpress.XtraEditors.TextEdit();
            this.WeftYarnLabel = new System.Windows.Forms.Label();
            this.txtDWeftYarn = new DevExpress.XtraEditors.TextEdit();
            this.ElongationLabel = new System.Windows.Forms.Label();
            this.WeftYarnPercentageLabel = new System.Windows.Forms.Label();
            this.WeftYarmClassLabel = new System.Windows.Forms.Label();
            this.txtWeftYarnClass = new DevExpress.XtraEditors.TextEdit();
            this.txtWeftYarnPercentage = new DevExpress.XtraEditors.TextEdit();
            this.WeftYarnStautsLabel = new System.Windows.Forms.Label();
            this.ElongationStatusLabel = new System.Windows.Forms.Label();
            this.txtDWeftYarnStatus = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.txtDElongationStatus = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.txtD_Mould_Trial_Remark = new DevExpress.XtraEditors.MemoExEdit();
            this.lbMouldTrial = new System.Windows.Forms.Label();
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit4 = new DevExpress.XtraEditors.TextEdit();
            this.lbAgreedByCutting = new System.Windows.Forms.Label();
            this.lbColorMatching = new System.Windows.Forms.Label();
            this.txtColorMatching = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lbColorMatchingResult = new System.Windows.Forms.Label();
            this.txtColorMatchingResult = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtElongation = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lbElongation = new System.Windows.Forms.Label();
            this.txtElongationResult = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtMouldTrial = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lbMouldTrialResult = new System.Windows.Forms.Label();
            this.txtMouldTrialResult = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtBondingResult = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lbBondingResult = new System.Windows.Forms.Label();
            this.txtBonding = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lbBonding = new System.Windows.Forms.Label();
            this.lbLaminationResult = new System.Windows.Forms.Label();
            this.txtLamination = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lbLamination = new System.Windows.Forms.Label();
            this.txtLaminationResult = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).BeginInit();
            this.headerTitleBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SpreadDefect123.SuspendLayout();
            this.Width.SuspendLayout();
            this.Picture.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoExEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Spread_Remark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Mould_Proc_Status.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Spread_Proc_Status.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Insp_Result.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_part_Insp_Result.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Inspection_Date.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Panel_Size2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Panel_Size1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PH_Sample.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Wastage.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Deductive_Qty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Potions_Hundred_Sqm.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Item_Description.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Total_Points.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Supplier_Batch.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Actual_Length.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Roll_NO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Actual_Width.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Usable_Width.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Actual_Weigth.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Insp_Length.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Special_Marker.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_StockIn_Date.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Item_NO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Lot_ID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLightStatus.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_System_NO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDWeftYarn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWeftYarnClass.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWeftYarnPercentage.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDWeftYarnStatus.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDElongationStatus.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Mould_Trial_Remark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit4.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColorMatching.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColorMatchingResult.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtElongation.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtElongationResult.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMouldTrial.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMouldTrialResult.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBondingResult.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBonding.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLamination.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLaminationResult.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 471);
            this.splitterControl1.Size = new System.Drawing.Size(1510, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.txtLaminationResult);
            this.headerTitleBar.Controls.Add(this.lbLaminationResult);
            this.headerTitleBar.Controls.Add(this.txtLamination);
            this.headerTitleBar.Controls.Add(this.lbLamination);
            this.headerTitleBar.Controls.Add(this.txtBondingResult);
            this.headerTitleBar.Controls.Add(this.lbBondingResult);
            this.headerTitleBar.Controls.Add(this.txtBonding);
            this.headerTitleBar.Controls.Add(this.lbBonding);
            this.headerTitleBar.Controls.Add(this.txtMouldTrialResult);
            this.headerTitleBar.Controls.Add(this.lbMouldTrialResult);
            this.headerTitleBar.Controls.Add(this.txtMouldTrial);
            this.headerTitleBar.Controls.Add(this.txtElongationResult);
            this.headerTitleBar.Controls.Add(this.lbElongation);
            this.headerTitleBar.Controls.Add(this.txtElongation);
            this.headerTitleBar.Controls.Add(this.txtColorMatchingResult);
            this.headerTitleBar.Controls.Add(this.lbColorMatchingResult);
            this.headerTitleBar.Controls.Add(this.txtColorMatching);
            this.headerTitleBar.Controls.Add(this.lbColorMatching);
            this.headerTitleBar.Controls.Add(this.textEdit4);
            this.headerTitleBar.Controls.Add(this.lbAgreedByCutting);
            this.headerTitleBar.Controls.Add(this.textEdit3);
            this.headerTitleBar.Controls.Add(this.txtDElongationStatus);
            this.headerTitleBar.Controls.Add(this.txtD_Mould_Trial_Remark);
            this.headerTitleBar.Controls.Add(this.txtDWeftYarnStatus);
            this.headerTitleBar.Controls.Add(this.lbMouldTrial);
            this.headerTitleBar.Controls.Add(this.ElongationStatusLabel);
            this.headerTitleBar.Controls.Add(this.txtWeftYarnPercentage);
            this.headerTitleBar.Controls.Add(this.WeftYarnStautsLabel);
            this.headerTitleBar.Controls.Add(this.txtWeftYarnClass);
            this.headerTitleBar.Controls.Add(this.WeftYarnPercentageLabel);
            this.headerTitleBar.Controls.Add(this.WeftYarmClassLabel);
            this.headerTitleBar.Controls.Add(this.ElongationLabel);
            this.headerTitleBar.Controls.Add(this.txtDWeftYarn);
            this.headerTitleBar.Controls.Add(this.WeftYarnLabel);
            this.headerTitleBar.Controls.Add(this.textEdit2);
            this.headerTitleBar.Controls.Add(this.memoExEdit1);
            this.headerTitleBar.Controls.Add(this.Color_Group_StatusLabel);
            this.headerTitleBar.Controls.Add(this.Insp_Result_ReasonLabel);
            this.headerTitleBar.Controls.Add(this.txtD_part_Insp_Result);
            this.headerTitleBar.Controls.Add(this.txtD_Spread_Remark);
            this.headerTitleBar.Controls.Add(this.txtD_Mould_Proc_Status);
            this.headerTitleBar.Controls.Add(this.txtD_Spread_Proc_Status);
            this.headerTitleBar.Controls.Add(this.Change_DateLabel);
            this.headerTitleBar.Controls.Add(this.txtD_Inspection_Date);
            this.headerTitleBar.Controls.Add(this.txtD_Insp_Result);
            this.headerTitleBar.Controls.Add(this.System_Install_NoLabel);
            this.headerTitleBar.Controls.Add(this.LightStatusLabel);
            this.headerTitleBar.Controls.Add(this.Lot_IdLabel);
            this.headerTitleBar.Controls.Add(this.Item_NoLabel);
            this.headerTitleBar.Controls.Add(this.Stock_In_DateLabel);
            this.headerTitleBar.Controls.Add(this.Spread_Insp_ResultLabel);
            this.headerTitleBar.Controls.Add(this.Mould_Trial_ResultLabel);
            this.headerTitleBar.Controls.Add(this.Spread_RemarkLabel);
            this.headerTitleBar.Controls.Add(this.Mould_Trial_RemarkLabel);
            this.headerTitleBar.Controls.Add(this.Special_MarkerLabel);
            this.headerTitleBar.Controls.Add(this.Insp_LengthLabel);
            this.headerTitleBar.Controls.Add(this.Actual_WeightLabel);
            this.headerTitleBar.Controls.Add(this.Usable_WidthLabel);
            this.headerTitleBar.Controls.Add(this.Supplier_WidthLabel);
            this.headerTitleBar.Controls.Add(this.Roll_NoLabel);
            this.headerTitleBar.Controls.Add(this.Actual_LengthLabel);
            this.headerTitleBar.Controls.Add(this.Supplich_BatchLabel);
            this.headerTitleBar.Controls.Add(this.Item_DescLabel);
            this.headerTitleBar.Controls.Add(this.Deductive_QtyLabel);
            this.headerTitleBar.Controls.Add(this.Total_PointsLabel);
            this.headerTitleBar.Controls.Add(this.WastageLabel);
            this.headerTitleBar.Controls.Add(this.Points_Hundred_SQMLabel);
            this.headerTitleBar.Controls.Add(this.Party_Insp_ResultLabel);
            this.headerTitleBar.Controls.Add(this.Insp_ResultLabel);
            this.headerTitleBar.Controls.Add(this.PH_SampleLabel);
            this.headerTitleBar.Controls.Add(this.Panel_Size1Label);
            this.headerTitleBar.Controls.Add(this.lable_Panel_Size2);
            this.headerTitleBar.Controls.Add(this.txtD_Panel_Size2);
            this.headerTitleBar.Controls.Add(this.txtD_Panel_Size1);
            this.headerTitleBar.Controls.Add(this.txtD_PH_Sample);
            this.headerTitleBar.Controls.Add(this.txtD_Wastage);
            this.headerTitleBar.Controls.Add(this.txtD_Deductive_Qty);
            this.headerTitleBar.Controls.Add(this.txtD_Item_Description);
            this.headerTitleBar.Controls.Add(this.txtD_Potions_Hundred_Sqm);
            this.headerTitleBar.Controls.Add(this.txtD_Supplier_Batch);
            this.headerTitleBar.Controls.Add(this.txtD_Actual_Length);
            this.headerTitleBar.Controls.Add(this.txtD_Total_Points);
            this.headerTitleBar.Controls.Add(this.txtD_Roll_NO);
            this.headerTitleBar.Controls.Add(this.txtD_Actual_Width);
            this.headerTitleBar.Controls.Add(this.txtD_Usable_Width);
            this.headerTitleBar.Controls.Add(this.txtD_Actual_Weigth);
            this.headerTitleBar.Controls.Add(this.txtD_Insp_Length);
            this.headerTitleBar.Controls.Add(this.txtD_StockIn_Date);
            this.headerTitleBar.Controls.Add(this.txtD_Item_NO);
            this.headerTitleBar.Controls.Add(this.txtD_Lot_ID);
            this.headerTitleBar.Controls.Add(this.txtD_Special_Marker);
            this.headerTitleBar.Controls.Add(this.txtLightStatus);
            this.headerTitleBar.Controls.Add(this.txtD_System_NO);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(1510, 444);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_System_NO, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtLightStatus, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Special_Marker, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Lot_ID, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Item_NO, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_StockIn_Date, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Insp_Length, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Actual_Weigth, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Usable_Width, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Actual_Width, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Roll_NO, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Total_Points, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Actual_Length, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Supplier_Batch, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Potions_Hundred_Sqm, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Item_Description, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Deductive_Qty, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Wastage, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_PH_Sample, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Panel_Size1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Panel_Size2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lable_Panel_Size2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Panel_Size1Label, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.PH_SampleLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Insp_ResultLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Party_Insp_ResultLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Points_Hundred_SQMLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.WastageLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Total_PointsLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Deductive_QtyLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Item_DescLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Supplich_BatchLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Actual_LengthLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Roll_NoLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Supplier_WidthLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Usable_WidthLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Actual_WeightLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Insp_LengthLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Special_MarkerLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Mould_Trial_RemarkLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Spread_RemarkLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Mould_Trial_ResultLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Spread_Insp_ResultLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Stock_In_DateLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Item_NoLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Lot_IdLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.LightStatusLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.System_Install_NoLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Insp_Result, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Inspection_Date, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Change_DateLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Spread_Proc_Status, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Mould_Proc_Status, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Spread_Remark, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_part_Insp_Result, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Insp_Result_ReasonLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Color_Group_StatusLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.memoExEdit1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.WeftYarnLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtDWeftYarn, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.ElongationLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.WeftYarmClassLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.WeftYarnPercentageLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtWeftYarnClass, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.WeftYarnStautsLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtWeftYarnPercentage, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.ElongationStatusLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbMouldTrial, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtDWeftYarnStatus, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Mould_Trial_Remark, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtDElongationStatus, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit3, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbAgreedByCutting, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit4, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbColorMatching, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtColorMatching, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbColorMatchingResult, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtColorMatchingResult, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtElongation, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbElongation, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtElongationResult, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtMouldTrial, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbMouldTrialResult, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtMouldTrialResult, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbBonding, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtBonding, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbBondingResult, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtBondingResult, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbLamination, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtLamination, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbLaminationResult, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtLaminationResult, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 477);
            this.panelControl1.Size = new System.Drawing.Size(1510, 228);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.fiPartDefectListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(1206, 303);
            this.xtraTabPage1.Text = "Part Defect";
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Dock = System.Windows.Forms.DockStyle.None;
            this.xtraTabControl1.Location = new System.Drawing.Point(2, 0);
            this.xtraTabControl1.Size = new System.Drawing.Size(1215, 335);
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.SpreadDefect123,
            this.Width,
            this.Picture});
            this.xtraTabControl1.Controls.SetChildIndex(this.Picture, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.Width, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.SpreadDefect123, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage1, 0);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(32767, 0);
            // 
            // fiPartDefectListForm1
            // 
            this.fiPartDefectListForm1.AllowAddRow = true;
            this.fiPartDefectListForm1.AlwaysShowDesignLayout = false;
            this.fiPartDefectListForm1.AutoOpenDetailForm = false;
            this.fiPartDefectListForm1.DataContext = null;
            this.fiPartDefectListForm1.DataSource = null;
            this.fiPartDefectListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.fiPartDefectListForm1.EditorTypeName = null;
            this.fiPartDefectListForm1.FileID = null;
            this.fiPartDefectListForm1.FirstForm = null;
            this.fiPartDefectListForm1.FormName = "PartDefectListForm";
            this.fiPartDefectListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.fiPartDefectListForm1.FormTitle = "PH.FabricInspection.UI.PartDefectListForm";
            this.fiPartDefectListForm1.IsCancelList = false;
            this.fiPartDefectListForm1.IsShowPivotTable = false;
            uI_GridViewLayout1.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            uI_GridViewLayout1.CheckFlag = false;
            uI_GridViewLayout1.CurrentBindingSource = null;
            uI_GridViewLayout1.CurrentDataContext = null;
            uI_GridViewLayout1.FileID = null;
            uI_GridViewLayout1.FormName = null;
            uI_GridViewLayout1.IsSys = null;
            uI_GridViewLayout1.IsSysDefault = null;
            uI_GridViewLayout1.IsUser = null;
            uI_GridViewLayout1.IsUserDefault = null;
            uI_GridViewLayout1.LayoutName = null;
            uI_GridViewLayout1.LayoutRaw = null;
            uI_GridViewLayout1.SideProgramID = null;
            uI_GridViewLayout1.UserID = null;
            this.fiPartDefectListForm1.LayoutData = uI_GridViewLayout1;
            this.fiPartDefectListForm1.LayoutName = null;
            this.fiPartDefectListForm1.ListForm = null;
            this.fiPartDefectListForm1.Location = new System.Drawing.Point(0, 0);
            this.fiPartDefectListForm1.MenuID = ((long)(0));
            this.fiPartDefectListForm1.Name = "fiPartDefectListForm1";
            this.fiPartDefectListForm1.NeedCheckPermission = true;
            this.fiPartDefectListForm1.NextForm = null;
            this.fiPartDefectListForm1.ParentForm = null;
            this.fiPartDefectListForm1.PrevForm = null;
            this.fiPartDefectListForm1.RowChangeAutoSave = true;
            this.fiPartDefectListForm1.ShowMultiCheck = false;
            this.fiPartDefectListForm1.SideProgramID = null;
            this.fiPartDefectListForm1.Size = new System.Drawing.Size(1206, 303);
            this.PlatetoolTipController.SetSuperTip(this.fiPartDefectListForm1, null);
            this.fiPartDefectListForm1.TabControls = null;
            this.fiPartDefectListForm1.TabIndex = 0;
            this.fiPartDefectListForm1.TabPage = null;
            // 
            // SpreadDefect123
            // 
            this.SpreadDefect123.Controls.Add(this.fiSpreadDefectListForm1);
            this.SpreadDefect123.Name = "SpreadDefect123";
            this.SpreadDefect123.Size = new System.Drawing.Size(1206, 303);
            this.SpreadDefect123.Text = "Regular Defect";
            // 
            // fiSpreadDefectListForm1
            // 
            this.fiSpreadDefectListForm1.AllowAddRow = true;
            this.fiSpreadDefectListForm1.AlwaysShowDesignLayout = false;
            this.fiSpreadDefectListForm1.AutoOpenDetailForm = false;
            this.fiSpreadDefectListForm1.DataContext = null;
            this.fiSpreadDefectListForm1.DataSource = null;
            this.fiSpreadDefectListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.fiSpreadDefectListForm1.EditorTypeName = null;
            this.fiSpreadDefectListForm1.FileID = null;
            this.fiSpreadDefectListForm1.FirstForm = null;
            this.fiSpreadDefectListForm1.FormName = "SpreadDefectListForm";
            this.fiSpreadDefectListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.fiSpreadDefectListForm1.FormTitle = "PH.FabricInspection.UI.SpreadDefectListForm";
            this.fiSpreadDefectListForm1.IsCancelList = false;
            this.fiSpreadDefectListForm1.IsShowPivotTable = false;
            uI_GridViewLayout2.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            uI_GridViewLayout2.CheckFlag = false;
            uI_GridViewLayout2.CurrentBindingSource = null;
            uI_GridViewLayout2.CurrentDataContext = null;
            uI_GridViewLayout2.FileID = null;
            uI_GridViewLayout2.FormName = null;
            uI_GridViewLayout2.IsSys = null;
            uI_GridViewLayout2.IsSysDefault = null;
            uI_GridViewLayout2.IsUser = null;
            uI_GridViewLayout2.IsUserDefault = null;
            uI_GridViewLayout2.LayoutName = null;
            uI_GridViewLayout2.LayoutRaw = null;
            uI_GridViewLayout2.SideProgramID = null;
            uI_GridViewLayout2.UserID = null;
            this.fiSpreadDefectListForm1.LayoutData = uI_GridViewLayout2;
            this.fiSpreadDefectListForm1.LayoutName = null;
            this.fiSpreadDefectListForm1.ListForm = null;
            this.fiSpreadDefectListForm1.Location = new System.Drawing.Point(0, 0);
            this.fiSpreadDefectListForm1.MenuID = ((long)(0));
            this.fiSpreadDefectListForm1.Name = "fiSpreadDefectListForm1";
            this.fiSpreadDefectListForm1.NeedCheckPermission = true;
            this.fiSpreadDefectListForm1.NextForm = null;
            this.fiSpreadDefectListForm1.ParentForm = null;
            this.fiSpreadDefectListForm1.PrevForm = null;
            this.fiSpreadDefectListForm1.RowChangeAutoSave = true;
            this.fiSpreadDefectListForm1.ShowMultiCheck = false;
            this.fiSpreadDefectListForm1.SideProgramID = null;
            this.fiSpreadDefectListForm1.Size = new System.Drawing.Size(1206, 303);
            this.PlatetoolTipController.SetSuperTip(this.fiSpreadDefectListForm1, null);
            this.fiSpreadDefectListForm1.TabControls = null;
            this.fiSpreadDefectListForm1.TabIndex = 0;
            this.fiSpreadDefectListForm1.TabPage = null;
            // 
            // Width
            // 
            this.Width.Controls.Add(this.fiWidthListForm1);
            this.Width.Name = "Width";
            this.Width.Size = new System.Drawing.Size(1206, 303);
            this.Width.Text = "Width";
            // 
            // fiWidthListForm1
            // 
            this.fiWidthListForm1.AllowAddRow = true;
            this.fiWidthListForm1.AlwaysShowDesignLayout = false;
            this.fiWidthListForm1.AutoOpenDetailForm = false;
            this.fiWidthListForm1.DataContext = null;
            this.fiWidthListForm1.DataSource = null;
            this.fiWidthListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.fiWidthListForm1.EditorTypeName = null;
            this.fiWidthListForm1.FileID = null;
            this.fiWidthListForm1.FirstForm = null;
            this.fiWidthListForm1.FormName = "WidthListForm";
            this.fiWidthListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.fiWidthListForm1.FormTitle = "PH.FabricInspection.UI.WidthListForm";
            this.fiWidthListForm1.IsCancelList = false;
            this.fiWidthListForm1.IsShowPivotTable = false;
            uI_GridViewLayout3.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            uI_GridViewLayout3.CheckFlag = false;
            uI_GridViewLayout3.CurrentBindingSource = null;
            uI_GridViewLayout3.CurrentDataContext = null;
            uI_GridViewLayout3.FileID = null;
            uI_GridViewLayout3.FormName = null;
            uI_GridViewLayout3.IsSys = null;
            uI_GridViewLayout3.IsSysDefault = null;
            uI_GridViewLayout3.IsUser = null;
            uI_GridViewLayout3.IsUserDefault = null;
            uI_GridViewLayout3.LayoutName = null;
            uI_GridViewLayout3.LayoutRaw = null;
            uI_GridViewLayout3.SideProgramID = null;
            uI_GridViewLayout3.UserID = null;
            this.fiWidthListForm1.LayoutData = uI_GridViewLayout3;
            this.fiWidthListForm1.LayoutName = null;
            this.fiWidthListForm1.ListForm = null;
            this.fiWidthListForm1.Location = new System.Drawing.Point(0, 0);
            this.fiWidthListForm1.MenuID = ((long)(0));
            this.fiWidthListForm1.Name = "fiWidthListForm1";
            this.fiWidthListForm1.NeedCheckPermission = true;
            this.fiWidthListForm1.NextForm = null;
            this.fiWidthListForm1.ParentForm = null;
            this.fiWidthListForm1.PrevForm = null;
            this.fiWidthListForm1.RowChangeAutoSave = true;
            this.fiWidthListForm1.ShowMultiCheck = false;
            this.fiWidthListForm1.SideProgramID = null;
            this.fiWidthListForm1.Size = new System.Drawing.Size(1206, 303);
            this.PlatetoolTipController.SetSuperTip(this.fiWidthListForm1, null);
            this.fiWidthListForm1.TabControls = null;
            this.fiWidthListForm1.TabIndex = 0;
            this.fiWidthListForm1.TabPage = null;
            // 
            // Picture
            // 
            this.Picture.Controls.Add(this.fiPictureListForm1);
            this.Picture.Name = "Picture";
            this.Picture.PageVisible = false;
            this.Picture.Size = new System.Drawing.Size(1206, 303);
            this.Picture.Text = "Picture";
            // 
            // fiPictureListForm1
            // 
            this.fiPictureListForm1.AllowAddRow = true;
            this.fiPictureListForm1.AlwaysShowDesignLayout = false;
            this.fiPictureListForm1.AutoOpenDetailForm = false;
            this.fiPictureListForm1.DataContext = null;
            this.fiPictureListForm1.DataSource = null;
            this.fiPictureListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.fiPictureListForm1.EditorTypeName = null;
            this.fiPictureListForm1.FileID = null;
            this.fiPictureListForm1.FirstForm = null;
            this.fiPictureListForm1.FormName = "PictureListForm";
            this.fiPictureListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.fiPictureListForm1.FormTitle = "PH.FabricInspection.UI.PictureListForm";
            this.fiPictureListForm1.IsCancelList = false;
            this.fiPictureListForm1.IsShowPivotTable = false;
            uI_GridViewLayout4.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            uI_GridViewLayout4.CheckFlag = false;
            uI_GridViewLayout4.CurrentBindingSource = null;
            uI_GridViewLayout4.CurrentDataContext = null;
            uI_GridViewLayout4.FileID = null;
            uI_GridViewLayout4.FormName = null;
            uI_GridViewLayout4.IsSys = null;
            uI_GridViewLayout4.IsSysDefault = null;
            uI_GridViewLayout4.IsUser = null;
            uI_GridViewLayout4.IsUserDefault = null;
            uI_GridViewLayout4.LayoutName = null;
            uI_GridViewLayout4.LayoutRaw = null;
            uI_GridViewLayout4.SideProgramID = null;
            uI_GridViewLayout4.UserID = null;
            this.fiPictureListForm1.LayoutData = uI_GridViewLayout4;
            this.fiPictureListForm1.LayoutName = null;
            this.fiPictureListForm1.ListForm = null;
            this.fiPictureListForm1.Location = new System.Drawing.Point(0, 0);
            this.fiPictureListForm1.MenuID = ((long)(0));
            this.fiPictureListForm1.Name = "fiPictureListForm1";
            this.fiPictureListForm1.NeedCheckPermission = true;
            this.fiPictureListForm1.NextForm = null;
            this.fiPictureListForm1.ParentForm = null;
            this.fiPictureListForm1.PrevForm = null;
            this.fiPictureListForm1.RowChangeAutoSave = true;
            this.fiPictureListForm1.ShowMultiCheck = false;
            this.fiPictureListForm1.SideProgramID = null;
            this.fiPictureListForm1.Size = new System.Drawing.Size(1206, 303);
            this.PlatetoolTipController.SetSuperTip(this.fiPictureListForm1, null);
            this.fiPictureListForm1.TabControls = null;
            this.fiPictureListForm1.TabIndex = 0;
            this.fiPictureListForm1.TabPage = null;
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(124, 291);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(76, 21);
            this.textEdit1.TabIndex = 202;
            this.textEdit1.Tag = "Color_Group_Status";
            // 
            // textEdit2
            // 
            this.textEdit2.Location = new System.Drawing.Point(1437, 356);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Properties.ReadOnly = true;
            this.textEdit2.Size = new System.Drawing.Size(76, 21);
            this.textEdit2.TabIndex = 202;
            this.textEdit2.Tag = "Color_Group_Status";
            this.textEdit2.Visible = false;
            // 
            // Color_Group_StatusLabel
            // 
            this.Color_Group_StatusLabel.AutoSize = true;
            this.Color_Group_StatusLabel.Location = new System.Drawing.Point(1346, 363);
            this.Color_Group_StatusLabel.Name = "Color_Group_StatusLabel";
            this.Color_Group_StatusLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.Color_Group_StatusLabel, null);
            this.Color_Group_StatusLabel.TabIndex = 201;
            this.Color_Group_StatusLabel.Text = "Color Status:";
            this.Color_Group_StatusLabel.Visible = false;
            // 
            // memoExEdit1
            // 
            this.memoExEdit1.Location = new System.Drawing.Point(441, 276);
            this.memoExEdit1.Name = "memoExEdit1";
            this.memoExEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.memoExEdit1.Size = new System.Drawing.Size(102, 21);
            this.memoExEdit1.TabIndex = 200;
            this.memoExEdit1.Tag = "Insp_Result_Reason";
            // 
            // Insp_Result_ReasonLabel
            // 
            this.Insp_Result_ReasonLabel.AutoSize = true;
            this.Insp_Result_ReasonLabel.Location = new System.Drawing.Point(306, 280);
            this.Insp_Result_ReasonLabel.Name = "Insp_Result_ReasonLabel";
            this.Insp_Result_ReasonLabel.Size = new System.Drawing.Size(149, 12);
            this.PlatetoolTipController.SetSuperTip(this.Insp_Result_ReasonLabel, null);
            this.Insp_Result_ReasonLabel.TabIndex = 199;
            this.Insp_Result_ReasonLabel.Text = "zc) Overall Fail Reason:";
            // 
            // txtD_Spread_Remark
            // 
            this.txtD_Spread_Remark.Location = new System.Drawing.Point(1457, 121);
            this.txtD_Spread_Remark.Name = "txtD_Spread_Remark";
            this.txtD_Spread_Remark.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtD_Spread_Remark.Size = new System.Drawing.Size(81, 21);
            this.txtD_Spread_Remark.TabIndex = 198;
            this.txtD_Spread_Remark.Tag = "Spread_Remark";
            this.txtD_Spread_Remark.Visible = false;
            // 
            // txtD_Mould_Proc_Status
            // 
            this.txtD_Mould_Proc_Status.Location = new System.Drawing.Point(1467, 67);
            this.txtD_Mould_Proc_Status.Name = "txtD_Mould_Proc_Status";
            this.txtD_Mould_Proc_Status.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtD_Mould_Proc_Status.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("No", "3", -1)});
            this.txtD_Mould_Proc_Status.Size = new System.Drawing.Size(103, 21);
            this.txtD_Mould_Proc_Status.TabIndex = 197;
            this.txtD_Mould_Proc_Status.Tag = "Mould_Trial_Result";
            this.txtD_Mould_Proc_Status.Visible = false;
            // 
            // txtD_Spread_Proc_Status
            // 
            this.txtD_Spread_Proc_Status.Location = new System.Drawing.Point(1409, 40);
            this.txtD_Spread_Proc_Status.Name = "txtD_Spread_Proc_Status";
            this.txtD_Spread_Proc_Status.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtD_Spread_Proc_Status.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Deductive", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "3", -1)});
            this.txtD_Spread_Proc_Status.Size = new System.Drawing.Size(103, 21);
            this.txtD_Spread_Proc_Status.TabIndex = 196;
            this.txtD_Spread_Proc_Status.Tag = "Spread_Insp_Result";
            this.txtD_Spread_Proc_Status.Visible = false;
            // 
            // txtD_Insp_Result
            // 
            this.txtD_Insp_Result.Location = new System.Drawing.Point(1379, 383);
            this.txtD_Insp_Result.Name = "txtD_Insp_Result";
            this.txtD_Insp_Result.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtD_Insp_Result.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Deductive", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "3", -1)});
            this.txtD_Insp_Result.Properties.ReadOnly = true;
            this.txtD_Insp_Result.Size = new System.Drawing.Size(76, 21);
            this.txtD_Insp_Result.TabIndex = 195;
            this.txtD_Insp_Result.Tag = "Insp_Result";
            this.txtD_Insp_Result.Visible = false;
            // 
            // txtD_part_Insp_Result
            // 
            this.txtD_part_Insp_Result.Location = new System.Drawing.Point(173, 196);
            this.txtD_part_Insp_Result.Name = "txtD_part_Insp_Result";
            this.txtD_part_Insp_Result.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtD_part_Insp_Result.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Deductive", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "3", -1)});
            this.txtD_part_Insp_Result.Properties.ReadOnly = true;
            this.txtD_part_Insp_Result.Size = new System.Drawing.Size(102, 21);
            this.txtD_part_Insp_Result.TabIndex = 194;
            this.txtD_part_Insp_Result.Tag = "Party_Insp_Result";
            // 
            // Change_DateLabel
            // 
            this.Change_DateLabel.AutoSize = true;
            this.Change_DateLabel.Location = new System.Drawing.Point(306, 120);
            this.Change_DateLabel.Name = "Change_DateLabel";
            this.Change_DateLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.Change_DateLabel, null);
            this.Change_DateLabel.TabIndex = 192;
            this.Change_DateLabel.Text = "id Audit dd:";
            // 
            // txtD_Inspection_Date
            // 
            this.txtD_Inspection_Date.Location = new System.Drawing.Point(441, 116);
            this.txtD_Inspection_Date.Name = "txtD_Inspection_Date";
            this.txtD_Inspection_Date.Properties.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.txtD_Inspection_Date.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtD_Inspection_Date.Properties.EditFormat.FormatString = "yyyy/MM/dd";
            this.txtD_Inspection_Date.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtD_Inspection_Date.Properties.Mask.EditMask = "d";
            this.txtD_Inspection_Date.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.DateTime;
            this.txtD_Inspection_Date.Properties.ReadOnly = true;
            this.txtD_Inspection_Date.Size = new System.Drawing.Size(102, 21);
            this.txtD_Inspection_Date.TabIndex = 193;
            this.txtD_Inspection_Date.Tag = "Create_Date";
            // 
            // System_Install_NoLabel
            // 
            this.System_Install_NoLabel.AutoSize = true;
            this.System_Install_NoLabel.Location = new System.Drawing.Point(23, 40);
            this.System_Install_NoLabel.Name = "System_Install_NoLabel";
            this.System_Install_NoLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.System_Install_NoLabel, null);
            this.System_Install_NoLabel.TabIndex = 141;
            this.System_Install_NoLabel.Text = "Item/Clr Lot#.:";
            // 
            // LightStatusLabel
            // 
            this.LightStatusLabel.AutoSize = true;
            this.LightStatusLabel.Location = new System.Drawing.Point(306, 80);
            this.LightStatusLabel.Name = "LightStatusLabel";
            this.LightStatusLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.LightStatusLabel, null);
            this.LightStatusLabel.TabIndex = 142;
            this.LightStatusLabel.Text = "Light Source:";
            // 
            // Lot_IdLabel
            // 
            this.Lot_IdLabel.AutoSize = true;
            this.Lot_IdLabel.Location = new System.Drawing.Point(306, 40);
            this.Lot_IdLabel.Name = "Lot_IdLabel";
            this.Lot_IdLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.Lot_IdLabel, null);
            this.Lot_IdLabel.TabIndex = 144;
            this.Lot_IdLabel.Text = "Item id#:";
            // 
            // Item_NoLabel
            // 
            this.Item_NoLabel.AutoSize = true;
            this.Item_NoLabel.Location = new System.Drawing.Point(572, 40);
            this.Item_NoLabel.Name = "Item_NoLabel";
            this.Item_NoLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.Item_NoLabel, null);
            this.Item_NoLabel.TabIndex = 145;
            this.Item_NoLabel.Text = "Item Cde/Clr:";
            // 
            // Stock_In_DateLabel
            // 
            this.Stock_In_DateLabel.AutoSize = true;
            this.Stock_In_DateLabel.Location = new System.Drawing.Point(23, 120);
            this.Stock_In_DateLabel.Name = "Stock_In_DateLabel";
            this.Stock_In_DateLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.Stock_In_DateLabel, null);
            this.Stock_In_DateLabel.TabIndex = 146;
            this.Stock_In_DateLabel.Text = "id Create dd:";
            // 
            // Spread_Insp_ResultLabel
            // 
            this.Spread_Insp_ResultLabel.AutoSize = true;
            this.Spread_Insp_ResultLabel.Location = new System.Drawing.Point(1314, 44);
            this.Spread_Insp_ResultLabel.Name = "Spread_Insp_ResultLabel";
            this.Spread_Insp_ResultLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.Spread_Insp_ResultLabel, null);
            this.Spread_Insp_ResultLabel.TabIndex = 147;
            this.Spread_Insp_ResultLabel.Text = "Defect Result:";
            this.Spread_Insp_ResultLabel.Visible = false;
            // 
            // Special_MarkerLabel
            // 
            this.Special_MarkerLabel.AutoSize = true;
            this.Special_MarkerLabel.Location = new System.Drawing.Point(306, 200);
            this.Special_MarkerLabel.Name = "Special_MarkerLabel";
            this.Special_MarkerLabel.Size = new System.Drawing.Size(143, 12);
            this.PlatetoolTipController.SetSuperTip(this.Special_MarkerLabel, null);
            this.Special_MarkerLabel.TabIndex = 148;
            this.Special_MarkerLabel.Text = "dk) Evade Marker Loss%:";
            // 
            // Spread_RemarkLabel
            // 
            this.Spread_RemarkLabel.AutoSize = true;
            this.Spread_RemarkLabel.Location = new System.Drawing.Point(1347, 125);
            this.Spread_RemarkLabel.Name = "Spread_RemarkLabel";
            this.Spread_RemarkLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.Spread_RemarkLabel, null);
            this.Spread_RemarkLabel.TabIndex = 149;
            this.Spread_RemarkLabel.Text = "Defect Remark:";
            this.Spread_RemarkLabel.Visible = false;
            // 
            // Mould_Trial_ResultLabel
            // 
            this.Mould_Trial_ResultLabel.AutoSize = true;
            this.Mould_Trial_ResultLabel.Location = new System.Drawing.Point(1345, 76);
            this.Mould_Trial_ResultLabel.Name = "Mould_Trial_ResultLabel";
            this.Mould_Trial_ResultLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.Mould_Trial_ResultLabel, null);
            this.Mould_Trial_ResultLabel.TabIndex = 150;
            this.Mould_Trial_ResultLabel.Text = "Moulding Status:";
            this.Mould_Trial_ResultLabel.Visible = false;
            // 
            // Mould_Trial_RemarkLabel
            // 
            this.Mould_Trial_RemarkLabel.AutoSize = true;
            this.Mould_Trial_RemarkLabel.Location = new System.Drawing.Point(1349, 99);
            this.Mould_Trial_RemarkLabel.Name = "Mould_Trial_RemarkLabel";
            this.Mould_Trial_RemarkLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.Mould_Trial_RemarkLabel, null);
            this.Mould_Trial_RemarkLabel.TabIndex = 151;
            this.Mould_Trial_RemarkLabel.Text = "Mould Remark:";
            this.Mould_Trial_RemarkLabel.Visible = false;
            // 
            // Insp_LengthLabel
            // 
            this.Insp_LengthLabel.AutoSize = true;
            this.Insp_LengthLabel.Location = new System.Drawing.Point(306, 240);
            this.Insp_LengthLabel.Name = "Insp_LengthLabel";
            this.Insp_LengthLabel.Size = new System.Drawing.Size(167, 12);
            this.PlatetoolTipController.SetSuperTip(this.Insp_LengthLabel, null);
            this.Insp_LengthLabel.TabIndex = 152;
            this.Insp_LengthLabel.Text = "lg) Final stk-in-id Length:";
            // 
            // Actual_WeightLabel
            // 
            this.Actual_WeightLabel.AutoSize = true;
            this.Actual_WeightLabel.Location = new System.Drawing.Point(823, 243);
            this.Actual_WeightLabel.Name = "Actual_WeightLabel";
            this.Actual_WeightLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.Actual_WeightLabel, null);
            this.Actual_WeightLabel.TabIndex = 153;
            this.Actual_WeightLabel.Text = "tb) Act. Weigth:";
            // 
            // Usable_WidthLabel
            // 
            this.Usable_WidthLabel.AutoSize = true;
            this.Usable_WidthLabel.Location = new System.Drawing.Point(572, 243);
            this.Usable_WidthLabel.Name = "Usable_WidthLabel";
            this.Usable_WidthLabel.Size = new System.Drawing.Size(137, 24);
            this.PlatetoolTipController.SetSuperTip(this.Usable_WidthLabel, null);
            this.Usable_WidthLabel.TabIndex = 154;
            this.Usable_WidthLabel.Text = "wb) Meas. usable width\r\n   (narrowest)";
            // 
            // Supplier_WidthLabel
            // 
            this.Supplier_WidthLabel.AutoSize = true;
            this.Supplier_WidthLabel.Location = new System.Drawing.Point(23, 80);
            this.Supplier_WidthLabel.Name = "Supplier_WidthLabel";
            this.Supplier_WidthLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.Supplier_WidthLabel, null);
            this.Supplier_WidthLabel.TabIndex = 155;
            this.Supplier_WidthLabel.Text = "Supp Width(mm):";
            // 
            // Roll_NoLabel
            // 
            this.Roll_NoLabel.AutoSize = true;
            this.Roll_NoLabel.Location = new System.Drawing.Point(828, 80);
            this.Roll_NoLabel.Name = "Roll_NoLabel";
            this.Roll_NoLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.Roll_NoLabel, null);
            this.Roll_NoLabel.TabIndex = 156;
            this.Roll_NoLabel.Text = "Roll#:";
            // 
            // Actual_LengthLabel
            // 
            this.Actual_LengthLabel.AutoSize = true;
            this.Actual_LengthLabel.Location = new System.Drawing.Point(823, 205);
            this.Actual_LengthLabel.Name = "Actual_LengthLabel";
            this.Actual_LengthLabel.Size = new System.Drawing.Size(161, 12);
            this.PlatetoolTipController.SetSuperTip(this.Actual_LengthLabel, null);
            this.Actual_LengthLabel.TabIndex = 157;
            this.Actual_LengthLabel.Text = "la) Pkg List/id Length(m):";
            // 
            // Supplich_BatchLabel
            // 
            this.Supplich_BatchLabel.AutoSize = true;
            this.Supplich_BatchLabel.Location = new System.Drawing.Point(23, 320);
            this.Supplich_BatchLabel.Name = "Supplich_BatchLabel";
            this.Supplich_BatchLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.Supplich_BatchLabel, null);
            this.Supplich_BatchLabel.TabIndex = 158;
            this.Supplich_BatchLabel.Text = "ca) Batch#.:";
            // 
            // Total_PointsLabel
            // 
            this.Total_PointsLabel.AutoSize = true;
            this.Total_PointsLabel.Location = new System.Drawing.Point(572, 122);
            this.Total_PointsLabel.Name = "Total_PointsLabel";
            this.Total_PointsLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(this.Total_PointsLabel, null);
            this.Total_PointsLabel.TabIndex = 159;
            this.Total_PointsLabel.Text = "db) Defect Ttl Pts:";
            // 
            // Item_DescLabel
            // 
            this.Item_DescLabel.AutoSize = true;
            this.Item_DescLabel.Location = new System.Drawing.Point(828, 40);
            this.Item_DescLabel.Name = "Item_DescLabel";
            this.Item_DescLabel.Size = new System.Drawing.Size(143, 12);
            this.PlatetoolTipController.SetSuperTip(this.Item_DescLabel, null);
            this.Item_DescLabel.TabIndex = 160;
            this.Item_DescLabel.Text = "Supp Item Ref/Clr Name:";
            // 
            // Points_Hundred_SQMLabel
            // 
            this.Points_Hundred_SQMLabel.AutoSize = true;
            this.Points_Hundred_SQMLabel.Location = new System.Drawing.Point(823, 125);
            this.Points_Hundred_SQMLabel.Name = "Points_Hundred_SQMLabel";
            this.Points_Hundred_SQMLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.Points_Hundred_SQMLabel, null);
            this.Points_Hundred_SQMLabel.TabIndex = 161;
            this.Points_Hundred_SQMLabel.Text = "dc) Pt/100m2:";
            // 
            // Deductive_QtyLabel
            // 
            this.Deductive_QtyLabel.AutoSize = true;
            this.Deductive_QtyLabel.Location = new System.Drawing.Point(572, 162);
            this.Deductive_QtyLabel.Name = "Deductive_QtyLabel";
            this.Deductive_QtyLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(this.Deductive_QtyLabel, null);
            this.Deductive_QtyLabel.TabIndex = 162;
            this.Deductive_QtyLabel.Text = "dh) Deductible Qty:";
            // 
            // WastageLabel
            // 
            this.WastageLabel.AutoSize = true;
            this.WastageLabel.Location = new System.Drawing.Point(823, 161);
            this.WastageLabel.Name = "WastageLabel";
            this.WastageLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.WastageLabel, null);
            this.WastageLabel.TabIndex = 163;
            this.WastageLabel.Text = "di) Std Loss%:";
            // 
            // Insp_ResultLabel
            // 
            this.Insp_ResultLabel.AutoSize = true;
            this.Insp_ResultLabel.Location = new System.Drawing.Point(23, 280);
            this.Insp_ResultLabel.Name = "Insp_ResultLabel";
            this.Insp_ResultLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.Insp_ResultLabel, null);
            this.Insp_ResultLabel.TabIndex = 164;
            this.Insp_ResultLabel.Text = "zb) Overal Result:";
            // 
            // Party_Insp_ResultLabel
            // 
            this.Party_Insp_ResultLabel.AutoSize = true;
            this.Party_Insp_ResultLabel.Location = new System.Drawing.Point(23, 200);
            this.Party_Insp_ResultLabel.Name = "Party_Insp_ResultLabel";
            this.Party_Insp_ResultLabel.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(this.Party_Insp_ResultLabel, null);
            this.Party_Insp_ResultLabel.TabIndex = 165;
            this.Party_Insp_ResultLabel.Text = "Do) id Defect Result:";
            // 
            // PH_SampleLabel
            // 
            this.PH_SampleLabel.AutoSize = true;
            this.PH_SampleLabel.Location = new System.Drawing.Point(23, 240);
            this.PH_SampleLabel.Name = "PH_SampleLabel";
            this.PH_SampleLabel.Size = new System.Drawing.Size(185, 12);
            this.PlatetoolTipController.SetSuperTip(this.PH_SampleLabel, null);
            this.PH_SampleLabel.TabIndex = 166;
            this.PH_SampleLabel.Text = "lf) Cut Length For Testing(m):";
            // 
            // Panel_Size1Label
            // 
            this.Panel_Size1Label.AutoSize = true;
            this.Panel_Size1Label.Location = new System.Drawing.Point(23, 160);
            this.Panel_Size1Label.Name = "Panel_Size1Label";
            this.Panel_Size1Label.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.Panel_Size1Label, null);
            this.Panel_Size1Label.TabIndex = 167;
            this.Panel_Size1Label.Text = "de) Sz (L) (m):";
            // 
            // lable_Panel_Size2
            // 
            this.lable_Panel_Size2.AutoSize = true;
            this.lable_Panel_Size2.Location = new System.Drawing.Point(306, 160);
            this.lable_Panel_Size2.Name = "lable_Panel_Size2";
            this.lable_Panel_Size2.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_Panel_Size2, null);
            this.lable_Panel_Size2.TabIndex = 168;
            this.lable_Panel_Size2.Text = "df) Sz (W) (m)";
            // 
            // txtD_Panel_Size2
            // 
            this.txtD_Panel_Size2.Location = new System.Drawing.Point(441, 156);
            this.txtD_Panel_Size2.Name = "txtD_Panel_Size2";
            this.txtD_Panel_Size2.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Panel_Size2.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Panel_Size2.Properties.Mask.EditMask = "n2";
            this.txtD_Panel_Size2.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_Panel_Size2.Size = new System.Drawing.Size(102, 21);
            this.txtD_Panel_Size2.TabIndex = 191;
            this.txtD_Panel_Size2.Tag = "Panel_Size2";
            // 
            // txtD_Panel_Size1
            // 
            this.txtD_Panel_Size1.Location = new System.Drawing.Point(173, 156);
            this.txtD_Panel_Size1.Name = "txtD_Panel_Size1";
            this.txtD_Panel_Size1.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Panel_Size1.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Panel_Size1.Properties.Mask.EditMask = "n2";
            this.txtD_Panel_Size1.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_Panel_Size1.Size = new System.Drawing.Size(102, 21);
            this.txtD_Panel_Size1.TabIndex = 190;
            this.txtD_Panel_Size1.Tag = "Panel_Size1";
            // 
            // txtD_PH_Sample
            // 
            this.txtD_PH_Sample.Location = new System.Drawing.Point(173, 236);
            this.txtD_PH_Sample.Name = "txtD_PH_Sample";
            this.txtD_PH_Sample.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_PH_Sample.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_PH_Sample.Properties.Mask.EditMask = "n2";
            this.txtD_PH_Sample.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_PH_Sample.Size = new System.Drawing.Size(102, 21);
            this.txtD_PH_Sample.TabIndex = 189;
            this.txtD_PH_Sample.Tag = "PH_Sample";
            // 
            // txtD_Wastage
            // 
            this.txtD_Wastage.Location = new System.Drawing.Point(953, 157);
            this.txtD_Wastage.Name = "txtD_Wastage";
            this.txtD_Wastage.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Wastage.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Wastage.Properties.Mask.EditMask = "n";
            this.txtD_Wastage.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_Wastage.Properties.ReadOnly = true;
            this.txtD_Wastage.Size = new System.Drawing.Size(103, 21);
            this.txtD_Wastage.TabIndex = 188;
            this.txtD_Wastage.Tag = "Wastage";
            // 
            // txtD_Deductive_Qty
            // 
            this.txtD_Deductive_Qty.Location = new System.Drawing.Point(696, 158);
            this.txtD_Deductive_Qty.Name = "txtD_Deductive_Qty";
            this.txtD_Deductive_Qty.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Deductive_Qty.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Deductive_Qty.Properties.Mask.EditMask = "n2";
            this.txtD_Deductive_Qty.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_Deductive_Qty.Properties.ReadOnly = true;
            this.txtD_Deductive_Qty.Size = new System.Drawing.Size(102, 21);
            this.txtD_Deductive_Qty.TabIndex = 187;
            this.txtD_Deductive_Qty.Tag = "Deductive_Qty";
            // 
            // txtD_Potions_Hundred_Sqm
            // 
            this.txtD_Potions_Hundred_Sqm.Location = new System.Drawing.Point(953, 121);
            this.txtD_Potions_Hundred_Sqm.Name = "txtD_Potions_Hundred_Sqm";
            this.txtD_Potions_Hundred_Sqm.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Potions_Hundred_Sqm.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Potions_Hundred_Sqm.Properties.Mask.EditMask = "n2";
            this.txtD_Potions_Hundred_Sqm.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_Potions_Hundred_Sqm.Properties.ReadOnly = true;
            this.txtD_Potions_Hundred_Sqm.Size = new System.Drawing.Size(103, 21);
            this.txtD_Potions_Hundred_Sqm.TabIndex = 186;
            this.txtD_Potions_Hundred_Sqm.Tag = "Points_Hundred_SQM";
            // 
            // txtD_Item_Description
            // 
            this.txtD_Item_Description.Location = new System.Drawing.Point(958, 36);
            this.txtD_Item_Description.Name = "txtD_Item_Description";
            this.txtD_Item_Description.Properties.ReadOnly = true;
            this.txtD_Item_Description.Size = new System.Drawing.Size(309, 21);
            this.txtD_Item_Description.TabIndex = 185;
            this.txtD_Item_Description.Tag = "Item_Desc";
            // 
            // txtD_Total_Points
            // 
            this.txtD_Total_Points.Location = new System.Drawing.Point(696, 118);
            this.txtD_Total_Points.Name = "txtD_Total_Points";
            this.txtD_Total_Points.Properties.ReadOnly = true;
            this.txtD_Total_Points.Size = new System.Drawing.Size(102, 21);
            this.txtD_Total_Points.TabIndex = 184;
            this.txtD_Total_Points.Tag = "Total_Points";
            // 
            // txtD_Supplier_Batch
            // 
            this.txtD_Supplier_Batch.Location = new System.Drawing.Point(173, 318);
            this.txtD_Supplier_Batch.Name = "txtD_Supplier_Batch";
            this.txtD_Supplier_Batch.Size = new System.Drawing.Size(102, 21);
            this.txtD_Supplier_Batch.TabIndex = 183;
            this.txtD_Supplier_Batch.Tag = "Supplich_Batch";
            // 
            // txtD_Actual_Length
            // 
            this.txtD_Actual_Length.Location = new System.Drawing.Point(953, 201);
            this.txtD_Actual_Length.Name = "txtD_Actual_Length";
            this.txtD_Actual_Length.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Actual_Length.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Actual_Length.Properties.Mask.EditMask = "n2";
            this.txtD_Actual_Length.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_Actual_Length.Properties.ReadOnly = true;
            this.txtD_Actual_Length.Size = new System.Drawing.Size(103, 21);
            this.txtD_Actual_Length.TabIndex = 182;
            this.txtD_Actual_Length.Tag = "Actual_Length";
            // 
            // txtD_Roll_NO
            // 
            this.txtD_Roll_NO.Location = new System.Drawing.Point(952, 81);
            this.txtD_Roll_NO.Name = "txtD_Roll_NO";
            this.txtD_Roll_NO.Size = new System.Drawing.Size(103, 21);
            this.txtD_Roll_NO.TabIndex = 181;
            this.txtD_Roll_NO.Tag = "Roll_No";
            // 
            // txtD_Actual_Width
            // 
            this.txtD_Actual_Width.Location = new System.Drawing.Point(173, 76);
            this.txtD_Actual_Width.Name = "txtD_Actual_Width";
            this.txtD_Actual_Width.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Actual_Width.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Actual_Width.Properties.Mask.EditMask = "n2";
            this.txtD_Actual_Width.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_Actual_Width.Properties.ReadOnly = true;
            this.txtD_Actual_Width.Size = new System.Drawing.Size(103, 21);
            this.txtD_Actual_Width.TabIndex = 180;
            this.txtD_Actual_Width.Tag = "Supplier_Width";
            // 
            // txtD_Usable_Width
            // 
            this.txtD_Usable_Width.Location = new System.Drawing.Point(696, 239);
            this.txtD_Usable_Width.Name = "txtD_Usable_Width";
            this.txtD_Usable_Width.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Usable_Width.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Usable_Width.Properties.Mask.EditMask = "n2";
            this.txtD_Usable_Width.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_Usable_Width.Size = new System.Drawing.Size(102, 21);
            this.txtD_Usable_Width.TabIndex = 179;
            this.txtD_Usable_Width.Tag = "Usable_Width";
            // 
            // txtD_Actual_Weigth
            // 
            this.txtD_Actual_Weigth.Location = new System.Drawing.Point(953, 239);
            this.txtD_Actual_Weigth.Name = "txtD_Actual_Weigth";
            this.txtD_Actual_Weigth.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Actual_Weigth.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Actual_Weigth.Properties.Mask.EditMask = "n2";
            this.txtD_Actual_Weigth.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_Actual_Weigth.Size = new System.Drawing.Size(103, 21);
            this.txtD_Actual_Weigth.TabIndex = 178;
            this.txtD_Actual_Weigth.Tag = "Actual_Weight";
            // 
            // txtD_Insp_Length
            // 
            this.txtD_Insp_Length.Location = new System.Drawing.Point(441, 236);
            this.txtD_Insp_Length.Name = "txtD_Insp_Length";
            this.txtD_Insp_Length.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Insp_Length.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Insp_Length.Properties.Mask.EditMask = "n2";
            this.txtD_Insp_Length.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txtD_Insp_Length.Size = new System.Drawing.Size(102, 21);
            this.txtD_Insp_Length.TabIndex = 177;
            this.txtD_Insp_Length.Tag = "Insp_Length";
            // 
            // txtD_Special_Marker
            // 
            this.txtD_Special_Marker.Location = new System.Drawing.Point(441, 196);
            this.txtD_Special_Marker.Name = "txtD_Special_Marker";
            this.txtD_Special_Marker.Properties.DisplayFormat.FormatString = "n2";
            this.txtD_Special_Marker.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtD_Special_Marker.Size = new System.Drawing.Size(102, 21);
            this.txtD_Special_Marker.TabIndex = 175;
            this.txtD_Special_Marker.Tag = "Special_Marker";
            // 
            // txtD_StockIn_Date
            // 
            this.txtD_StockIn_Date.Location = new System.Drawing.Point(173, 116);
            this.txtD_StockIn_Date.Name = "txtD_StockIn_Date";
            this.txtD_StockIn_Date.Properties.ReadOnly = true;
            this.txtD_StockIn_Date.Size = new System.Drawing.Size(103, 21);
            this.txtD_StockIn_Date.TabIndex = 174;
            this.txtD_StockIn_Date.Tag = "Stock_In_DateShow";
            // 
            // txtD_Item_NO
            // 
            this.txtD_Item_NO.Location = new System.Drawing.Point(646, 36);
            this.txtD_Item_NO.Name = "txtD_Item_NO";
            this.txtD_Item_NO.Properties.ReadOnly = true;
            this.txtD_Item_NO.Size = new System.Drawing.Size(163, 21);
            this.txtD_Item_NO.TabIndex = 173;
            this.txtD_Item_NO.Tag = "Item_No";
            // 
            // txtD_Lot_ID
            // 
            this.txtD_Lot_ID.Location = new System.Drawing.Point(385, 36);
            this.txtD_Lot_ID.Name = "txtD_Lot_ID";
            this.txtD_Lot_ID.Properties.ReadOnly = true;
            this.txtD_Lot_ID.Size = new System.Drawing.Size(158, 21);
            this.txtD_Lot_ID.TabIndex = 172;
            this.txtD_Lot_ID.Tag = "Lot_Id";
            // 
            // txtLightStatus
            // 
            this.txtLightStatus.EditValue = "";
            this.txtLightStatus.Location = new System.Drawing.Point(385, 76);
            this.txtLightStatus.Name = "txtLightStatus";
            this.txtLightStatus.Properties.ReadOnly = true;
            this.txtLightStatus.Size = new System.Drawing.Size(334, 21);
            this.txtLightStatus.TabIndex = 170;
            this.txtLightStatus.TabStop = false;
            this.txtLightStatus.Tag = "LightStatus";
            // 
            // txtD_System_NO
            // 
            this.txtD_System_NO.Location = new System.Drawing.Point(173, 36);
            this.txtD_System_NO.Name = "txtD_System_NO";
            this.txtD_System_NO.Properties.ReadOnly = true;
            this.txtD_System_NO.Size = new System.Drawing.Size(103, 21);
            this.txtD_System_NO.TabIndex = 169;
            this.txtD_System_NO.Tag = "AuditNo1";
            // 
            // WeftYarnLabel
            // 
            this.WeftYarnLabel.AutoSize = true;
            this.WeftYarnLabel.Location = new System.Drawing.Point(1350, 150);
            this.WeftYarnLabel.Name = "WeftYarnLabel";
            this.WeftYarnLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.WeftYarnLabel, null);
            this.WeftYarnLabel.TabIndex = 203;
            this.WeftYarnLabel.Text = "Weft Yarn(Y/N):";
            this.WeftYarnLabel.Visible = false;
            // 
            // txtDWeftYarn
            // 
            this.txtDWeftYarn.Location = new System.Drawing.Point(1458, 146);
            this.txtDWeftYarn.Name = "txtDWeftYarn";
            this.txtDWeftYarn.Properties.ReadOnly = true;
            this.txtDWeftYarn.Size = new System.Drawing.Size(80, 21);
            this.txtDWeftYarn.TabIndex = 204;
            this.txtDWeftYarn.Tag = "WeftYarn";
            this.txtDWeftYarn.Visible = false;
            // 
            // ElongationLabel
            // 
            this.ElongationLabel.AutoSize = true;
            this.ElongationLabel.Location = new System.Drawing.Point(823, 322);
            this.ElongationLabel.Name = "ElongationLabel";
            this.ElongationLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(this.ElongationLabel, null);
            this.ElongationLabel.TabIndex = 205;
            this.ElongationLabel.Text = "ea) Elongation Y/N:";
            // 
            // WeftYarnPercentageLabel
            // 
            this.WeftYarnPercentageLabel.AutoSize = true;
            this.WeftYarnPercentageLabel.Location = new System.Drawing.Point(1319, 211);
            this.WeftYarnPercentageLabel.Name = "WeftYarnPercentageLabel";
            this.WeftYarnPercentageLabel.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(this.WeftYarnPercentageLabel, null);
            this.WeftYarnPercentageLabel.TabIndex = 209;
            this.WeftYarnPercentageLabel.Text = "Weft Yarn Percentage:";
            this.WeftYarnPercentageLabel.Visible = false;
            // 
            // WeftYarmClassLabel
            // 
            this.WeftYarmClassLabel.AutoSize = true;
            this.WeftYarmClassLabel.Location = new System.Drawing.Point(1314, 184);
            this.WeftYarmClassLabel.Name = "WeftYarmClassLabel";
            this.WeftYarmClassLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.WeftYarmClassLabel, null);
            this.WeftYarmClassLabel.TabIndex = 207;
            this.WeftYarmClassLabel.Text = "Weft Yarn Class:";
            this.WeftYarmClassLabel.Visible = false;
            // 
            // txtWeftYarnClass
            // 
            this.txtWeftYarnClass.Location = new System.Drawing.Point(1484, 178);
            this.txtWeftYarnClass.Name = "txtWeftYarnClass";
            this.txtWeftYarnClass.Properties.ReadOnly = true;
            this.txtWeftYarnClass.Size = new System.Drawing.Size(76, 21);
            this.txtWeftYarnClass.TabIndex = 211;
            this.txtWeftYarnClass.Tag = "WeftYarnClass";
            this.txtWeftYarnClass.Visible = false;
            // 
            // txtWeftYarnPercentage
            // 
            this.txtWeftYarnPercentage.Location = new System.Drawing.Point(1468, 206);
            this.txtWeftYarnPercentage.Name = "txtWeftYarnPercentage";
            this.txtWeftYarnPercentage.Properties.ReadOnly = true;
            this.txtWeftYarnPercentage.Size = new System.Drawing.Size(102, 21);
            this.txtWeftYarnPercentage.TabIndex = 212;
            this.txtWeftYarnPercentage.Tag = "WeftYarnPercentage";
            this.txtWeftYarnPercentage.Visible = false;
            // 
            // WeftYarnStautsLabel
            // 
            this.WeftYarnStautsLabel.AutoSize = true;
            this.WeftYarnStautsLabel.Location = new System.Drawing.Point(1325, 242);
            this.WeftYarnStautsLabel.Name = "WeftYarnStautsLabel";
            this.WeftYarnStautsLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.WeftYarnStautsLabel, null);
            this.WeftYarnStautsLabel.TabIndex = 213;
            this.WeftYarnStautsLabel.Text = "Weft Yarn Stauts:";
            this.WeftYarnStautsLabel.Visible = false;
            // 
            // ElongationStatusLabel
            // 
            this.ElongationStatusLabel.AutoSize = true;
            this.ElongationStatusLabel.Location = new System.Drawing.Point(1322, 326);
            this.ElongationStatusLabel.Name = "ElongationStatusLabel";
            this.ElongationStatusLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.ElongationStatusLabel, null);
            this.ElongationStatusLabel.TabIndex = 214;
            this.ElongationStatusLabel.Text = "Elongation Status:";
            this.ElongationStatusLabel.Visible = false;
            // 
            // txtDWeftYarnStatus
            // 
            this.txtDWeftYarnStatus.Location = new System.Drawing.Point(1433, 237);
            this.txtDWeftYarnStatus.Name = "txtDWeftYarnStatus";
            this.txtDWeftYarnStatus.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDWeftYarnStatus.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Deductive", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "3", -1)});
            this.txtDWeftYarnStatus.Size = new System.Drawing.Size(80, 21);
            this.txtDWeftYarnStatus.TabIndex = 215;
            this.txtDWeftYarnStatus.Tag = "WeftYarnStatus";
            this.txtDWeftYarnStatus.Visible = false;
            // 
            // txtDElongationStatus
            // 
            this.txtDElongationStatus.Location = new System.Drawing.Point(1432, 322);
            this.txtDElongationStatus.Name = "txtDElongationStatus";
            this.txtDElongationStatus.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDElongationStatus.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Deductive", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "3", -1)});
            this.txtDElongationStatus.Size = new System.Drawing.Size(81, 21);
            this.txtDElongationStatus.TabIndex = 216;
            this.txtDElongationStatus.Tag = "ElongationStatus";
            this.txtDElongationStatus.Visible = false;
            // 
            // txtD_Mould_Trial_Remark
            // 
            this.txtD_Mould_Trial_Remark.Location = new System.Drawing.Point(1457, 94);
            this.txtD_Mould_Trial_Remark.Name = "txtD_Mould_Trial_Remark";
            this.txtD_Mould_Trial_Remark.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtD_Mould_Trial_Remark.Size = new System.Drawing.Size(80, 21);
            this.txtD_Mould_Trial_Remark.TabIndex = 217;
            this.txtD_Mould_Trial_Remark.Tag = "Mould_Trial_Remark";
            this.txtD_Mould_Trial_Remark.Visible = false;
            // 
            // lbMouldTrial
            // 
            this.lbMouldTrial.AutoSize = true;
            this.lbMouldTrial.Location = new System.Drawing.Point(306, 360);
            this.lbMouldTrial.Name = "lbMouldTrial";
            this.lbMouldTrial.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbMouldTrial, null);
            this.lbMouldTrial.TabIndex = 218;
            this.lbMouldTrial.Text = "ma) Mould Y/N:";
            // 
            // textEdit3
            // 
            this.textEdit3.Location = new System.Drawing.Point(173, 276);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Size = new System.Drawing.Size(102, 21);
            this.textEdit3.TabIndex = 220;
            this.textEdit3.Tag = "Insp_Result";
            // 
            // textEdit4
            // 
            this.textEdit4.Location = new System.Drawing.Point(696, 202);
            this.textEdit4.Name = "textEdit4";
            this.textEdit4.Size = new System.Drawing.Size(102, 21);
            this.textEdit4.TabIndex = 222;
            this.textEdit4.Tag = "AgreedByCutting";
            // 
            // lbAgreedByCutting
            // 
            this.lbAgreedByCutting.AutoSize = true;
            this.lbAgreedByCutting.Location = new System.Drawing.Point(572, 206);
            this.lbAgreedByCutting.Name = "lbAgreedByCutting";
            this.lbAgreedByCutting.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbAgreedByCutting, null);
            this.lbAgreedByCutting.TabIndex = 221;
            this.lbAgreedByCutting.Text = "Agreed by cutting:";
            // 
            // lbColorMatching
            // 
            this.lbColorMatching.AutoSize = true;
            this.lbColorMatching.Location = new System.Drawing.Point(306, 320);
            this.lbColorMatching.Name = "lbColorMatching";
            this.lbColorMatching.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbColorMatching, null);
            this.lbColorMatching.TabIndex = 223;
            this.lbColorMatching.Text = "cb) Clr Grp Y/N:";
            // 
            // txtColorMatching
            // 
            this.txtColorMatching.Location = new System.Drawing.Point(441, 318);
            this.txtColorMatching.Name = "txtColorMatching";
            this.txtColorMatching.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtColorMatching.Properties.Items.AddRange(new object[] {
            "Y",
            "N"});
            this.txtColorMatching.Size = new System.Drawing.Size(103, 21);
            this.txtColorMatching.TabIndex = 224;
            this.txtColorMatching.Tag = "ColorMatching";
            // 
            // lbColorMatchingResult
            // 
            this.lbColorMatchingResult.AutoSize = true;
            this.lbColorMatchingResult.Location = new System.Drawing.Point(572, 320);
            this.lbColorMatchingResult.Name = "lbColorMatchingResult";
            this.lbColorMatchingResult.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbColorMatchingResult, null);
            this.lbColorMatchingResult.TabIndex = 225;
            this.lbColorMatchingResult.Text = "Cc) Result:";
            // 
            // txtColorMatchingResult
            // 
            this.txtColorMatchingResult.Location = new System.Drawing.Point(696, 318);
            this.txtColorMatchingResult.Name = "txtColorMatchingResult";
            this.txtColorMatchingResult.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtColorMatchingResult.Properties.Items.AddRange(new object[] {
            "n.a.",
            "A",
            "B"});
            this.txtColorMatchingResult.Size = new System.Drawing.Size(102, 21);
            this.txtColorMatchingResult.TabIndex = 226;
            this.txtColorMatchingResult.Tag = "ColorMatchingResult";
            // 
            // txtElongation
            // 
            this.txtElongation.Location = new System.Drawing.Point(953, 318);
            this.txtElongation.Name = "txtElongation";
            this.txtElongation.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtElongation.Properties.Items.AddRange(new object[] {
            "Y",
            "N"});
            this.txtElongation.Size = new System.Drawing.Size(102, 21);
            this.txtElongation.TabIndex = 227;
            this.txtElongation.Tag = "Elongation";
            // 
            // lbElongation
            // 
            this.lbElongation.AutoSize = true;
            this.lbElongation.Location = new System.Drawing.Point(23, 360);
            this.lbElongation.Name = "lbElongation";
            this.lbElongation.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbElongation, null);
            this.lbElongation.TabIndex = 228;
            this.lbElongation.Text = "Eb) Result:";
            // 
            // txtElongationResult
            // 
            this.txtElongationResult.Location = new System.Drawing.Point(173, 356);
            this.txtElongationResult.Name = "txtElongationResult";
            this.txtElongationResult.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtElongationResult.Properties.Items.AddRange(new object[] {
            "n.a.",
            "A",
            "B"});
            this.txtElongationResult.Size = new System.Drawing.Size(102, 21);
            this.txtElongationResult.TabIndex = 229;
            this.txtElongationResult.Tag = "ElongationResult";
            // 
            // txtMouldTrial
            // 
            this.txtMouldTrial.Location = new System.Drawing.Point(441, 356);
            this.txtMouldTrial.Name = "txtMouldTrial";
            this.txtMouldTrial.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtMouldTrial.Properties.Items.AddRange(new object[] {
            "Y",
            "N"});
            this.txtMouldTrial.Size = new System.Drawing.Size(103, 21);
            this.txtMouldTrial.TabIndex = 230;
            this.txtMouldTrial.Tag = "MouldTrial";
            // 
            // lbMouldTrialResult
            // 
            this.lbMouldTrialResult.AutoSize = true;
            this.lbMouldTrialResult.Location = new System.Drawing.Point(572, 360);
            this.lbMouldTrialResult.Name = "lbMouldTrialResult";
            this.lbMouldTrialResult.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbMouldTrialResult, null);
            this.lbMouldTrialResult.TabIndex = 231;
            this.lbMouldTrialResult.Text = "Mb) Result:";
            // 
            // txtMouldTrialResult
            // 
            this.txtMouldTrialResult.Location = new System.Drawing.Point(696, 354);
            this.txtMouldTrialResult.Name = "txtMouldTrialResult";
            this.txtMouldTrialResult.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtMouldTrialResult.Properties.Items.AddRange(new object[] {
            "n.a.",
            "A",
            "B"});
            this.txtMouldTrialResult.Size = new System.Drawing.Size(102, 21);
            this.txtMouldTrialResult.TabIndex = 232;
            this.txtMouldTrialResult.Tag = "MouldTrialResult";
            // 
            // txtBondingResult
            // 
            this.txtBondingResult.Location = new System.Drawing.Point(173, 394);
            this.txtBondingResult.Name = "txtBondingResult";
            this.txtBondingResult.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtBondingResult.Properties.Items.AddRange(new object[] {
            "n.a.",
            "A",
            "B"});
            this.txtBondingResult.Size = new System.Drawing.Size(102, 21);
            this.txtBondingResult.TabIndex = 236;
            this.txtBondingResult.Tag = "BondingResult";
            // 
            // lbBondingResult
            // 
            this.lbBondingResult.AutoSize = true;
            this.lbBondingResult.Location = new System.Drawing.Point(23, 398);
            this.lbBondingResult.Name = "lbBondingResult";
            this.lbBondingResult.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbBondingResult, null);
            this.lbBondingResult.TabIndex = 235;
            this.lbBondingResult.Text = "Bb) Result:";
            // 
            // txtBonding
            // 
            this.txtBonding.Location = new System.Drawing.Point(953, 354);
            this.txtBonding.Name = "txtBonding";
            this.txtBonding.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtBonding.Properties.Items.AddRange(new object[] {
            "Y",
            "N"});
            this.txtBonding.Size = new System.Drawing.Size(102, 21);
            this.txtBonding.TabIndex = 234;
            this.txtBonding.Tag = "Bonding";
            // 
            // lbBonding
            // 
            this.lbBonding.AutoSize = true;
            this.lbBonding.Location = new System.Drawing.Point(823, 358);
            this.lbBonding.Name = "lbBonding";
            this.lbBonding.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbBonding, null);
            this.lbBonding.TabIndex = 233;
            this.lbBonding.Text = "ba) Bonding Y/N:";
            // 
            // lbLaminationResult
            // 
            this.lbLaminationResult.AutoSize = true;
            this.lbLaminationResult.Location = new System.Drawing.Point(572, 398);
            this.lbLaminationResult.Name = "lbLaminationResult";
            this.lbLaminationResult.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbLaminationResult, null);
            this.lbLaminationResult.TabIndex = 239;
            this.lbLaminationResult.Text = "LMb) Result:";
            // 
            // txtLamination
            // 
            this.txtLamination.Location = new System.Drawing.Point(441, 394);
            this.txtLamination.Name = "txtLamination";
            this.txtLamination.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtLamination.Properties.Items.AddRange(new object[] {
            "Y",
            "N"});
            this.txtLamination.Size = new System.Drawing.Size(103, 21);
            this.txtLamination.TabIndex = 238;
            this.txtLamination.Tag = "Lamination";
            // 
            // lbLamination
            // 
            this.lbLamination.AutoSize = true;
            this.lbLamination.Location = new System.Drawing.Point(306, 398);
            this.lbLamination.Name = "lbLamination";
            this.lbLamination.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbLamination, null);
            this.lbLamination.TabIndex = 237;
            this.lbLamination.Text = "lma) Lamination Y/N:";
            // 
            // txtLaminationResult
            // 
            this.txtLaminationResult.Location = new System.Drawing.Point(696, 396);
            this.txtLaminationResult.Name = "txtLaminationResult";
            this.txtLaminationResult.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtLaminationResult.Properties.Items.AddRange(new object[] {
            "n.a.",
            "A",
            "B"});
            this.txtLaminationResult.Size = new System.Drawing.Size(102, 21);
            this.txtLaminationResult.TabIndex = 240;
            this.txtLaminationResult.Tag = "LaminationResult";
            // 
            // MasterDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MasterDetailForm";
            this.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.Size = new System.Drawing.Size(1510, 705);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).EndInit();
            this.headerTitleBar.ResumeLayout(false);
            this.headerTitleBar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.SpreadDefect123.ResumeLayout(false);
            this.Width.ResumeLayout(false);
            this.Picture.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoExEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Spread_Remark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Mould_Proc_Status.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Spread_Proc_Status.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Insp_Result.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_part_Insp_Result.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Inspection_Date.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Panel_Size2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Panel_Size1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PH_Sample.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Wastage.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Deductive_Qty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Potions_Hundred_Sqm.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Item_Description.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Total_Points.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Supplier_Batch.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Actual_Length.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Roll_NO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Actual_Width.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Usable_Width.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Actual_Weigth.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Insp_Length.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Special_Marker.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_StockIn_Date.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Item_NO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Lot_ID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLightStatus.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_System_NO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDWeftYarn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWeftYarnClass.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWeftYarnPercentage.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDWeftYarnStatus.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDElongationStatus.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Mould_Trial_Remark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit4.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColorMatching.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColorMatchingResult.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtElongation.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtElongationResult.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMouldTrial.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMouldTrialResult.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBondingResult.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBonding.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLamination.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtLaminationResult.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sMode"> 
        /// 0: Create Mode
        /// 1: Revise Mode
        /// 2: Confirm Mode
        /// 3: ReadOnly Mode
        /// </param>
        private void setEditMode(EditMode sMode)
        {
            currentMode = sMode;
            //if (sMode == EditMode.Create)
            //{


            //    //teCompany.Properties.ReadOnly = false;
            //    txtD_Parameter_Type.Properties.ReadOnly = false;
            //    txtD_Parameter_Code.Properties.ReadOnly = false;
            //    txtD_Parameter_Description.Properties.ReadOnly = false;
            //}
            //else if (sMode == EditMode.Revise)
            //{

            //    //teCompany.Properties.ReadOnly = true;
            //    txtD_Parameter_Type.Properties.ReadOnly = true;
            //    txtD_Parameter_Code.Properties.ReadOnly = true;
            //    txtD_Parameter_Description.Properties.ReadOnly = false;
            //}
            //else if (sMode == EditMode.Confirm)
            //{


            //    //teCompany.Properties.ReadOnly = true;
            //    txtD_Parameter_Type.Properties.ReadOnly = true;
            //    txtD_Parameter_Code.Properties.ReadOnly = true;
            //    txtD_Parameter_Description.Properties.ReadOnly = true;
            //}
            //else
            //{

            //    //teCompany.Properties.ReadOnly = true;
            //    txtD_Parameter_Type.Properties.ReadOnly = true;
            //    txtD_Parameter_Code.Properties.ReadOnly = true;
            //    txtD_Parameter_Description.Properties.ReadOnly = true;
            //}
            txtD_System_NO.Properties.ReadOnly = true;
            txtD_Lot_ID.Properties.ReadOnly = true;
            txtD_Item_NO.Properties.ReadOnly = true;
            txtD_Item_Description.Properties.ReadOnly = true;
            txtD_Actual_Length.Properties.ReadOnly = true;
            txtD_Actual_Width.Properties.ReadOnly = true;
            txtD_StockIn_Date.Properties.ReadOnly = true;
            txtD_Inspection_Date.Properties.ReadOnly = true;

            txtD_part_Insp_Result.Properties.ReadOnly = true;
            txtD_Insp_Result.Properties.ReadOnly = true;

            txtD_Total_Points.Properties.ReadOnly = true;
            txtD_Potions_Hundred_Sqm.Properties.ReadOnly = true;
            txtD_Deductive_Qty.Properties.ReadOnly = true;
            txtD_Wastage.Properties.ReadOnly = true;
            //txtD_System_NO.Properties.ReadOnly = true;
            //txtD_Company.Properties.ReadOnly = true;
            //txtD_Mould_Remark.Properties.ReadOnly = true;
            txtWeftYarnClass.Properties.ReadOnly = true;
            txtWeftYarnPercentage.Properties.ReadOnly = true;
            txtDWeftYarn.Properties.ReadOnly = true;


        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            setEditMode(EditMode.ReadOnly);
        }

        protected override void DeleteCurrent()
        {

            base.DeleteCurrent();
            setEditMode(EditMode.ReadOnly);
        }

        public override void EditCurrent()
        {
            if (this.BindingSource.Current == null)
            {
                MessageBox.Show("No Inspection Information need to process");
                return;
            }


            Fabric_Insp_Header currentIQC = (Fabric_Insp_Header)this.BindingSource.Current;



            if (!this.IsNew)
            {
                //if (currentIQC.RN_number > 0)
                //{
                //    MessageBox.Show("current Inspection Information can't be modified again because it has gerenated RN");
                //    return;
                //}
            }

            base.EditCurrent();
            if (this.IsNew)
            {
                currentMode = EditMode.Create;
                setEditMode(currentMode);
            }
            else if (currentIQC != null)
            {
                currentMode = EditMode.Revise;
                setEditMode(currentMode);
            }

            if (currentIQC != null)
            {
                currentIQC.Color_Group_Status = MasterTableUtil.GetColorGroup(currentIQC.Company, currentIQC.Item_No, currentIQC.Lot_Id);
            }
        }

        protected override void OnClickSaveAndReturn()
        {
            if (SaveCurrentRecord())
            {
                base.OnClickSaveAndReturn();
                setEditMode(EditMode.Confirm);
            }

        }

        protected override void SaveCurrent()
        {
            if (SaveCurrentRecord())
            {
                PH.FabricInspection.BO.Fabric_Insp_Header currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Header;
                currentIQC.CalCutOutLength();

                base.SaveCurrent();
                setEditMode(EditMode.Confirm);

            }
        }

        private bool SaveCurrentRecord()
        {
            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;
            try
            {
                txtD_Lot_ID.Focus();
                this.BindingSource.EndEdit();

                PH.FabricInspection.BO.Fabric_Insp_Header currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Header;

                if (currentIQC != null)
                {

                    if (currentMode == EditMode.Create)
                    {
                        //currentIQC.Company = txtD_Company.Text;
                        currentIQC.Create_User = GlobalInfo.GetCurrentUserId();
                        currentIQC.Create_Date = DateTime.Now;
                    }
                    else
                    {
                        currentIQC.Change_User = GlobalInfo.GetCurrentUserId();
                        currentIQC.Change_Date = DateTime.Now;
                    }

                    checkValidation();
                    //if (currentIQC.RN_number == null)
                    //{
                    //    currentIQC.RN_number = 0;
                    //}

                    if (currentIQC.Special_Marker == null)
                    {
                        currentIQC.Special_Marker = 0;
                    }

                    if (currentIQC.Turn_Size == null)
                    {
                        currentIQC.Turn_Size = 0;
                    }

                    MasterTableUtil.RecalcMasterValue(this.DataContext as FabricInspectionDataContext, currentIQC);


                }
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when Save this record \n" + ex.Message);
            }
            finally
            {
                this.Cursor = currCursor;
            }
            return false;
        }

        private void checkValidation()
        {
            //PH.FabricInspection.BO.Master currentIQC = this.CurBindingSource.Current as PH.FabricInspection.BO.Master;

            //if (currentIQC != null)
            //{
            //    ValideRules.IsNotBlank(currentIQC.Company, "Company Code");
            //    ValideRules.IsNotBlank(currentIQC.Item_No, "Item No");
            //    ValideRules.IsNotBlank(currentIQC.Lot_Id, "Lot Id");
            //}

        }

    }
}
