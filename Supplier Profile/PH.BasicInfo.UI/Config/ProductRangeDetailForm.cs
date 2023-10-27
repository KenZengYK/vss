using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;
using PH.Platform.UI;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.AuthMgr.BO;


namespace PH.BasicInfo.UI
{
    public partial class ProductRangeDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code
        private DevExpress.XtraEditors.TextEdit txtD_MaterialGroup;
        private System.Windows.Forms.Label MaterialGrouplable;
        private DevExpress.XtraEditors.TextEdit txtD_ProductRangeInfo;
        private System.Windows.Forms.Label ProductRangeInfolable;
        private DevExpress.XtraEditors.TextEdit txtD_Description;
        private System.Windows.Forms.Label Descriptionlable;
        #endregion

        public ProductRangeDetailForm()
        {
            InitializeComponent();
            this.Load += new EventHandler(ProductRangeDetailForm_Load);
        }

        void ProductRangeDetailForm_Load(object sender, EventArgs e)
        {
            ControlWarrant();
        }
        public override void EditCurrent()
        {
            base.EditCurrent();
            ControlWarrant();
        }

        private void ControlWarrant()
        {


            PH.Platform.AuthMgr.BO.Auth_FunRight auth = new Auth_FunRight();
            auth.AddFunRight(this.MenuID, "barBtnEdit", "Edit");

            IList<PH.Platform.AuthMgr.BO.Auth_FunRight> Rightlist = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID);
            if (Rightlist.Where(p => p.FunRight == "barBtnEdit").FirstOrDefault() != null)
            {
                this.barBtnDel.Enabled = this.barBtnEdit.Enabled = true;

            }
            else
            {
                this.barBtnDel.Enabled = this.barBtnEdit.Enabled = false;
            }
        }      


        private void InitializeComponent()
        {
            this.txtD_MaterialGroup = new DevExpress.XtraEditors.TextEdit();
            this.MaterialGrouplable = new System.Windows.Forms.Label();
            this.txtD_ProductRangeInfo = new DevExpress.XtraEditors.TextEdit();
            this.ProductRangeInfolable = new System.Windows.Forms.Label();
            this.txtD_Description = new DevExpress.XtraEditors.TextEdit();
            this.Descriptionlable = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_MaterialGroup.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ProductRangeInfo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Description.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.ProductRange);
            // 
            // txtD_MaterialGroup
            // 
            this.txtD_MaterialGroup.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MaterialGroup", true));
            this.txtD_MaterialGroup.EnterMoveNextControl = true;
            this.txtD_MaterialGroup.Location = new System.Drawing.Point(140, 30);
            this.txtD_MaterialGroup.Name = "txtD_MaterialGroup";
            this.txtD_MaterialGroup.Size = new System.Drawing.Size(200, 21);
            this.txtD_MaterialGroup.TabIndex = 3;
            this.txtD_MaterialGroup.Tag = "";
            // 
            // MaterialGrouplable
            // 
            this.MaterialGrouplable.Location = new System.Drawing.Point(20, 30);
            this.MaterialGrouplable.Name = "MaterialGrouplable";
            this.MaterialGrouplable.Size = new System.Drawing.Size(114, 12);
            this.PlatetoolTipController.SetSuperTip(this.MaterialGrouplable, null);
            this.MaterialGrouplable.TabIndex = 0;
            this.MaterialGrouplable.Text = "MaterialGroup";
            this.MaterialGrouplable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_ProductRangeInfo
            // 
            this.txtD_ProductRangeInfo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ProductRangeInfo", true));
            this.txtD_ProductRangeInfo.EnterMoveNextControl = true;
            this.txtD_ProductRangeInfo.Location = new System.Drawing.Point(140, 69);
            this.txtD_ProductRangeInfo.Name = "txtD_ProductRangeInfo";
            this.txtD_ProductRangeInfo.Size = new System.Drawing.Size(200, 21);
            this.txtD_ProductRangeInfo.TabIndex = 4;
            this.txtD_ProductRangeInfo.Tag = "";
            // 
            // ProductRangeInfolable
            // 
            this.ProductRangeInfolable.Location = new System.Drawing.Point(20, 69);
            this.ProductRangeInfolable.Name = "ProductRangeInfolable";
            this.ProductRangeInfolable.Size = new System.Drawing.Size(114, 12);
            this.PlatetoolTipController.SetSuperTip(this.ProductRangeInfolable, null);
            this.ProductRangeInfolable.TabIndex = 1;
            this.ProductRangeInfolable.Text = "ProductRangeInfo";
            this.ProductRangeInfolable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Description
            // 
            this.txtD_Description.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.txtD_Description.EnterMoveNextControl = true;
            this.txtD_Description.Location = new System.Drawing.Point(140, 109);
            this.txtD_Description.Name = "txtD_Description";
            this.txtD_Description.Size = new System.Drawing.Size(200, 21);
            this.txtD_Description.TabIndex = 5;
            this.txtD_Description.Tag = "";
            // 
            // Descriptionlable
            // 
            this.Descriptionlable.Location = new System.Drawing.Point(20, 109);
            this.Descriptionlable.Name = "Descriptionlable";
            this.Descriptionlable.Size = new System.Drawing.Size(114, 21);
            this.PlatetoolTipController.SetSuperTip(this.Descriptionlable, null);
            this.Descriptionlable.TabIndex = 2;
            this.Descriptionlable.Text = "Description";
            this.Descriptionlable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // ProductRangeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.txtD_Description);
            this.Controls.Add(this.Descriptionlable);
            this.Controls.Add(this.txtD_ProductRangeInfo);
            this.Controls.Add(this.ProductRangeInfolable);
            this.Controls.Add(this.txtD_MaterialGroup);
            this.Controls.Add(this.MaterialGrouplable);
            this.Name = "ProductRangeDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.MaterialGrouplable, 0);
            this.Controls.SetChildIndex(this.txtD_MaterialGroup, 0);
            this.Controls.SetChildIndex(this.ProductRangeInfolable, 0);
            this.Controls.SetChildIndex(this.txtD_ProductRangeInfo, 0);
            this.Controls.SetChildIndex(this.Descriptionlable, 0);
            this.Controls.SetChildIndex(this.txtD_Description, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_MaterialGroup.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ProductRangeInfo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Description.Properties)).EndInit();
            this.ResumeLayout(false);

        }


    }
}
