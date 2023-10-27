namespace PH.LWPM.UI.WF
{
    partial class SelectRegionForm
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
            this.palBottom = new DevExpress.XtraEditors.PanelControl();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.treeListRegion = new DevExpress.XtraTreeList.TreeList();
            this.colName = new DevExpress.XtraTreeList.Columns.TreeListColumn();
            this.colDescription = new DevExpress.XtraTreeList.Columns.TreeListColumn();
            this.bsRegion = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.palBottom)).BeginInit();
            this.palBottom.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.treeListRegion)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsRegion)).BeginInit();
            this.SuspendLayout();
            // 
            // palBottom
            // 
            this.palBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.palBottom.Controls.Add(this.btnCancel);
            this.palBottom.Controls.Add(this.btnOK);
            this.palBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.palBottom.Location = new System.Drawing.Point(0, 511);
            this.palBottom.Name = "palBottom";
            this.palBottom.Size = new System.Drawing.Size(646, 57);
            this.palBottom.TabIndex = 0;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(498, 22);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(387, 22);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // treeListRegion
            // 
            this.treeListRegion.Columns.AddRange(new DevExpress.XtraTreeList.Columns.TreeListColumn[] {
            this.colName,
            this.colDescription});
            this.treeListRegion.DataSource = this.bsRegion;
            this.treeListRegion.Dock = System.Windows.Forms.DockStyle.Fill;
            this.treeListRegion.KeyFieldName = "Code";
            this.treeListRegion.Location = new System.Drawing.Point(0, 0);
            this.treeListRegion.Name = "treeListRegion";
            this.treeListRegion.OptionsBehavior.Editable = false;
            this.treeListRegion.OptionsBehavior.EnableFiltering = true;
            this.treeListRegion.ParentFieldName = "ParentCode";
            this.treeListRegion.Size = new System.Drawing.Size(646, 511);
            this.treeListRegion.TabIndex = 1;
            // 
            // colName
            // 
            this.colName.Caption = "Region";
            this.colName.FieldName = "Name";
            this.colName.Name = "colName";
            this.colName.Visible = true;
            this.colName.VisibleIndex = 0;
            this.colName.Width = 262;
            // 
            // colDescription
            // 
            this.colDescription.Caption = "Region (CN)";
            this.colDescription.FieldName = "Description";
            this.colDescription.Name = "colDescription";
            this.colDescription.Visible = true;
            this.colDescription.VisibleIndex = 1;
            this.colDescription.Width = 377;
            // 
            // bsRegion
            // 
            this.bsRegion.DataSource = typeof(PH.LWPM.BO.BaseCode);
            // 
            // SelectRegionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(646, 568);
            this.Controls.Add(this.treeListRegion);
            this.Controls.Add(this.palBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectRegionForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Region";
            this.Shown += new System.EventHandler(this.SelectRegionForm_Shown);
            ((System.ComponentModel.ISupportInitialize)(this.palBottom)).EndInit();
            this.palBottom.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.treeListRegion)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsRegion)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl palBottom;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraTreeList.TreeList treeListRegion;
        private System.Windows.Forms.BindingSource bsRegion;
        private DevExpress.XtraTreeList.Columns.TreeListColumn colName;
        private DevExpress.XtraTreeList.Columns.TreeListColumn colDescription;
    }
}