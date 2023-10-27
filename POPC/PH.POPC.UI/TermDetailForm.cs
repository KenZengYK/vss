/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.TermDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/19 上午 11:43:40 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.IO;

namespace PH.POPC.UI
{
    public class TermDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//auto code

        private PODetailListForm poDetailListForm1 = new PODetailListForm();
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private POTermListForm poTermListForm1;
        private TextEdit txtD_TermCode;
        private MemoExEdit mem_Remark;
        private ComboBoxEdit com_LanguageCode;
        private Label termCodeLabel;
        private Label remarkLabel;
        private Label languageCodeLabel;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        #endregion
        public TermDetailForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout1 = new PH.Platform.BO.UI_GridViewLayout();
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout2 = new PH.Platform.BO.UI_GridViewLayout();
            this.termCodeLabel = new System.Windows.Forms.Label();
            this.remarkLabel = new System.Windows.Forms.Label();
            this.languageCodeLabel = new System.Windows.Forms.Label();
            this.poDetailListForm1 = new PH.POPC.UI.PODetailListForm();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.poTermListForm1 = new PH.POPC.UI.POTermListForm();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.txtD_TermCode = new DevExpress.XtraEditors.TextEdit();
            this.mem_Remark = new DevExpress.XtraEditors.MemoExEdit();
            this.com_LanguageCode = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.xtraTabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_TermCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mem_Remark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.com_LanguageCode.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEdtbarManager
            // 
            this.objEdtbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            this.objEdtbarManager.MaxItemId = 20;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.Term);
            // 
            // termCodeLabel
            // 
            this.termCodeLabel.AutoSize = true;
            this.termCodeLabel.Location = new System.Drawing.Point(23, 57);
            this.termCodeLabel.Name = "termCodeLabel";
            this.termCodeLabel.Size = new System.Drawing.Size(61, 12);
            this.termCodeLabel.TabIndex = 252;
            this.termCodeLabel.Text = "Term Code:";
            // 
            // remarkLabel
            // 
            this.remarkLabel.AutoSize = true;
            this.remarkLabel.Location = new System.Drawing.Point(23, 135);
            this.remarkLabel.Name = "remarkLabel";
            this.remarkLabel.Size = new System.Drawing.Size(45, 12);
            this.remarkLabel.TabIndex = 253;
            this.remarkLabel.Text = "Remark:";
            // 
            // languageCodeLabel
            // 
            this.languageCodeLabel.AutoSize = true;
            this.languageCodeLabel.Location = new System.Drawing.Point(23, 96);
            this.languageCodeLabel.Name = "languageCodeLabel";
            this.languageCodeLabel.Size = new System.Drawing.Size(82, 12);
            this.languageCodeLabel.TabIndex = 254;
            this.languageCodeLabel.Text = "Language Code:";
            // 
            // poDetailListForm1
            // 
            this.poDetailListForm1.AutoOpenDetailForm = false;
            this.poDetailListForm1.DataContext = null;
            this.poDetailListForm1.DataSource = null;
            this.poDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poDetailListForm1.EditorTypeName = "PH.POPC.UI.PODetailDetailForm";
            this.poDetailListForm1.FileID = null;
            this.poDetailListForm1.FirstForm = null;
            this.poDetailListForm1.FormName = "PODetailListForm";
            this.poDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poDetailListForm1.FormTitle = "PH.POPC.UI.PODetailListForm";
            this.poDetailListForm1.IsCancelList = false;
            this.poDetailListForm1.IsShowPivotTable = false;
            uI_GridViewLayout1.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            uI_GridViewLayout1.CheckFlag = false;
            uI_GridViewLayout1.CurrentBindingSource = null;
            uI_GridViewLayout1.CurrentDataContext = null;
            uI_GridViewLayout1.FileID = null;
            uI_GridViewLayout1.FormName = null;
            uI_GridViewLayout1.IsSys = null;
            uI_GridViewLayout1.IsSysDefault = null;
            uI_GridViewLayout1.IsUser = null;
            uI_GridViewLayout1.IsUserDefault = null;
            uI_GridViewLayout1.LayoutName = null;
            uI_GridViewLayout1.LayoutRaw = null;
            uI_GridViewLayout1.SideProgramID = null;
            uI_GridViewLayout1.UserID = null;
            this.poDetailListForm1.LayoutData = uI_GridViewLayout1;
            this.poDetailListForm1.LayoutName = null;
            this.poDetailListForm1.ListForm = null;
            this.poDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.poDetailListForm1.MenuID = ((long)(0));
            this.poDetailListForm1.Name = "poDetailListForm1";
            this.poDetailListForm1.NextForm = null;
            this.poDetailListForm1.ParentForm = null;
            this.poDetailListForm1.PrevForm = null;
            this.poDetailListForm1.RowChangeAutoSave = true;
            this.poDetailListForm1.ShowMultiCheck = false;
            this.poDetailListForm1.SideProgramID = null;
            this.poDetailListForm1.Size = new System.Drawing.Size(953, 250);
            this.poDetailListForm1.TabControls = null;
            this.poDetailListForm1.TabIndex = 0;
            this.poDetailListForm1.TabPage = null;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.poTermListForm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(953, 256);
            this.xtraTabPage2.Text = "POTerms";
            // 
            // poTermListForm1
            // 
            this.poTermListForm1.AutoOpenDetailForm = false;
            this.poTermListForm1.DataContext = null;
            this.poTermListForm1.DataSource = null;
            this.poTermListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poTermListForm1.EditorTypeName = "PH.POPC.UI.POTermDetailForm";
            this.poTermListForm1.FileID = null;
            this.poTermListForm1.FirstForm = null;
            this.poTermListForm1.FormName = "POTermListForm";
            this.poTermListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poTermListForm1.FormTitle = "PH.POPC.UI.POTermListForm";
            this.poTermListForm1.IsCancelList = false;
            this.poTermListForm1.IsShowPivotTable = false;
            uI_GridViewLayout2.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            uI_GridViewLayout2.CheckFlag = false;
            uI_GridViewLayout2.CurrentBindingSource = null;
            uI_GridViewLayout2.CurrentDataContext = null;
            uI_GridViewLayout2.FileID = null;
            uI_GridViewLayout2.FormName = null;
            uI_GridViewLayout2.IsSys = null;
            uI_GridViewLayout2.IsSysDefault = null;
            uI_GridViewLayout2.IsUser = null;
            uI_GridViewLayout2.IsUserDefault = null;
            uI_GridViewLayout2.LayoutName = null;
            uI_GridViewLayout2.LayoutRaw = null;
            uI_GridViewLayout2.SideProgramID = null;
            uI_GridViewLayout2.UserID = null;
            this.poTermListForm1.LayoutData = uI_GridViewLayout2;
            this.poTermListForm1.LayoutName = null;
            this.poTermListForm1.ListForm = null;
            this.poTermListForm1.Location = new System.Drawing.Point(0, 0);
            this.poTermListForm1.MenuID = ((long)(0));
            this.poTermListForm1.Name = "poTermListForm1";
            this.poTermListForm1.NextForm = null;
            this.poTermListForm1.ParentForm = null;
            this.poTermListForm1.PrevForm = null;
            this.poTermListForm1.RowChangeAutoSave = true;
            this.poTermListForm1.ShowMultiCheck = false;
            this.poTermListForm1.SideProgramID = null;
            this.poTermListForm1.Size = new System.Drawing.Size(953, 256);
            this.poTermListForm1.TabControls = null;
            this.poTermListForm1.TabIndex = 0;
            this.poTermListForm1.TabPage = null;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "嘜頭訂購單";
            this.barButtonItem1.Id = 19;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // txtD_TermCode
            // 
            this.txtD_TermCode.Location = new System.Drawing.Point(116, 54);
            this.txtD_TermCode.Name = "txtD_TermCode";
            this.txtD_TermCode.Size = new System.Drawing.Size(200, 21);
            this.txtD_TermCode.TabIndex = 35;
            this.txtD_TermCode.Tag = "TermCode";
            // 
            // mem_Remark
            // 
            this.mem_Remark.Location = new System.Drawing.Point(116, 127);
            this.mem_Remark.Name = "mem_Remark";
            this.mem_Remark.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.mem_Remark.Properties.PopupStartSize = new System.Drawing.Size(400, 300);
            this.mem_Remark.Properties.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.mem_Remark.Properties.WordWrap = false;
            this.mem_Remark.Size = new System.Drawing.Size(200, 21);
            this.mem_Remark.TabIndex = 251;
            this.mem_Remark.Tag = "Remark";
            // 
            // com_LanguageCode
            // 
            this.com_LanguageCode.Location = new System.Drawing.Point(116, 89);
            this.com_LanguageCode.Name = "com_LanguageCode";
            this.com_LanguageCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.com_LanguageCode.Properties.Items.AddRange(new object[] {
            "zh-TW",
            "EN"});
            this.com_LanguageCode.Size = new System.Drawing.Size(200, 21);
            this.com_LanguageCode.TabIndex = 252;
            this.com_LanguageCode.Tag = "LanguageCode";
            // 
            // TermDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.languageCodeLabel);
            this.Controls.Add(this.remarkLabel);
            this.Controls.Add(this.termCodeLabel);
            this.Controls.Add(this.com_LanguageCode);
            this.Controls.Add(this.mem_Remark);
            this.Controls.Add(this.txtD_TermCode);
            this.Name = "TermDetailForm";
            this.Controls.SetChildIndex(this.txtD_TermCode, 0);
            this.Controls.SetChildIndex(this.mem_Remark, 0);
            this.Controls.SetChildIndex(this.com_LanguageCode, 0);
            this.Controls.SetChildIndex(this.termCodeLabel, 0);
            this.Controls.SetChildIndex(this.remarkLabel, 0);
            this.Controls.SetChildIndex(this.languageCodeLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.xtraTabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.txtD_TermCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mem_Remark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.com_LanguageCode.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }





    }
}
