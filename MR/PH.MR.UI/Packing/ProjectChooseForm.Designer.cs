namespace PH.MR.UI.Packing
{
    partial class ProjectChooseForm
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
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.sBtn_Select = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.splitContainerControl1 = new DevExpress.XtraEditors.SplitContainerControl();
            this.gridControl_Project = new DevExpress.XtraGrid.GridControl();
            this.bindingSource_Original = new System.Windows.Forms.BindingSource(this.components);
            this.gridView_Original = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSelected = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSalesOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl5 = new DevExpress.XtraEditors.PanelControl();
            this.lbl_Original = new DevExpress.XtraEditors.LabelControl();
            this.chk_OriginalALL = new DevExpress.XtraEditors.CheckEdit();
            this.gridControl_Chose = new DevExpress.XtraGrid.GridControl();
            this.bindingSource_Choose = new System.Windows.Forms.BindingSource(this.components);
            this.gridView_Chose = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSelected1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl4 = new DevExpress.XtraEditors.PanelControl();
            this.lbl_Chose = new DevExpress.XtraEditors.LabelControl();
            this.chk_ChoseALL = new DevExpress.XtraEditors.CheckEdit();
            this.panelControl3 = new DevExpress.XtraEditors.PanelControl();
            this.sBtn_Remove = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_Add = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).BeginInit();
            this.splitContainerControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_Project)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_Original)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_Original)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl5)).BeginInit();
            this.panelControl5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chk_OriginalALL.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_Chose)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_Choose)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_Chose)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl4)).BeginInit();
            this.panelControl4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chk_ChoseALL.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl3)).BeginInit();
            this.panelControl3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.sBtn_Select);
            this.panelControl1.Controls.Add(this.sBtn_Cancel);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(701, 38);
            this.panelControl1.TabIndex = 0;
            // 
            // sBtn_Select
            // 
            this.sBtn_Select.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_Select.Location = new System.Drawing.Point(621, 5);
            this.sBtn_Select.Name = "sBtn_Select";
            this.sBtn_Select.Size = new System.Drawing.Size(75, 25);
            this.sBtn_Select.TabIndex = 1;
            this.sBtn_Select.Text = "Select";
            this.sBtn_Select.Click += new System.EventHandler(this.sBtn_Select_Click);
            // 
            // sBtn_Cancel
            // 
            this.sBtn_Cancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_Cancel.Location = new System.Drawing.Point(540, 5);
            this.sBtn_Cancel.Name = "sBtn_Cancel";
            this.sBtn_Cancel.Size = new System.Drawing.Size(75, 25);
            this.sBtn_Cancel.TabIndex = 0;
            this.sBtn_Cancel.Text = "Cancel";
            this.sBtn_Cancel.Click += new System.EventHandler(this.sBtn_Cancel_Click);
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.splitContainerControl1);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl2.Location = new System.Drawing.Point(0, 38);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(701, 425);
            this.panelControl2.TabIndex = 1;
            // 
            // splitContainerControl1
            // 
            this.splitContainerControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.splitContainerControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerControl1.Location = new System.Drawing.Point(2, 2);
            this.splitContainerControl1.Name = "splitContainerControl1";
            this.splitContainerControl1.Panel1.Controls.Add(this.gridControl_Project);
            this.splitContainerControl1.Panel1.Controls.Add(this.panelControl5);
            this.splitContainerControl1.Panel1.Text = "Panel1";
            this.splitContainerControl1.Panel2.Controls.Add(this.gridControl_Chose);
            this.splitContainerControl1.Panel2.Controls.Add(this.panelControl4);
            this.splitContainerControl1.Panel2.Controls.Add(this.panelControl3);
            this.splitContainerControl1.Panel2.Text = "Panel2";
            this.splitContainerControl1.Size = new System.Drawing.Size(697, 421);
            this.splitContainerControl1.SplitterPosition = 329;
            this.splitContainerControl1.TabIndex = 1;
            this.splitContainerControl1.Text = "splitContainerControl1";
            // 
            // gridControl_Project
            // 
            this.gridControl_Project.DataSource = this.bindingSource_Original;
            this.gridControl_Project.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl_Project.EmbeddedNavigator.Name = "";
            this.gridControl_Project.Location = new System.Drawing.Point(0, 27);
            this.gridControl_Project.MainView = this.gridView_Original;
            this.gridControl_Project.Name = "gridControl_Project";
            this.gridControl_Project.Size = new System.Drawing.Size(325, 390);
            this.gridControl_Project.TabIndex = 0;
            this.gridControl_Project.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView_Original});
            // 
            // bindingSource_Original
            // 
            this.bindingSource_Original.DataSource = typeof(PH.MR.UI.Packing.ProjectBO);
            this.bindingSource_Original.ListChanged += new System.ComponentModel.ListChangedEventHandler(this.bindingSource_Original_ListChanged);
            // 
            // gridView_Original
            // 
            this.gridView_Original.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSelected,
            this.colSalesOrder,
            this.colProjectNO});
            this.gridView_Original.GridControl = this.gridControl_Project;
            this.gridView_Original.Name = "gridView_Original";
            this.gridView_Original.OptionsView.ShowAutoFilterRow = true;
            // 
            // colSelected
            // 
            this.colSelected.Caption = "Selected";
            this.colSelected.FieldName = "Selected";
            this.colSelected.Name = "colSelected";
            this.colSelected.Visible = true;
            this.colSelected.VisibleIndex = 0;
            this.colSelected.Width = 67;
            // 
            // colSalesOrder
            // 
            this.colSalesOrder.Caption = "SalesOrder";
            this.colSalesOrder.FieldName = "SalesOrderNO";
            this.colSalesOrder.Name = "colSalesOrder";
            this.colSalesOrder.OptionsColumn.AllowEdit = false;
            this.colSalesOrder.Visible = true;
            this.colSalesOrder.VisibleIndex = 1;
            this.colSalesOrder.Width = 110;
            // 
            // colProjectNO
            // 
            this.colProjectNO.Caption = "ProjectNO";
            this.colProjectNO.FieldName = "ProjectNO";
            this.colProjectNO.Name = "colProjectNO";
            this.colProjectNO.OptionsColumn.AllowEdit = false;
            this.colProjectNO.Visible = true;
            this.colProjectNO.VisibleIndex = 2;
            this.colProjectNO.Width = 118;
            // 
            // panelControl5
            // 
            this.panelControl5.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl5.Controls.Add(this.lbl_Original);
            this.panelControl5.Controls.Add(this.chk_OriginalALL);
            this.panelControl5.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl5.Location = new System.Drawing.Point(0, 0);
            this.panelControl5.Name = "panelControl5";
            this.panelControl5.Size = new System.Drawing.Size(325, 27);
            this.panelControl5.TabIndex = 1;
            // 
            // lbl_Original
            // 
            this.lbl_Original.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lbl_Original.Location = new System.Drawing.Point(246, 7);
            this.lbl_Original.Name = "lbl_Original";
            this.lbl_Original.Size = new System.Drawing.Size(48, 14);
            this.lbl_Original.TabIndex = 1;
            this.lbl_Original.Text = "可選擇：";
            // 
            // chk_OriginalALL
            // 
            this.chk_OriginalALL.Location = new System.Drawing.Point(8, 4);
            this.chk_OriginalALL.Name = "chk_OriginalALL";
            this.chk_OriginalALL.Properties.Caption = "Select ALL";
            this.chk_OriginalALL.Size = new System.Drawing.Size(104, 19);
            this.chk_OriginalALL.TabIndex = 0;
            this.chk_OriginalALL.CheckedChanged += new System.EventHandler(this.chk_OriginalALL_CheckedChanged);
            // 
            // gridControl_Chose
            // 
            this.gridControl_Chose.DataSource = this.bindingSource_Choose;
            this.gridControl_Chose.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl_Chose.EmbeddedNavigator.Name = "";
            this.gridControl_Chose.Location = new System.Drawing.Point(40, 27);
            this.gridControl_Chose.MainView = this.gridView_Chose;
            this.gridControl_Chose.Name = "gridControl_Chose";
            this.gridControl_Chose.Size = new System.Drawing.Size(318, 390);
            this.gridControl_Chose.TabIndex = 1;
            this.gridControl_Chose.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView_Chose});
            // 
            // bindingSource_Choose
            // 
            this.bindingSource_Choose.DataSource = typeof(PH.MR.UI.Packing.ProjectBO);
            this.bindingSource_Choose.ListChanged += new System.ComponentModel.ListChangedEventHandler(this.bindingSource_Choose_ListChanged);
            // 
            // gridView_Chose
            // 
            this.gridView_Chose.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSelected1,
            this.gridColumn1,
            this.gridColumn2});
            this.gridView_Chose.GridControl = this.gridControl_Chose;
            this.gridView_Chose.Name = "gridView_Chose";
            this.gridView_Chose.OptionsView.ShowAutoFilterRow = true;
            // 
            // colSelected1
            // 
            this.colSelected1.Caption = "Selected";
            this.colSelected1.FieldName = "Selected";
            this.colSelected1.Name = "colSelected1";
            this.colSelected1.Visible = true;
            this.colSelected1.VisibleIndex = 0;
            this.colSelected1.Width = 90;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "SalesOrder";
            this.gridColumn1.FieldName = "SalesOrderNO";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 1;
            this.gridColumn1.Width = 128;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "ProjectNO";
            this.gridColumn2.FieldName = "ProjectNO";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.OptionsColumn.AllowEdit = false;
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 2;
            this.gridColumn2.Width = 131;
            // 
            // panelControl4
            // 
            this.panelControl4.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl4.Controls.Add(this.lbl_Chose);
            this.panelControl4.Controls.Add(this.chk_ChoseALL);
            this.panelControl4.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl4.Location = new System.Drawing.Point(40, 0);
            this.panelControl4.Name = "panelControl4";
            this.panelControl4.Size = new System.Drawing.Size(318, 27);
            this.panelControl4.TabIndex = 0;
            // 
            // lbl_Chose
            // 
            this.lbl_Chose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lbl_Chose.Location = new System.Drawing.Point(242, 6);
            this.lbl_Chose.Name = "lbl_Chose";
            this.lbl_Chose.Size = new System.Drawing.Size(48, 14);
            this.lbl_Chose.TabIndex = 2;
            this.lbl_Chose.Text = "可選擇：";
            // 
            // chk_ChoseALL
            // 
            this.chk_ChoseALL.Location = new System.Drawing.Point(6, 4);
            this.chk_ChoseALL.Name = "chk_ChoseALL";
            this.chk_ChoseALL.Properties.Caption = "Select ALL";
            this.chk_ChoseALL.Size = new System.Drawing.Size(116, 19);
            this.chk_ChoseALL.TabIndex = 1;
            this.chk_ChoseALL.CheckedChanged += new System.EventHandler(this.chk_ChoseALL_CheckedChanged);
            // 
            // panelControl3
            // 
            this.panelControl3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl3.Controls.Add(this.sBtn_Remove);
            this.panelControl3.Controls.Add(this.sBtn_Add);
            this.panelControl3.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelControl3.Location = new System.Drawing.Point(0, 0);
            this.panelControl3.Name = "panelControl3";
            this.panelControl3.Size = new System.Drawing.Size(40, 417);
            this.panelControl3.TabIndex = 0;
            // 
            // sBtn_Remove
            // 
            this.sBtn_Remove.Location = new System.Drawing.Point(4, 204);
            this.sBtn_Remove.Name = "sBtn_Remove";
            this.sBtn_Remove.Size = new System.Drawing.Size(28, 37);
            this.sBtn_Remove.TabIndex = 0;
            this.sBtn_Remove.Text = "<<";
            this.sBtn_Remove.Click += new System.EventHandler(this.sBtn_Remove_Click);
            // 
            // sBtn_Add
            // 
            this.sBtn_Add.Location = new System.Drawing.Point(4, 124);
            this.sBtn_Add.Name = "sBtn_Add";
            this.sBtn_Add.Size = new System.Drawing.Size(28, 37);
            this.sBtn_Add.TabIndex = 0;
            this.sBtn_Add.Text = ">>";
            this.sBtn_Add.Click += new System.EventHandler(this.sBtn_Add_Click);
            // 
            // ProjectChooseForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(701, 463);
            this.Controls.Add(this.panelControl2);
            this.Controls.Add(this.panelControl1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "ProjectChooseForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "ProjectChooseForm";
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).EndInit();
            this.splitContainerControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_Project)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_Original)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_Original)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl5)).EndInit();
            this.panelControl5.ResumeLayout(false);
            this.panelControl5.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chk_OriginalALL.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_Chose)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_Choose)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_Chose)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl4)).EndInit();
            this.panelControl4.ResumeLayout(false);
            this.panelControl4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chk_ChoseALL.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl3)).EndInit();
            this.panelControl3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton sBtn_Select;
        private DevExpress.XtraEditors.SimpleButton sBtn_Cancel;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraGrid.GridControl gridControl_Project;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView_Original;
        private System.Windows.Forms.BindingSource bindingSource_Original;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrder;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNO;
        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl1;
        private DevExpress.XtraEditors.PanelControl panelControl5;
        private DevExpress.XtraGrid.GridControl gridControl_Chose;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView_Chose;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraEditors.PanelControl panelControl4;
        private DevExpress.XtraEditors.PanelControl panelControl3;
        private DevExpress.XtraEditors.SimpleButton sBtn_Remove;
        private DevExpress.XtraEditors.SimpleButton sBtn_Add;
        private System.Windows.Forms.BindingSource bindingSource_Choose;
        private DevExpress.XtraGrid.Columns.GridColumn colSelected;
        private DevExpress.XtraEditors.CheckEdit chk_OriginalALL;
        private DevExpress.XtraGrid.Columns.GridColumn colSelected1;
        private DevExpress.XtraEditors.CheckEdit chk_ChoseALL;
        private DevExpress.XtraEditors.LabelControl lbl_Original;
        private DevExpress.XtraEditors.LabelControl lbl_Chose;
    }
}