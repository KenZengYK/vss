/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.ParameterDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/2 上午 11:49:59 $   
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

namespace PH.FabricInspection.UI
{
    public partial class ParameterDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code
        private DevExpress.XtraEditors.TextEdit txtD_Company;
        private System.Windows.Forms.Label CompanyLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Parameter_Code;
        private System.Windows.Forms.Label Parameter_KeyLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Parameter_Description;
        private System.Windows.Forms.Label Parameter_DescLabel;
        #endregion
        private Label label1;
        private TextEdit txtD_ParameterEnglishDescription;
        private TextEdit txtD_ParameterThaiDescription;
        private Label label2;
        private BindingSource fabricSysParameterBindingSource;
        private IContainer components;
        private BindingSource fabricSysParameterBindingSource1;
	    
	            private EditMode currentMode = EditMode.ReadOnly;

        public ParameterDetailForm()
        {
            InitializeComponent();
            setEditMode(EditMode.ReadOnly);
		
        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.txtD_Company = new DevExpress.XtraEditors.TextEdit();
            this.CompanyLabel = new System.Windows.Forms.Label();
            this.txtD_Parameter_Code = new DevExpress.XtraEditors.TextEdit();
            this.Parameter_KeyLabel = new System.Windows.Forms.Label();
            this.txtD_Parameter_Description = new DevExpress.XtraEditors.TextEdit();
            this.Parameter_DescLabel = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtD_ParameterEnglishDescription = new DevExpress.XtraEditors.TextEdit();
            this.fabricSysParameterBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.txtD_ParameterThaiDescription = new DevExpress.XtraEditors.TextEdit();
            this.fabricSysParameterBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Company.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Parameter_Code.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Parameter_Description.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ParameterEnglishDescription.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fabricSysParameterBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ParameterThaiDescription.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fabricSysParameterBindingSource1)).BeginInit();
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
            // txtD_Company
            // 
            this.txtD_Company.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Company", true));
            this.txtD_Company.EditValue = "";
            this.txtD_Company.Location = new System.Drawing.Point(202, 62);
            this.txtD_Company.Name = "txtD_Company";
            this.txtD_Company.Size = new System.Drawing.Size(200, 21);
            this.txtD_Company.TabIndex = 7;
            this.txtD_Company.Tag = "Company";
            // 
            // CompanyLabel
            // 
            this.CompanyLabel.AutoSize = true;
            this.CompanyLabel.Location = new System.Drawing.Point(46, 71);
            this.CompanyLabel.Name = "CompanyLabel";
            this.CompanyLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.CompanyLabel, null);
            this.CompanyLabel.TabIndex = 0;
            this.CompanyLabel.Text = "Company  No:";
            // 
            // txtD_Parameter_Code
            // 
            this.txtD_Parameter_Code.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Parameter_Key", true));
            this.txtD_Parameter_Code.Location = new System.Drawing.Point(202, 109);
            this.txtD_Parameter_Code.Name = "txtD_Parameter_Code";
            this.txtD_Parameter_Code.Size = new System.Drawing.Size(200, 21);
            this.txtD_Parameter_Code.TabIndex = 9;
            this.txtD_Parameter_Code.Tag = "Parameter_Key";
            // 
            // Parameter_KeyLabel
            // 
            this.Parameter_KeyLabel.AutoSize = true;
            this.Parameter_KeyLabel.Location = new System.Drawing.Point(46, 114);
            this.Parameter_KeyLabel.Name = "Parameter_KeyLabel";
            this.Parameter_KeyLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.Parameter_KeyLabel, null);
            this.Parameter_KeyLabel.TabIndex = 2;
            this.Parameter_KeyLabel.Text = "Parameter Code:";
            // 
            // txtD_Parameter_Description
            // 
            this.txtD_Parameter_Description.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Parameter_Desc", true));
            this.txtD_Parameter_Description.Location = new System.Drawing.Point(202, 154);
            this.txtD_Parameter_Description.Name = "txtD_Parameter_Description";
            this.txtD_Parameter_Description.Size = new System.Drawing.Size(540, 21);
            this.txtD_Parameter_Description.TabIndex = 10;
            this.txtD_Parameter_Description.Tag = "Parameter_Desc";
            // 
            // Parameter_DescLabel
            // 
            this.Parameter_DescLabel.AutoSize = true;
            this.Parameter_DescLabel.Location = new System.Drawing.Point(46, 158);
            this.Parameter_DescLabel.Name = "Parameter_DescLabel";
            this.Parameter_DescLabel.Size = new System.Drawing.Size(185, 12);
            this.PlatetoolTipController.SetSuperTip(this.Parameter_DescLabel, null);
            this.Parameter_DescLabel.TabIndex = 3;
            this.Parameter_DescLabel.Text = "Parameter Chinese Description:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(46, 207);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(185, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 11;
            this.label1.Text = "Parameter English Description:";
            // 
            // txtD_ParameterEnglishDescription
            // 
            this.txtD_ParameterEnglishDescription.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ParameterEnglishDesc", true));
            this.txtD_ParameterEnglishDescription.Location = new System.Drawing.Point(202, 202);
            this.txtD_ParameterEnglishDescription.Name = "txtD_ParameterEnglishDescription";
            this.txtD_ParameterEnglishDescription.Size = new System.Drawing.Size(540, 21);
            this.txtD_ParameterEnglishDescription.TabIndex = 12;
            this.txtD_ParameterEnglishDescription.Tag = "ParameterEnglishDesc";
            // 
            // fabricSysParameterBindingSource
            // 
            this.fabricSysParameterBindingSource.DataSource = typeof(PH.FabricInspection.BO.Fabric_Sys_Parameter);
            // 
            // txtD_ParameterThaiDescription
            // 
            this.txtD_ParameterThaiDescription.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ParameterThaiDesc", true));
            this.txtD_ParameterThaiDescription.Location = new System.Drawing.Point(202, 253);
            this.txtD_ParameterThaiDescription.Name = "txtD_ParameterThaiDescription";
            this.txtD_ParameterThaiDescription.Size = new System.Drawing.Size(540, 21);
            this.txtD_ParameterThaiDescription.TabIndex = 14;
            this.txtD_ParameterThaiDescription.Tag = "ParameterThaiDesc";
            // 
            // fabricSysParameterBindingSource1
            // 
            this.fabricSysParameterBindingSource1.DataSource = typeof(PH.FabricInspection.BO.Fabric_Sys_Parameter);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(46, 258);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(167, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 13;
            this.label2.Text = "Parameter Thai Description:";
            // 
            // ParameterDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.txtD_ParameterThaiDescription);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtD_ParameterEnglishDescription);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtD_Parameter_Description);
            this.Controls.Add(this.Parameter_DescLabel);
            this.Controls.Add(this.txtD_Parameter_Code);
            this.Controls.Add(this.Parameter_KeyLabel);
            this.Controls.Add(this.txtD_Company);
            this.Controls.Add(this.CompanyLabel);
            this.Name = "ParameterDetailForm";
            this.Size = new System.Drawing.Size(866, 403);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.CompanyLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Company, 0);
            this.Controls.SetChildIndex(this.Parameter_KeyLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Parameter_Code, 0);
            this.Controls.SetChildIndex(this.Parameter_DescLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Parameter_Description, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.txtD_ParameterEnglishDescription, 0);
            this.Controls.SetChildIndex(this.label2, 0);
            this.Controls.SetChildIndex(this.txtD_ParameterThaiDescription, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Company.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Parameter_Code.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Parameter_Description.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ParameterEnglishDescription.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fabricSysParameterBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ParameterThaiDescription.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fabricSysParameterBindingSource1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

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
        }

     
        protected override void OnClickCancel()
        {
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

            //base.Return();
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
                CompanyLabel.Focus();
                PH.FabricInspection.BO.Fabric_Sys_Parameter currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Sys_Parameter;

                if (currentIQC != null)
                {


                    if (currentMode == EditMode.Create)
                    {
                        currentIQC.Company = txtD_Company.Text;
                        currentIQC.User_Id = GlobalInfo.GetCurrentUserId();
                        currentIQC.Create_Date = DateTime.Now;
                        currentIQC.Parameter_Type = "SDPS";
                        
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
            PH.FabricInspection.BO.Fabric_Sys_Parameter currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Sys_Parameter;

            if (currentIQC != null)
            {
                ValideRules.IsNotBlank(currentIQC.Company, "Company Code");
                ValideRules.IsNotBlank(currentIQC.Parameter_Key, "Parameter Code");
                ValideRules.IsNotBlank(currentIQC.Parameter_Type, "Parameter Type");
            }
            
        }


//        protected override void Return()
//        {
//            if ((currentMode == EditMode.Create) || (currentMode == EditMode.Revise))
//            {
//                DialogResult result = MessageBox.Show("Do you want to save current record before you return?", "Information", MessageBoxButtons.YesNoCancel);
//                if (result == DialogResult.Yes)
//                {
//                    if (SaveCurrentRecord())
//                    {
//                        base.Return();
////                        this.BindingSource.ResetBindings(true);
//                    }
//                }
//                else if (result == DialogResult.No)
//                {
//                    CancelEditCurrent();
//                    base.Return();
////                    this.BindingSource.ResetBindings(true);
//                }
//                else
//                {
//                    return;
//                }
//            }
//            else
//            {
//                base.Return();
////                this.BindingSource.ResetBindings(true);
//            }
//        } 


        protected override void OnClickCopy()
        {
            PH.FabricInspection.BO.Fabric_Sys_Parameter curParameter = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Sys_Parameter;

            //0:生成新的Defect
            PH.FabricInspection.BO.Fabric_Sys_Parameter tempParameter = new PH.FabricInspection.BO.Fabric_Sys_Parameter
            {
                Company = curParameter.Company,
                Parameter_Desc = curParameter.Parameter_Desc,
                Parameter_Key = curParameter.Parameter_Key,
                //Parameter_Type = curParameter.Parameter_Type,
                Parameter_Type = "SDPS",
                //User_Id = PH.Environment.Instance.CurrentUser.UserID,
                User_Id = GlobalInfo.GetCurrentUserId(),
                Create_Date = DateTime.Now,
                ParameterEnglishDesc = curParameter.ParameterEnglishDesc,
                ParameterThaiDesc = curParameter.ParameterThaiDesc

            };

            //this.CurBindingSource.Add(tempParameter);
            this.BindingSource.AddNew();
            curParameter = (PH.FabricInspection.BO.Fabric_Sys_Parameter)this.BindingSource.Current;
            curParameter.Company = tempParameter.Company;
            curParameter.Parameter_Desc = tempParameter.Parameter_Desc;
            curParameter.ParameterEnglishDesc = tempParameter.ParameterEnglishDesc;
            curParameter.ParameterThaiDesc = tempParameter.ParameterThaiDesc;
            curParameter.Parameter_Key = tempParameter.Parameter_Key;
            //curParameter.Parameter_Type = tempParameter.Parameter_Type;
            curParameter.Parameter_Type = "SDPS";
            curParameter.User_Id = GlobalInfo.GetCurrentUserId();// PH.Environment.Instance.CurrentUser.UserID;
            curParameter.Create_Date = DateTime.Now;
            
            //this.EditCurrent();
            this.OnClickEdit();
            this.IsNew = true;
        }

       


	}
}
