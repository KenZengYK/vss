namespace PH.MR.BackEnd.Job
{
    partial class JobKBMRReport
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.editCompany = new DevExpress.XtraEditors.TextEdit();
            this.editProject = new DevExpress.XtraEditors.TextEdit();
            this.groupReportType = new DevExpress.XtraEditors.RadioGroup();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.gridWO = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.editDept = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.editCompany.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupReportType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridWO)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editDept.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(18, 17);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 12);
            this.label1.TabIndex = 16;
            this.label1.Text = "Company: ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(18, 50);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(71, 12);
            this.label2.TabIndex = 17;
            this.label2.Text = "Project No.";
            // 
            // editCompany
            // 
            this.editCompany.EditValue = "P1";
            this.editCompany.Location = new System.Drawing.Point(81, 12);
            this.editCompany.Name = "editCompany";
            this.editCompany.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editCompany.Properties.MaxLength = 2;
            this.editCompany.Size = new System.Drawing.Size(50, 21);
            this.editCompany.TabIndex = 4;
            // 
            // editProject
            // 
            this.editProject.Location = new System.Drawing.Point(81, 45);
            this.editProject.Name = "editProject";
            this.editProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editProject.Size = new System.Drawing.Size(100, 21);
            this.editProject.TabIndex = 0;
            // 
            // groupReportType
            // 
            this.groupReportType.EditValue = 1;
            this.groupReportType.Location = new System.Drawing.Point(20, 102);
            this.groupReportType.Name = "groupReportType";
            this.groupReportType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "Summary Listing"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "Summary Breakdown Listing"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(3, "Detail Listing")});
            this.groupReportType.Size = new System.Drawing.Size(219, 145);
            this.groupReportType.TabIndex = 2;
            this.groupReportType.SelectedIndexChanged += new System.EventHandler(this.groupReportType_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(18, 85);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(71, 12);
            this.label3.TabIndex = 31;
            this.label3.Text = "Reprt Type:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(267, 15);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(77, 12);
            this.label4.TabIndex = 33;
            this.label4.Text = "Work Orders:";
            this.label4.Visible = false;
            // 
            // gridWO
            // 
            this.gridWO.EmbeddedNavigator.Buttons.CancelEdit.Visible = false;
            this.gridWO.EmbeddedNavigator.Buttons.Edit.Visible = false;
            this.gridWO.EmbeddedNavigator.Buttons.EndEdit.Visible = false;
            this.gridWO.EmbeddedNavigator.Buttons.First.Visible = false;
            this.gridWO.EmbeddedNavigator.Buttons.Last.Visible = false;
            this.gridWO.EmbeddedNavigator.Buttons.Next.Visible = false;
            this.gridWO.EmbeddedNavigator.Buttons.NextPage.Visible = false;
            this.gridWO.EmbeddedNavigator.Buttons.Prev.Visible = false;
            this.gridWO.EmbeddedNavigator.Buttons.PrevPage.Visible = false;
            this.gridWO.EmbeddedNavigator.Name = "";
            this.gridWO.EmbeddedNavigator.TextLocation = DevExpress.XtraEditors.NavigatorButtonsTextLocation.None;
            this.gridWO.Location = new System.Drawing.Point(269, 30);
            this.gridWO.MainView = this.gridView1;
            this.gridWO.Name = "gridWO";
            this.gridWO.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1});
            this.gridWO.Size = new System.Drawing.Size(141, 217);
            this.gridWO.TabIndex = 3;
            this.gridWO.UseEmbeddedNavigator = true;
            this.gridWO.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gridWO.Visible = false;
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1});
            this.gridView1.GridControl = this.gridWO;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsCustomization.AllowFilter = false;
            this.gridView1.OptionsFilter.AllowFilterEditor = false;
            this.gridView1.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Work Order";
            this.gridColumn1.ColumnEdit = this.repositoryItemTextEdit1;
            this.gridColumn1.FieldName = "WORKORDER";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 0;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.repositoryItemTextEdit1.MaxLength = 7;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // editDept
            // 
            this.editDept.EditValue = "";
            this.editDept.Location = new System.Drawing.Point(161, 12);
            this.editDept.Name = "editDept";
            this.editDept.Size = new System.Drawing.Size(78, 21);
            this.editDept.TabIndex = 34;
            this.editDept.Visible = false;
            // 
            // JobKBMRReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.editDept);
            this.Controls.Add(this.gridWO);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.groupReportType);
            this.Controls.Add(this.editProject);
            this.Controls.Add(this.editCompany);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label2);
            this.Name = "JobKBMRReport";
            this.Size = new System.Drawing.Size(425, 264);
            ((System.ComponentModel.ISupportInitialize)(this.editCompany.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupReportType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridWO)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editDept.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.TextEdit editCompany;
        private DevExpress.XtraEditors.TextEdit editProject;
        private DevExpress.XtraEditors.RadioGroup groupReportType;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private DevExpress.XtraGrid.GridControl gridWO;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraEditors.TextEdit editDept;
    }
}
