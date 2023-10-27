/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.POTermListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/19 下午 12:21:05 $   
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
namespace PH.POPC.UI
{
    public partial class POTermListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
       private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Company;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PONO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Version;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_AmendmentNo;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_LanguageCode;
        public DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repositoryItemLookUpEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Code;
        #endregion
        protected DevExpress.XtraGrid.Columns.GridColumn Columns_TermCode;
        private void InitializeComponent()
        {
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Version = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_AmendmentNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_TermCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.Columns_LanguageCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Code = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Company,
            this.Columns_PONO,
            this.Columns_Version,
            this.Columns_AmendmentNo,
            this.Columns_TermCode,
            this.Columns_LanguageCode,
            this.Columns_Code});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 26);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemLookUpEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(659, 297);
            // 
            // Columns_Company
            // 
            this.Columns_Company.Caption = "Company";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            // 
            // Columns_PONO
            // 
            this.Columns_PONO.Caption = "PONO";
            this.Columns_PONO.FieldName = "PONO";
            this.Columns_PONO.Name = "Columns_PONO";
            // 
            // Columns_Version
            // 
            this.Columns_Version.Caption = "Version";
            this.Columns_Version.FieldName = "Version";
            this.Columns_Version.Name = "Columns_Version";
            // 
            // Columns_AmendmentNo
            // 
            this.Columns_AmendmentNo.Caption = "AmendmentNo";
            this.Columns_AmendmentNo.FieldName = "AmendmentNo";
            this.Columns_AmendmentNo.Name = "Columns_AmendmentNo";
            // 
            // Columns_TermCode
            // 
            this.Columns_TermCode.Caption = "Term";
            this.Columns_TermCode.ColumnEdit = this.repositoryItemLookUpEdit1;
            this.Columns_TermCode.FieldName = "TermCode";
            this.Columns_TermCode.Name = "Columns_TermCode";
            this.Columns_TermCode.Visible = true;
            this.Columns_TermCode.VisibleIndex = 1;
            this.Columns_TermCode.Width = 465;
            // 
            // repositoryItemLookUpEdit1
            // 
            this.repositoryItemLookUpEdit1.AutoHeight = false;
            this.repositoryItemLookUpEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemLookUpEdit1.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("TermCode", "TermCode", 5),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Remark", "Remark", 50)});
            this.repositoryItemLookUpEdit1.Name = "repositoryItemLookUpEdit1";
            this.repositoryItemLookUpEdit1.NullText = "";
            this.repositoryItemLookUpEdit1.ShowHeader = false;
            // 
            // Columns_LanguageCode
            // 
            this.Columns_LanguageCode.Caption = "Language Code";
            this.Columns_LanguageCode.FieldName = "LanguageCode";
            this.Columns_LanguageCode.Name = "Columns_LanguageCode";
            this.Columns_LanguageCode.Width = 113;
            // 
            // Columns_Code
            // 
            this.Columns_Code.Caption = "Code";
            this.Columns_Code.FieldName = "TermCode";
            this.Columns_Code.Name = "Columns_Code";
            this.Columns_Code.OptionsColumn.ReadOnly = true;
            this.Columns_Code.Visible = true;
            this.Columns_Code.VisibleIndex = 0;
            this.Columns_Code.Width = 82;
            // 
            // POTermListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POTermListForm";
            this.Size = new System.Drawing.Size(659, 323);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        public POType _potype = POType.PO;
        public POTermListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(POTermDetailForm).FullName;
            //this.CurDataMember = "POTerms";
        }
        protected override void OnLoad(EventArgs e)
        {
            if (this.DesignMode) return;
            base.OnLoad(e);
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            if (this._potype == POType.POSticker)
            {
                var items = from cc in context.Terms
                            where cc.LanguageCode == "zh-TW"// PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LanguageCode
                            && cc.TermCode.Contains("A") 
                            select cc;
                this.repositoryItemLookUpEdit1.Properties.ValueMember = "TermCode";
                this.repositoryItemLookUpEdit1.Properties.DisplayMember = "Remark";
                this.repositoryItemLookUpEdit1.Properties.DataSource = null;
                this.repositoryItemLookUpEdit1.Properties.DataSource = items;
            }
            else if (this._potype == POType.PO)
            {
                var items = from cc in context.Terms
                            where cc.LanguageCode == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID 
                            && cc.TermCode.Contains("A")==false 
                            select cc;
                this.repositoryItemLookUpEdit1.Properties.ValueMember = "TermCode";
                this.repositoryItemLookUpEdit1.Properties.DisplayMember = "Remark";
                this.repositoryItemLookUpEdit1.Properties.DataSource = null;
                this.repositoryItemLookUpEdit1.Properties.DataSource = items;
            }


        }

    }
}
