namespace PH.LWPM.UI.Committee
{
    partial class SelectEmployeeForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.bsEmployee = new System.Windows.Forms.BindingSource(this.components);
            this.gdcDepartal = new DevExpress.XtraGrid.GridControl();
            this.gridEmployee = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNameCn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNameEn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbDepart = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.rcbSection = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.rcbTeam = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.rcbClass = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.rcbDeptype = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.rluDepttype = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.rcbDivision = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.chkSLM = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.rcbLocation = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.rcbActive = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.pnlBottom = new DevExpress.XtraEditors.PanelControl();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.bsEmployee)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdcDepartal)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridEmployee)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDepart)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbSection)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbTeam)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbClass)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDeptype)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rluDepttype)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDivision)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkSLM)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbLocation)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbActive)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).BeginInit();
            this.pnlBottom.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(340, 20);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(444, 20);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // bsEmployee
            // 
            this.bsEmployee.AllowNew = true;
            this.bsEmployee.DataSource = typeof(PH.LWPM.BO.WorkForce);
            // 
            // gdcDepartal
            // 
            this.gdcDepartal.DataSource = this.bsEmployee;
            this.gdcDepartal.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gdcDepartal.EmbeddedNavigator.Name = "";
            this.gdcDepartal.Location = new System.Drawing.Point(0, 0);
            this.gdcDepartal.MainView = this.gridEmployee;
            this.gdcDepartal.Name = "gdcDepartal";
            this.gdcDepartal.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.rcbDepart,
            this.rcbSection,
            this.rcbTeam,
            this.rcbClass,
            this.rcbDeptype,
            this.rluDepttype,
            this.rcbDivision,
            this.chkSLM,
            this.rcbLocation,
            this.rcbActive});
            this.gdcDepartal.Size = new System.Drawing.Size(628, 369);
            this.gdcDepartal.TabIndex = 10;
            this.gdcDepartal.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridEmployee});
            // 
            // gridEmployee
            // 
            this.gridEmployee.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colId,
            this.colNameCn,
            this.colNameEn,
            this.colFactory});
            this.gridEmployee.GridControl = this.gdcDepartal;
            this.gridEmployee.Name = "gridEmployee";
            this.gridEmployee.OptionsBehavior.Editable = false;
            this.gridEmployee.OptionsBehavior.EditorShowMode = DevExpress.Utils.EditorShowMode.MouseUp;
            this.gridEmployee.OptionsDetail.EnableMasterViewMode = false;
            this.gridEmployee.OptionsLayout.Columns.StoreAllOptions = true;
            this.gridEmployee.OptionsLayout.Columns.StoreAppearance = true;
            this.gridEmployee.OptionsLayout.StoreAllOptions = true;
            this.gridEmployee.OptionsLayout.StoreAppearance = true;
            this.gridEmployee.OptionsPrint.AutoWidth = false;
            this.gridEmployee.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.gridEmployee.OptionsView.ColumnAutoWidth = false;
            this.gridEmployee.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
            this.gridEmployee.OptionsView.RowAutoHeight = true;
            this.gridEmployee.OptionsView.ShowDetailButtons = false;
            this.gridEmployee.OptionsView.ShowGroupPanel = false;
            // 
            // colId
            // 
            this.colId.Caption = "Member ID";
            this.colId.FieldName = "Id";
            this.colId.Name = "colId";
            this.colId.Visible = true;
            this.colId.VisibleIndex = 1;
            this.colId.Width = 116;
            // 
            // colNameCn
            // 
            this.colNameCn.Caption = "Name (CN)";
            this.colNameCn.FieldName = "NameCn";
            this.colNameCn.Name = "colNameCn";
            this.colNameCn.Visible = true;
            this.colNameCn.VisibleIndex = 2;
            this.colNameCn.Width = 149;
            // 
            // colNameEn
            // 
            this.colNameEn.Caption = "Name (EN)";
            this.colNameEn.FieldName = "NameEn";
            this.colNameEn.Name = "colNameEn";
            this.colNameEn.Visible = true;
            this.colNameEn.VisibleIndex = 3;
            this.colNameEn.Width = 184;
            // 
            // rcbDepart
            // 
            this.rcbDepart.AutoHeight = false;
            this.rcbDepart.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbDepart.Name = "rcbDepart";
            // 
            // rcbSection
            // 
            this.rcbSection.AutoHeight = false;
            this.rcbSection.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbSection.Name = "rcbSection";
            // 
            // rcbTeam
            // 
            this.rcbTeam.AutoHeight = false;
            this.rcbTeam.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbTeam.Name = "rcbTeam";
            // 
            // rcbClass
            // 
            this.rcbClass.AutoHeight = false;
            this.rcbClass.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbClass.Name = "rcbClass";
            // 
            // rcbDeptype
            // 
            this.rcbDeptype.AutoHeight = false;
            this.rcbDeptype.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbDeptype.Name = "rcbDeptype";
            // 
            // rluDepttype
            // 
            this.rluDepttype.AutoHeight = false;
            this.rluDepttype.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rluDepttype.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Type", 8)});
            this.rluDepttype.Name = "rluDepttype";
            this.rluDepttype.NullText = "";
            // 
            // rcbDivision
            // 
            this.rcbDivision.AutoHeight = false;
            this.rcbDivision.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbDivision.Name = "rcbDivision";
            // 
            // chkSLM
            // 
            this.chkSLM.AutoHeight = false;
            this.chkSLM.Name = "chkSLM";
            // 
            // rcbLocation
            // 
            this.rcbLocation.AutoHeight = false;
            this.rcbLocation.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbLocation.Name = "rcbLocation";
            // 
            // rcbActive
            // 
            this.rcbActive.AutoHeight = false;
            this.rcbActive.Name = "rcbActive";
            this.rcbActive.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.rcbActive.ValueGrayed = true;
            // 
            // pnlBottom
            // 
            this.pnlBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlBottom.Controls.Add(this.btnCancel);
            this.pnlBottom.Controls.Add(this.btnOK);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 369);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(628, 55);
            this.pnlBottom.TabIndex = 11;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 0;
            this.colFactory.Width = 65;
            // 
            // SelectEmployeeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(628, 424);
            this.Controls.Add(this.gdcDepartal);
            this.Controls.Add(this.pnlBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectEmployeeForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Member";
            ((System.ComponentModel.ISupportInitialize)(this.bsEmployee)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdcDepartal)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridEmployee)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDepart)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbSection)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbTeam)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbClass)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDeptype)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rluDepttype)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDivision)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkSLM)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbLocation)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbActive)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).EndInit();
            this.pnlBottom.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private System.Windows.Forms.BindingSource bsEmployee;
        private DevExpress.XtraGrid.GridControl gdcDepartal;
        private DevExpress.XtraGrid.Views.Grid.GridView gridEmployee;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit rluDepttype;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbDepart;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbSection;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbTeam;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbClass;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit rcbActive;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbLocation;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbDeptype;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbDivision;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit chkSLM;
        private DevExpress.XtraEditors.PanelControl pnlBottom;
        private DevExpress.XtraGrid.Columns.GridColumn colId;
        private DevExpress.XtraGrid.Columns.GridColumn colNameCn;
        private DevExpress.XtraGrid.Columns.GridColumn colNameEn;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
    }
}