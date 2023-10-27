namespace PH.MIDc.UI.Main
{
    partial class UpAndDownFileForm
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.repositoryItemButtonEdit_Delete = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.repositoryItemButtonEdit_Download = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.textEditFileName = new DevExpress.XtraEditors.TextEdit();
            this.sBtnSave = new DevExpress.XtraEditors.SimpleButton();
            this.sBtnGetUpFile = new DevExpress.XtraEditors.SimpleButton();
            this.gridCtrlUpedFile = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colfileName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOpen = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ribeOpen = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.saveFileDialog1 = new System.Windows.Forms.SaveFileDialog();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_Delete)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_Download)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEditFileName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridCtrlUpedFile)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeOpen)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // repositoryItemButtonEdit_Delete
            // 
            this.repositoryItemButtonEdit_Delete.AutoHeight = false;
            this.repositoryItemButtonEdit_Delete.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "Delete", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.repositoryItemButtonEdit_Delete.Name = "repositoryItemButtonEdit_Delete";
            this.repositoryItemButtonEdit_Delete.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            // 
            // repositoryItemButtonEdit_Download
            // 
            this.repositoryItemButtonEdit_Download.AutoHeight = false;
            this.repositoryItemButtonEdit_Download.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "DownLoad", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.repositoryItemButtonEdit_Download.Name = "repositoryItemButtonEdit_Download";
            this.repositoryItemButtonEdit_Download.NullText = "DownLoad";
            this.repositoryItemButtonEdit_Download.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            // 
            // textEditFileName
            // 
            this.textEditFileName.Location = new System.Drawing.Point(0, 3);
            this.textEditFileName.Name = "textEditFileName";
            this.textEditFileName.Size = new System.Drawing.Size(246, 21);
            this.textEditFileName.TabIndex = 103;
            // 
            // sBtnSave
            // 
            this.sBtnSave.Location = new System.Drawing.Point(283, 2);
            this.sBtnSave.Name = "sBtnSave";
            this.sBtnSave.Size = new System.Drawing.Size(66, 23);
            this.sBtnSave.TabIndex = 102;
            this.sBtnSave.Text = "Upload";
            this.sBtnSave.Click += new System.EventHandler(this.sBtnSave_Click);
            // 
            // sBtnGetUpFile
            // 
            this.sBtnGetUpFile.Location = new System.Drawing.Point(246, 2);
            this.sBtnGetUpFile.Name = "sBtnGetUpFile";
            this.sBtnGetUpFile.Size = new System.Drawing.Size(38, 23);
            this.sBtnGetUpFile.TabIndex = 101;
            this.sBtnGetUpFile.Text = "...";
            this.sBtnGetUpFile.Click += new System.EventHandler(this.sBtnGetUpFile_Click);
            // 
            // gridCtrlUpedFile
            // 
            this.gridCtrlUpedFile.DataSource = this.bindingSource1;
            this.gridCtrlUpedFile.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridCtrlUpedFile.EmbeddedNavigator.Name = "";
            this.gridCtrlUpedFile.Location = new System.Drawing.Point(0, 31);
            this.gridCtrlUpedFile.MainView = this.gridView1;
            this.gridCtrlUpedFile.Name = "gridCtrlUpedFile";
            this.gridCtrlUpedFile.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemButtonEdit_Download,
            this.repositoryItemButtonEdit_Delete,
            this.ribeOpen});
            this.gridCtrlUpedFile.Size = new System.Drawing.Size(650, 175);
            this.gridCtrlUpedFile.TabIndex = 100;
            this.gridCtrlUpedFile.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colfileName,
            this.gridColumn1,
            this.gridColumn2,
            this.colOpen});
            this.gridView1.CustomizationFormBounds = new System.Drawing.Rectangle(298, 202, 208, 191);
            this.gridView1.GridControl = this.gridCtrlUpedFile;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // colfileName
            // 
            this.colfileName.Caption = "File Name";
            this.colfileName.FieldName = "FileName";
            this.colfileName.Name = "colfileName";
            this.colfileName.OptionsColumn.AllowEdit = false;
            this.colfileName.Visible = true;
            this.colfileName.VisibleIndex = 0;
            this.colfileName.Width = 233;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "delete";
            this.gridColumn1.ColumnEdit = this.repositoryItemButtonEdit_Delete;
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Tag = "Delete";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 3;
            this.gridColumn1.Width = 78;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "download";
            this.gridColumn2.ColumnEdit = this.repositoryItemButtonEdit_Download;
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Tag = "DownLoad";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 1;
            this.gridColumn2.Width = 108;
            // 
            // colOpen
            // 
            this.colOpen.Caption = "Open";
            this.colOpen.ColumnEdit = this.ribeOpen;
            this.colOpen.Name = "colOpen";
            this.colOpen.Visible = true;
            this.colOpen.VisibleIndex = 2;
            // 
            // ribeOpen
            // 
            this.ribeOpen.AutoHeight = false;
            this.ribeOpen.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "Open", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.ribeOpen.Name = "ribeOpen";
            this.ribeOpen.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.ribeOpen.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribeOpen_ButtonClick);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.textEditFileName);
            this.panel1.Controls.Add(this.sBtnGetUpFile);
            this.panel1.Controls.Add(this.sBtnSave);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(650, 31);
            this.panel1.TabIndex = 104;
            // 
            // UpAndDownFileForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.gridCtrlUpedFile);
            this.Controls.Add(this.panel1);
            this.Name = "UpAndDownFileForm";
            this.Size = new System.Drawing.Size(650, 206);
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_Delete)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_Download)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEditFileName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridCtrlUpedFile)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeOpen)).EndInit();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEditFileName;
        private DevExpress.XtraEditors.SimpleButton sBtnSave;
        private DevExpress.XtraEditors.SimpleButton sBtnGetUpFile;
        private DevExpress.XtraGrid.GridControl gridCtrlUpedFile;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colfileName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private System.Windows.Forms.SaveFileDialog saveFileDialog1;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Columns.GridColumn colOpen;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeOpen;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_Delete;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_Download;
        private System.Windows.Forms.Panel panel1;
    }
}
