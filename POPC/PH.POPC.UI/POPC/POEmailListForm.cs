/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.POEmailListForm.cs$   
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
    public partial class POEmailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn colUserName;
        private DevExpress.XtraGrid.Columns.GridColumn colEmail;
        private DevExpress.XtraGrid.Columns.GridColumn colDivision;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn colSubContractor;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox cbCustomer;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox cbSupp;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox cbSub;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox cbFlag;
        public DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repositoryItemLookUpEdit1;
        #endregion

        private void InitializeComponent()
        {
            this.repositoryItemLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.colUserName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEmail = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDivision = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSubContractor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.cbCustomer = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.cbSupp = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.cbSub = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.cbFlag = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSupp)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSub)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFlag)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POEmail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemLookUpEdit1,
            this.repositoryItemComboBox2,
            this.cbCustomer,
            this.cbSupp,
            this.cbSub,
            this.cbFlag});
            this.objListGridControl.Size = new System.Drawing.Size(954, 402);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colUserName,
            this.colEmail,
            this.colDivision,
            this.colCustomer,
            this.colSupplier,
            this.colSubContractor,
            this.colFlag});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
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
            // colUserName
            // 
            this.colUserName.Caption = "Name";
            this.colUserName.FieldName = "UserName";
            this.colUserName.Name = "colUserName";
            this.colUserName.Visible = true;
            this.colUserName.VisibleIndex = 0;
            this.colUserName.Width = 105;
            // 
            // colEmail
            // 
            this.colEmail.Caption = "Email Address";
            this.colEmail.FieldName = "Email";
            this.colEmail.Name = "colEmail";
            this.colEmail.Visible = true;
            this.colEmail.VisibleIndex = 1;
            this.colEmail.Width = 168;
            // 
            // colDivision
            // 
            this.colDivision.Caption = "Division";
            this.colDivision.ColumnEdit = this.repositoryItemComboBox2;
            this.colDivision.FieldName = "Division";
            this.colDivision.Name = "colDivision";
            this.colDivision.Visible = true;
            this.colDivision.VisibleIndex = 2;
            this.colDivision.Width = 82;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "Customer";
            this.colCustomer.ColumnEdit = this.cbCustomer;
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.Visible = true;
            this.colCustomer.VisibleIndex = 3;
            this.colCustomer.Width = 86;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "Supplier";
            this.colSupplier.ColumnEdit = this.cbSupp;
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.Visible = true;
            this.colSupplier.VisibleIndex = 4;
            this.colSupplier.Width = 87;
            // 
            // colSubContractor
            // 
            this.colSubContractor.Caption = "Sub-Contractor";
            this.colSubContractor.ColumnEdit = this.cbSub;
            this.colSubContractor.FieldName = "SubContractor";
            this.colSubContractor.Name = "colSubContractor";
            this.colSubContractor.Visible = true;
            this.colSubContractor.VisibleIndex = 5;
            this.colSubContractor.Width = 119;
            // 
            // colFlag
            // 
            this.colFlag.Caption = "Category";
            this.colFlag.ColumnEdit = this.cbFlag;
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 6;
            this.colFlag.Width = 94;
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "A",
            "B",
            "C",
            "E"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // cbCustomer
            // 
            this.cbCustomer.AutoHeight = false;
            this.cbCustomer.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbCustomer.Name = "cbCustomer";
            // 
            // cbSupp
            // 
            this.cbSupp.AutoHeight = false;
            this.cbSupp.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbSupp.Name = "cbSupp";
            // 
            // cbSub
            // 
            this.cbSub.AutoHeight = false;
            this.cbSub.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbSub.Name = "cbSub";
            // 
            // cbFlag
            // 
            this.cbFlag.AutoHeight = false;
            this.cbFlag.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbFlag.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("is PH Staff", 0, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("is Customer", 1, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("is Supplier", 2, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("is Sub-Contractor", 3, -1)});
            this.cbFlag.Name = "cbFlag";
            // 
            // POEmailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POEmailListForm";
            this.Size = new System.Drawing.Size(954, 429);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbCustomer)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSupp)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSub)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFlag)).EndInit();
            this.ResumeLayout(false);

        }

        public POEmailListForm()
        {
            InitializeComponent();

        }
        public override void DataBind()
        {
            base.DataBind();

            PH.POPC.BO.POPCDataContext context;
            context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();

            context.CommandTimeout = 1000;
            this.DataContext = context;

            var aa = (from c in context.POEmails
                      select c);

            this.BindingSource.DataSource = aa;

            this.AllowAddRow = true;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = true;

            InitValue();
        }


        private void InitValue()
        {
            //customer
            PH.POPC.BO.DicList list = new PH.POPC.BO.DicList();
            this.cbCustomer.Items.Clear();
            foreach (var item in list.GetDataDictionary("PH.POPC.MatrixCustomer"))
            {
                this.cbCustomer.Items.Add(item.DataCode);
            }

            //supplier
            PH.MIDc.BO.DetailList detaillist = new PH.MIDc.BO.DetailList();
            detaillist.CurrentDataContext.CommandTimeout = 2000;
            var supps = detaillist.GetERPSuppliers(true);

            this.cbSupp.Items.Clear();
            foreach (var item in supps)
            {
                this.cbSupp.Items.Add(item);
            }

            //Sub-Contractor
        }
    }
}
