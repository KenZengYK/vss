/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: /PH/PH.MIDc.root/PH.MIDc/PH.MIDc.UI/Config/TechnicalInformationDefaultDetailForm.cs $   
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
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class TechnicalInformationDefaultDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code
        private DevExpress.XtraEditors.TextEdit txtD_ID;
        private System.Windows.Forms.Label IDLable;
        private DevExpress.XtraEditors.TextEdit txtD_Group;
        private System.Windows.Forms.Label GroupLable;
        private DevExpress.XtraEditors.TextEdit txtD_TestType;
        private System.Windows.Forms.Label TestTypeLable;
        private DevExpress.XtraEditors.TextEdit txtD_TestMethod;
        private System.Windows.Forms.Label TestMethodLable;
        private DevExpress.XtraEditors.TextEdit txtD_Grade;
        private System.Windows.Forms.Label GradeLable;
        private DevExpress.XtraEditors.TextEdit txtD_SpecifyMethod;
        private System.Windows.Forms.Label SpecifyMethodLable;
        private DevExpress.XtraEditors.TextEdit txtD_Remark;
        private System.Windows.Forms.Label RemarkLable;
        private ListBoxControl listboxTestMethod;
        private ButtonEdit buttonEdit1;
        private IContainer components;
        private System.Windows.Forms.Label TestMethodListLable;
        #endregion

        private TechnicalInformationDefault _techInforDef
        {
            get { return this.BindingSource.Current as TechnicalInformationDefault; }
        }      

        public TechnicalInformationDefaultDetailForm()
        {
            InitializeComponent();
            this.listboxTestMethod.SelectedIndexChanged += new System.EventHandler(this.listboxTestMethod_SelectedIndexChanged);
            this.buttonEdit1.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.buttonEdit1_ButtonClick);

        }

        public override void DataBind()
        {            
            base.DataBind();

            foreach (string item in _techInforDef.TestMethodStr)//旧平台在 base.OnBindingDataSource()下。
            {
                if (item.Trim() != "")
                    this.listboxTestMethod.Items.Add(item);

            }
        }               
        
        private void buttonEdit1_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {

            string testMethod = buttonEdit1.Text;
            switch (e.Button.Index)
            {
                case 0://+
                    this.listboxTestMethod.Items.Add(testMethod);
                    (this.BindingSource.Current as TechnicalInformationDefault).TestMethodList = (this.BindingSource.Current as TechnicalInformationDefault).TestMethodList + "&" + testMethod;
                   
                    //(this.BindingSource.Current as TechnicalInformationDefault).TestMethodList = "123";
                    //MessageBox.Show(_techInforDef.TestMethodList);
                    //MessageBox.Show(_techInforDef.ID.ToString());


                    break;
                case 1://-
                    this.listboxTestMethod.Items.Remove(testMethod);
                    (this.BindingSource.Current as TechnicalInformationDefault).TestMethodList = (this.BindingSource.Current as TechnicalInformationDefault).TestMethodList.Replace(testMethod, "");
                    break;
                default:
                    break;
            }
 
        }

        private void listboxTestMethod_SelectedIndexChanged(object sender, EventArgs e)
        {
            buttonEdit1.Text = listboxTestMethod.Text;
            buttonEdit1.Properties.Tag = listboxTestMethod.SelectedIndex;
        }

        private void InitializeComponent()
        {
            this.txtD_ID = new DevExpress.XtraEditors.TextEdit();
            this.IDLable = new System.Windows.Forms.Label();
            this.txtD_Group = new DevExpress.XtraEditors.TextEdit();
            this.GroupLable = new System.Windows.Forms.Label();
            this.txtD_TestType = new DevExpress.XtraEditors.TextEdit();
            this.TestTypeLable = new System.Windows.Forms.Label();
            this.txtD_TestMethod = new DevExpress.XtraEditors.TextEdit();
            this.TestMethodLable = new System.Windows.Forms.Label();
            this.txtD_Grade = new DevExpress.XtraEditors.TextEdit();
            this.GradeLable = new System.Windows.Forms.Label();
            this.txtD_SpecifyMethod = new DevExpress.XtraEditors.TextEdit();
            this.SpecifyMethodLable = new System.Windows.Forms.Label();
            this.txtD_Remark = new DevExpress.XtraEditors.TextEdit();
            this.RemarkLable = new System.Windows.Forms.Label();
            this.TestMethodListLable = new System.Windows.Forms.Label();
            this.listboxTestMethod = new DevExpress.XtraEditors.ListBoxControl();
            this.buttonEdit1 = new DevExpress.XtraEditors.ButtonEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Group.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_TestType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_TestMethod.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Grade.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SpecifyMethod.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Remark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.listboxTestMethod)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.buttonEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.TechnicalInformationDefault);
            // 
            // txtD_ID
            // 
            this.txtD_ID.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ID", true));
            this.txtD_ID.Location = new System.Drawing.Point(169, 48);
            this.txtD_ID.Name = "txtD_ID";
            this.txtD_ID.Size = new System.Drawing.Size(200, 21);
            this.txtD_ID.TabIndex = 8;
            this.txtD_ID.Tag = "ID";
            // 
            // IDLable
            // 
            this.IDLable.Location = new System.Drawing.Point(49, 48);
            this.IDLable.Name = "IDLable";
            this.IDLable.Size = new System.Drawing.Size(103, 13);
            //this.PlatetoolTipController.SetSuperTip(this.IDLable, null);
            this.IDLable.TabIndex = 0;
            this.IDLable.Text = "ID";
            this.IDLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Group
            // 
            this.txtD_Group.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TypeGroup", true));
            this.txtD_Group.Location = new System.Drawing.Point(169, 75);
            this.txtD_Group.Name = "txtD_Group";
            this.txtD_Group.Size = new System.Drawing.Size(200, 21);
            this.txtD_Group.TabIndex = 9;
            this.txtD_Group.Tag = "TypeGroup";
            // 
            // GroupLable
            // 
            this.GroupLable.Location = new System.Drawing.Point(49, 75);
            this.GroupLable.Name = "GroupLable";
            this.GroupLable.Size = new System.Drawing.Size(103, 13);
            //this.PlatetoolTipController.SetSuperTip(this.GroupLable, null);
            this.GroupLable.TabIndex = 1;
            this.GroupLable.Text = "Test Particulars";
            this.GroupLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_TestType
            // 
            this.txtD_TestType.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TestType", true));
            this.txtD_TestType.Location = new System.Drawing.Point(169, 102);
            this.txtD_TestType.Name = "txtD_TestType";
            this.txtD_TestType.Size = new System.Drawing.Size(200, 21);
            this.txtD_TestType.TabIndex = 10;
            this.txtD_TestType.Tag = "TestType";
            // 
            // TestTypeLable
            // 
            this.TestTypeLable.Location = new System.Drawing.Point(49, 102);
            this.TestTypeLable.Name = "TestTypeLable";
            this.TestTypeLable.Size = new System.Drawing.Size(103, 13);
            //this.PlatetoolTipController.SetSuperTip(this.TestTypeLable, null);
            this.TestTypeLable.TabIndex = 2;
            this.TestTypeLable.Text = "TestType";
            this.TestTypeLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_TestMethod
            // 
            this.txtD_TestMethod.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SpecifyMethod", true));
            this.txtD_TestMethod.Location = new System.Drawing.Point(169, 305);
            this.txtD_TestMethod.Name = "txtD_TestMethod";
            this.txtD_TestMethod.Size = new System.Drawing.Size(200, 21);
            this.txtD_TestMethod.TabIndex = 11;
            this.txtD_TestMethod.Tag = "TestMethod";
            // 
            // TestMethodLable
            // 
            this.TestMethodLable.Location = new System.Drawing.Point(49, 305);
            this.TestMethodLable.Name = "TestMethodLable";
            this.TestMethodLable.Size = new System.Drawing.Size(103, 13);
            //this.PlatetoolTipController.SetSuperTip(this.TestMethodLable, null);
            this.TestMethodLable.TabIndex = 3;
            this.TestMethodLable.Text = "TestMethod";
            this.TestMethodLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Grade
            // 
            this.txtD_Grade.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Grade", true));
            this.txtD_Grade.Location = new System.Drawing.Point(169, 276);
            this.txtD_Grade.Name = "txtD_Grade";
            this.txtD_Grade.Size = new System.Drawing.Size(200, 21);
            this.txtD_Grade.TabIndex = 12;
            this.txtD_Grade.Tag = "Grade";
            // 
            // GradeLable
            // 
            this.GradeLable.Location = new System.Drawing.Point(58, 279);
            this.GradeLable.Name = "GradeLable";
            this.GradeLable.Size = new System.Drawing.Size(103, 13);
            //this.PlatetoolTipController.SetSuperTip(this.GradeLable, null);
            this.GradeLable.TabIndex = 4;
            this.GradeLable.Text = "Grade";
            this.GradeLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_SpecifyMethod
            // 
            this.txtD_SpecifyMethod.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SpecifyMethod", true));
            this.txtD_SpecifyMethod.Location = new System.Drawing.Point(169, 249);
            this.txtD_SpecifyMethod.Name = "txtD_SpecifyMethod";
            this.txtD_SpecifyMethod.Size = new System.Drawing.Size(200, 21);
            this.txtD_SpecifyMethod.TabIndex = 13;
            this.txtD_SpecifyMethod.Tag = "SpecifyMethod";
            // 
            // SpecifyMethodLable
            // 
            this.SpecifyMethodLable.Location = new System.Drawing.Point(49, 249);
            this.SpecifyMethodLable.Name = "SpecifyMethodLable";
            this.SpecifyMethodLable.Size = new System.Drawing.Size(103, 13);
            //this.PlatetoolTipController.SetSuperTip(this.SpecifyMethodLable, null);
            this.SpecifyMethodLable.TabIndex = 5;
            this.SpecifyMethodLable.Text = "SpecifyMethod";
            this.SpecifyMethodLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Remark
            // 
            this.txtD_Remark.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.txtD_Remark.Location = new System.Drawing.Point(169, 337);
            this.txtD_Remark.Name = "txtD_Remark";
            this.txtD_Remark.Size = new System.Drawing.Size(200, 21);
            this.txtD_Remark.TabIndex = 14;
            this.txtD_Remark.Tag = "Remark";
            // 
            // RemarkLable
            // 
            this.RemarkLable.Location = new System.Drawing.Point(49, 337);
            this.RemarkLable.Name = "RemarkLable";
            this.RemarkLable.Size = new System.Drawing.Size(103, 13);
            //this.PlatetoolTipController.SetSuperTip(this.RemarkLable, null);
            this.RemarkLable.TabIndex = 6;
            this.RemarkLable.Text = "Remark";
            this.RemarkLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // TestMethodListLable
            // 
            this.TestMethodListLable.Location = new System.Drawing.Point(49, 129);
            this.TestMethodListLable.Name = "TestMethodListLable";
            this.TestMethodListLable.Size = new System.Drawing.Size(103, 13);
            //this.PlatetoolTipController.SetSuperTip(this.TestMethodListLable, null);
            this.TestMethodListLable.TabIndex = 7;
            this.TestMethodListLable.Text = "TestMethodList";
            this.TestMethodListLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // listboxTestMethod
            // 
            this.listboxTestMethod.DataBindings.Add(new System.Windows.Forms.Binding("Tag", this.BindingSource, "TestMethodList", true));
            this.listboxTestMethod.Location = new System.Drawing.Point(169, 129);
            this.listboxTestMethod.Name = "listboxTestMethod";
            this.listboxTestMethod.Size = new System.Drawing.Size(200, 70);
            this.listboxTestMethod.TabIndex = 15;
            // 
            // buttonEdit1
            // 
            this.buttonEdit1.Location = new System.Drawing.Point(169, 205);
            this.buttonEdit1.Name = "buttonEdit1";
            this.buttonEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Plus, "", -1, true, true, true, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null),
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Minus)});
            this.buttonEdit1.Size = new System.Drawing.Size(200, 21);
            this.buttonEdit1.TabIndex = 16;
            // 
            // TechnicalInformationDefaultDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.buttonEdit1);
            this.Controls.Add(this.listboxTestMethod);
            this.Controls.Add(this.TestMethodListLable);
            this.Controls.Add(this.txtD_Remark);
            this.Controls.Add(this.RemarkLable);
            this.Controls.Add(this.txtD_SpecifyMethod);
            this.Controls.Add(this.SpecifyMethodLable);
            this.Controls.Add(this.txtD_Grade);
            this.Controls.Add(this.GradeLable);
            this.Controls.Add(this.txtD_TestMethod);
            this.Controls.Add(this.TestMethodLable);
            this.Controls.Add(this.txtD_TestType);
            this.Controls.Add(this.TestTypeLable);
            this.Controls.Add(this.txtD_Group);
            this.Controls.Add(this.GroupLable);
            this.Controls.Add(this.txtD_ID);
            this.Controls.Add(this.IDLable);
            this.Name = "TechnicalInformationDefaultDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.IDLable, 0);
            this.Controls.SetChildIndex(this.txtD_ID, 0);
            this.Controls.SetChildIndex(this.GroupLable, 0);
            this.Controls.SetChildIndex(this.txtD_Group, 0);
            this.Controls.SetChildIndex(this.TestTypeLable, 0);
            this.Controls.SetChildIndex(this.txtD_TestType, 0);
            this.Controls.SetChildIndex(this.TestMethodLable, 0);
            this.Controls.SetChildIndex(this.txtD_TestMethod, 0);
            this.Controls.SetChildIndex(this.GradeLable, 0);
            this.Controls.SetChildIndex(this.txtD_Grade, 0);
            this.Controls.SetChildIndex(this.SpecifyMethodLable, 0);
            this.Controls.SetChildIndex(this.txtD_SpecifyMethod, 0);
            this.Controls.SetChildIndex(this.RemarkLable, 0);
            this.Controls.SetChildIndex(this.txtD_Remark, 0);
            this.Controls.SetChildIndex(this.TestMethodListLable, 0);
            this.Controls.SetChildIndex(this.listboxTestMethod, 0);
            this.Controls.SetChildIndex(this.buttonEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Group.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_TestType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_TestMethod.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Grade.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SpecifyMethod.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Remark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.listboxTestMethod)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.buttonEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        

    }
}
