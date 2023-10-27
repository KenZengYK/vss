namespace PH.LWPM.UI.MasterDB
{
    partial class CountryRegionListForm
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
            this.trcolName = new DevExpress.XtraTreeList.Columns.TreeListColumn();
            this.trcolDesc = new DevExpress.XtraTreeList.Columns.TreeListColumn();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.cbChoseTyoe = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BaseTreeList)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbChoseTyoe.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.MaxItemId = 40;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BaseTreeList
            // 
            this.BaseTreeList.Columns.AddRange(new DevExpress.XtraTreeList.Columns.TreeListColumn[] {
            this.trcolName,
            this.trcolDesc});
            this.BaseTreeList.KeyFieldName = "Code";
            this.BaseTreeList.Location = new System.Drawing.Point(0, 89);
            this.BaseTreeList.OptionsBehavior.Editable = false;
            this.BaseTreeList.ParentFieldName = "ParentCode";
            this.BaseTreeList.Size = new System.Drawing.Size(853, 309);
            // 
            // trcolName
            // 
            this.trcolName.Caption = "Region";
            this.trcolName.FieldName = "Name";
            this.trcolName.Name = "trcolName";
            this.trcolName.Visible = true;
            this.trcolName.VisibleIndex = 0;
            // 
            // trcolDesc
            // 
            this.trcolDesc.Caption = "Region (CN)";
            this.trcolDesc.FieldName = "Description";
            this.trcolDesc.Name = "trcolDesc";
            this.trcolDesc.Visible = true;
            this.trcolDesc.VisibleIndex = 1;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.cbChoseTyoe);
            this.panelControl1.Controls.Add(this.labelControl1);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 27);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(853, 62);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 11;
            // 
            // cbChoseTyoe
            // 
            this.cbChoseTyoe.Location = new System.Drawing.Point(315, 21);
            this.cbChoseTyoe.Name = "cbChoseTyoe";
            this.cbChoseTyoe.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbChoseTyoe.Properties.Items.AddRange(new object[] {
            "",
            "1.China",
            "2.Bangladesh"});
            this.cbChoseTyoe.Size = new System.Drawing.Size(153, 21);
            this.cbChoseTyoe.TabIndex = 11;
            this.cbChoseTyoe.SelectedIndexChanged += new System.EventHandler(this.comboBoxEdit1_SelectedIndexChanged);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(193, 24);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(118, 14);
            this.labelControl1.TabIndex = 12;
            this.labelControl1.Text = "Please Choose Type :";
            // 
            // CountryRegionListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelControl1);
            this.Name = "CountryRegionListForm";
            this.Size = new System.Drawing.Size(853, 398);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.BaseTreeList, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BaseTreeList)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbChoseTyoe.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraTreeList.Columns.TreeListColumn trcolName;
        private DevExpress.XtraTreeList.Columns.TreeListColumn trcolDesc;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.ComboBoxEdit cbChoseTyoe;
        private DevExpress.XtraEditors.LabelControl labelControl1;
    }
}