/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.SpreadDefectDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/2 下午 04:34:11 $   
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
    public partial class sSpreadDefectDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code

        private DevExpress.XtraEditors.TextEdit txtD_Defect_Type;
        private System.Windows.Forms.Label Defect_TypeLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Defect_Name;
        private System.Windows.Forms.Label Defect_NameLabel;
        private System.Windows.Forms.Label Spread_Defect_DegreeLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Place_From;
        private System.Windows.Forms.Label From_PlaceLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Place_To;
        private ComboBoxEdit txtD_Degree;
        private System.Windows.Forms.Label To_PlaceLabel;
        #endregion
        private Label label1;
        private TextEdit txtD_Defect_NameName;
        private TextEdit textEdit1;
        private Label label2;
        private TextEdit textEdit2;
        private Label label3;
        private TextEdit textEdit3;
        private Label label4;
        private Label label5;
        private CheckEdit checkEdit1;
        private EditMode currentMode = EditMode.ReadOnly;

        public sSpreadDefectDetailForm()
        {
            InitializeComponent();
            setEditMode(EditMode.ReadOnly);

        }

        private void InitializeComponent()
        {
            this.txtD_Defect_Type = new DevExpress.XtraEditors.TextEdit();
            this.Defect_TypeLabel = new System.Windows.Forms.Label();
            this.txtD_Defect_Name = new DevExpress.XtraEditors.TextEdit();
            this.Defect_NameLabel = new System.Windows.Forms.Label();
            this.Spread_Defect_DegreeLabel = new System.Windows.Forms.Label();
            this.txtD_Place_From = new DevExpress.XtraEditors.TextEdit();
            this.From_PlaceLabel = new System.Windows.Forms.Label();
            this.txtD_Place_To = new DevExpress.XtraEditors.TextEdit();
            this.To_PlaceLabel = new System.Windows.Forms.Label();
            this.txtD_Degree = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.txtD_Defect_NameName = new DevExpress.XtraEditors.TextEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.label3 = new System.Windows.Forms.Label();
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.checkEdit1 = new DevExpress.XtraEditors.CheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Type.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Name.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Place_From.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Place_To.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Degree.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_NameName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).BeginInit();
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
            // txtD_Defect_Type
            // 
            this.txtD_Defect_Type.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Type", true));
            this.txtD_Defect_Type.Location = new System.Drawing.Point(172, 40);
            this.txtD_Defect_Type.Name = "txtD_Defect_Type";
            this.txtD_Defect_Type.Size = new System.Drawing.Size(200, 21);
            this.txtD_Defect_Type.TabIndex = 9;
            this.txtD_Defect_Type.Tag = "Defect_Type";
            // 
            // Defect_TypeLabel
            // 
            this.Defect_TypeLabel.AutoSize = true;
            this.Defect_TypeLabel.Location = new System.Drawing.Point(20, 45);
            this.Defect_TypeLabel.Name = "Defect_TypeLabel";
            this.Defect_TypeLabel.Size = new System.Drawing.Size(62, 12);
            this.PlatetoolTipController.SetSuperTip(this.Defect_TypeLabel, null);
            this.Defect_TypeLabel.TabIndex = 2;
            this.Defect_TypeLabel.Text = "Defect Type";
            // 
            // txtD_Defect_Name
            // 
            this.txtD_Defect_Name.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Name", true));
            this.txtD_Defect_Name.Location = new System.Drawing.Point(172, 71);
            this.txtD_Defect_Name.Name = "txtD_Defect_Name";
            this.txtD_Defect_Name.Size = new System.Drawing.Size(200, 21);
            this.txtD_Defect_Name.TabIndex = 10;
            this.txtD_Defect_Name.Tag = "Defect_Name";
            // 
            // Defect_NameLabel
            // 
            this.Defect_NameLabel.AutoSize = true;
            this.Defect_NameLabel.Location = new System.Drawing.Point(20, 77);
            this.Defect_NameLabel.Name = "Defect_NameLabel";
            this.Defect_NameLabel.Size = new System.Drawing.Size(63, 12);
            this.PlatetoolTipController.SetSuperTip(this.Defect_NameLabel, null);
            this.Defect_NameLabel.TabIndex = 3;
            this.Defect_NameLabel.Text = "Defect Code";
            // 
            // Spread_Defect_DegreeLabel
            // 
            this.Spread_Defect_DegreeLabel.AutoSize = true;
            this.Spread_Defect_DegreeLabel.Location = new System.Drawing.Point(20, 136);
            this.Spread_Defect_DegreeLabel.Name = "Spread_Defect_DegreeLabel";
            this.Spread_Defect_DegreeLabel.Size = new System.Drawing.Size(38, 12);
            this.PlatetoolTipController.SetSuperTip(this.Spread_Defect_DegreeLabel, null);
            this.Spread_Defect_DegreeLabel.TabIndex = 4;
            this.Spread_Defect_DegreeLabel.Text = "Degree";
            // 
            // txtD_Place_From
            // 
            this.txtD_Place_From.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "From_Place", true));
            this.txtD_Place_From.Location = new System.Drawing.Point(172, 186);
            this.txtD_Place_From.Name = "txtD_Place_From";
            this.txtD_Place_From.Size = new System.Drawing.Size(200, 21);
            this.txtD_Place_From.TabIndex = 12;
            this.txtD_Place_From.Tag = "From_Place";
            // 
            // From_PlaceLabel
            // 
            this.From_PlaceLabel.AutoSize = true;
            this.From_PlaceLabel.Location = new System.Drawing.Point(20, 190);
            this.From_PlaceLabel.Name = "From_PlaceLabel";
            this.From_PlaceLabel.Size = new System.Drawing.Size(114, 12);
            this.PlatetoolTipController.SetSuperTip(this.From_PlaceLabel, null);
            this.From_PlaceLabel.TabIndex = 5;
            this.From_PlaceLabel.Text = "From Location (Width)";
            // 
            // txtD_Place_To
            // 
            this.txtD_Place_To.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "To_Place", true));
            this.txtD_Place_To.Location = new System.Drawing.Point(172, 217);
            this.txtD_Place_To.Name = "txtD_Place_To";
            this.txtD_Place_To.Size = new System.Drawing.Size(200, 21);
            this.txtD_Place_To.TabIndex = 13;
            this.txtD_Place_To.Tag = "To_Place";
            // 
            // To_PlaceLabel
            // 
            this.To_PlaceLabel.AutoSize = true;
            this.To_PlaceLabel.Location = new System.Drawing.Point(20, 221);
            this.To_PlaceLabel.Name = "To_PlaceLabel";
            this.To_PlaceLabel.Size = new System.Drawing.Size(102, 12);
            this.PlatetoolTipController.SetSuperTip(this.To_PlaceLabel, null);
            this.To_PlaceLabel.TabIndex = 6;
            this.To_PlaceLabel.Text = "To Location (Width)";
            // 
            // txtD_Degree
            // 
            this.txtD_Degree.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Spread_Defect_Degree", true));
            this.txtD_Degree.Location = new System.Drawing.Point(172, 133);
            this.txtD_Degree.Name = "txtD_Degree";
            this.txtD_Degree.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtD_Degree.Properties.DropDownRows = 4;
            this.txtD_Degree.Properties.ImmediatePopup = true;
            this.txtD_Degree.Properties.Items.AddRange(new object[] {
            "High",
            "Mid",
            "Low"});
            this.txtD_Degree.Size = new System.Drawing.Size(200, 21);
            this.txtD_Degree.TabIndex = 72;
            this.txtD_Degree.Tag = "Spread_Defect_Degree";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(20, 107);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 73;
            this.label1.Text = "Defect Name";
            // 
            // txtD_Defect_NameName
            // 
            this.txtD_Defect_NameName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Name", true));
            this.txtD_Defect_NameName.Location = new System.Drawing.Point(172, 102);
            this.txtD_Defect_NameName.Name = "txtD_Defect_NameName";
            this.txtD_Defect_NameName.Size = new System.Drawing.Size(200, 21);
            this.txtD_Defect_NameName.TabIndex = 74;
            this.txtD_Defect_NameName.Tag = "Defect_NameName";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AddtionalPercent", true));
            this.textEdit1.Location = new System.Drawing.Point(172, 311);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(200, 21);
            this.textEdit1.TabIndex = 76;
            this.textEdit1.Tag = "To_Place";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(20, 313);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(42, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 75;
            this.label2.Text = "Add\'l %";
            // 
            // textEdit2
            // 
            this.textEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "To_Place_Length", true));
            this.textEdit2.Location = new System.Drawing.Point(172, 278);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Size = new System.Drawing.Size(200, 21);
            this.textEdit2.TabIndex = 80;
            this.textEdit2.Tag = "To_Place";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(20, 283);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(106, 12);
            this.PlatetoolTipController.SetSuperTip(this.label3, null);
            this.label3.TabIndex = 78;
            this.label3.Text = "To Location (Length)";
            // 
            // textEdit3
            // 
            this.textEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "From_Place_Length", true));
            this.textEdit3.Location = new System.Drawing.Point(172, 248);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Size = new System.Drawing.Size(200, 21);
            this.textEdit3.TabIndex = 79;
            this.textEdit3.Tag = "From_Place";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(20, 253);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(118, 12);
            this.PlatetoolTipController.SetSuperTip(this.label4, null);
            this.label4.TabIndex = 77;
            this.label4.Text = "From Location (Length)";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(20, 164);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label5, null);
            this.label5.TabIndex = 81;
            this.label5.Text = "Is Cut Out";
            // 
            // checkEdit1
            // 
            this.checkEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsCutOut", true));
            this.checkEdit1.Location = new System.Drawing.Point(172, 161);
            this.checkEdit1.Name = "checkEdit1";
            this.checkEdit1.Properties.Caption = "";
            this.checkEdit1.Size = new System.Drawing.Size(75, 19);
            this.checkEdit1.TabIndex = 82;
            // 
            // SpreadDefectDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.checkEdit1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.textEdit2);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textEdit3);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtD_Defect_NameName);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtD_Degree);
            this.Controls.Add(this.txtD_Place_To);
            this.Controls.Add(this.To_PlaceLabel);
            this.Controls.Add(this.txtD_Place_From);
            this.Controls.Add(this.From_PlaceLabel);
            this.Controls.Add(this.Spread_Defect_DegreeLabel);
            this.Controls.Add(this.txtD_Defect_Name);
            this.Controls.Add(this.Defect_NameLabel);
            this.Controls.Add(this.txtD_Defect_Type);
            this.Controls.Add(this.Defect_TypeLabel);
            this.Name = "SpreadDefectDetailForm";
            this.Size = new System.Drawing.Size(1000, 341);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.Defect_TypeLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Defect_Type, 0);
            this.Controls.SetChildIndex(this.Defect_NameLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Defect_Name, 0);
            this.Controls.SetChildIndex(this.Spread_Defect_DegreeLabel, 0);
            this.Controls.SetChildIndex(this.From_PlaceLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Place_From, 0);
            this.Controls.SetChildIndex(this.To_PlaceLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Place_To, 0);
            this.Controls.SetChildIndex(this.txtD_Degree, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.txtD_Defect_NameName, 0);
            this.Controls.SetChildIndex(this.label2, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.label4, 0);
            this.Controls.SetChildIndex(this.textEdit3, 0);
            this.Controls.SetChildIndex(this.label3, 0);
            this.Controls.SetChildIndex(this.textEdit2, 0);
            this.Controls.SetChildIndex(this.label5, 0);
            this.Controls.SetChildIndex(this.checkEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Type.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_Name.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Place_From.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Place_To.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Degree.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Defect_NameName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).EndInit();
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
                PH.FabricInspection.BO.Fabric_Insp_SpreadDefect currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_SpreadDefect;

                currentIQC.Fabric_Insp_Header.CalCutOutLength();

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

                PH.FabricInspection.BO.Fabric_Insp_SpreadDefect currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_SpreadDefect;

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
                            currentIQC.System_Install_No = ((PH.FabricInspection.BO.Fabric_Insp_Header)headForm.BindingSource.Current).System_Install_No; //由David加入 2020-10-19

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
            PH.FabricInspection.BO.Fabric_Insp_SpreadDefect currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_SpreadDefect;

            if (currentIQC != null)
            {
                ValideRules.IsNotBlank(currentIQC.Defect_Type, "Defect_Type");
                ValideRules.IsNotBlank(currentIQC.Defect_Name, "Defect_Name");
                ValideRules.IsNotBlank(currentIQC.Spread_Defect_Degree, "Degree");
                ValideRules.IsNotBlank(currentIQC.From_Place.ToString(), "From_Place");
                ValideRules.IsNotBlank(currentIQC.To_Place.ToString(), "To_Place");
            }

        }

        protected override void OnClickCopy()
        {
            PH.FabricInspection.BO.Fabric_Insp_SpreadDefect curParameter = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_SpreadDefect;

            //0:生成新的Defect
            PH.FabricInspection.BO.Fabric_Insp_SpreadDefect tempParameter = new PH.FabricInspection.BO.Fabric_Insp_SpreadDefect
            {
                Company = curParameter.Company,
                Defect_Name = curParameter.Defect_Name,
                Defect_Type = curParameter.Defect_Type,
                From_Place = curParameter.From_Place,
                //Item_No = curParameter.Item_No,
                //Lot_Id = curParameter.Lot_Id,
                Spread_Defect_Degree = curParameter.Spread_Defect_Degree,
                //System_Install_No_ForUpdate = curParameter.System_Install_No,
                //                System_Install_No = curParameter.System_Install_No,
                To_Place = curParameter.To_Place,
                //                User_Id = PH.Environment.Instance.CurrentUser.UserID,
                //                Create_Date = DateTime.Now

            };


            this.BindingSource.AddNew();
            curParameter = (PH.FabricInspection.BO.Fabric_Insp_SpreadDefect)this.BindingSource.Current;
            curParameter.Company = tempParameter.Company;
            curParameter.Defect_Name = tempParameter.Defect_Name;
            curParameter.Defect_Type = tempParameter.Defect_Type;
            curParameter.From_Place = tempParameter.From_Place;
            //curParameter.Item_No = tempParameter.Item_No;
            //curParameter.Lot_Id = tempParameter.Lot_Id;
            curParameter.Spread_Defect_Degree = tempParameter.Spread_Defect_Degree;
            //curParameter.System_Install_No_ForUpdate = tempParameter.System_Install_No;
            //            curParameter.System_Install_No = tempParameter.System_Install_No;
            curParameter.To_Place = tempParameter.To_Place;
            this.IsNew = true;
            this.EditCurrent();
        }




    }
}
