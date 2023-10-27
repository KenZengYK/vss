namespace PH.POPC.UI.NewPO
{
    partial class SelectSizeCup
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.textBox_PHStyleNO = new DevExpress.XtraEditors.TextEdit();
            this.textBox_CustStyleNO = new DevExpress.XtraEditors.TextEdit();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCheckFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustStyleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHSytleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSuppSize = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppCup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppCupDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCustSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustCupDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustSize = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustCup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.panel3 = new System.Windows.Forms.Panel();
            this.editApplytoStyle = new DevExpress.XtraEditors.CheckEdit();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnNone = new DevExpress.XtraEditors.SimpleButton();
            this.btnAll = new DevExpress.XtraEditors.SimpleButton();
            this.comboBoxEdit_Customer = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label3 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textBox_PHStyleNO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textBox_CustStyleNO.Properties)).BeginInit();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editApplytoStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit_Customer.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.textBox_PHStyleNO);
            this.panel1.Controls.Add(this.textBox_CustStyleNO);
            this.panel1.Controls.Add(this.simpleButton1);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(805, 61);
            this.panel1.TabIndex = 0;
            // 
            // textBox_PHStyleNO
            // 
            this.textBox_PHStyleNO.Location = new System.Drawing.Point(322, 16);
            this.textBox_PHStyleNO.Name = "textBox_PHStyleNO";
            this.textBox_PHStyleNO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textBox_PHStyleNO.Size = new System.Drawing.Size(100, 21);
            this.textBox_PHStyleNO.TabIndex = 13;
            // 
            // textBox_CustStyleNO
            // 
            this.textBox_CustStyleNO.Location = new System.Drawing.Point(95, 16);
            this.textBox_CustStyleNO.Name = "textBox_CustStyleNO";
            this.textBox_CustStyleNO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textBox_CustStyleNO.Size = new System.Drawing.Size(127, 21);
            this.textBox_CustStyleNO.TabIndex = 12;
            // 
            // simpleButton1
            // 
            this.simpleButton1.Location = new System.Drawing.Point(513, 12);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(86, 30);
            this.simpleButton1.TabIndex = 11;
            this.simpleButton1.Text = "Search";
            this.simpleButton1.Click += new System.EventHandler(this.button_Query_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(248, 19);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(68, 14);
            this.label2.TabIndex = 3;
            this.label2.Text = "PH StyleNo";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 14);
            this.label1.TabIndex = 2;
            this.label1.Text = "Cust StyleNo";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.gridControl1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 61);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(805, 430);
            this.panel2.TabIndex = 1;
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bindingSource1;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.bandedGridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(805, 430);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1,
            this.gridView2});
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.SupplierCustomerSizeCup);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand2,
            this.gridBand1,
            this.gridBand3});
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colSuppSize,
            this.colSuppCup,
            this.colCustStyleNo,
            this.colCustSize,
            this.colCustCup,
            this.colPHSytleNo,
            this.colCheckFlag,
            this.colCustSizeDesc,
            this.colCustCupDesc,
            this.colSuppSizeDesc,
            this.colSuppCupDesc});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(816, 513, 208, 191);
            this.bandedGridView1.GridControl = this.gridControl1;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Style";
            this.gridBand2.Columns.Add(this.colCheckFlag);
            this.gridBand2.Columns.Add(this.colCustStyleNo);
            this.gridBand2.Columns.Add(this.colPHSytleNo);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 295;
            // 
            // colCheckFlag
            // 
            this.colCheckFlag.Caption = "Select";
            this.colCheckFlag.FieldName = "CheckFlag";
            this.colCheckFlag.Name = "colCheckFlag";
            this.colCheckFlag.Visible = true;
            this.colCheckFlag.Width = 63;
            // 
            // colCustStyleNo
            // 
            this.colCustStyleNo.Caption = "Cust StyleNo";
            this.colCustStyleNo.FieldName = "CustStyleNo";
            this.colCustStyleNo.Name = "colCustStyleNo";
            this.colCustStyleNo.Visible = true;
            this.colCustStyleNo.Width = 117;
            // 
            // colPHSytleNo
            // 
            this.colPHSytleNo.Caption = "PH StyleNo";
            this.colPHSytleNo.FieldName = "PHStyleNo";
            this.colPHSytleNo.Name = "colPHSytleNo";
            this.colPHSytleNo.Visible = true;
            this.colPHSytleNo.Width = 115;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Supplier";
            this.gridBand1.Columns.Add(this.colSuppSize);
            this.gridBand1.Columns.Add(this.colSuppCup);
            this.gridBand1.Columns.Add(this.colSuppSizeDesc);
            this.gridBand1.Columns.Add(this.colSuppCupDesc);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 236;
            // 
            // colSuppSize
            // 
            this.colSuppSize.Caption = "Supp Size";
            this.colSuppSize.FieldName = "SuppSize";
            this.colSuppSize.Name = "colSuppSize";
            this.colSuppSize.Width = 89;
            // 
            // colSuppCup
            // 
            this.colSuppCup.Caption = "Supp Cup";
            this.colSuppCup.FieldName = "SuppCup";
            this.colSuppCup.Name = "colSuppCup";
            this.colSuppCup.Width = 79;
            // 
            // colSuppSizeDesc
            // 
            this.colSuppSizeDesc.Caption = "Supp Size Desc";
            this.colSuppSizeDesc.FieldName = "SuppSizeDesc";
            this.colSuppSizeDesc.Name = "colSuppSizeDesc";
            this.colSuppSizeDesc.Visible = true;
            this.colSuppSizeDesc.Width = 122;
            // 
            // colSuppCupDesc
            // 
            this.colSuppCupDesc.Caption = "Supp Cup Desc";
            this.colSuppCupDesc.FieldName = "SuppCupDesc";
            this.colSuppCupDesc.Name = "colSuppCupDesc";
            this.colSuppCupDesc.Visible = true;
            this.colSuppCupDesc.Width = 114;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Customer";
            this.gridBand3.Columns.Add(this.colCustSizeDesc);
            this.gridBand3.Columns.Add(this.colCustCupDesc);
            this.gridBand3.Columns.Add(this.colCustSize);
            this.gridBand3.Columns.Add(this.colCustCup);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 229;
            // 
            // colCustSizeDesc
            // 
            this.colCustSizeDesc.Caption = "Cust Size Desc";
            this.colCustSizeDesc.FieldName = "CustSizeDesc";
            this.colCustSizeDesc.Name = "colCustSizeDesc";
            this.colCustSizeDesc.Visible = true;
            this.colCustSizeDesc.Width = 118;
            // 
            // colCustCupDesc
            // 
            this.colCustCupDesc.Caption = "Cust Cup Desc";
            this.colCustCupDesc.FieldName = "CustCupDesc";
            this.colCustCupDesc.Name = "colCustCupDesc";
            this.colCustCupDesc.Visible = true;
            this.colCustCupDesc.Width = 111;
            // 
            // colCustSize
            // 
            this.colCustSize.Caption = "Cust Size";
            this.colCustSize.FieldName = "CustSize";
            this.colCustSize.Name = "colCustSize";
            this.colCustSize.Width = 79;
            // 
            // colCustCup
            // 
            this.colCustCup.Caption = "Cust Cup";
            this.colCustCup.FieldName = "CustCup";
            this.colCustCup.Name = "colCustCup";
            this.colCustCup.Width = 80;
            // 
            // gridView2
            // 
            this.gridView2.GridControl = this.gridControl1;
            this.gridView2.Name = "gridView2";
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.editApplytoStyle);
            this.panel3.Controls.Add(this.btnOK);
            this.panel3.Controls.Add(this.btnNone);
            this.panel3.Controls.Add(this.btnAll);
            this.panel3.Controls.Add(this.comboBoxEdit_Customer);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel3.Location = new System.Drawing.Point(0, 491);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(805, 81);
            this.panel3.TabIndex = 2;
            // 
            // editApplytoStyle
            // 
            this.editApplytoStyle.Location = new System.Drawing.Point(216, 33);
            this.editApplytoStyle.Name = "editApplytoStyle";
            this.editApplytoStyle.Properties.Caption = "Apply to Cust style no && PH Style no.";
            this.editApplytoStyle.Size = new System.Drawing.Size(231, 19);
            this.editApplytoStyle.TabIndex = 11;
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(707, 26);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(86, 30);
            this.btnOK.TabIndex = 10;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.button_OK_Click);
            // 
            // btnNone
            // 
            this.btnNone.Location = new System.Drawing.Point(107, 11);
            this.btnNone.Name = "btnNone";
            this.btnNone.Size = new System.Drawing.Size(86, 30);
            this.btnNone.TabIndex = 9;
            this.btnNone.Text = "Select None";
            this.btnNone.Click += new System.EventHandler(this.btnNone_Click);
            // 
            // btnAll
            // 
            this.btnAll.Location = new System.Drawing.Point(15, 11);
            this.btnAll.Name = "btnAll";
            this.btnAll.Size = new System.Drawing.Size(86, 30);
            this.btnAll.TabIndex = 8;
            this.btnAll.Text = "Select All";
            this.btnAll.Click += new System.EventHandler(this.btnAll_Click);
            // 
            // comboBoxEdit_Customer
            // 
            this.comboBoxEdit_Customer.Location = new System.Drawing.Point(592, 32);
            this.comboBoxEdit_Customer.Name = "comboBoxEdit_Customer";
            this.comboBoxEdit_Customer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit_Customer.Properties.Sorted = true;
            this.comboBoxEdit_Customer.Size = new System.Drawing.Size(100, 21);
            this.comboBoxEdit_Customer.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(473, 35);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(113, 14);
            this.label3.TabIndex = 6;
            this.label3.Text = "Apply to Customer:";
            // 
            // SelectSizeCup
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(805, 572);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel3);
            this.Name = "SelectSizeCup";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Size/Cup";
            this.Load += new System.EventHandler(this.SelectSizeCup_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textBox_PHStyleNO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textBox_CustStyleNO.Properties)).EndInit();
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editApplytoStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit_Customer.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit_Customer;
        private DevExpress.XtraEditors.SimpleButton btnNone;
        private DevExpress.XtraEditors.SimpleButton btnAll;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraEditors.TextEdit textBox_CustStyleNO;
        private DevExpress.XtraEditors.TextEdit textBox_PHStyleNO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCheckFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustStyleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHSytleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppSize;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppCup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppSizeDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppCupDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustSizeDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustCupDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustSize;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustCup;
        private DevExpress.XtraEditors.CheckEdit editApplytoStyle;
    }
}