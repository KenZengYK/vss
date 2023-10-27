/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.PartDefectDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/2 下午 04:28:01 $   
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

namespace PH.FabricInspection.UI.SupplierQE.Allover
{
    public partial class sPartDefectDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code

        private DevExpress.XtraEditors.TextEdit txtD_Defect_Type;
        private System.Windows.Forms.Label Defect_TypeLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Defect_Name;
        private System.Windows.Forms.Label Defect_NameLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Detect_Turn_No;
        private System.Windows.Forms.Label Detect_Turn_NoLabel;
        private System.Windows.Forms.Label Defect_DegreeLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Defect_Degree_Count;
        private System.Windows.Forms.Label Defect_Degree_CountLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Defect_Deduce_Points;
        private ComboBoxEdit txtD_Defect_Degree;
        private System.Windows.Forms.Label Defect_Deduce_PointsLabel;
        #endregion
        private Label label1;
        private TextEdit txtD_Defect_NameName;
        private Label label2;
        private Label label4;
        private TextEdit defect_TypeTextEdit;
        private TextEdit defect_NameTextEdit;
        private TextEdit defect_NameNameTextEdit;
        private TextEdit detect_Turn_NoTextEdit;
        private System.Windows.Forms.ComboBox defect_DegreeComboBox;
        private TextEdit defect_Degree_CountTextEdit;
        private TextEdit defect_Deduce_PointsTextEdit;
        private HyperLinkEdit hyperLinkEdit1;
        private HyperLinkEdit hyperLinkEdit2;
        private EditMode currentMode = EditMode.ReadOnly;

        public sPartDefectDetailForm()
        {
            InitializeComponent();
            //setEditMode(EditMode.ReadOnly);

        }

