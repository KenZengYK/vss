/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.WidthDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/2 下午 04:35:21 $   
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
    public partial class WidthDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code
        private DevExpress.XtraEditors.TextEdit txtD_System_NO;
        private System.Windows.Forms.Label System_NOLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Usable_Width;
        private System.Windows.Forms.Label Usable_WidthLabel;
        private DevExpress.XtraEditors.TextEdit txtD_SideToSide_Width;
        private System.Windows.Forms.Label SideToSide_WidthLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Detect_Turn_No;
        private System.Windows.Forms.Label Detect_Turn_NoLabel;
        #endregion
        private EditMode currentMode = EditMode.ReadOnly;

        public WidthDetailForm()
        {
            InitializeComponent();
            setEditMode(EditMode.ReadOnly);

        }

        private void InitializeComponent()
        {
            this.txtD_System_NO = new DevExpress.XtraEditors.TextEdit();
            this.System_NOLabel = new System.Windows.Forms.Label();
            this.txtD_Usable_Width = new DevExpress.XtraEditors.TextEdit();
            this.Usable_WidthLabel = new System.Windows.Forms.Label();
            this.txtD_SideToSide_Width = new DevExpress.XtraEditors.TextEdit();
            this.SideToSide_WidthLabel = new System.Windows.Forms.Label();
            this.txtD_Detect_Turn_No = new DevExpress.XtraEditors.TextEdit();
            this.Detect_Turn_NoLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_System_NO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Usable_Width.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SideToSide_Width.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Detect_Turn_No.Properties)).BeginInit();
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
            // txtD_System_NO
            // 
            this.txtD_System_NO.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "System_NO", true));
            this.txtD_System_NO.Location = new System.Drawing.Point(146, 228);
            this.txtD_System_NO.Name = "txtD_System_NO";
            this.txtD_System_NO.Size = new System.Drawing.Size(200, 21);
            this.txtD_System_NO.TabIndex = 5;
            this.txtD_System_NO.Tag = "System_NO";
            this.txtD_System_NO.Visible = false;
            // 
            // System_NOLabel
            // 
            this.System_NOLabel.AutoSize = true;
            this.System_NOLabel.Location = new System.Drawing.Point(46, 227);
            this.System_NOLabel.Name = "System_NOLabel";
            this.System_NOLabel.Size = new System.Drawing.Size(59, 12);
            this.System_NOLabel.TabIndex = 0;
            this.System_NOLabel.Text = "System_NO";
            this.System_NOLabel.Visible = false;
            // 
            // txtD_Usable_Width
            // 
            this.txtD_Usable_Width.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Usable_Width", true));
            this.txtD_Usable_Width.Location = new System.Drawing.Point(146, 51);
            this.txtD_Usable_Width.Name = "txtD_Usable_Width";
            this.txtD_Usable_Width.Size = new System.Drawing.Size(200, 21);
            this.txtD_Usable_Width.TabIndex = 7;
            this.txtD_Usable_Width.Tag = "Usable_Width";
            // 
            // Usable_WidthLabel
            // 
            this.Usable_WidthLabel.AutoSize = true;
            this.Usable_WidthLabel.Location = new System.Drawing.Point(46, 50);
            this.Usable_WidthLabel.Name = "Usable_WidthLabel";
            this.Usable_WidthLabel.Size = new System.Drawing.Size(77, 12);
            this.Usable_WidthLabel.TabIndex = 2;
            this.Usable_WidthLabel.Text = "Usable_Width";
            // 
            // txtD_SideToSide_Width
            // 
            this.txtD_SideToSide_Width.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SideToSide_Width", true));
            this.txtD_SideToSide_Width.Location = new System.Drawing.Point(146, 108);
            this.txtD_SideToSide_Width.Name = "txtD_SideToSide_Width";
            this.txtD_SideToSide_Width.Size = new System.Drawing.Size(200, 21);
            this.txtD_SideToSide_Width.TabIndex = 8;
            this.txtD_SideToSide_Width.Tag = "SideToSide_Width";
            // 
            // SideToSide_WidthLabel
            // 
            this.SideToSide_WidthLabel.AutoSize = true;
            this.SideToSide_WidthLabel.Location = new System.Drawing.Point(46, 107);
            this.SideToSide_WidthLabel.Name = "SideToSide_WidthLabel";
            this.SideToSide_WidthLabel.Size = new System.Drawing.Size(101, 12);
            this.SideToSide_WidthLabel.TabIndex = 3;
            this.SideToSide_WidthLabel.Text = "SideToSide_Width";
            // 
            // txtD_Detect_Turn_No
            // 
            this.txtD_Detect_Turn_No.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Detect_Turn_No", true));
            this.txtD_Detect_Turn_No.Location = new System.Drawing.Point(146, 165);
            this.txtD_Detect_Turn_No.Name = "txtD_Detect_Turn_No";
            this.txtD_Detect_Turn_No.Size = new System.Drawing.Size(200, 21);
            this.txtD_Detect_Turn_No.TabIndex = 9;
            this.txtD_Detect_Turn_No.Tag = "Detect_Turn_No";
            // 
            // Detect_Turn_NoLabel
            // 
            this.Detect_Turn_NoLabel.AutoSize = true;
            this.Detect_Turn_NoLabel.Location = new System.Drawing.Point(46, 164);
            this.Detect_Turn_NoLabel.Name = "Detect_Turn_NoLabel";
            this.Detect_Turn_NoLabel.Size = new System.Drawing.Size(89, 12);
            this.Detect_Turn_NoLabel.TabIndex = 4;
            this.Detect_Turn_NoLabel.Text = "Detect_Turn_No";
            // 
            // WidthDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.txtD_Detect_Turn_No);
            this.Controls.Add(this.Detect_Turn_NoLabel);
            this.Controls.Add(this.txtD_SideToSide_Width);
            this.Controls.Add(this.SideToSide_WidthLabel);
            this.Controls.Add(this.txtD_Usable_Width);
            this.Controls.Add(this.Usable_WidthLabel);
            this.Controls.Add(this.txtD_System_NO);
            this.Controls.Add(this.System_NOLabel);
            this.Name = "WidthDetailForm";
            this.Controls.SetChildIndex(this.System_NOLabel, 0);
            this.Controls.SetChildIndex(this.txtD_System_NO, 0);
            this.Controls.SetChildIndex(this.Usable_WidthLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Usable_Width, 0);
            this.Controls.SetChildIndex(this.SideToSide_WidthLabel, 0);
            this.Controls.SetChildIndex(this.txtD_SideToSide_Width, 0);
            this.Controls.SetChildIndex(this.Detect_Turn_NoLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Detect_Turn_No, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_System_NO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Usable_Width.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SideToSide_Width.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Detect_Turn_No.Properties)).EndInit();
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

            //    teSeqNo.Properties.ReadOnly = false;
            //}
            //else if (sMode == EditMode.Revise)
            //{

            //    teSeqNo.Properties.ReadOnly = false;
            //}
            //else if (sMode == EditMode.Confirm)
            //{
            //    teSeqNo.Properties.ReadOnly = true;
            //}
            //else
            //{
            //    teSeqNo.Properties.ReadOnly = true;
            //}

            txtD_System_NO.Properties.ReadOnly = true;
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

                PH.FabricInspection.BO.Fabric_Insp_Width currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Width;

                if (currentIQC != null)
                {

                    if (currentMode == EditMode.Create)
                    {
                        MasterDetailForm headForm = null;
                        if (this.ParentForm is MasterDetailForm)
                        {
                            headForm = (MasterDetailForm)ParentForm;
                        }

                        if (headForm != null)
                        {
                            currentIQC.Company = ((PH.FabricInspection.BO.Fabric_Insp_Header)headForm.BindingSource.Current).Company;
                            currentIQC.System_Install_No = ((PH.FabricInspection.BO.Fabric_Insp_Header)headForm.BindingSource.Current).System_Install_No; //David加入 2020-10-19

                            //currentIQC.System_Install_No_ForUpdate = ((PH.FabricInspection.BO.Fabric_Insp_Header)headForm.BindingSource.Current).System_Install_No;
//                            currentIQC.System_Install_No = ((PH.FabricInspection.BO.Fabric_Insp_Header)headForm.BindingSource.Current).System_Install_No;
                            //currentIQC.Item_No = ((PH.FabricInspection.BO.Fabric_Insp_Header)headForm.CurBindingSource.Current).Item_No;
                            //currentIQC.Lot_Id = ((PH.FabricInspection.BO.Fabric_Insp_Header)headForm.CurBindingSource.Current).Lot_Id;

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
            PH.FabricInspection.BO.Fabric_Insp_Width currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Width;

            if (currentIQC != null)
            {
                ValideRules.IsNotBlank(currentIQC.Usable_Width.ToString(), "Usable_Width");
                ValideRules.IsNotBlank(currentIQC.SideToSide_Width.ToString(), "SideToSide_Width");
                ValideRules.IsNotBlank(currentIQC.Detect_Turn_No.ToString(), "Detect_Turn_No");
            }

        }

        protected override void OnClickCopy()
        {
            PH.FabricInspection.BO.Fabric_Insp_Width curParameter = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Width;

            //0:生成新的Defect
            PH.FabricInspection.BO.Fabric_Insp_Width tempParameter = new PH.FabricInspection.BO.Fabric_Insp_Width
            {
                Company = curParameter.Company,
                Detect_Turn_No = curParameter.Detect_Turn_No,
               // Item_No = curParameter.Item_No,
                //Lot_Id = curParameter.Lot_Id,
                SideToSide_Width = curParameter.SideToSide_Width,
                //System_Install_No_ForUpdate = curParameter.System_Install_No,
//                System_Install_No = curParameter.System_Install_No,
                Usable_Width = curParameter.Usable_Width
                //                User_Id = PH.Environment.Instance.CurrentUser.UserID,
                //                Create_Date = DateTime.Now

            };

            //this.CurBindingSource.Add(tempParameter);
            this.BindingSource.AddNew();
            curParameter = (PH.FabricInspection.BO.Fabric_Insp_Width)this.BindingSource.Current;
            curParameter.Company = tempParameter.Company;
            curParameter.Detect_Turn_No = tempParameter.Detect_Turn_No;
            //curParameter.Item_No = tempParameter.Item_No;
            //curParameter.Lot_Id = tempParameter.Lot_Id;
            
            curParameter.SideToSide_Width = tempParameter.SideToSide_Width;
            //curParameter.System_Install_No_ForUpdate = tempParameter.System_Install_No;
//            curParameter.System_Install_No = tempParameter.System_Install_No;
            curParameter.Usable_Width = tempParameter.Usable_Width;
            this.IsNew = true;
            this.EditCurrent();
        }


    }
}
