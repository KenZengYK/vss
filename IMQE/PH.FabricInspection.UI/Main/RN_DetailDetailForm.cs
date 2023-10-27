/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.ProblemDetailDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/2 下午 03:39:17 $   
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
    public partial class ProblemDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code

        private DevExpress.XtraEditors.TextEdit txtD_ID_NO;
        private System.Windows.Forms.Label System_Install_NoLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Batch_NO;
        private System.Windows.Forms.Label Batch_NoLabel;
        private DevExpress.XtraEditors.TextEdit txtD_Roll_NO;
        private System.Windows.Forms.Label Roll_NoLabel;
        //zxz begin cancel
        //private DevExpress.XtraEditors.TextEdit txtD_Received_Qty; 
        //private System.Windows.Forms.Label lable_Received_Qty;
        //zxz end cancel
        private DevExpress.XtraEditors.TextEdit txtD_Reject_Reason;
        private System.Windows.Forms.Label Reject_ReasonLabel;
        private TextEdit txtD_Supplier_Name;
        private TextEdit textEdit1;
        private Label Lot_IdLabel;
        private System.Windows.Forms.Label Supplier_NameLabel;
        #endregion
        public ProblemDetailDetailForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.txtD_ID_NO = new DevExpress.XtraEditors.TextEdit();
            this.System_Install_NoLabel = new System.Windows.Forms.Label();
            this.txtD_Batch_NO = new DevExpress.XtraEditors.TextEdit();
            this.Batch_NoLabel = new System.Windows.Forms.Label();
            this.txtD_Roll_NO = new DevExpress.XtraEditors.TextEdit();
            this.Roll_NoLabel = new System.Windows.Forms.Label();
            this.txtD_Reject_Reason = new DevExpress.XtraEditors.TextEdit();
            this.Reject_ReasonLabel = new System.Windows.Forms.Label();
            this.Supplier_NameLabel = new System.Windows.Forms.Label();
            this.txtD_Supplier_Name = new DevExpress.XtraEditors.TextEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.Lot_IdLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ID_NO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Batch_NO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Roll_NO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Reject_Reason.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Supplier_Name.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
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
            // txtD_ID_NO
            // 
            this.txtD_ID_NO.Location = new System.Drawing.Point(153, 45);
            this.txtD_ID_NO.Name = "txtD_ID_NO";
            this.txtD_ID_NO.Size = new System.Drawing.Size(200, 21);
            this.txtD_ID_NO.TabIndex = 8;
            this.txtD_ID_NO.Tag = "System_Install_No";
            // 
            // System_Install_NoLabel
            // 
            this.System_Install_NoLabel.AutoSize = true;
            this.System_Install_NoLabel.Location = new System.Drawing.Point(33, 49);
            this.System_Install_NoLabel.Name = "System_Install_NoLabel";
            this.System_Install_NoLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.System_Install_NoLabel, null);
            this.System_Install_NoLabel.TabIndex = 1;
            this.System_Install_NoLabel.Text = "System Install No:";
            // 
            // txtD_Batch_NO
            // 
            this.txtD_Batch_NO.Location = new System.Drawing.Point(153, 115);
            this.txtD_Batch_NO.Name = "txtD_Batch_NO";
            this.txtD_Batch_NO.Size = new System.Drawing.Size(200, 21);
            this.txtD_Batch_NO.TabIndex = 9;
            this.txtD_Batch_NO.Tag = "Batch_No";
            // 
            // Batch_NoLabel
            // 
            this.Batch_NoLabel.AutoSize = true;
            this.Batch_NoLabel.Location = new System.Drawing.Point(33, 119);
            this.Batch_NoLabel.Name = "Batch_NoLabel";
            this.Batch_NoLabel.Size = new System.Drawing.Size(54, 12);
            this.PlatetoolTipController.SetSuperTip(this.Batch_NoLabel, null);
            this.Batch_NoLabel.TabIndex = 2;
            this.Batch_NoLabel.Text = "Batch NO:";
            // 
            // txtD_Roll_NO
            // 
            this.txtD_Roll_NO.Location = new System.Drawing.Point(153, 150);
            this.txtD_Roll_NO.Name = "txtD_Roll_NO";
            this.txtD_Roll_NO.Size = new System.Drawing.Size(200, 21);
            this.txtD_Roll_NO.TabIndex = 10;
            this.txtD_Roll_NO.Tag = "Roll_No";
            // 
            // Roll_NoLabel
            // 
            this.Roll_NoLabel.AutoSize = true;
            this.Roll_NoLabel.Location = new System.Drawing.Point(33, 154);
            this.Roll_NoLabel.Name = "Roll_NoLabel";
            this.Roll_NoLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.Roll_NoLabel, null);
            this.Roll_NoLabel.TabIndex = 3;
            this.Roll_NoLabel.Text = "Roll NO:";
            // 
            // txtD_Reject_Reason
            // 
            this.txtD_Reject_Reason.Location = new System.Drawing.Point(153, 190);
            this.txtD_Reject_Reason.Name = "txtD_Reject_Reason";
            this.txtD_Reject_Reason.Size = new System.Drawing.Size(200, 21);
            this.txtD_Reject_Reason.TabIndex = 12;
            this.txtD_Reject_Reason.Tag = "Reject_Reason";
            // 
            // Reject_ReasonLabel
            // 
            this.Reject_ReasonLabel.AutoSize = true;
            this.Reject_ReasonLabel.Location = new System.Drawing.Point(33, 194);
            this.Reject_ReasonLabel.Name = "Reject_ReasonLabel";
            this.Reject_ReasonLabel.Size = new System.Drawing.Size(74, 12);
            this.PlatetoolTipController.SetSuperTip(this.Reject_ReasonLabel, null);
            this.Reject_ReasonLabel.TabIndex = 5;
            this.Reject_ReasonLabel.Text = "Reject Reason:";
            // 
            // Supplier_NameLabel
            // 
            this.Supplier_NameLabel.AutoSize = true;
            this.Supplier_NameLabel.Location = new System.Drawing.Point(33, 229);
            this.Supplier_NameLabel.Name = "Supplier_NameLabel";
            this.Supplier_NameLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.Supplier_NameLabel, null);
            this.Supplier_NameLabel.TabIndex = 6;
            this.Supplier_NameLabel.Text = "Supplier Name:";
            this.Supplier_NameLabel.Visible = false;
            // 
            // txtD_Supplier_Name
            // 
            this.txtD_Supplier_Name.Location = new System.Drawing.Point(153, 225);
            this.txtD_Supplier_Name.Name = "txtD_Supplier_Name";
            this.txtD_Supplier_Name.Size = new System.Drawing.Size(200, 21);
            this.txtD_Supplier_Name.TabIndex = 13;
            this.txtD_Supplier_Name.Tag = "Supplier_Name";
            this.txtD_Supplier_Name.Visible = false;
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(153, 80);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(200, 21);
            this.textEdit1.TabIndex = 15;
            this.textEdit1.Tag = "Lot_Id";
            // 
            // Lot_IdLabel
            // 
            this.Lot_IdLabel.AutoSize = true;
            this.Lot_IdLabel.Location = new System.Drawing.Point(33, 84);
            this.Lot_IdLabel.Name = "Lot_IdLabel";
            this.Lot_IdLabel.Size = new System.Drawing.Size(39, 12);
            this.PlatetoolTipController.SetSuperTip(this.Lot_IdLabel, null);
            this.Lot_IdLabel.TabIndex = 14;
            this.Lot_IdLabel.Text = "Lot ID:";
            // 
            // ProblemDetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.Lot_IdLabel);
            this.Controls.Add(this.txtD_Supplier_Name);
            this.Controls.Add(this.Supplier_NameLabel);
            this.Controls.Add(this.txtD_Reject_Reason);
            this.Controls.Add(this.Reject_ReasonLabel);
            this.Controls.Add(this.txtD_Roll_NO);
            this.Controls.Add(this.Roll_NoLabel);
            this.Controls.Add(this.txtD_Batch_NO);
            this.Controls.Add(this.Batch_NoLabel);
            this.Controls.Add(this.txtD_ID_NO);
            this.Controls.Add(this.System_Install_NoLabel);
            this.Name = "ProblemDetailDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.System_Install_NoLabel, 0);
            this.Controls.SetChildIndex(this.txtD_ID_NO, 0);
            this.Controls.SetChildIndex(this.Batch_NoLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Batch_NO, 0);
            this.Controls.SetChildIndex(this.Roll_NoLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Roll_NO, 0);
            this.Controls.SetChildIndex(this.Reject_ReasonLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Reject_Reason, 0);
            this.Controls.SetChildIndex(this.Supplier_NameLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Supplier_Name, 0);
            this.Controls.SetChildIndex(this.Lot_IdLabel, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ID_NO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Batch_NO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Roll_NO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Reject_Reason.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Supplier_Name.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        protected override void OnClickSaveAndReturn()
        {

            if (SaveCurrentRecord())
            {
                base.OnClickSaveAndReturn();

            }
        }
        
        protected override void SaveCurrent()
        {
            if (SaveCurrentRecord())
            {
                base.SaveCurrent();


            }
        }
        
        private bool SaveCurrentRecord()
        {
            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;
            try
            {
                txtD_ID_NO.Focus();
                this.BindingSource.EndEdit();



                if (this.BindingSource.Current != null)
                {


                    if ((this.txtD_ID_NO.Text == null) || (this.txtD_ID_NO.Text.Trim() == ""))
                    {
                        MessageBox.Show("System Install No不能為空");
                        return false;
                    }

                    if ((this.txtD_ID_NO.Text.Trim() == "0"))
                    {
                        MessageBox.Show("System Install No不能為0");
                        return false;
                    }

                    //currentIQC.Change_User = GlobalInfo.GetCurrentUserId();
                    //currentIQC.Change_Date = DateTime.Now;
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


    }
}
