/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.MIDc.UI.TechInforTestDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2009-1-13 15:05:51 $   
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
    public partial class TestResultTechDetailForm : PH.UI.UI2.ChildDetailForm
    {
        #region//auto code
        private TechInforTestListForm techInforTestListForm1;
        private DevExpress.XtraEditors.TextEdit txtD_IndexNo;
        private System.Windows.Forms.Label lable_IndexNo;
        private DevExpress.XtraEditors.TextEdit txtD_SuppRef;
        private System.Windows.Forms.Label lable_SuppRef;
        private DevExpress.XtraEditors.TextEdit txtD_Color;
        private System.Windows.Forms.Label lable_Color;
        private DevExpress.XtraEditors.TextEdit txtD_ColorCategory;
        private System.Windows.Forms.Label lable_ColorCategory;
        private DevExpress.XtraEditors.TextEdit txtD_IDNr;
        private System.Windows.Forms.Label lable_IDNr;
        private DevExpress.XtraEditors.TextEdit txtD_ProjectNo;
        private System.Windows.Forms.Label lable_ProjectNo;
        private DevExpress.XtraEditors.TextEdit txtD_StandardWept;
        private System.Windows.Forms.Label lable_StandardWept;
        private DevExpress.XtraEditors.TextEdit txtD_StandardWarp;
        private System.Windows.Forms.Label lable_StandardWarp;
        private DevExpress.XtraEditors.TextEdit txtD_ElongationWept;
        private System.Windows.Forms.Label lable_ElongationWept;
        private DevExpress.XtraEditors.TextEdit txtD_ElongationWarp;
        private System.Windows.Forms.Label lable_ElongationWarp;
        private DevExpress.XtraEditors.TextEdit txtD_RecoveryWept;
        private System.Windows.Forms.Label lable_RecoveryWept;
        private DevExpress.XtraEditors.TextEdit txtD_RecoveryWarp;
        private System.Windows.Forms.Label lable_RecoveryWarp;
        private DevExpress.XtraEditors.TextEdit txtD_FapplyWept;
        private System.Windows.Forms.Label lable_FapplyWept;
        private DevExpress.XtraEditors.TextEdit txtD_FapplyWarp;
        private System.Windows.Forms.Label lable_FapplyWarp;
        private DevExpress.XtraEditors.TextEdit txtD_AutoResult;
        private System.Windows.Forms.Label lable_AutoResult;
        private DevExpress.XtraEditors.TextEdit txtD_FinalResult;
        private System.Windows.Forms.Label lable_FinalResult;
        private DevExpress.XtraEditors.TextEdit txtD_Remark;
        private System.Windows.Forms.Label lable_Remark;
        #endregion
        public TestResultTechDetailForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.txtD_IndexNo = new DevExpress.XtraEditors.TextEdit();
            this.lable_IndexNo = new System.Windows.Forms.Label();
            this.txtD_SuppRef = new DevExpress.XtraEditors.TextEdit();
            this.lable_SuppRef = new System.Windows.Forms.Label();
            this.txtD_Color = new DevExpress.XtraEditors.TextEdit();
            this.lable_Color = new System.Windows.Forms.Label();
            this.txtD_ColorCategory = new DevExpress.XtraEditors.TextEdit();
            this.lable_ColorCategory = new System.Windows.Forms.Label();
            this.txtD_IDNr = new DevExpress.XtraEditors.TextEdit();
            this.lable_IDNr = new System.Windows.Forms.Label();
            this.txtD_ProjectNo = new DevExpress.XtraEditors.TextEdit();
            this.lable_ProjectNo = new System.Windows.Forms.Label();
            this.txtD_StandardWept = new DevExpress.XtraEditors.TextEdit();
            this.lable_StandardWept = new System.Windows.Forms.Label();
            this.txtD_StandardWarp = new DevExpress.XtraEditors.TextEdit();
            this.lable_StandardWarp = new System.Windows.Forms.Label();
            this.txtD_ElongationWept = new DevExpress.XtraEditors.TextEdit();
            this.lable_ElongationWept = new System.Windows.Forms.Label();
            this.txtD_ElongationWarp = new DevExpress.XtraEditors.TextEdit();
            this.lable_ElongationWarp = new System.Windows.Forms.Label();
            this.txtD_RecoveryWept = new DevExpress.XtraEditors.TextEdit();
            this.lable_RecoveryWept = new System.Windows.Forms.Label();
            this.txtD_RecoveryWarp = new DevExpress.XtraEditors.TextEdit();
            this.lable_RecoveryWarp = new System.Windows.Forms.Label();
            this.txtD_FapplyWept = new DevExpress.XtraEditors.TextEdit();
            this.lable_FapplyWept = new System.Windows.Forms.Label();
            this.txtD_FapplyWarp = new DevExpress.XtraEditors.TextEdit();
            this.lable_FapplyWarp = new System.Windows.Forms.Label();
            this.txtD_AutoResult = new DevExpress.XtraEditors.TextEdit();
            this.lable_AutoResult = new System.Windows.Forms.Label();
            this.txtD_FinalResult = new DevExpress.XtraEditors.TextEdit();
            this.lable_FinalResult = new System.Windows.Forms.Label();
            this.txtD_Remark = new DevExpress.XtraEditors.TextEdit();
            this.lable_Remark = new System.Windows.Forms.Label();
            //
            // lable_IndexNo
            //
            lable_IndexNo.AutoSize = true;
            lable_IndexNo.Location = new System.Drawing.Point(20, 30);
            lable_IndexNo.Name = "lable_IndexNo";
            lable_IndexNo.Size = new System.Drawing.Size(90, 30);
            lable_IndexNo.TabIndex = 0;
            lable_IndexNo.Text = "IndexNo";
            this.Controls.Add(this.lable_IndexNo);
            this.Controls.SetChildIndex(this.lable_IndexNo, 0);
            //  
            // this.txt_IndexNo 
            //  
            this.txtD_IndexNo.Location = new System.Drawing.Point(140, 30);
            this.txtD_IndexNo.Name = "txtD_IndexNo";
            this.txtD_IndexNo.Size = new System.Drawing.Size(200, 21);
            this.txtD_IndexNo.TabIndex = 17;
            this.txtD_IndexNo.Tag = "IndexNo";
            this.Controls.Add(this.txtD_IndexNo);
            this.Controls.SetChildIndex(this.txtD_IndexNo, 0);
            //
            // lable_SuppRef
            //
            lable_SuppRef.AutoSize = true;
            lable_SuppRef.Location = new System.Drawing.Point(370, 30);
            lable_SuppRef.Name = "lable_SuppRef";
            lable_SuppRef.Size = new System.Drawing.Size(90, 30);
            lable_SuppRef.TabIndex = 1;
            lable_SuppRef.Text = "SuppRef";
            this.Controls.Add(this.lable_SuppRef);
            this.Controls.SetChildIndex(this.lable_SuppRef, 0);
            //  
            // this.txt_SuppRef 
            //  
            this.txtD_SuppRef.Location = new System.Drawing.Point(490, 30);
            this.txtD_SuppRef.Name = "txtD_SuppRef";
            this.txtD_SuppRef.Size = new System.Drawing.Size(200, 21);
            this.txtD_SuppRef.TabIndex = 18;
            this.txtD_SuppRef.Tag = "SuppRef";
            this.Controls.Add(this.txtD_SuppRef);
            this.Controls.SetChildIndex(this.txtD_SuppRef, 0);
            //
            // lable_Color
            //
            lable_Color.AutoSize = true;
            lable_Color.Location = new System.Drawing.Point(720, 30);
            lable_Color.Name = "lable_Color";
            lable_Color.Size = new System.Drawing.Size(90, 30);
            lable_Color.TabIndex = 2;
            lable_Color.Text = "Color";
            this.Controls.Add(this.lable_Color);
            this.Controls.SetChildIndex(this.lable_Color, 0);
            //  
            // this.txt_Color 
            //  
            this.txtD_Color.Location = new System.Drawing.Point(840, 30);
            this.txtD_Color.Name = "txtD_Color";
            this.txtD_Color.Size = new System.Drawing.Size(200, 21);
            this.txtD_Color.TabIndex = 19;
            this.txtD_Color.Tag = "Color";
            this.Controls.Add(this.txtD_Color);
            this.Controls.SetChildIndex(this.txtD_Color, 0);
            //
            // lable_ColorCategory
            //
            lable_ColorCategory.AutoSize = true;
            lable_ColorCategory.Location = new System.Drawing.Point(20, 62);
            lable_ColorCategory.Name = "lable_ColorCategory";
            lable_ColorCategory.Size = new System.Drawing.Size(90, 30);
            lable_ColorCategory.TabIndex = 3;
            lable_ColorCategory.Text = "ColorCategory";
            this.Controls.Add(this.lable_ColorCategory);
            this.Controls.SetChildIndex(this.lable_ColorCategory, 0);
            //  
            // this.txt_ColorCategory 
            //  
            this.txtD_ColorCategory.Location = new System.Drawing.Point(140, 62);
            this.txtD_ColorCategory.Name = "txtD_ColorCategory";
            this.txtD_ColorCategory.Size = new System.Drawing.Size(200, 21);
            this.txtD_ColorCategory.TabIndex = 20;
            this.txtD_ColorCategory.Tag = "ColorCategory";
            this.Controls.Add(this.txtD_ColorCategory);
            this.Controls.SetChildIndex(this.txtD_ColorCategory, 0);
            //
            // lable_IDNr
            //
            lable_IDNr.AutoSize = true;
            lable_IDNr.Location = new System.Drawing.Point(370, 62);
            lable_IDNr.Name = "lable_IDNr";
            lable_IDNr.Size = new System.Drawing.Size(90, 30);
            lable_IDNr.TabIndex = 4;
            lable_IDNr.Text = "IDNr";
            this.Controls.Add(this.lable_IDNr);
            this.Controls.SetChildIndex(this.lable_IDNr, 0);
            //  
            // this.txt_IDNr 
            //  
            this.txtD_IDNr.Location = new System.Drawing.Point(490, 62);
            this.txtD_IDNr.Name = "txtD_IDNr";
            this.txtD_IDNr.Size = new System.Drawing.Size(200, 21);
            this.txtD_IDNr.TabIndex = 21;
            this.txtD_IDNr.Tag = "IDNr";
            this.Controls.Add(this.txtD_IDNr);
            this.Controls.SetChildIndex(this.txtD_IDNr, 0);
            //
            // lable_ProjectNo
            //
            lable_ProjectNo.AutoSize = true;
            lable_ProjectNo.Location = new System.Drawing.Point(720, 62);
            lable_ProjectNo.Name = "lable_ProjectNo";
            lable_ProjectNo.Size = new System.Drawing.Size(90, 30);
            lable_ProjectNo.TabIndex = 5;
            lable_ProjectNo.Text = "ProjectNo";
            this.Controls.Add(this.lable_ProjectNo);
            this.Controls.SetChildIndex(this.lable_ProjectNo, 0);
            //  
            // this.txt_ProjectNo 
            //  
            this.txtD_ProjectNo.Location = new System.Drawing.Point(840, 62);
            this.txtD_ProjectNo.Name = "txtD_ProjectNo";
            this.txtD_ProjectNo.Size = new System.Drawing.Size(200, 21);
            this.txtD_ProjectNo.TabIndex = 22;
            this.txtD_ProjectNo.Tag = "ProjectNo";
            this.Controls.Add(this.txtD_ProjectNo);
            this.Controls.SetChildIndex(this.txtD_ProjectNo, 0);
            //
            // lable_StandardWept
            //
            lable_StandardWept.AutoSize = true;
            lable_StandardWept.Location = new System.Drawing.Point(20, 94);
            lable_StandardWept.Name = "lable_StandardWept";
            lable_StandardWept.Size = new System.Drawing.Size(90, 30);
            lable_StandardWept.TabIndex = 6;
            lable_StandardWept.Text = "StandardWept";
            this.Controls.Add(this.lable_StandardWept);
            this.Controls.SetChildIndex(this.lable_StandardWept, 0);
            //  
            // this.txt_StandardWept 
            //  
            this.txtD_StandardWept.Location = new System.Drawing.Point(140, 94);
            this.txtD_StandardWept.Name = "txtD_StandardWept";
            this.txtD_StandardWept.Size = new System.Drawing.Size(200, 21);
            this.txtD_StandardWept.TabIndex = 23;
            this.txtD_StandardWept.Tag = "StandardWept";
            this.Controls.Add(this.txtD_StandardWept);
            this.Controls.SetChildIndex(this.txtD_StandardWept, 0);
            //
            // lable_StandardWarp
            //
            lable_StandardWarp.AutoSize = true;
            lable_StandardWarp.Location = new System.Drawing.Point(370, 94);
            lable_StandardWarp.Name = "lable_StandardWarp";
            lable_StandardWarp.Size = new System.Drawing.Size(90, 30);
            lable_StandardWarp.TabIndex = 7;
            lable_StandardWarp.Text = "StandardWarp";
            this.Controls.Add(this.lable_StandardWarp);
            this.Controls.SetChildIndex(this.lable_StandardWarp, 0);
            //  
            // this.txt_StandardWarp 
            //  
            this.txtD_StandardWarp.Location = new System.Drawing.Point(490, 94);
            this.txtD_StandardWarp.Name = "txtD_StandardWarp";
            this.txtD_StandardWarp.Size = new System.Drawing.Size(200, 21);
            this.txtD_StandardWarp.TabIndex = 24;
            this.txtD_StandardWarp.Tag = "StandardWarp";
            this.Controls.Add(this.txtD_StandardWarp);
            this.Controls.SetChildIndex(this.txtD_StandardWarp, 0);
            //
            // lable_ElongationWept
            //
            lable_ElongationWept.AutoSize = true;
            lable_ElongationWept.Location = new System.Drawing.Point(720, 94);
            lable_ElongationWept.Name = "lable_ElongationWept";
            lable_ElongationWept.Size = new System.Drawing.Size(90, 30);
            lable_ElongationWept.TabIndex = 8;
            lable_ElongationWept.Text = "ElongationWept";
            this.Controls.Add(this.lable_ElongationWept);
            this.Controls.SetChildIndex(this.lable_ElongationWept, 0);
            //  
            // this.txt_ElongationWept 
            //  
            this.txtD_ElongationWept.Location = new System.Drawing.Point(840, 94);
            this.txtD_ElongationWept.Name = "txtD_ElongationWept";
            this.txtD_ElongationWept.Size = new System.Drawing.Size(200, 21);
            this.txtD_ElongationWept.TabIndex = 25;
            this.txtD_ElongationWept.Tag = "ElongationWept";
            this.Controls.Add(this.txtD_ElongationWept);
            this.Controls.SetChildIndex(this.txtD_ElongationWept, 0);
            //
            // lable_ElongationWarp
            //
            lable_ElongationWarp.AutoSize = true;
            lable_ElongationWarp.Location = new System.Drawing.Point(20, 126);
            lable_ElongationWarp.Name = "lable_ElongationWarp";
            lable_ElongationWarp.Size = new System.Drawing.Size(90, 30);
            lable_ElongationWarp.TabIndex = 9;
            lable_ElongationWarp.Text = "ElongationWarp";
            this.Controls.Add(this.lable_ElongationWarp);
            this.Controls.SetChildIndex(this.lable_ElongationWarp, 0);
            //  
            // this.txt_ElongationWarp 
            //  
            this.txtD_ElongationWarp.Location = new System.Drawing.Point(140, 126);
            this.txtD_ElongationWarp.Name = "txtD_ElongationWarp";
            this.txtD_ElongationWarp.Size = new System.Drawing.Size(200, 21);
            this.txtD_ElongationWarp.TabIndex = 26;
            this.txtD_ElongationWarp.Tag = "ElongationWarp";
            this.Controls.Add(this.txtD_ElongationWarp);
            this.Controls.SetChildIndex(this.txtD_ElongationWarp, 0);
            //
            // lable_RecoveryWept
            //
            lable_RecoveryWept.AutoSize = true;
            lable_RecoveryWept.Location = new System.Drawing.Point(370, 126);
            lable_RecoveryWept.Name = "lable_RecoveryWept";
            lable_RecoveryWept.Size = new System.Drawing.Size(90, 30);
            lable_RecoveryWept.TabIndex = 10;
            lable_RecoveryWept.Text = "RecoveryWept";
            this.Controls.Add(this.lable_RecoveryWept);
            this.Controls.SetChildIndex(this.lable_RecoveryWept, 0);
            //  
            // this.txt_RecoveryWept 
            //  
            this.txtD_RecoveryWept.Location = new System.Drawing.Point(490, 126);
            this.txtD_RecoveryWept.Name = "txtD_RecoveryWept";
            this.txtD_RecoveryWept.Size = new System.Drawing.Size(200, 21);
            this.txtD_RecoveryWept.TabIndex = 27;
            this.txtD_RecoveryWept.Tag = "RecoveryWept";
            this.Controls.Add(this.txtD_RecoveryWept);
            this.Controls.SetChildIndex(this.txtD_RecoveryWept, 0);
            //
            // lable_RecoveryWarp
            //
            lable_RecoveryWarp.AutoSize = true;
            lable_RecoveryWarp.Location = new System.Drawing.Point(720, 126);
            lable_RecoveryWarp.Name = "lable_RecoveryWarp";
            lable_RecoveryWarp.Size = new System.Drawing.Size(90, 30);
            lable_RecoveryWarp.TabIndex = 11;
            lable_RecoveryWarp.Text = "RecoveryWarp";
            this.Controls.Add(this.lable_RecoveryWarp);
            this.Controls.SetChildIndex(this.lable_RecoveryWarp, 0);
            //  
            // this.txt_RecoveryWarp 
            //  
            this.txtD_RecoveryWarp.Location = new System.Drawing.Point(840, 126);
            this.txtD_RecoveryWarp.Name = "txtD_RecoveryWarp";
            this.txtD_RecoveryWarp.Size = new System.Drawing.Size(200, 21);
            this.txtD_RecoveryWarp.TabIndex = 28;
            this.txtD_RecoveryWarp.Tag = "RecoveryWarp";
            this.Controls.Add(this.txtD_RecoveryWarp);
            this.Controls.SetChildIndex(this.txtD_RecoveryWarp, 0);
            //
            // lable_FapplyWept
            //
            lable_FapplyWept.AutoSize = true;
            lable_FapplyWept.Location = new System.Drawing.Point(20, 158);
            lable_FapplyWept.Name = "lable_FapplyWept";
            lable_FapplyWept.Size = new System.Drawing.Size(90, 30);
            lable_FapplyWept.TabIndex = 12;
            lable_FapplyWept.Text = "FapplyWept";
            this.Controls.Add(this.lable_FapplyWept);
            this.Controls.SetChildIndex(this.lable_FapplyWept, 0);
            //  
            // this.txt_FapplyWept 
            //  
            this.txtD_FapplyWept.Location = new System.Drawing.Point(140, 158);
            this.txtD_FapplyWept.Name = "txtD_FapplyWept";
            this.txtD_FapplyWept.Size = new System.Drawing.Size(200, 21);
            this.txtD_FapplyWept.TabIndex = 29;
            this.txtD_FapplyWept.Tag = "FapplyWept";
            this.Controls.Add(this.txtD_FapplyWept);
            this.Controls.SetChildIndex(this.txtD_FapplyWept, 0);
            //
            // lable_FapplyWarp
            //
            lable_FapplyWarp.AutoSize = true;
            lable_FapplyWarp.Location = new System.Drawing.Point(370, 158);
            lable_FapplyWarp.Name = "lable_FapplyWarp";
            lable_FapplyWarp.Size = new System.Drawing.Size(90, 30);
            lable_FapplyWarp.TabIndex = 13;
            lable_FapplyWarp.Text = "FapplyWarp";
            this.Controls.Add(this.lable_FapplyWarp);
            this.Controls.SetChildIndex(this.lable_FapplyWarp, 0);
            //  
            // this.txt_FapplyWarp 
            //  
            this.txtD_FapplyWarp.Location = new System.Drawing.Point(490, 158);
            this.txtD_FapplyWarp.Name = "txtD_FapplyWarp";
            this.txtD_FapplyWarp.Size = new System.Drawing.Size(200, 21);
            this.txtD_FapplyWarp.TabIndex = 30;
            this.txtD_FapplyWarp.Tag = "FapplyWarp";
            this.Controls.Add(this.txtD_FapplyWarp);
            this.Controls.SetChildIndex(this.txtD_FapplyWarp, 0);
            //
            // lable_AutoResult
            //
            lable_AutoResult.AutoSize = true;
            lable_AutoResult.Location = new System.Drawing.Point(720, 158);
            lable_AutoResult.Name = "lable_AutoResult";
            lable_AutoResult.Size = new System.Drawing.Size(90, 30);
            lable_AutoResult.TabIndex = 14;
            lable_AutoResult.Text = "AutoResult";
            this.Controls.Add(this.lable_AutoResult);
            this.Controls.SetChildIndex(this.lable_AutoResult, 0);
            //  
            // this.txt_AutoResult 
            //  
            this.txtD_AutoResult.Location = new System.Drawing.Point(840, 158);
            this.txtD_AutoResult.Name = "txtD_AutoResult";
            this.txtD_AutoResult.Size = new System.Drawing.Size(200, 21);
            this.txtD_AutoResult.TabIndex = 31;
            this.txtD_AutoResult.Tag = "AutoResult";
            this.Controls.Add(this.txtD_AutoResult);
            this.Controls.SetChildIndex(this.txtD_AutoResult, 0);
            //
            // lable_FinalResult
            //
            lable_FinalResult.AutoSize = true;
            lable_FinalResult.Location = new System.Drawing.Point(20, 190);
            lable_FinalResult.Name = "lable_FinalResult";
            lable_FinalResult.Size = new System.Drawing.Size(90, 30);
            lable_FinalResult.TabIndex = 15;
            lable_FinalResult.Text = "FinalResult";
            this.Controls.Add(this.lable_FinalResult);
            this.Controls.SetChildIndex(this.lable_FinalResult, 0);
            //  
            // this.txt_FinalResult 
            //  
            this.txtD_FinalResult.Location = new System.Drawing.Point(140, 190);
            this.txtD_FinalResult.Name = "txtD_FinalResult";
            this.txtD_FinalResult.Size = new System.Drawing.Size(200, 21);
            this.txtD_FinalResult.TabIndex = 32;
            this.txtD_FinalResult.Tag = "FinalResult";
            this.Controls.Add(this.txtD_FinalResult);
            this.Controls.SetChildIndex(this.txtD_FinalResult, 0);
            //
            // lable_Remark
            //
            lable_Remark.AutoSize = true;
            lable_Remark.Location = new System.Drawing.Point(370, 190);
            lable_Remark.Name = "lable_Remark";
            lable_Remark.Size = new System.Drawing.Size(90, 30);
            lable_Remark.TabIndex = 16;
            lable_Remark.Text = "Remark";
            this.Controls.Add(this.lable_Remark);
            this.Controls.SetChildIndex(this.lable_Remark, 0);
            //  
            // this.txt_Remark 
            //  
            this.txtD_Remark.Location = new System.Drawing.Point(490, 190);
            this.txtD_Remark.Name = "txtD_Remark";
            this.txtD_Remark.Size = new System.Drawing.Size(200, 21);
            this.txtD_Remark.TabIndex = 33;
            this.txtD_Remark.Tag = "Remark";
            this.Controls.Add(this.txtD_Remark);
            this.Controls.SetChildIndex(this.txtD_Remark, 0);
        }

    }
}
