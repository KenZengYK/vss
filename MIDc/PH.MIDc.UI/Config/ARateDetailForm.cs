/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: /PH/PH.MIDc.root/PH.MIDc/PH.MIDc.UI/Config/ARateDetailForm.cs $   
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

namespace PH.MIDc.UI
{
    public partial class ARateDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code
        private DevExpress.XtraEditors.TextEdit txtD_SupplierUnit;
        private System.Windows.Forms.Label SupplierUnitLable;
        private DevExpress.XtraEditors.TextEdit txtD_PHUnit;
        private System.Windows.Forms.Label PHUnitLable;
        private DevExpress.XtraEditors.TextEdit txtD_Description;
        private System.Windows.Forms.Label DescriptionLable;
        private DevExpress.XtraEditors.TextEdit txtD_Rate;
        private BindingSource aRateBindingSource;
        private IContainer components;
        private System.Windows.Forms.Label RateLable;
        #endregion
        public ARateDetailForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.txtD_SupplierUnit = new DevExpress.XtraEditors.TextEdit();
            this.aRateBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.SupplierUnitLable = new System.Windows.Forms.Label();
            this.txtD_PHUnit = new DevExpress.XtraEditors.TextEdit();
            this.PHUnitLable = new System.Windows.Forms.Label();
            this.txtD_Description = new DevExpress.XtraEditors.TextEdit();
            this.DescriptionLable = new System.Windows.Forms.Label();
            this.txtD_Rate = new DevExpress.XtraEditors.TextEdit();
            this.RateLable = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierUnit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.aRateBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PHUnit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Description.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Rate.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.ARate);
            // 
            // txtD_SupplierUnit
            // 
            this.txtD_SupplierUnit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SupplierUnit", true));
            this.txtD_SupplierUnit.Location = new System.Drawing.Point(140, 35);
            this.txtD_SupplierUnit.Name = "txtD_SupplierUnit";
            this.txtD_SupplierUnit.Size = new System.Drawing.Size(200, 21);
            this.txtD_SupplierUnit.TabIndex = 4;
            this.txtD_SupplierUnit.Tag = "SupplierUnit";
            // 
            // aRateBindingSource
            // 
            this.aRateBindingSource.DataSource = typeof(PH.MIDc.BO.ARate);
            // 
            // SupplierUnitLable
            // 
            this.SupplierUnitLable.Location = new System.Drawing.Point(20, 35);
            this.SupplierUnitLable.Name = "SupplierUnitLable";
            this.SupplierUnitLable.Size = new System.Drawing.Size(114, 21);
            //this.PlatetoolTipController.SetSuperTip(this.SupplierUnitLable, null);
            this.SupplierUnitLable.TabIndex = 0;
            this.SupplierUnitLable.Text = "SupplierUnit";
            this.SupplierUnitLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_PHUnit
            // 
            this.txtD_PHUnit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PHUnit", true));
            this.txtD_PHUnit.Location = new System.Drawing.Point(140, 94);
            this.txtD_PHUnit.Name = "txtD_PHUnit";
            this.txtD_PHUnit.Size = new System.Drawing.Size(200, 21);
            this.txtD_PHUnit.TabIndex = 5;
            this.txtD_PHUnit.Tag = "PHUnit";
            // 
            // PHUnitLable
            // 
            this.PHUnitLable.Location = new System.Drawing.Point(20, 94);
            this.PHUnitLable.Name = "PHUnitLable";
            this.PHUnitLable.Size = new System.Drawing.Size(114, 12);
            //this.PlatetoolTipController.SetSuperTip(this.PHUnitLable, null);
            this.PHUnitLable.TabIndex = 1;
            this.PHUnitLable.Text = "PHUnit";
            this.PHUnitLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Description
            // 
            this.txtD_Description.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.txtD_Description.Location = new System.Drawing.Point(140, 130);
            this.txtD_Description.Name = "txtD_Description";
            this.txtD_Description.Size = new System.Drawing.Size(200, 21);
            this.txtD_Description.TabIndex = 6;
            this.txtD_Description.Tag = "Description";
            // 
            // DescriptionLable
            // 
            this.DescriptionLable.Location = new System.Drawing.Point(20, 130);
            this.DescriptionLable.Name = "DescriptionLable";
            this.DescriptionLable.Size = new System.Drawing.Size(114, 12);
            //this.PlatetoolTipController.SetSuperTip(this.DescriptionLable, null);
            this.DescriptionLable.TabIndex = 2;
            this.DescriptionLable.Text = "Description";
            this.DescriptionLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Rate
            // 
            this.txtD_Rate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Rate", true));
            this.txtD_Rate.Location = new System.Drawing.Point(140, 67);
            this.txtD_Rate.Name = "txtD_Rate";
            this.txtD_Rate.Size = new System.Drawing.Size(200, 21);
            this.txtD_Rate.TabIndex = 7;
            this.txtD_Rate.Tag = "Rate";
            // 
            // RateLable
            // 
            this.RateLable.Location = new System.Drawing.Point(20, 67);
            this.RateLable.Name = "RateLable";
            this.RateLable.Size = new System.Drawing.Size(114, 12);
            //this.PlatetoolTipController.SetSuperTip(this.RateLable, null);
            this.RateLable.TabIndex = 3;
            this.RateLable.Text = "Rate";
            this.RateLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // ARateDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.txtD_Rate);
            this.Controls.Add(this.RateLable);
            this.Controls.Add(this.txtD_Description);
            this.Controls.Add(this.DescriptionLable);
            this.Controls.Add(this.txtD_PHUnit);
            this.Controls.Add(this.PHUnitLable);
            this.Controls.Add(this.txtD_SupplierUnit);
            this.Controls.Add(this.SupplierUnitLable);
            this.Name = "ARateDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.SupplierUnitLable, 0);
            this.Controls.SetChildIndex(this.txtD_SupplierUnit, 0);
            this.Controls.SetChildIndex(this.PHUnitLable, 0);
            this.Controls.SetChildIndex(this.txtD_PHUnit, 0);
            this.Controls.SetChildIndex(this.DescriptionLable, 0);
            this.Controls.SetChildIndex(this.txtD_Description, 0);
            this.Controls.SetChildIndex(this.RateLable, 0);
            this.Controls.SetChildIndex(this.txtD_Rate, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierUnit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.aRateBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PHUnit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Description.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Rate.Properties)).EndInit();
            this.ResumeLayout(false);

        }

    }
}
