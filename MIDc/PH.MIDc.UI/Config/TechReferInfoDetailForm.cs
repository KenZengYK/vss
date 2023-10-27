/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.MIDc.UI.TechReferInfoDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2009-1-7 9:32:10 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class TechReferInfoDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code

        private DevExpress.XtraEditors.TextEdit txtD_CustmerID;
        private System.Windows.Forms.Label CustmerIDLable;
        private System.Windows.Forms.Label ReferInfoLable;
        private DevExpress.XtraEditors.TextEdit txtD_Description;
        private ComboBoxEdit com_ReferInfo;
        private BindingSource techReferInfoBindingSource;
        private IContainer components;
        private System.Windows.Forms.Label DescriptionLable;
        #endregion
        public TechReferInfoDetailForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.txtD_CustmerID = new DevExpress.XtraEditors.TextEdit();
            this.techReferInfoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.CustmerIDLable = new System.Windows.Forms.Label();
            this.ReferInfoLable = new System.Windows.Forms.Label();
            this.txtD_Description = new DevExpress.XtraEditors.TextEdit();
            this.DescriptionLable = new System.Windows.Forms.Label();
            this.com_ReferInfo = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustmerID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.techReferInfoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Description.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.com_ReferInfo.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.TechReferInfo);
            // 
            // txtD_CustmerID
            // 
            this.txtD_CustmerID.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustmerID", true));
            this.txtD_CustmerID.Location = new System.Drawing.Point(140, 30);
            this.txtD_CustmerID.Name = "txtD_CustmerID";
            this.txtD_CustmerID.Size = new System.Drawing.Size(200, 21);
            this.txtD_CustmerID.TabIndex = 5;
            this.txtD_CustmerID.Tag = "CustmerID";
            // 
            // techReferInfoBindingSource
            // 
            this.techReferInfoBindingSource.DataSource = typeof(PH.MIDc.BO.TechReferInfo);
            // 
            // CustmerIDLable
            // 
            this.CustmerIDLable.Location = new System.Drawing.Point(20, 30);
            this.CustmerIDLable.Name = "CustmerIDLable";
            this.CustmerIDLable.Size = new System.Drawing.Size(114, 21);
            //this.PlatetoolTipController.SetSuperTip(this.CustmerIDLable, null);
            this.CustmerIDLable.TabIndex = 1;
            this.CustmerIDLable.Text = "CustmerID";
            this.CustmerIDLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // ReferInfoLable
            // 
            this.ReferInfoLable.Location = new System.Drawing.Point(20, 67);
            this.ReferInfoLable.Name = "ReferInfoLable";
            this.ReferInfoLable.Size = new System.Drawing.Size(114, 21);
            //this.PlatetoolTipController.SetSuperTip(this.ReferInfoLable, null);
            this.ReferInfoLable.TabIndex = 2;
            this.ReferInfoLable.Text = "ReferInfo";
            this.ReferInfoLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Description
            // 
            this.txtD_Description.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.txtD_Description.Location = new System.Drawing.Point(140, 94);
            this.txtD_Description.Name = "txtD_Description";
            this.txtD_Description.Size = new System.Drawing.Size(200, 21);
            this.txtD_Description.TabIndex = 7;
            this.txtD_Description.Tag = "Description";
            // 
            // DescriptionLable
            // 
            this.DescriptionLable.Location = new System.Drawing.Point(20, 94);
            this.DescriptionLable.Name = "DescriptionLable";
            this.DescriptionLable.Size = new System.Drawing.Size(114, 21);
            //this.PlatetoolTipController.SetSuperTip(this.DescriptionLable, null);
            this.DescriptionLable.TabIndex = 3;
            this.DescriptionLable.Text = "Description";
            this.DescriptionLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // com_ReferInfo
            // 
            this.com_ReferInfo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ReferInfo", true));
            this.com_ReferInfo.Location = new System.Drawing.Point(140, 62);
            this.com_ReferInfo.Name = "com_ReferInfo";
            this.com_ReferInfo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.com_ReferInfo.Properties.Items.AddRange(new object[] {
            "Elongation",
            "Recovery",
            "F(40%)Fapply"});
            this.com_ReferInfo.Size = new System.Drawing.Size(200, 21);
            this.com_ReferInfo.TabIndex = 8;
            this.com_ReferInfo.Tag = "ReferInfo";
            // 
            // TechReferInfoDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.com_ReferInfo);
            this.Controls.Add(this.txtD_Description);
            this.Controls.Add(this.DescriptionLable);
            this.Controls.Add(this.ReferInfoLable);
            this.Controls.Add(this.txtD_CustmerID);
            this.Controls.Add(this.CustmerIDLable);
            this.Name = "TechReferInfoDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.CustmerIDLable, 0);
            this.Controls.SetChildIndex(this.txtD_CustmerID, 0);
            this.Controls.SetChildIndex(this.ReferInfoLable, 0);
            this.Controls.SetChildIndex(this.DescriptionLable, 0);
            this.Controls.SetChildIndex(this.txtD_Description, 0);
            this.Controls.SetChildIndex(this.com_ReferInfo, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustmerID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.techReferInfoBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Description.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.com_ReferInfo.Properties)).EndInit();
            this.ResumeLayout(false);

        }

    }
}