        private void InitializeComponent()
        {
            this.txtD_Defect_Type = new DevExpress.XtraEditors.TextEdit();
            this.Defect_TypeLabel = new System.Windows.Forms.Label();
            this.txtD_Defect_Name = new DevExpress.XtraEditors.TextEdit();
            this.Defect_NameLabel = new System.Windows.Forms.Label();
            this.txtD_Detect_Turn_No = new DevExpress.XtraEditors.TextEdit();
            this.Detect_Turn_NoLabel = new System.Windows.Forms.Label();
            this.Defect_DegreeLabel = new System.Windows.Forms.Label();
            this.txtD_Defect_Degree_Count = new DevExpress.XtraEditors.TextEdit();
            this.Defect_Degree_CountLabel = new System.Windows.Forms.Label();
            this.txtD_Defect_Deduce_Points = new DevExpress.XtraEditors.TextEdit();
            this.Defect_Deduce_PointsLabel = new System.Windows.Forms.Label();
            this.txtD_Defect_Degree = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.txtD_Defect_NameName = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.defect_TypeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.defect_NameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.defect_NameNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.detect_Turn_NoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.defect_DegreeComboBox = new System.Windows.Forms.ComboBox();
            this.defect_Degree_CountTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.defect_Deduce_PointsTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.hyperLinkEdit1 = new DevExpress.XtraEditors.HyperLinkEdit();
            this.hyperLinkEdit2 = new DevExpress.XtraEditors.HyperLinkEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Type.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Name.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Detect_Turn_No.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Degree_Count.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Deduce_Points.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Degree.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_NameName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.defect_TypeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.defect_NameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.defect_NameNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.detect_Turn_NoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.defect_Degree_CountTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.defect_Deduce_PointsTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hyperLinkEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hyperLinkEdit2.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.Fabric_Insp_PartDefect);
            // 
            // txtD_Defect_Type
            // 
            this.txtD_Defect_Type.Location = new System.Drawing.Point(341, 38);
            this.txtD_Defect_Type.Name = "txtD_Defect_Type";
            this.txtD_Defect_Type.Size = new System.Drawing.Size(200, 21);
            this.txtD_Defect_Type.TabIndex = 10;
            this.txtD_Defect_Type.Tag = "Defect_Type";
            this.txtD_Defect_Type.Visible = false;
            // 
            // Defect_TypeLabel
            // 
            this.Defect_TypeLabel.AutoSize = true;
            this.Defect_TypeLabel.Location = new System.Drawing.Point(23, 42);
            this.Defect_TypeLabel.Name = "Defect_TypeLabel";
            this.Defect_TypeLabel.Size = new System.Drawing.Size(62, 12);
            this.PlatetoolTipController.SetSuperTip(this.Defect_TypeLabel, null);
            this.Defect_TypeLabel.TabIndex = 2;
            this.Defect_TypeLabel.Text = "Defect Type";
            // 
            // txtD_Defect_Name
            // 
            this.txtD_Defect_Name.Location = new System.Drawing.Point(341, 80);
            this.txtD_Defect_Name.Name = "txtD_Defect_Name";
            this.txtD_Defect_Name.Size = new System.Drawing.Size(200, 21);
            this.txtD_Defect_Name.TabIndex = 11;
            this.txtD_Defect_Name.Tag = "Defect_Name";
            this.txtD_Defect_Name.Visible = false;
            // 
            // Defect_NameLabel
            // 
            this.Defect_NameLabel.AutoSize = true;
            this.Defect_NameLabel.Location = new System.Drawing.Point(23, 84);
            this.Defect_NameLabel.Name = "Defect_NameLabel";
            this.Defect_NameLabel.Size = new System.Drawing.Size(63, 12);
            this.PlatetoolTipController.SetSuperTip(this.Defect_NameLabel, null);
            this.Defect_NameLabel.TabIndex = 3;
            this.Defect_NameLabel.Text = "Defect Code";
            // 
            // txtD_Detect_Turn_No
            // 
            this.txtD_Detect_Turn_No.Location = new System.Drawing.Point(341, 163);
            this.txtD_Detect_Turn_No.Name = "txtD_Detect_Turn_No";
            this.txtD_Detect_Turn_No.Size = new System.Drawing.Size(200, 21);
            this.txtD_Detect_Turn_No.TabIndex = 12;
            this.txtD_Detect_Turn_No.Tag = "Detect_Turn_No";
            this.txtD_Detect_Turn_No.Visible = false;
            // 
            // Detect_Turn_NoLabel
            // 
            this.Detect_Turn_NoLabel.AutoSize = true;
            this.Detect_Turn_NoLabel.Location = new System.Drawing.Point(23, 167);
            this.Detect_Turn_NoLabel.Name = "Detect_Turn_NoLabel";
            this.Detect_Turn_NoLabel.Size = new System.Drawing.Size(51, 12);
            this.PlatetoolTipController.SetSuperTip(this.Detect_Turn_NoLabel, null);
            this.Detect_Turn_NoLabel.TabIndex = 4;
            this.Detect_Turn_NoLabel.Text = "Board No";
            // 
            // Defect_DegreeLabel
            // 
            this.Defect_DegreeLabel.AutoSize = true;
            this.Defect_DegreeLabel.Location = new System.Drawing.Point(23, 212);
            this.Defect_DegreeLabel.Name = "Defect_DegreeLabel";
            this.Defect_DegreeLabel.Size = new System.Drawing.Size(38, 12);
            this.PlatetoolTipController.SetSuperTip(this.Defect_DegreeLabel, null);
            this.Defect_DegreeLabel.TabIndex = 5;
            this.Defect_DegreeLabel.Text = "Degree";
            // 
            // txtD_Defect_Degree_Count
            // 
            this.txtD_Defect_Degree_Count.Location = new System.Drawing.Point(341, 253);
            this.txtD_Defect_Degree_Count.Name = "txtD_Defect_Degree_Count";
            this.txtD_Defect_Degree_Count.Size = new System.Drawing.Size(200, 21);
            this.txtD_Defect_Degree_Count.TabIndex = 14;
            this.txtD_Defect_Degree_Count.Tag = "Defect_Degree_Count";
            this.txtD_Defect_Degree_Count.Visible = false;
            // 
            // Defect_Degree_CountLabel
            // 
            this.Defect_Degree_CountLabel.AutoSize = true;
            this.Defect_Degree_CountLabel.Location = new System.Drawing.Point(23, 257);
            this.Defect_Degree_CountLabel.Name = "Defect_Degree_CountLabel";
            this.Defect_Degree_CountLabel.Size = new System.Drawing.Size(34, 12);
            this.PlatetoolTipController.SetSuperTip(this.Defect_Degree_CountLabel, null);
            this.Defect_Degree_CountLabel.TabIndex = 6;
            this.Defect_Degree_CountLabel.Text = "Count";
            // 
            // txtD_Defect_Deduce_Points
            // 
            this.txtD_Defect_Deduce_Points.Location = new System.Drawing.Point(341, 298);
            this.txtD_Defect_Deduce_Points.Name = "txtD_Defect_Deduce_Points";
            this.txtD_Defect_Deduce_Points.Properties.ReadOnly = true;
            this.txtD_Defect_Deduce_Points.Size = new System.Drawing.Size(200, 21);
            this.txtD_Defect_Deduce_Points.TabIndex = 15;
            this.txtD_Defect_Deduce_Points.Tag = "Defect_Deduce_Points";
            this.txtD_Defect_Deduce_Points.Visible = false;
            // 
            // Defect_Deduce_PointsLabel
            // 
            this.Defect_Deduce_PointsLabel.AutoSize = true;
            this.Defect_Deduce_PointsLabel.Location = new System.Drawing.Point(23, 302);
            this.Defect_Deduce_PointsLabel.Name = "Defect_Deduce_PointsLabel";
            this.Defect_Deduce_PointsLabel.Size = new System.Drawing.Size(38, 12);
            this.PlatetoolTipController.SetSuperTip(this.Defect_Deduce_PointsLabel, null);
            this.Defect_Deduce_PointsLabel.TabIndex = 7;
            this.Defect_Deduce_PointsLabel.Text = "Deduct";
            // 
            // txtD_Defect_Degree
            // 
            this.txtD_Defect_Degree.Location = new System.Drawing.Point(341, 208);
            this.txtD_Defect_Degree.Name = "txtD_Defect_Degree";
            this.txtD_Defect_Degree.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtD_Defect_Degree.Properties.DropDownRows = 5;
            this.txtD_Defect_Degree.Properties.ImmediatePopup = true;
            this.txtD_Defect_Degree.Properties.Items.AddRange(new object[] {
            "1",
            "2",
            "3",
            "4"});
            this.txtD_Defect_Degree.Size = new System.Drawing.Size(200, 21);
            this.txtD_Defect_Degree.TabIndex = 72;
            this.txtD_Defect_Degree.Tag = "Defect_Degree";
            this.txtD_Defect_Degree.Visible = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(23, 126);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 73;
            this.label1.Text = "Defect Name";
            // 
            // txtD_Defect_NameName
            // 
            this.txtD_Defect_NameName.Location = new System.Drawing.Point(341, 122);
            this.txtD_Defect_NameName.Name = "txtD_Defect_NameName";
            this.txtD_Defect_NameName.Size = new System.Drawing.Size(200, 21);
            this.txtD_Defect_NameName.TabIndex = 74;
            this.txtD_Defect_NameName.Tag = "Defect_NameName";
            this.txtD_Defect_NameName.Visible = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(23, 383);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(49, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 7;
            this.label2.Text = "Photo_A:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(174, 383);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(49, 12);
            this.PlatetoolTipController.SetSuperTip(this.label4, null);
            this.label4.TabIndex = 7;
            this.label4.Text = "Photo_B:";
            // 
            // defect_TypeTextEdit
            // 
            this.defect_TypeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Type", true));
            this.defect_TypeTextEdit.Location = new System.Drawing.Point(92, 38);
            this.defect_TypeTextEdit.Name = "defect_TypeTextEdit";
            this.defect_TypeTextEdit.Size = new System.Drawing.Size(205, 21);
            this.defect_TypeTextEdit.TabIndex = 76;
            // 
            // defect_NameTextEdit
            // 
            this.defect_NameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Name", true));
            this.defect_NameTextEdit.Location = new System.Drawing.Point(92, 80);
            this.defect_NameTextEdit.Name = "defect_NameTextEdit";
            this.defect_NameTextEdit.Size = new System.Drawing.Size(205, 21);
            this.defect_NameTextEdit.TabIndex = 77;
            // 
            // defect_NameNameTextEdit
            // 
            this.defect_NameNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_NameName", true));
            this.defect_NameNameTextEdit.Location = new System.Drawing.Point(92, 122);
            this.defect_NameNameTextEdit.Name = "defect_NameNameTextEdit";
            this.defect_NameNameTextEdit.Size = new System.Drawing.Size(205, 21);
            this.defect_NameNameTextEdit.TabIndex = 78;
            // 
            // detect_Turn_NoTextEdit
            // 
            this.detect_Turn_NoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Detect_Turn_No", true));
            this.detect_Turn_NoTextEdit.Location = new System.Drawing.Point(92, 163);
            this.detect_Turn_NoTextEdit.Name = "detect_Turn_NoTextEdit";
            this.detect_Turn_NoTextEdit.Size = new System.Drawing.Size(109, 21);
            this.detect_Turn_NoTextEdit.TabIndex = 79;
            // 
            // defect_DegreeComboBox
            // 
            this.defect_DegreeComboBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Defect_Degree", true));
            this.defect_DegreeComboBox.FormattingEnabled = true;
            this.defect_DegreeComboBox.Location = new System.Drawing.Point(92, 208);
            this.defect_DegreeComboBox.Name = "defect_DegreeComboBox";
            this.defect_DegreeComboBox.Size = new System.Drawing.Size(130, 20);
            this.PlatetoolTipController.SetSuperTip(this.defect_DegreeComboBox, null);
            this.defect_DegreeComboBox.TabIndex = 80;
            // 
            // defect_Degree_CountTextEdit
            // 
            this.defect_Degree_CountTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Degree_Count", true));
            this.defect_Degree_CountTextEdit.Location = new System.Drawing.Point(92, 253);
            this.defect_Degree_CountTextEdit.Name = "defect_Degree_CountTextEdit";
            this.defect_Degree_CountTextEdit.Size = new System.Drawing.Size(109, 21);
            this.defect_Degree_CountTextEdit.TabIndex = 81;
            // 
            // defect_Deduce_PointsTextEdit
            // 
            this.defect_Deduce_PointsTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Deduce_Points", true));
            this.defect_Deduce_PointsTextEdit.Location = new System.Drawing.Point(92, 298);
            this.defect_Deduce_PointsTextEdit.Name = "defect_Deduce_PointsTextEdit";
            this.defect_Deduce_PointsTextEdit.Properties.ReadOnly = true;
            this.defect_Deduce_PointsTextEdit.Size = new System.Drawing.Size(151, 21);
            this.defect_Deduce_PointsTextEdit.TabIndex = 82;
            // 
            // hyperLinkEdit1
            // 
            this.hyperLinkEdit1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Photo_B", true));
            this.hyperLinkEdit1.Location = new System.Drawing.Point(225, 379);
            this.hyperLinkEdit1.Name = "hyperLinkEdit1";
            this.hyperLinkEdit1.Properties.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.hyperLinkEdit1.Properties.Appearance.Options.UseBackColor = true;
            this.hyperLinkEdit1.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.hyperLinkEdit1.Size = new System.Drawing.Size(74, 19);
            this.hyperLinkEdit1.TabIndex = 83;
            this.hyperLinkEdit1.DoubleClick += new System.EventHandler(this.hyperLinkEdit1_DoubleClick);
            // 
            // hyperLinkEdit2
            // 
            this.hyperLinkEdit2.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Photo_A", true));
            this.hyperLinkEdit2.Location = new System.Drawing.Point(73, 379);
            this.hyperLinkEdit2.Name = "hyperLinkEdit2";
            this.hyperLinkEdit2.Properties.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.hyperLinkEdit2.Properties.Appearance.Options.UseBackColor = true;
            this.hyperLinkEdit2.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.hyperLinkEdit2.Size = new System.Drawing.Size(74, 19);
            this.hyperLinkEdit2.TabIndex = 83;
            this.hyperLinkEdit2.DoubleClick += new System.EventHandler(this.hyperLinkEdit2_DoubleClick);
            // 
            // PartDefectDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.hyperLinkEdit2);
            this.Controls.Add(this.hyperLinkEdit1);
            this.Controls.Add(this.defect_Deduce_PointsTextEdit);
            this.Controls.Add(this.defect_Degree_CountTextEdit);
            this.Controls.Add(this.defect_DegreeComboBox);
            this.Controls.Add(this.detect_Turn_NoTextEdit);
            this.Controls.Add(this.defect_NameNameTextEdit);
            this.Controls.Add(this.defect_NameTextEdit);
            this.Controls.Add(this.defect_TypeTextEdit);
            this.Controls.Add(this.txtD_Defect_NameName);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtD_Defect_Degree);
            this.Controls.Add(this.txtD_Defect_Deduce_Points);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.Defect_Deduce_PointsLabel);
            this.Controls.Add(this.txtD_Defect_Degree_Count);
            this.Controls.Add(this.Defect_Degree_CountLabel);
            this.Controls.Add(this.Defect_DegreeLabel);
            this.Controls.Add(this.txtD_Detect_Turn_No);
            this.Controls.Add(this.Detect_Turn_NoLabel);
            this.Controls.Add(this.txtD_Defect_Name);
            this.Controls.Add(this.Defect_NameLabel);
            this.Controls.Add(this.txtD_Defect_Type);
            this.Controls.Add(this.Defect_TypeLabel);
            this.Name = "PartDefectDetailForm";
            this.Size = new System.Drawing.Size(1055, 455);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.Defect_TypeLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Defect_Type, 0);
            this.Controls.SetChildIndex(this.Defect_NameLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Defect_Name, 0);
            this.Controls.SetChildIndex(this.Detect_Turn_NoLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Detect_Turn_No, 0);
            this.Controls.SetChildIndex(this.Defect_DegreeLabel, 0);
            this.Controls.SetChildIndex(this.Defect_Degree_CountLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Defect_Degree_Count, 0);
            this.Controls.SetChildIndex(this.Defect_Deduce_PointsLabel, 0);
            this.Controls.SetChildIndex(this.label2, 0);
            this.Controls.SetChildIndex(this.label4, 0);
            this.Controls.SetChildIndex(this.txtD_Defect_Deduce_Points, 0);
            this.Controls.SetChildIndex(this.txtD_Defect_Degree, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.txtD_Defect_NameName, 0);
            this.Controls.SetChildIndex(this.defect_TypeTextEdit, 0);
            this.Controls.SetChildIndex(this.defect_NameTextEdit, 0);
            this.Controls.SetChildIndex(this.defect_NameNameTextEdit, 0);
            this.Controls.SetChildIndex(this.detect_Turn_NoTextEdit, 0);
            this.Controls.SetChildIndex(this.defect_DegreeComboBox, 0);
            this.Controls.SetChildIndex(this.defect_Degree_CountTextEdit, 0);
            this.Controls.SetChildIndex(this.defect_Deduce_PointsTextEdit, 0);
            this.Controls.SetChildIndex(this.hyperLinkEdit1, 0);
            this.Controls.SetChildIndex(this.hyperLinkEdit2, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Type.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Name.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Detect_Turn_No.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Degree_Count.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Deduce_Points.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Degree.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_NameName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.defect_TypeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.defect_NameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.defect_NameNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.detect_Turn_NoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.defect_Degree_CountTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.defect_Deduce_PointsTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hyperLinkEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hyperLinkEdit2.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        /// <summary>
        /// 
        /// </summary
        /// 2: Confirm Mode
        /// 3: ReadOnly Mode>
        /// <param name="sMode"> 
        /// 0: Create Mode
        /// 1: Revise Mode
        /// </param>
        private void setEditMode(EditMode sMode)
        {
            currentMode = sMode;

            //            if (sMode == EditMode.Create)
            //            {
            //                txtD_Defect_Type.Properties.ReadOnly = false;
            //                txtD_Defect_Name.Properties.ReadOnly = false;
            //                txtD_Detect_Turn_No.Properties.ReadOnly = false;
            //                txtD_Defect_Degree.Properties.ReadOnly = false;
            //                txtD_Defect_Degree_Count.Properties.ReadOnly = false;
            ////                txtD_Defect_Deduce_Points.Properties.ReadOnly = false;
            //            }
            //            else if (sMode == EditMode.Revise)
            //            {
            //                txtD_Defect_Type.Properties.ReadOnly = false;
            //                txtD_Defect_Name.Properties.ReadOnly = false;
            //                txtD_Detect_Turn_No.Properties.ReadOnly = false;
            //                txtD_Defect_Degree.Properties.ReadOnly = false;
            //                txtD_Defect_Degree_Count.Properties.ReadOnly = false;
            //                //                txtD_Defect_Deduce_Points.Properties.ReadOnly = false;
            //            }
            //            else if (sMode == EditMode.Confirm)
            //            {
            //                txtD_Defect_Type.Properties.ReadOnly = true;
            //                txtD_Defect_Name.Properties.ReadOnly = true;
            //                txtD_Detect_Turn_No.Properties.ReadOnly = true;
            //                txtD_Defect_Degree.Properties.ReadOnly = true;
            //                txtD_Defect_Degree_Count.Properties.ReadOnly = true;
            //                //                txtD_Defect_Deduce_Points.Properties.ReadOnly = false;
            //            }
            //            else
            //            {
            //                txtD_Defect_Type.Properties.ReadOnly = true;
            //                txtD_Defect_Name.Properties.ReadOnly = true;
            //                txtD_Detect_Turn_No.Properties.ReadOnly = true;
            //                txtD_Defect_Degree.Properties.ReadOnly = true;
            //                txtD_Defect_Degree_Count.Properties.ReadOnly = true;
            //                //                txtD_Defect_Deduce_Points.Properties.ReadOnly = false;
            //            }
            txtD_Defect_Deduce_Points.Properties.ReadOnly = true;

            //Xsj:add
            this.defect_Deduce_PointsTextEdit.Properties.ReadOnly = true;
            this.defect_NameNameTextEdit.Properties.ReadOnly = true;
        }

        protected override void OnClickCancel()
        {
            this.BindingSource.EndEdit();
            base.OnClickCancel();
            setEditMode(EditMode.ReadOnly);
        }

        protected override void DeleteCurrent()
        {
            ////base.DeleteCurrent();
            //if (this.BindingSource.Count <= 0)
            //{
            //    return;
            //}

            //if (MessageBox.Show("Are you sure you want to delete current record?", "Delete", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question) != DialogResult.Yes)
            //{
            //    return;
            //}
            this.BindingSource.EndEdit();
            base.DeleteCurrent();
            setEditMode(EditMode.ReadOnly);
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            if (this.IsNew)
            {
                currentMode = EditMode.Create;
                setEditMode(currentMode);
            }
            else if (this.BindingSource.Current != null)
            {
                currentMode = EditMode.Revise;
                setEditMode(currentMode);
                //setEditButtonStatus(true);
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
                this.BindingSource.EndEdit();

                PH.FabricInspection.BO.Fabric_Insp_PartDefect currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_PartDefect;

                if (currentIQC != null)
                {
                    if (currentMode != EditMode.ReadOnly)
                    {
                        MasterDetailForm headForm = null;
                        if (this.ParentForm is MasterDetailForm)
                        {
                            headForm = (MasterDetailForm)ParentForm;
                        }
                        if (headForm == null)
                        {
                            if (this.PrevForm is MasterDetailForm)
                            {
                                headForm = (MasterDetailForm)PrevForm;
                            }
                        }
                        if (headForm != null)
                        {
                            currentIQC.Company = ((PH.FabricInspection.BO.Fabric_Insp_Header)headForm.BindingSource.Current).Company;
                            //currentIQC.System_Install_No_ForUpdate = ((PH.FabricInspection.BO.Fabric_Insp_Header)headForm.BindingSource.Current).System_Install_No;
                            currentIQC.System_Install_No = ((PH.FabricInspection.BO.Fabric_Insp_Header)headForm.BindingSource.Current).System_Install_No;//由david加入 2020-10-19
                        }



                    }


                    checkValidation();

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
            PH.FabricInspection.BO.Fabric_Insp_PartDefect currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_PartDefect;

            if (currentIQC != null)
            {
                ValideRules.IsNotBlank(currentIQC.Company, "Company Code");
                ValideRules.IsNotBlank(currentIQC.Defect_Name, "Defect Name");
                ValideRules.IsNotBlank(currentIQC.Defect_Type, "Defect Type");
                ValideRules.IsNotBlank(currentIQC.Detect_Turn_No.ToString(), "Detect_Turn_No");
                ValideRules.IsNotBlank(currentIQC.Defect_Degree.ToString(), "Defect_Degree");
                ValideRules.IsNotBlank(currentIQC.Defect_Degree_Count.ToString(), "Defect_Degree_Count");
            }

        }

        protected override void OnClickCopy()
        {
            PH.FabricInspection.BO.Fabric_Insp_PartDefect curDefect = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_PartDefect;

            //0:生成新的Defect
            PH.FabricInspection.BO.Fabric_Insp_PartDefect tempDefect = new PH.FabricInspection.BO.Fabric_Insp_PartDefect
            {
                Company = curDefect.Company,
                //Defect_Deduce_Points = curDefect.Defect_Deduce_Points,
                Defect_Degree = curDefect.Defect_Degree,
                Defect_Degree_Count = curDefect.Defect_Degree_Count,
                Defect_Name = curDefect.Defect_Name,
                Defect_Type = curDefect.Defect_Type,
                Detect_Turn_No = curDefect.Detect_Turn_No,
                //Item_No = curDefect.Item_No,
                //Lot_Id = curDefect.Lot_Id,

                //System_Install_No_ForUpdate = curDefect.System_Install_No
                //                System_Install_No = curDefect.System_Install_No

            };

            //this.CurBindingSource.Add(tempDefect);
            this.BindingSource.AddNew();
            curDefect = (PH.FabricInspection.BO.Fabric_Insp_PartDefect)this.BindingSource.Current;
            curDefect.Company = tempDefect.Company;
            //curDefect.Defect_Deduce_Points     = tempDefect.Defect_Deduce_Points;
            curDefect.Defect_Degree = tempDefect.Defect_Degree;
            curDefect.Defect_Degree_Count = tempDefect.Defect_Degree_Count;
            curDefect.Defect_Name = tempDefect.Defect_Name;
            curDefect.Defect_Type = tempDefect.Defect_Type;
            curDefect.Detect_Turn_No = tempDefect.Detect_Turn_No;
            //curDefect.Item_No     = tempDefect.Item_No;
            //curDefect.Lot_Id     = tempDefect.Lot_Id;

            //curDefect.System_Install_No_ForUpdate = tempDefect.System_Install_No;
            //            curDefect.System_Install_No = tempDefect.System_Install_No;
            this.IsNew = true;
            this.EditCurrent();
        }




        #region Xsj:20111107 add  
        //Xsj:點擊打開圖片A
        private void hyperLinkEdit2_DoubleClick(object sender, EventArgs e)
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
                imgViewer.IsEditing = (fPartdefect.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit);
                imgViewer.FISPartDefect = fPartdefect;
                imgViewer.ImgPath = fPartdefect.Photo_A.PicPath;
                imgViewer.ShowDialog();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        //Xsj:點擊打開圖片B
        private void hyperLinkEdit1_DoubleClick(object sender, EventArgs e)
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
                imgViewer.IsEditing = (fPartdefect.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit);
                imgViewer.FISPartDefect = fPartdefect;
                imgViewer.ImgPath = fPartdefect.Photo_B.PicPath;
                imgViewer.ShowDialog();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                this.Cursor = Cursors.Default;
            } 
        }
        #endregion

    }
}
