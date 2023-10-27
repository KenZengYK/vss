/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.PictureDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/2 下午 04:32:51 $   
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
    public partial class PictureDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code

        private DevExpress.XtraEditors.TextEdit txtD_Board_NO;
        private System.Windows.Forms.Label BroadNoLabel;
        private PictureEdit pictureEdit1;
        private System.Windows.Forms.Label Photo_ImageLabel;
        #endregion
        public PictureDetailForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.txtD_Board_NO = new DevExpress.XtraEditors.TextEdit();
            this.BroadNoLabel = new System.Windows.Forms.Label();
            this.Photo_ImageLabel = new System.Windows.Forms.Label();
            this.pictureEdit1 = new DevExpress.XtraEditors.PictureEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Board_NO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).BeginInit();
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
            // txtD_Board_NO
            // 
            this.txtD_Board_NO.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "BroadNo", true));
            this.txtD_Board_NO.Location = new System.Drawing.Point(140, 51);
            this.txtD_Board_NO.Name = "txtD_Board_NO";
            this.txtD_Board_NO.Size = new System.Drawing.Size(200, 21);
            this.txtD_Board_NO.TabIndex = 6;
            this.txtD_Board_NO.Tag = "BroadNo";
            // 
            // BroadNoLabel
            // 
            this.BroadNoLabel.AutoSize = true;
            this.BroadNoLabel.Location = new System.Drawing.Point(20, 51);
            this.BroadNoLabel.Name = "BroadNoLabel";
            this.BroadNoLabel.Size = new System.Drawing.Size(53, 12);
            this.BroadNoLabel.TabIndex = 2;
            this.BroadNoLabel.Text = "Board_NO";
            // 
            // Photo_ImageLabel
            // 
            this.Photo_ImageLabel.AutoSize = true;
            this.Photo_ImageLabel.Location = new System.Drawing.Point(20, 86);
            this.Photo_ImageLabel.Name = "Photo_ImageLabel";
            this.Photo_ImageLabel.Size = new System.Drawing.Size(35, 12);
            this.Photo_ImageLabel.TabIndex = 3;
            this.Photo_ImageLabel.Text = "Photo";
            // 
            // pictureEdit1
            // 
            this.pictureEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Picture", true));
            this.pictureEdit1.Location = new System.Drawing.Point(140, 86);
            this.pictureEdit1.Name = "pictureEdit1";
            this.pictureEdit1.Properties.PictureStoreMode = DevExpress.XtraEditors.Controls.PictureStoreMode.ByteArray;
            this.pictureEdit1.Size = new System.Drawing.Size(200, 159);
            this.pictureEdit1.TabIndex = 8;
            this.pictureEdit1.Tag = "Picture";
            // 
            // PictureDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.pictureEdit1);
            this.Controls.Add(this.Photo_ImageLabel);
            this.Controls.Add(this.txtD_Board_NO);
            this.Controls.Add(this.BroadNoLabel);
            this.Name = "PictureDetailForm";
            this.Size = new System.Drawing.Size(1055, 396);
            this.Controls.SetChildIndex(this.BroadNoLabel, 0);
            this.Controls.SetChildIndex(this.txtD_Board_NO, 0);
            this.Controls.SetChildIndex(this.Photo_ImageLabel, 0);
            this.Controls.SetChildIndex(this.pictureEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Board_NO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

    }
}
