/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: /PH/PH.MIDc.root/PH.MIDc/PH.MIDc.UI/Config/CustomMaterialDetailForm.cs $   
* $Author: Water Zhang $  
* $Date: 08-08-27 10:38 $   
* $Revision: 2 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MIDc.BO;
using System.Linq;

namespace PH.MIDc.UI
{
    public partial class CustomMaterialDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        #region//auto code

        private DevExpress.XtraEditors.TextEdit txtD_MidcHSCode;
        private System.Windows.Forms.Label MidcHSCodeLable;
        private DevExpress.XtraEditors.TextEdit txtD_materialName;
        private System.Windows.Forms.Label materialNamelable;
        private DevExpress.XtraEditors.TextEdit txtD_Memo;
        private System.Windows.Forms.Label Memolable;
        private DevExpress.XtraEditors.TextEdit txtD_CustomNo;
        private IContainer components;
        private ComboBoxEdit fGTypeComboBoxEdit;
        private SpinEdit indexValueSpinEdit;
        private Label indexValueLabel;
        private Label fGTypeLabel;
        private SpinEdit spinEdit1;
        private SpinEdit hSCodeSeqSpinEdit;
        private ComboBoxEdit statusComboBoxEdit;
        private ImageComboBoxEdit hSUnitImageComboBoxEdit;
        private SpinEdit priceRatioSpinEdit;
        private CustomMaterialElementList customMaterialElementList1;
        private TextEdit txtD_materialNameEN;
        private Label label2;
        private TextEdit txtD_materialNameCN;
        private Label label1;
        private TextEdit textEdit1;
        private Label lbCustomNoBD;
        private System.Windows.Forms.Label CustomNolable;
        #endregion
        public CustomMaterialDetailForm()
        {
            InitializeComponent();
            InitCtrl();
        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label unitPriceLabel;
            System.Windows.Forms.Label hSCodeSeqLabel;
            System.Windows.Forms.Label statusLabel;
            System.Windows.Forms.Label hSUnitLabel;
            System.Windows.Forms.Label priceRatioLabel;
            this.fGTypeLabel = new System.Windows.Forms.Label();
            this.indexValueLabel = new System.Windows.Forms.Label();
            this.txtD_MidcHSCode = new DevExpress.XtraEditors.TextEdit();
            this.MidcHSCodeLable = new System.Windows.Forms.Label();
            this.txtD_materialName = new DevExpress.XtraEditors.TextEdit();
            this.materialNamelable = new System.Windows.Forms.Label();
            this.txtD_Memo = new DevExpress.XtraEditors.TextEdit();
            this.Memolable = new System.Windows.Forms.Label();
            this.txtD_CustomNo = new DevExpress.XtraEditors.TextEdit();
            this.CustomNolable = new System.Windows.Forms.Label();
            this.fGTypeComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.indexValueSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.hSCodeSeqSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.statusComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.hSUnitImageComboBoxEdit = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.priceRatioSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.customMaterialElementList1 = new PH.MIDc.UI.CustomMaterialElementList();
            this.txtD_materialNameCN = new DevExpress.XtraEditors.TextEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.txtD_materialNameEN = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.lbCustomNoBD = new System.Windows.Forms.Label();
            unitPriceLabel = new System.Windows.Forms.Label();
            hSCodeSeqLabel = new System.Windows.Forms.Label();
            statusLabel = new System.Windows.Forms.Label();
            hSUnitLabel = new System.Windows.Forms.Label();
            priceRatioLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.txtD_MidcHSCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_materialName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Memo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fGTypeComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.indexValueSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hSCodeSeqSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.statusComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hSUnitImageComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.priceRatioSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_materialNameCN.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_materialNameEN.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 262);
            this.splitterControl1.Size = new System.Drawing.Size(1000, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.textEdit1);
            this.headerTitleBar.Controls.Add(this.lbCustomNoBD);
            this.headerTitleBar.Controls.Add(this.txtD_materialNameEN);
            this.headerTitleBar.Controls.Add(this.label2);
            this.headerTitleBar.Controls.Add(this.txtD_materialNameCN);
            this.headerTitleBar.Controls.Add(this.label1);
            this.headerTitleBar.Controls.Add(this.txtD_materialName);
            this.headerTitleBar.Controls.Add(this.materialNamelable);
            this.headerTitleBar.Controls.Add(priceRatioLabel);
            this.headerTitleBar.Controls.Add(this.priceRatioSpinEdit);
            this.headerTitleBar.Controls.Add(statusLabel);
            this.headerTitleBar.Controls.Add(this.statusComboBoxEdit);
            this.headerTitleBar.Controls.Add(this.txtD_Memo);
            this.headerTitleBar.Controls.Add(this.indexValueLabel);
            this.headerTitleBar.Controls.Add(this.Memolable);
            this.headerTitleBar.Controls.Add(this.fGTypeComboBoxEdit);
            this.headerTitleBar.Controls.Add(this.spinEdit1);
            this.headerTitleBar.Controls.Add(this.fGTypeLabel);
            this.headerTitleBar.Controls.Add(this.indexValueSpinEdit);
            this.headerTitleBar.Controls.Add(unitPriceLabel);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(1000, 235);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(unitPriceLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.indexValueSpinEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.fGTypeLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.spinEdit1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.fGTypeComboBoxEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.Memolable, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.indexValueLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_Memo, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.statusComboBoxEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(statusLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.priceRatioSpinEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(priceRatioLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.materialNamelable, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_materialName, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.label1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_materialNameCN, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.label2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtD_materialNameEN, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lbCustomNoBD, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit1, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 268);
            this.panelControl1.Size = new System.Drawing.Size(1000, 201);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.customMaterialElementList1);
            this.xtraTabPage1.Size = new System.Drawing.Size(987, 165);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(996, 197);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.CustomMaterial);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(2307, 0);
            // 
            // unitPriceLabel
            // 
            unitPriceLabel.Location = new System.Drawing.Point(486, 108);
            unitPriceLabel.Name = "unitPriceLabel";
            unitPriceLabel.Size = new System.Drawing.Size(100, 18);
            this.PlatetoolTipController.SetSuperTip(unitPriceLabel, null);
            unitPriceLabel.TabIndex = 17;
            unitPriceLabel.Text = "Unit Price:";
            unitPriceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // hSCodeSeqLabel
            // 
            hSCodeSeqLabel.AutoSize = true;
            hSCodeSeqLabel.Location = new System.Drawing.Point(61, 54);
            hSCodeSeqLabel.Name = "hSCodeSeqLabel";
            hSCodeSeqLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(hSCodeSeqLabel, null);
            hSCodeSeqLabel.TabIndex = 18;
            hSCodeSeqLabel.Text = "HSCode Seq:";
            // 
            // statusLabel
            // 
            statusLabel.AutoSize = true;
            statusLabel.Location = new System.Drawing.Point(539, 174);
            statusLabel.Name = "statusLabel";
            statusLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(statusLabel, null);
            statusLabel.TabIndex = 20;
            statusLabel.Text = "Status:";
            // 
            // hSUnitLabel
            // 
            hSUnitLabel.AutoSize = true;
            hSUnitLabel.Location = new System.Drawing.Point(85, 146);
            hSUnitLabel.Name = "hSUnitLabel";
            hSUnitLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(hSUnitLabel, null);
            hSUnitLabel.TabIndex = 22;
            hSUnitLabel.Text = "HSUnit:";
            // 
            // priceRatioLabel
            // 
            priceRatioLabel.AutoSize = true;
            priceRatioLabel.Location = new System.Drawing.Point(511, 142);
            priceRatioLabel.Name = "priceRatioLabel";
            priceRatioLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(priceRatioLabel, null);
            priceRatioLabel.TabIndex = 24;
            priceRatioLabel.Text = "Price Ratio:";
            // 
            // fGTypeLabel
            // 
            this.fGTypeLabel.Location = new System.Drawing.Point(484, 29);
            this.fGTypeLabel.Name = "fGTypeLabel";
            this.fGTypeLabel.Size = new System.Drawing.Size(102, 12);
            this.PlatetoolTipController.SetSuperTip(this.fGTypeLabel, null);
            this.fGTypeLabel.TabIndex = 12;
            this.fGTypeLabel.Text = "FGType:";
            this.fGTypeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // indexValueLabel
            // 
            this.indexValueLabel.Location = new System.Drawing.Point(484, 80);
            this.indexValueLabel.Name = "indexValueLabel";
            this.indexValueLabel.Size = new System.Drawing.Size(102, 12);
            this.PlatetoolTipController.SetSuperTip(this.indexValueLabel, null);
            this.indexValueLabel.TabIndex = 14;
            this.indexValueLabel.Text = "IndexValue:";
            this.indexValueLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_MidcHSCode
            // 
            this.txtD_MidcHSCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MidcHSCode", true));
            this.txtD_MidcHSCode.Location = new System.Drawing.Point(140, 115);
            this.txtD_MidcHSCode.Name = "txtD_MidcHSCode";
            this.txtD_MidcHSCode.Properties.ReadOnly = true;
            this.txtD_MidcHSCode.Size = new System.Drawing.Size(289, 21);
            this.txtD_MidcHSCode.TabIndex = 6;
            this.txtD_MidcHSCode.Tag = "MidcHSCode";
            // 
            // MidcHSCodeLable
            // 
            this.MidcHSCodeLable.Location = new System.Drawing.Point(30, 119);
            this.MidcHSCodeLable.Name = "MidcHSCodeLable";
            this.MidcHSCodeLable.Size = new System.Drawing.Size(102, 12);
            this.PlatetoolTipController.SetSuperTip(this.MidcHSCodeLable, null);
            this.MidcHSCodeLable.TabIndex = 1;
            this.MidcHSCodeLable.Text = "MIDc HSCode:";
            this.MidcHSCodeLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_materialName
            // 
            this.txtD_materialName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "materialName", true));
            this.txtD_materialName.Location = new System.Drawing.Point(140, 144);
            this.txtD_materialName.Name = "txtD_materialName";
            this.txtD_materialName.Size = new System.Drawing.Size(289, 21);
            this.txtD_materialName.TabIndex = 7;
            this.txtD_materialName.Tag = "materialName";
            // 
            // materialNamelable
            // 
            this.materialNamelable.Location = new System.Drawing.Point(30, 148);
            this.materialNamelable.Name = "materialNamelable";
            this.materialNamelable.Size = new System.Drawing.Size(102, 12);
            this.PlatetoolTipController.SetSuperTip(this.materialNamelable, null);
            this.materialNamelable.TabIndex = 2;
            this.materialNamelable.Text = "MaterialName(TW):";
            this.materialNamelable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Memo
            // 
            this.txtD_Memo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Memo", true));
            this.txtD_Memo.Location = new System.Drawing.Point(594, 201);
            this.txtD_Memo.Name = "txtD_Memo";
            this.txtD_Memo.Size = new System.Drawing.Size(289, 21);
            this.txtD_Memo.TabIndex = 8;
            this.txtD_Memo.Tag = "Memo";
            // 
            // Memolable
            // 
            this.Memolable.Location = new System.Drawing.Point(484, 205);
            this.Memolable.Name = "Memolable";
            this.Memolable.Size = new System.Drawing.Size(102, 12);
            this.PlatetoolTipController.SetSuperTip(this.Memolable, null);
            this.Memolable.TabIndex = 3;
            this.Memolable.Text = "Memo:";
            this.Memolable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_CustomNo
            // 
            this.txtD_CustomNo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomNo", true));
            this.txtD_CustomNo.Location = new System.Drawing.Point(140, 83);
            this.txtD_CustomNo.Name = "txtD_CustomNo";
            this.txtD_CustomNo.Size = new System.Drawing.Size(289, 21);
            this.txtD_CustomNo.TabIndex = 9;
            this.txtD_CustomNo.Tag = "CustomNo";
            // 
            // CustomNolable
            // 
            this.CustomNolable.Location = new System.Drawing.Point(30, 87);
            this.CustomNolable.Name = "CustomNolable";
            this.CustomNolable.Size = new System.Drawing.Size(102, 12);
            this.PlatetoolTipController.SetSuperTip(this.CustomNolable, null);
            this.CustomNolable.TabIndex = 4;
            this.CustomNolable.Text = "CustomNo (CN):";
            this.CustomNolable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // fGTypeComboBoxEdit
            // 
            this.fGTypeComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "FGType", true));
            this.fGTypeComboBoxEdit.Location = new System.Drawing.Point(594, 25);
            this.fGTypeComboBoxEdit.Name = "fGTypeComboBoxEdit";
            this.fGTypeComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.fGTypeComboBoxEdit.Properties.Items.AddRange(new object[] {
            "RM",
            "FG"});
            this.fGTypeComboBoxEdit.Size = new System.Drawing.Size(289, 21);
            this.fGTypeComboBoxEdit.TabIndex = 13;
            // 
            // indexValueSpinEdit
            // 
            this.indexValueSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IndexValue", true));
            this.indexValueSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.indexValueSpinEdit.Location = new System.Drawing.Point(594, 76);
            this.indexValueSpinEdit.Name = "indexValueSpinEdit";
            this.indexValueSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.indexValueSpinEdit.Size = new System.Drawing.Size(289, 21);
            this.indexValueSpinEdit.TabIndex = 15;
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UnitPrice", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Location = new System.Drawing.Point(594, 107);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.DisplayFormat.FormatString = "#,##0.0#";
            this.spinEdit1.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spinEdit1.Properties.EditFormat.FormatString = "#,##0.0#";
            this.spinEdit1.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spinEdit1.Properties.Mask.EditMask = "#,##0.0#";
            this.spinEdit1.Size = new System.Drawing.Size(154, 21);
            this.spinEdit1.TabIndex = 15;
            // 
            // hSCodeSeqSpinEdit
            // 
            this.hSCodeSeqSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSCodeSeq", true));
            this.hSCodeSeqSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.hSCodeSeqSpinEdit.Location = new System.Drawing.Point(140, 50);
            this.hSCodeSeqSpinEdit.Name = "hSCodeSeqSpinEdit";
            this.hSCodeSeqSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.hSCodeSeqSpinEdit.Size = new System.Drawing.Size(289, 21);
            this.hSCodeSeqSpinEdit.TabIndex = 19;
            // 
            // statusComboBoxEdit
            // 
            this.statusComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Status", true));
            this.statusComboBoxEdit.Location = new System.Drawing.Point(594, 170);
            this.statusComboBoxEdit.Name = "statusComboBoxEdit";
            this.statusComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.statusComboBoxEdit.Properties.Items.AddRange(new object[] {
            "Active",
            "Drop"});
            this.statusComboBoxEdit.Size = new System.Drawing.Size(289, 21);
            this.statusComboBoxEdit.TabIndex = 21;
            // 
            // hSUnitImageComboBoxEdit
            // 
            this.hSUnitImageComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSUnit", true));
            this.hSUnitImageComboBoxEdit.Location = new System.Drawing.Point(140, 143);
            this.hSUnitImageComboBoxEdit.Name = "hSUnitImageComboBoxEdit";
            this.hSUnitImageComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.hSUnitImageComboBoxEdit.Size = new System.Drawing.Size(154, 21);
            this.hSUnitImageComboBoxEdit.TabIndex = 23;
            // 
            // priceRatioSpinEdit
            // 
            this.priceRatioSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PriceRatio", true));
            this.priceRatioSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.priceRatioSpinEdit.Location = new System.Drawing.Point(594, 139);
            this.priceRatioSpinEdit.Name = "priceRatioSpinEdit";
            this.priceRatioSpinEdit.Properties.DisplayFormat.FormatString = "#,##0.0#";
            this.priceRatioSpinEdit.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.priceRatioSpinEdit.Properties.EditFormat.FormatString = "#,##0.0#";
            this.priceRatioSpinEdit.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.priceRatioSpinEdit.Properties.EditValueChangedFiringMode = DevExpress.XtraEditors.Controls.EditValueChangedFiringMode.Default;
            this.priceRatioSpinEdit.Properties.Mask.EditMask = "#,##0.0#";
            this.priceRatioSpinEdit.Size = new System.Drawing.Size(154, 21);
            this.priceRatioSpinEdit.TabIndex = 25;
            // 
            // customMaterialElementList1
            // 
            this.customMaterialElementList1.AllowAddRow = true;
            this.customMaterialElementList1.AutoOpenDetailForm = false;
            this.customMaterialElementList1.DataContext = null;
            this.customMaterialElementList1.DataSource = null;
            this.customMaterialElementList1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.customMaterialElementList1.EditorTypeName = null;
            this.customMaterialElementList1.FileID = null;
            this.customMaterialElementList1.FirstForm = null;
            this.customMaterialElementList1.FormName = "CustomMaterialElementList";
            this.customMaterialElementList1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.customMaterialElementList1.FormTitle = "PH.MIDc.UI.CustomMaterialElementList";
            this.customMaterialElementList1.IsCancelList = false;
            this.customMaterialElementList1.IsShowPivotTable = false;
            this.customMaterialElementList1.LayoutData = null;
            this.customMaterialElementList1.LayoutName = null;
            this.customMaterialElementList1.ListForm = null;
            this.customMaterialElementList1.Location = new System.Drawing.Point(0, 0);
            this.customMaterialElementList1.MenuID = ((long)(0));
            this.customMaterialElementList1.Name = "customMaterialElementList1";
            this.customMaterialElementList1.NeedCheckPermission = true;
            this.customMaterialElementList1.NextForm = null;
            this.customMaterialElementList1.ParentForm = null;
            this.customMaterialElementList1.PrevForm = null;
            this.customMaterialElementList1.RowChangeAutoSave = true;
            this.customMaterialElementList1.ShowMultiCheck = false;
            this.customMaterialElementList1.SideProgramID = null;
            this.customMaterialElementList1.Size = new System.Drawing.Size(987, 165);
            this.PlatetoolTipController.SetSuperTip(this.customMaterialElementList1, null);
            this.customMaterialElementList1.TabControls = null;
            this.customMaterialElementList1.TabIndex = 0;
            this.customMaterialElementList1.TabPage = null;
            // 
            // txtD_materialNameCN
            // 
            this.txtD_materialNameCN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "materialNameCN", true));
            this.txtD_materialNameCN.Location = new System.Drawing.Point(140, 171);
            this.txtD_materialNameCN.Name = "txtD_materialNameCN";
            this.txtD_materialNameCN.Size = new System.Drawing.Size(289, 21);
            this.txtD_materialNameCN.TabIndex = 27;
            this.txtD_materialNameCN.Tag = "materialNameCN";
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(30, 175);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(102, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 26;
            this.label1.Text = "MaterialName(CN):";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_materialNameEN
            // 
            this.txtD_materialNameEN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "materialNameEN", true));
            this.txtD_materialNameEN.Location = new System.Drawing.Point(140, 199);
            this.txtD_materialNameEN.Name = "txtD_materialNameEN";
            this.txtD_materialNameEN.Size = new System.Drawing.Size(289, 21);
            this.txtD_materialNameEN.TabIndex = 29;
            this.txtD_materialNameEN.Tag = "materialNameEN";
            // 
            // label2
            // 
            this.label2.Location = new System.Drawing.Point(30, 203);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(102, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 28;
            this.label2.Text = "MaterialName(EN):";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomNoBD", true));
            this.textEdit1.Location = new System.Drawing.Point(594, 51);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(289, 21);
            this.textEdit1.TabIndex = 31;
            this.textEdit1.Tag = "CustomNo";
            // 
            // lbCustomNoBD
            // 
            this.lbCustomNoBD.Location = new System.Drawing.Point(484, 55);
            this.lbCustomNoBD.Name = "lbCustomNoBD";
            this.lbCustomNoBD.Size = new System.Drawing.Size(102, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbCustomNoBD, null);
            this.lbCustomNoBD.TabIndex = 30;
            this.lbCustomNoBD.Text = "CustomNo (BD):";
            this.lbCustomNoBD.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // CustomMaterialDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(hSUnitLabel);
            this.Controls.Add(this.hSUnitImageComboBoxEdit);
            this.Controls.Add(hSCodeSeqLabel);
            this.Controls.Add(this.hSCodeSeqSpinEdit);
            this.Controls.Add(this.txtD_CustomNo);
            this.Controls.Add(this.CustomNolable);
            this.Controls.Add(this.txtD_MidcHSCode);
            this.Controls.Add(this.MidcHSCodeLable);
            this.Name = "CustomMaterialDetailForm";
            this.Size = new System.Drawing.Size(1000, 469);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.CustomMaterialDetailForm_Load);
            this.Controls.SetChildIndex(this.headerTitleBar, 0);
            this.Controls.SetChildIndex(this.splitterControl1, 0);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.MidcHSCodeLable, 0);
            this.Controls.SetChildIndex(this.txtD_MidcHSCode, 0);
            this.Controls.SetChildIndex(this.CustomNolable, 0);
            this.Controls.SetChildIndex(this.txtD_CustomNo, 0);
            this.Controls.SetChildIndex(this.hSCodeSeqSpinEdit, 0);
            this.Controls.SetChildIndex(hSCodeSeqLabel, 0);
            this.Controls.SetChildIndex(this.hSUnitImageComboBoxEdit, 0);
            this.Controls.SetChildIndex(hSUnitLabel, 0);
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
            ((System.ComponentModel.ISupportInitialize)(this.txtD_MidcHSCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_materialName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Memo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fGTypeComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.indexValueSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hSCodeSeqSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.statusComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hSUnitImageComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.priceRatioSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_materialNameCN.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_materialNameEN.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }



        //-------------------------------Start----------------------------------------------------------
        //Xsj20151022:Add
        public void InitCtrl()
        {
            List<string> hsUnitList = new List<string>();
            hsUnitList.Add("PC");
            hsUnitList.Add("KG");
            foreach (string item in hsUnitList)
            {
                this.hSUnitImageComboBoxEdit.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
            }
        }

        //Xsj20150911:Add 
        private void CustomMaterialDetailForm_Load(object sender, EventArgs e)
        {
            InitCtrlStatus();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            if (this.IsNew)
            {
                CustomMaterial obj = this.BindingSource.Current as CustomMaterial;
                if (obj != null)
                {
                    obj.HSCodeFlag = (this.ListForm as CustomMaterialListForm).HSCodeFlag;
                }
            }
        }

        protected override void SaveCurrent()
        {
            CustomMaterial obj = this.BindingSource.Current as CustomMaterial;
            if (obj != null)
            {
                obj.HSCodeFlag = (this.ListForm as CustomMaterialListForm).HSCodeFlag;
            }
            base.SaveCurrent();
        }

        protected override void OnClickSave()
        {
            //base.OnClickCancel();
            this.BindingSource.EndEdit();
            PH.MIDc.BO.CustomMaterial bo = this.BindingSource.Current as PH.MIDc.BO.CustomMaterial;
            if (bo == null) return;

            if ((bo.HSCodeSeq ?? 0) == 0)
            {
                MessageBox.Show("請填寫[海關備案序號(HSCodeSeq)]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.hSCodeSeqSpinEdit.Focus();
                return;
            }
            if (string.IsNullOrEmpty(bo.CustomNo) || bo.CustomNo.Trim() == "")
            {
                MessageBox.Show("請填寫[海關編碼(CustomNo)]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.txtD_CustomNo.Focus();
                return;
            }
            if (string.IsNullOrEmpty(bo.materialName) || bo.materialName.Trim() == "")
            {
                MessageBox.Show("請填寫[物料名稱(materialName)]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.txtD_materialName.Focus();
                return;
            }
            if (string.IsNullOrEmpty(bo.Memo) || bo.Memo.Trim() == "")
            {
                MessageBox.Show("請填寫[物料規格(Memo)]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.txtD_Memo.Focus();
                return;
            }
            if (string.IsNullOrEmpty(bo.FGType) || bo.FGType.Trim() == "")
            {
                MessageBox.Show("請填寫[物料類別(FGType)]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.fGTypeComboBoxEdit.Focus();
                return;
            }

            //Xsj:驗證[海關備案編碼]是否已被佔用   
            if (bo.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                PH.MIDc.BO.MIDcDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                PH.MIDc.BO.CustomMaterial aliveBO = dcon.CustomMaterials.Where(p => p.MidcHSCode == bo.MidcHSCode).FirstOrDefault();
                if (aliveBO != null)
                {
                    MessageBox.Show("[海關備案序號(HSCodeSeq)]已被佔用，請卻認!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    this.hSCodeSeqSpinEdit.Focus();
                    return;
                }
            }
            base.OnClickSave();
        }

        protected override void OnClickEdit()
        {
            base.OnClickEdit();
            InitCtrlStatus();
        }

        private void InitCtrlStatus()
        {
            PH.MIDc.BO.CustomMaterial bo = this.BindingSource.Current as PH.MIDc.BO.CustomMaterial;
            if (bo == null) return;

            if (bo.BOWorkMode != PH.Platform.BO.Interface.WorkMode.New)
            {
                this.hSCodeSeqSpinEdit.Properties.ReadOnly = true;
                this.hSCodeSeqSpinEdit.BackColor = System.Drawing.Color.FromArgb(247, 245, 241); // Color.Gray;

                this.txtD_CustomNo.Properties.ReadOnly = true;
                this.txtD_CustomNo.BackColor = System.Drawing.Color.FromArgb(247, 245, 241);  //Color.Gray;
            }
            else
            {
                bo.STATUS = "Active";
            }


            //this.txtD_materialName.Properties.ReadOnly = false;
            //this.txtD_materialNameCN.Properties.ReadOnly = false;
            //this.txtD_materialNameEN.Properties.ReadOnly = false;

            this.txtD_MidcHSCode.Properties.ReadOnly = true;
            this.txtD_MidcHSCode.BackColor = System.Drawing.Color.FromArgb(247, 245, 241);
        }

        protected override void OnClickDelete()
        {
            PH.MIDc.BO.CustomMaterial bo = this.BindingSource.Current as PH.MIDc.BO.CustomMaterial;
            if (bo == null) return;

            PH.MIDc.BO.MIDcDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            PH.MIDc.BO.MaterialType aliveTypeBO = dcon.MaterialTypes.Where(p => p.HsCode == bo.MidcHSCode).FirstOrDefault();
            PH.MIDc.BO.Detail aliveDetailBO = dcon.Details.Where(p => p.HsCode == bo.MidcHSCode).FirstOrDefault();
            if (aliveTypeBO != null || aliveDetailBO != null)
            {
                string noteMsg = string.Format("海關備案序號(HSCodeSeq)[{0}] 海關編碼(HSCode)[{1}]:已經被物料引用，禁止刪除!", bo.HSCodeSeq, bo.CustomNo);
                MessageBox.Show(noteMsg, "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            base.OnClickDelete();
        }

        //-------------------------------End----------------------------------------------------------

        public override void DataBind()
        {
            CustomMaterial _custm = this.BindingSource.Current as CustomMaterial;
            this.customMaterialElementList1.BindingSource.DataSource = _custm.CustomMaterialElements.OrderBy(p => p.SortId);
            base.DataBind();
        }

    }
}
