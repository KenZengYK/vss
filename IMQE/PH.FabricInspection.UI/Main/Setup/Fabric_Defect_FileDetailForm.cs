/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.DefectDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/2 上午 11:48:52 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Collections;
using PH.FabricInspection.BO;
using System.Linq;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI
{
    public partial class DefectDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code

        private System.Windows.Forms.Label CompanyLabel;
        private System.Windows.Forms.Label Style_CodeLabel;
        private System.Windows.Forms.Label Defect_NnameLabel;
        private DevExpress.XtraEditors.TextEdit txtD_DefectEnglishName;
        private System.Windows.Forms.Label Defect_CodeLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Seq_NO;
        private ButtonEdit txtD_Style_Code;
        private System.Windows.Forms.Label Seq_NOLabel;
        #endregion

        private EditMode currentMode = EditMode.ReadOnly;
        private Label Defect_Name_KbLabel;
        private Label label1;
        private TextEdit txtD_DefectChineseName;
        private TextEdit txtD_DefectThaiName;
        private ComboBoxEdit boxD_Company;
        private TextEdit txtMaterialGroup;
        private Label lbMaterialGroup;
        private LookUpEdit lueD_Defect_Code;


        public DefectDetailForm()
        {
            InitializeComponent();
            setEditMode(EditMode.ReadOnly);


        }


        //private void InitTypeData()
        //{
        //    try
        //    {
        //        FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;

        //        var tempData = from p in context.Fabric_Sys_Parameters
        //                       where p.Parameter_Type.ToUpper().StartsWith("DEFE")
        //                       select p;
        //        tempIQC01s = tempData.ToArray();
        //        lueDefect_Type.Properties.DataSource = tempIQC01s;
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show("Error happened when load Parameter Type \n" + ex.Message);
        //    }
        //}

        private void InitializeComponent()
        {
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            this.CompanyLabel = new System.Windows.Forms.Label();
            this.Style_CodeLabel = new System.Windows.Forms.Label();
            this.Defect_NnameLabel = new System.Windows.Forms.Label();
            this.txtD_DefectEnglishName = new DevExpress.XtraEditors.TextEdit();
            this.Defect_CodeLabel = new System.Windows.Forms.Label();
            this.txtD_Seq_NO = new DevExpress.XtraEditors.TextEdit();
            this.Seq_NOLabel = new System.Windows.Forms.Label();
            this.txtD_Style_Code = new DevExpress.XtraEditors.ButtonEdit();
            this.Defect_Name_KbLabel = new System.Windows.Forms.Label();
            this.lueD_Defect_Code = new DevExpress.XtraEditors.LookUpEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.txtD_DefectChineseName = new DevExpress.XtraEditors.TextEdit();
            this.txtD_DefectThaiName = new DevExpress.XtraEditors.TextEdit();
            this.boxD_Company = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtMaterialGroup = new DevExpress.XtraEditors.TextEdit();
            this.lbMaterialGroup = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_DefectEnglishName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Seq_NO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Style_Code.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueD_Defect_Code.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_DefectChineseName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_DefectThaiName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.boxD_Company.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaterialGroup.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.Fabric_Defect_File);
            // 
            // CompanyLabel
            // 
            this.CompanyLabel.AutoSize = true;
            this.CompanyLabel.Location = new System.Drawing.Point(29, 64);
            this.CompanyLabel.Name = "CompanyLabel";
            this.CompanyLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.CompanyLabel, null);
            this.CompanyLabel.TabIndex = 0;
            this.CompanyLabel.Text = "Company No:";
            // 
            // Style_CodeLabel
            // 
            this.Style_CodeLabel.AutoSize = true;
            this.Style_CodeLabel.Location = new System.Drawing.Point(29, 126);
            this.Style_CodeLabel.Name = "Style_CodeLabel";
            this.Style_CodeLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.Style_CodeLabel, null);
            this.Style_CodeLabel.TabIndex = 1;
            this.Style_CodeLabel.Text = "Material Type:";
            // 
            // Defect_NnameLabel
            // 
            this.Defect_NnameLabel.AutoSize = true;
            this.Defect_NnameLabel.Location = new System.Drawing.Point(29, 206);
            this.Defect_NnameLabel.Name = "Defect_NnameLabel";
            this.Defect_NnameLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(this.Defect_NnameLabel, null);
            this.Defect_NnameLabel.TabIndex = 3;
            this.Defect_NnameLabel.Text = "Defect English Name";
            // 
            // txtD_DefectEnglishName
            // 
            this.txtD_DefectEnglishName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DefectEnglishName", true));
            this.txtD_DefectEnglishName.Location = new System.Drawing.Point(172, 203);
            this.txtD_DefectEnglishName.Name = "txtD_DefectEnglishName";
            this.txtD_DefectEnglishName.Properties.ReadOnly = true;
            this.txtD_DefectEnglishName.Size = new System.Drawing.Size(343, 21);
            this.txtD_DefectEnglishName.TabIndex = 14;
            this.txtD_DefectEnglishName.Tag = "DefectEnglishName";
            // 
            // Defect_CodeLabel
            // 
            this.Defect_CodeLabel.AutoSize = true;
            this.Defect_CodeLabel.Location = new System.Drawing.Point(29, 162);
            this.Defect_CodeLabel.Name = "Defect_CodeLabel";
            this.Defect_CodeLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.Defect_CodeLabel, null);
            this.Defect_CodeLabel.TabIndex = 4;
            this.Defect_CodeLabel.Text = "Defect Code";
            // 
            // txtD_Seq_NO
            // 
            this.txtD_Seq_NO.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Seq_NO", true));
            this.txtD_Seq_NO.Location = new System.Drawing.Point(172, 332);
            this.txtD_Seq_NO.Name = "txtD_Seq_NO";
            this.txtD_Seq_NO.Size = new System.Drawing.Size(343, 21);
            this.txtD_Seq_NO.TabIndex = 16;
            this.txtD_Seq_NO.Tag = "Seq_NO";
            // 
            // Seq_NOLabel
            // 
            this.Seq_NOLabel.AutoSize = true;
            this.Seq_NOLabel.Location = new System.Drawing.Point(29, 337);
            this.Seq_NOLabel.Name = "Seq_NOLabel";
            this.Seq_NOLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.Seq_NOLabel, null);
            this.Seq_NOLabel.TabIndex = 6;
            this.Seq_NOLabel.Text = "Seq NO";
            // 
            // txtD_Style_Code
            // 
            this.txtD_Style_Code.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Style_Code", true));
            this.txtD_Style_Code.Location = new System.Drawing.Point(172, 123);
            this.txtD_Style_Code.Name = "txtD_Style_Code";
            this.txtD_Style_Code.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtD_Style_Code.Properties.MaxLength = 9;
            this.txtD_Style_Code.Size = new System.Drawing.Size(343, 21);
            this.txtD_Style_Code.TabIndex = 17;
            this.txtD_Style_Code.Tag = "Style_Code";
            this.txtD_Style_Code.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.txtD_Style_Code_ButtonClick);
            // 
            // Defect_Name_KbLabel
            // 
            this.Defect_Name_KbLabel.AutoSize = true;
            this.Defect_Name_KbLabel.Location = new System.Drawing.Point(29, 287);
            this.Defect_Name_KbLabel.Name = "Defect_Name_KbLabel";
            this.Defect_Name_KbLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.Defect_Name_KbLabel, null);
            this.Defect_Name_KbLabel.TabIndex = 18;
            this.Defect_Name_KbLabel.Text = "Defect Thai Name";
            // 
            // lueD_Defect_Code
            // 
            this.lueD_Defect_Code.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Defect_Code", true));
            this.lueD_Defect_Code.Location = new System.Drawing.Point(172, 157);
            this.lueD_Defect_Code.Name = "lueD_Defect_Code";
            this.lueD_Defect_Code.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueD_Defect_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "PH Defect Code", 100),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectEnglishName", "Defect English Name", 150),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", " Defect Chinese Name", 150),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectThaiName", "Defect Thai Name", 150)});
            this.lueD_Defect_Code.Properties.DisplayMember = "PHDefectCode";
            this.lueD_Defect_Code.Properties.NullText = "";
            this.lueD_Defect_Code.Properties.PopupWidth = 650;
            this.lueD_Defect_Code.Properties.ValueMember = "PHDefectCode";
            this.lueD_Defect_Code.Size = new System.Drawing.Size(343, 21);
            this.lueD_Defect_Code.TabIndex = 31;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(29, 247);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 32;
            this.label1.Text = "Defect Chinese Name";
            // 
            // txtD_DefectChineseName
            // 
            this.txtD_DefectChineseName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DefectChineseName", true));
            this.txtD_DefectChineseName.Location = new System.Drawing.Point(172, 244);
            this.txtD_DefectChineseName.Name = "txtD_DefectChineseName";
            this.txtD_DefectChineseName.Properties.ReadOnly = true;
            this.txtD_DefectChineseName.Size = new System.Drawing.Size(343, 21);
            this.txtD_DefectChineseName.TabIndex = 33;
            this.txtD_DefectChineseName.Tag = "DefectChineseName";
            // 
            // txtD_DefectThaiName
            // 
            this.txtD_DefectThaiName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DefectThaiName", true));
            this.txtD_DefectThaiName.Location = new System.Drawing.Point(172, 284);
            this.txtD_DefectThaiName.Name = "txtD_DefectThaiName";
            this.txtD_DefectThaiName.Properties.ReadOnly = true;
            this.txtD_DefectThaiName.Size = new System.Drawing.Size(343, 21);
            this.txtD_DefectThaiName.TabIndex = 34;
            this.txtD_DefectThaiName.Tag = "DefectThaiName";
            // 
            // boxD_Company
            // 
            this.boxD_Company.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Company", true));
            this.boxD_Company.EnterMoveNextControl = true;
            this.boxD_Company.Location = new System.Drawing.Point(172, 55);
            this.boxD_Company.Name = "boxD_Company";
            this.boxD_Company.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.boxD_Company.Properties.Items.AddRange(new object[] {
            "P1",
            "Z1"});
            this.boxD_Company.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.boxD_Company.Size = new System.Drawing.Size(343, 21);
            this.boxD_Company.TabIndex = 35;
            this.boxD_Company.Tag = "Company";
            conditionValidatonRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule2.ErrorText = "輸入不能為空";
            this.dxValidationProvider.SetValidationRule(this.boxD_Company, conditionValidatonRule2);
            // 
            // txtMaterialGroup
            // 
            this.txtMaterialGroup.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MaterialGroupShow", true));
            this.txtMaterialGroup.Location = new System.Drawing.Point(172, 89);
            this.txtMaterialGroup.Name = "txtMaterialGroup";
            this.txtMaterialGroup.Properties.ReadOnly = true;
            this.txtMaterialGroup.Size = new System.Drawing.Size(343, 21);
            this.txtMaterialGroup.TabIndex = 37;
            this.txtMaterialGroup.Tag = "DefectEnglishName";
            // 
            // lbMaterialGroup
            // 
            this.lbMaterialGroup.AutoSize = true;
            this.lbMaterialGroup.Location = new System.Drawing.Point(29, 92);
            this.lbMaterialGroup.Name = "lbMaterialGroup";
            this.lbMaterialGroup.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbMaterialGroup, null);
            this.lbMaterialGroup.TabIndex = 36;
            this.lbMaterialGroup.Text = "Material Group:";
            // 
            // DefectDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.txtMaterialGroup);
            this.Controls.Add(this.lbMaterialGroup);
            this.Controls.Add(this.boxD_Company);
            this.Controls.Add(this.txtD_DefectThaiName);
            this.Controls.Add(this.txtD_DefectChineseName);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lueD_Defect_Code);
            this.Controls.Add(this.Defect_Name_KbLabel);
            this.Controls.Add(this.txtD_Style_Code);
            this.Controls.Add(this.txtD_Seq_NO);
            this.Controls.Add(this.Seq_NOLabel);
            this.Controls.Add(this.txtD_DefectEnglishName);
            this.Controls.Add(this.Defect_CodeLabel);
            this.Controls.Add(this.Defect_NnameLabel);
            this.Controls.Add(this.Style_CodeLabel);
            this.Controls.Add(this.CompanyLabel);
            this.Name = "DefectDetailForm";
            this.Size = new System.Drawing.Size(1000, 459);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.DefectDetailForm_Load);
            this.Controls.SetChildIndex(this.CompanyLabel, 0);
            this.Controls.SetChildIndex(this.Style_CodeLabel, 0);
            this.Controls.SetChildIndex(this.Defect_NnameLabel, 0);
            this.Controls.SetChildIndex(this.Defect_CodeLabel, 0);
            this.Controls.SetChildIndex(this.txtD_DefectEnglishName, 0);
            this.Controls.SetChildIndex(this.Seq_NOLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Seq_NO, 0);
            this.Controls.SetChildIndex(this.txtD_Style_Code, 0);
            this.Controls.SetChildIndex(this.Defect_Name_KbLabel, 0);
            this.Controls.SetChildIndex(this.lueD_Defect_Code, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.txtD_DefectChineseName, 0);
            this.Controls.SetChildIndex(this.txtD_DefectThaiName, 0);
            this.Controls.SetChildIndex(this.boxD_Company, 0);
            this.Controls.SetChildIndex(this.lbMaterialGroup, 0);
            this.Controls.SetChildIndex(this.txtMaterialGroup, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_DefectEnglishName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Seq_NO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Style_Code.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueD_Defect_Code.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_DefectChineseName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_DefectThaiName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.boxD_Company.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaterialGroup.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        //private void LoadAllData()
        //{
        //    string strSQL = "SELECT CONO15, PSAR15 as StyleCode FROM AULT4F1.INP15 WHERE PRMT15='PGMN' AND CONO15='" + currentCompanyNo + "' order by StyleCode";

        //    //logger.WriteLog("[Query] [SELECT] " + strSQL);
        //    dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);

        //    //lueD_Style_Code.Properties.DataSource = dataTable;

        //}



        private void txtD_Style_Code_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (((ButtonEdit)sender).Properties.ReadOnly)
            {
                return;
            }
            if (boxD_Company.Text.Trim().Length == 0)
            {
                MessageBox.Show(this, "please input CompanyNo first!");
                return;
            }

            //在此設置DataSource和context。


            string strValue = FrmStyleCodeSelect.ShowStyleCodeSelect(boxD_Company.Text.Trim());
            if (strValue.Trim() != "")
            {
                txtD_Style_Code.Text = strValue.Substring(0, 3);
            }

        }

        private void txtD_Defect_Type_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            //if (((ButtonEdit)sender).Properties.ReadOnly)
            //{
            //    return;
            //}

            //string strValue = FrmParameterTypeSelect.ShowParameterTypeSelect((FabricInspectionDataContext)this.DataContext);
            //if (strValue.Trim() != "")
            //{
            //    txtD_Defect_Type.Text = strValue;
            //}
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
            txtD_DefectChineseName.Properties.ReadOnly = true;
            txtD_DefectEnglishName.Properties.ReadOnly = true;
            txtD_DefectThaiName.Properties.ReadOnly = true;
            txtMaterialGroup.Properties.ReadOnly = true;

            //if (sMode == EditMode.Create)
            //{

            //    //teCompany.Properties.ReadOnly = false;
            //    txtD_Style_Code.Properties.ReadOnly = false;
            //    txtD_Defect_Type.Properties.ReadOnly = false;
            //    txtD_Defect_Name.Properties.ReadOnly = false;
            //    txtD_Seq_NO.Properties.ReadOnly = false;
            //}
            //else if (sMode == EditMode.Revise)
            //{

            //    //teCompany.Properties.ReadOnly = true;
            //    txtD_Style_Code.Properties.ReadOnly = true;
            //    txtD_Defect_Type.Properties.ReadOnly = true;
            //    txtD_Defect_Name.Properties.ReadOnly = false;
            //    txtD_Seq_NO.Properties.ReadOnly = false;
            //}
            //else if (sMode == EditMode.Confirm)
            //{
            //    //teCompany.Properties.ReadOnly = true;
            //    txtD_Style_Code.Properties.ReadOnly = true;
            //    txtD_Defect_Type.Properties.ReadOnly = true;
            //    txtD_Defect_Name.Properties.ReadOnly = true;
            //    txtD_Seq_NO.Properties.ReadOnly = true;
            //}
            //else
            //{
            //    //teCompany.Properties.ReadOnly = true;
            //    txtD_Style_Code.Properties.ReadOnly = true;
            //    txtD_Defect_Type.Properties.ReadOnly = true;
            //    txtD_Defect_Name.Properties.ReadOnly = true;
            //    txtD_Seq_NO.Properties.ReadOnly = true;
            //}
        }

        //protected override void Open


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
                PH.FabricInspection.BO.Fabric_Defect_File currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Defect_File;

                if (currentIQC != null)
                {

                    if (currentMode == EditMode.Create)
                    {
                        currentIQC.Company = boxD_Company.Text;
                        currentIQC.User_Id = GlobalInfo.GetCurrentUserId();
                        currentIQC.Create_Date = DateTime.Now;

                    }
                    checkValidation();
                    if ((currentIQC.Seq_No == null) || (currentIQC.Seq_No == 0))
                    {
                        //currentIQC.Seq_No = DefectTableUtil.GetMaxSeqNoStep10((FabricInspectionDataContext)this.DataContext, currentIQC.Company);
                        Fabric_Defect_FileList fabric_Defect_FilesList = new Fabric_Defect_FileList();

                        currentIQC.Seq_No = fabric_Defect_FilesList.GetMaxSeqNoStep10(currentIQC.Company);
                    }

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
            PH.FabricInspection.BO.Fabric_Defect_File currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Defect_File;

            if (currentIQC != null)
            {
                ValideRules.IsNotBlank(currentIQC.Company, "Company Code");
                ValideRules.IsNotBlank(currentIQC.Style_Code, "Material Type (Group)");
                ValideRules.IsNotBlank(currentIQC.Defect_Code + "", "Defect_Code");

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
            PH.FabricInspection.BO.Fabric_Defect_File curDefect = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Defect_File;

            //0:生成新的Defect
            PH.FabricInspection.BO.Fabric_Defect_File tempDefect = new PH.FabricInspection.BO.Fabric_Defect_File
           {
               Company = curDefect.Company,
               Seq_No = curDefect.Seq_No + 1,
               Defect_Code = curDefect.Defect_Code,
               Style_Code = curDefect.Style_Code,

               //Defect_Nname = curDefect.Defect_Nname,
               //User_Id = PH.Environment.Instance.CurrentUser.UserID,
               User_Id = GlobalInfo.GetCurrentUserId(),
               Create_Date = DateTime.Now

           };

            //this.CurBindingSource.Add(tempDefect);
            this.BindingSource.AddNew();
            curDefect = (PH.FabricInspection.BO.Fabric_Defect_File)this.BindingSource.Current;
            curDefect.Company = tempDefect.Company;
            curDefect.Seq_No = tempDefect.Seq_No;
            curDefect.Defect_Code = tempDefect.Defect_Code;
            curDefect.Style_Code = tempDefect.Style_Code;

            //curDefect.Defect_Nname = tempDefect.Defect_Nname;
            //curDefect.Defect_Name_Eng = tempDefect.Defect_Name_Eng;
            //curDefect.Defect_Name_Kb = tempDefect.Defect_Name_Kb;
            //curDefect.Defect_Remark = tempDefect.Defect_Remark;
            //curDefect.User_Id = PH.Environment.Instance.CurrentUser.UserID;
            curDefect.User_Id = GlobalInfo.GetCurrentUserId();
            curDefect.Create_Date = DateTime.Now;
            //this.EditCurrent();
            this.OnClickEdit();
            this.IsNew = true;
        }

        private void lueD_Style_Code_Enter(object sender, EventArgs e)
        {
            //if (((LookUpEdit)sender).Properties.ReadOnly)
            //{
            //    return;
            //}
            //if (txtD_Company.Text.Trim().Length == 0)
            //{
            //    MessageBox.Show(this, "please input CompanyNo first!");
            //    return;
            //}

            ////在此設置DataSource和context。

            //if (txtD_Company.Text.Trim() != currentCompanyNo.Trim())
            //{
            //    currentCompanyNo = txtD_Company.Text.Trim();
            //    LoadAllData();
            //}
        }

        private void lueDefect_Type_Enter(object sender, EventArgs e)
        {
            //if (lueDefect_Type.Properties.DataSource == null)
            //{
            //    InitTypeData();
            //}

        }


        private void lueD_Defect_Code_EditValueChanged(object sender, EventArgs e)
        {

            this.BindingSource.EndEdit();
            FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();

            PHQCDefect obj = (from c in context.PHQCDefects where c.PHDefectCode == lueD_Defect_Code.Text select c).First<PHQCDefect>();

        }

        private void BandComBox()
        {
            FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();

            //var objs = from a in context.PHQCDefects
            //           from b in context.PHQCDefectPHDefectClasses
            //           from c in context.DepartmentalTrees
            //           where b.ID == c.ID && c.PHDefectClass == "Material" && a.PHDefectCode == b.PHDefectCode 
            //           select a;

            //由David修改条件 2020-11-19
            var objs = context.PHQCDefects.Select(p => new { p.PHDefectCode, p.DefectEnglishName, p.DefectChineseName, p.DefectThaiName });
            this.lueD_Defect_Code.Properties.DataSource = objs;
        }
        private void DefectDetailForm_Load(object sender, EventArgs e)
        {
            BandComBox();

        }




    }
}
