namespace PH.MIDc.UI.Config
{
    partial class DeclareForm
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
            this.simpleButton3 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.btnClose = new DevExpress.XtraEditors.SimpleButton();
            this.btnImport = new DevExpress.XtraEditors.SimpleButton();
            this.gridDeclare = new DevExpress.XtraGrid.GridControl();
            this.bindingSource_Declare = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMidcHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCodeSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.coSortId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colElementNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colElementDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsMailMaterial = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStandardUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeclareQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeclarePrice = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridDeclare)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_Declare)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.simpleButton3);
            this.panelControl1.Controls.Add(this.simpleButton2);
            this.panelControl1.Controls.Add(this.simpleButton1);
            this.panelControl1.Controls.Add(this.btnClose);
            this.panelControl1.Controls.Add(this.btnImport);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(0, 305);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(904, 43);
            this.panelControl1.TabIndex = 0;
            // 
            // simpleButton3
            // 
            this.simpleButton3.Location = new System.Drawing.Point(244, 8);
            this.simpleButton3.Name = "simpleButton3";
            this.simpleButton3.Size = new System.Drawing.Size(152, 23);
            this.simpleButton3.TabIndex = 5;
            this.simpleButton3.Text = "處理621710900083";
            this.simpleButton3.Visible = false;
            this.simpleButton3.Click += new System.EventHandler(this.simpleButton3_Click);
            // 
            // simpleButton2
            // 
            this.simpleButton2.Location = new System.Drawing.Point(130, 8);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(108, 23);
            this.simpleButton2.TabIndex = 4;
            this.simpleButton2.Text = "處理000022";
            this.simpleButton2.Visible = false;
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(35, 8);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(75, 23);
            this.simpleButton1.TabIndex = 3;
            this.simpleButton1.Text = "Get All";
            this.simpleButton1.Visible = false;
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // btnClose
            // 
            this.btnClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnClose.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnClose.Location = new System.Drawing.Point(817, 8);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(75, 23);
            this.btnClose.TabIndex = 2;
            this.btnClose.Text = "Save Close";
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // btnImport
            // 
            this.btnImport.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnImport.Location = new System.Drawing.Point(686, 8);
            this.btnImport.Name = "btnImport";
            this.btnImport.Size = new System.Drawing.Size(75, 23);
            this.btnImport.TabIndex = 0;
            this.btnImport.Text = "Import";
            this.btnImport.Click += new System.EventHandler(this.btnImport_Click);
            // 
            // gridDeclare
            // 
            this.gridDeclare.DataSource = this.bindingSource_Declare;
            this.gridDeclare.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridDeclare.EmbeddedNavigator.Name = "";
            this.gridDeclare.Location = new System.Drawing.Point(0, 0);
            this.gridDeclare.MainView = this.gridView1;
            this.gridDeclare.Name = "gridDeclare";
            this.gridDeclare.Size = new System.Drawing.Size(904, 305);
            this.gridDeclare.TabIndex = 1;
            this.gridDeclare.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // bindingSource_Declare
            // 
            this.bindingSource_Declare.DataSource = typeof(PH.MIDc.BO.CustomMaterialElement);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSuppRef,
            this.colMidcHSCode,
            this.colHSCodeSeq,
            this.coSortId,
            this.colElementNo,
            this.colElementDesc,
            this.colRemark,
            this.colIsMailMaterial,
            this.colUnit,
            this.colStandardUnit,
            this.colDeclareQty,
            this.colDeclarePrice});
            this.gridView1.GridControl = this.gridDeclare;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsView.ShowDetailButtons = false;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "SuppRef";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.Width = 73;
            // 
            // colMidcHSCode
            // 
            this.colMidcHSCode.Caption = "MidcHSCode";
            this.colMidcHSCode.FieldName = "MidcHSCode";
            this.colMidcHSCode.Name = "colMidcHSCode";
            this.colMidcHSCode.Width = 80;
            // 
            // colHSCodeSeq
            // 
            this.colHSCodeSeq.Caption = "HSCode Seq";
            this.colHSCodeSeq.FieldName = "HSCodeSeq";
            this.colHSCodeSeq.Name = "colHSCodeSeq";
            this.colHSCodeSeq.Width = 50;
            // 
            // coSortId
            // 
            this.coSortId.Caption = "Sort ID";
            this.coSortId.FieldName = "SortId";
            this.coSortId.Name = "coSortId";
            this.coSortId.Visible = true;
            this.coSortId.VisibleIndex = 0;
            // 
            // colElementNo
            // 
            this.colElementNo.Caption = "Element No.";
            this.colElementNo.FieldName = "ElementNo";
            this.colElementNo.Name = "colElementNo";
            this.colElementNo.Visible = true;
            this.colElementNo.VisibleIndex = 1;
            this.colElementNo.Width = 99;
            // 
            // colElementDesc
            // 
            this.colElementDesc.Caption = "Element Desc";
            this.colElementDesc.FieldName = "ElementDesc";
            this.colElementDesc.Name = "colElementDesc";
            this.colElementDesc.OptionsColumn.ReadOnly = true;
            this.colElementDesc.Visible = true;
            this.colElementDesc.VisibleIndex = 2;
            this.colElementDesc.Width = 151;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 3;
            this.colRemark.Width = 210;
            // 
            // colIsMailMaterial
            // 
            this.colIsMailMaterial.Caption = "是否主料";
            this.colIsMailMaterial.FieldName = "IsMailMaterial";
            this.colIsMailMaterial.Name = "colIsMailMaterial";
            this.colIsMailMaterial.Width = 71;
            // 
            // colUnit
            // 
            this.colUnit.Caption = "計量單位";
            this.colUnit.FieldName = "Unit";
            this.colUnit.Name = "colUnit";
            this.colUnit.Width = 85;
            // 
            // colStandardUnit
            // 
            this.colStandardUnit.Caption = "法定計量單位";
            this.colStandardUnit.FieldName = "StandardUnit";
            this.colStandardUnit.Name = "colStandardUnit";
            this.colStandardUnit.Width = 112;
            // 
            // colDeclareQty
            // 
            this.colDeclareQty.Caption = "申報數量";
            this.colDeclareQty.FieldName = "DeclareQty";
            this.colDeclareQty.Name = "colDeclareQty";
            this.colDeclareQty.Width = 73;
            // 
            // colDeclarePrice
            // 
            this.colDeclarePrice.Caption = "申報單價";
            this.colDeclarePrice.FieldName = "DeclarePrice";
            this.colDeclarePrice.Name = "colDeclarePrice";
            this.colDeclarePrice.Width = 82;
            // 
            // DeclareForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(904, 348);
            this.Controls.Add(this.gridDeclare);
            this.Controls.Add(this.panelControl1);
            this.MinimizeBox = false;
            this.Name = "DeclareForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Custom Declare";
            this.Load += new System.EventHandler(this.DeclareForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridDeclare)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_Declare)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraGrid.GridControl gridDeclare;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraEditors.SimpleButton btnImport;
        private System.Windows.Forms.BindingSource bindingSource_Declare;
        private DevExpress.XtraGrid.Columns.GridColumn colElementDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn colMidcHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCodeSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colElementNo;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colIsMailMaterial;
        private DevExpress.XtraGrid.Columns.GridColumn colUnit;
        private DevExpress.XtraGrid.Columns.GridColumn colStandardUnit;
        private DevExpress.XtraGrid.Columns.GridColumn colDeclareQty;
        private DevExpress.XtraGrid.Columns.GridColumn colDeclarePrice;
        private DevExpress.XtraGrid.Columns.GridColumn coSortId;
        private DevExpress.XtraEditors.SimpleButton btnClose;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private DevExpress.XtraEditors.SimpleButton simpleButton3;
    }
}