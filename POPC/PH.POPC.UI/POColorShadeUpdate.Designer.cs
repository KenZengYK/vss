namespace PH.POPC.UI
{
    partial class POColorShadeUpdate
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
            this.components = new System.ComponentModel.Container();
            this.xtraTabControl1 = new DevExpress.XtraTab.XtraTabControl();
            this.xtraTabPage1 = new DevExpress.XtraTab.XtraTabPage();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.pHP10BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCONO10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPCOL10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTYPE10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCUSN10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVNDR10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPSTL10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDESC10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCODE10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUpdateFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.gridControl2 = new DevExpress.XtraGrid.GridControl();
            this.pHP11BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCONO11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colORDN11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLINE11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPCOL11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTYPE11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDESC11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCODE11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUpdateFlag1 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHP10BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.xtraTabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHP11BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Location = new System.Drawing.Point(3, 3);
            this.xtraTabControl1.Name = "xtraTabControl1";
            this.xtraTabControl1.SelectedTabPage = this.xtraTabPage1;
            this.xtraTabControl1.Size = new System.Drawing.Size(645, 334);
            this.xtraTabControl1.TabIndex = 0;
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage1,
            this.xtraTabPage2});
            this.xtraTabControl1.Text = "PHP11";
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.gridControl1);
            this.xtraTabPage1.Name = "xtraTabPage1";
            this.xtraTabPage1.Size = new System.Drawing.Size(589, 306);
            this.xtraTabPage1.Text = "PHP10";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.pHP10BindingSource;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(589, 306);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // pHP10BindingSource
            // 
            this.pHP10BindingSource.DataSource = typeof(PH.POPC.BO.PHP10);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCONO10,
            this.colPCOL10,
            this.colTYPE10,
            this.colCUSN10,
            this.colVNDR10,
            this.colPSTL10,
            this.colDESC10,
            this.colCODE10,
            this.colUpdateFlag});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            // 
            // colCONO10
            // 
            this.colCONO10.Caption = "Company";
            this.colCONO10.FieldName = "CONO10";
            this.colCONO10.Name = "colCONO10";
            this.colCONO10.Visible = true;
            this.colCONO10.VisibleIndex = 0;
            this.colCONO10.Width = 72;
            // 
            // colPCOL10
            // 
            this.colPCOL10.Caption = "Color";
            this.colPCOL10.FieldName = "PCOL10";
            this.colPCOL10.Name = "colPCOL10";
            this.colPCOL10.Visible = true;
            this.colPCOL10.VisibleIndex = 3;
            this.colPCOL10.Width = 67;
            // 
            // colTYPE10
            // 
            this.colTYPE10.Caption = "TYPE10";
            this.colTYPE10.FieldName = "TYPE10";
            this.colTYPE10.Name = "colTYPE10";
            // 
            // colCUSN10
            // 
            this.colCUSN10.Caption = "CUSN10";
            this.colCUSN10.FieldName = "CUSN10";
            this.colCUSN10.Name = "colCUSN10";
            // 
            // colVNDR10
            // 
            this.colVNDR10.Caption = "Supplier";
            this.colVNDR10.FieldName = "VNDR10";
            this.colVNDR10.Name = "colVNDR10";
            this.colVNDR10.Visible = true;
            this.colVNDR10.VisibleIndex = 1;
            this.colVNDR10.Width = 77;
            // 
            // colPSTL10
            // 
            this.colPSTL10.Caption = "ItemCode";
            this.colPSTL10.FieldName = "PSTL10";
            this.colPSTL10.Name = "colPSTL10";
            this.colPSTL10.Visible = true;
            this.colPSTL10.VisibleIndex = 2;
            this.colPSTL10.Width = 77;
            // 
            // colDESC10
            // 
            this.colDESC10.Caption = "ColorShade";
            this.colDESC10.FieldName = "DESC10";
            this.colDESC10.Name = "colDESC10";
            this.colDESC10.Visible = true;
            this.colDESC10.VisibleIndex = 4;
            this.colDESC10.Width = 81;
            // 
            // colCODE10
            // 
            this.colCODE10.Caption = "CODE10";
            this.colCODE10.FieldName = "CODE10";
            this.colCODE10.Name = "colCODE10";
            // 
            // colUpdateFlag
            // 
            this.colUpdateFlag.Caption = "UpdateFlag";
            this.colUpdateFlag.FieldName = "UpdateFlag";
            this.colUpdateFlag.Name = "colUpdateFlag";
            this.colUpdateFlag.Visible = true;
            this.colUpdateFlag.VisibleIndex = 5;
            this.colUpdateFlag.Width = 93;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.gridControl2);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(639, 307);
            this.xtraTabPage2.Text = "PHP11";
            // 
            // gridControl2
            // 
            this.gridControl2.DataSource = this.pHP11BindingSource;
            this.gridControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl2.EmbeddedNavigator.Name = "";
            this.gridControl2.Location = new System.Drawing.Point(0, 0);
            this.gridControl2.MainView = this.gridView2;
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.Size = new System.Drawing.Size(639, 307);
            this.gridControl2.TabIndex = 1;
            this.gridControl2.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView2});
            // 
            // pHP11BindingSource
            // 
            this.pHP11BindingSource.DataSource = typeof(PH.POPC.BO.PHP11);
            // 
            // gridView2
            // 
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCONO11,
            this.colORDN11,
            this.colLINE11,
            this.colPCOL11,
            this.colTYPE11,
            this.colDESC11,
            this.colCODE11,
            this.colUpdateFlag1});
            this.gridView2.GridControl = this.gridControl2;
            this.gridView2.Name = "gridView2";
            // 
            // colCONO11
            // 
            this.colCONO11.Caption = "Company";
            this.colCONO11.FieldName = "CONO11";
            this.colCONO11.Name = "colCONO11";
            this.colCONO11.Visible = true;
            this.colCONO11.VisibleIndex = 0;
            this.colCONO11.Width = 70;
            // 
            // colORDN11
            // 
            this.colORDN11.Caption = "PONO";
            this.colORDN11.FieldName = "ORDN11";
            this.colORDN11.Name = "colORDN11";
            this.colORDN11.Visible = true;
            this.colORDN11.VisibleIndex = 1;
            this.colORDN11.Width = 78;
            // 
            // colLINE11
            // 
            this.colLINE11.Caption = "OrderLine";
            this.colLINE11.FieldName = "LINE11";
            this.colLINE11.Name = "colLINE11";
            this.colLINE11.Visible = true;
            this.colLINE11.VisibleIndex = 2;
            this.colLINE11.Width = 78;
            // 
            // colPCOL11
            // 
            this.colPCOL11.Caption = "Color";
            this.colPCOL11.FieldName = "PCOL11";
            this.colPCOL11.Name = "colPCOL11";
            this.colPCOL11.Visible = true;
            this.colPCOL11.VisibleIndex = 3;
            this.colPCOL11.Width = 78;
            // 
            // colTYPE11
            // 
            this.colTYPE11.Caption = "TYPE11";
            this.colTYPE11.FieldName = "TYPE11";
            this.colTYPE11.Name = "colTYPE11";
            // 
            // colDESC11
            // 
            this.colDESC11.Caption = "ColorShade";
            this.colDESC11.FieldName = "DESC11";
            this.colDESC11.Name = "colDESC11";
            this.colDESC11.Visible = true;
            this.colDESC11.VisibleIndex = 4;
            this.colDESC11.Width = 78;
            // 
            // colCODE11
            // 
            this.colCODE11.Caption = "CODE11";
            this.colCODE11.FieldName = "CODE11";
            this.colCODE11.Name = "colCODE11";
            // 
            // colUpdateFlag1
            // 
            this.colUpdateFlag1.Caption = "UpdateFlag";
            this.colUpdateFlag1.FieldName = "UpdateFlag";
            this.colUpdateFlag1.Name = "colUpdateFlag1";
            this.colUpdateFlag1.Visible = true;
            this.colUpdateFlag1.VisibleIndex = 5;
            this.colUpdateFlag1.Width = 85;
            // 
            // POColorShadeUpdate
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.xtraTabControl1);
            this.Name = "POColorShadeUpdate";
            this.Size = new System.Drawing.Size(708, 435);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHP10BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.xtraTabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHP11BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraTab.XtraTabControl xtraTabControl1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage1;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private System.Windows.Forms.BindingSource pHP10BindingSource;
        private DevExpress.XtraGrid.Columns.GridColumn colCONO10;
        private DevExpress.XtraGrid.Columns.GridColumn colPCOL10;
        private DevExpress.XtraGrid.Columns.GridColumn colTYPE10;
        private DevExpress.XtraGrid.Columns.GridColumn colCUSN10;
        private DevExpress.XtraGrid.Columns.GridColumn colVNDR10;
        private DevExpress.XtraGrid.Columns.GridColumn colPSTL10;
        private DevExpress.XtraGrid.Columns.GridColumn colDESC10;
        private DevExpress.XtraGrid.Columns.GridColumn colCODE10;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdateFlag;
        private DevExpress.XtraGrid.GridControl gridControl2;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private System.Windows.Forms.BindingSource pHP11BindingSource;
        private DevExpress.XtraGrid.Columns.GridColumn colCONO11;
        private DevExpress.XtraGrid.Columns.GridColumn colORDN11;
        private DevExpress.XtraGrid.Columns.GridColumn colLINE11;
        private DevExpress.XtraGrid.Columns.GridColumn colPCOL11;
        private DevExpress.XtraGrid.Columns.GridColumn colTYPE11;
        private DevExpress.XtraGrid.Columns.GridColumn colDESC11;
        private DevExpress.XtraGrid.Columns.GridColumn colCODE11;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdateFlag1;

    }
}
