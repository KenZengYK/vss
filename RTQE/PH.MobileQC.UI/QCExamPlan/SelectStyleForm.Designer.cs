namespace PH.MobileQC.UI.QCExamPlan
{
    partial class SelectStyleForm
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
            this.pnlClient = new System.Windows.Forms.Panel();
            this.gcStyle = new DevExpress.XtraGrid.GridControl();
            this.bsStyle = new System.Windows.Forms.BindingSource(this.components);
            this.gridStyle = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCustNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colKHKH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHKH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCPLB = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkShop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.pnlButton = new System.Windows.Forms.Panel();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.chkShowAllStyle = new DevExpress.XtraEditors.CheckEdit();
            this.pnlClient.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcStyle)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsStyle)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridStyle)).BeginInit();
            this.pnlButton.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkShowAllStyle.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlClient
            // 
            this.pnlClient.Controls.Add(this.gcStyle);
            this.pnlClient.Location = new System.Drawing.Point(0, 0);
            this.pnlClient.Name = "pnlClient";
            this.pnlClient.Size = new System.Drawing.Size(663, 396);
            this.pnlClient.TabIndex = 4;
            // 
            // gcStyle
            // 
            this.gcStyle.DataSource = this.bsStyle;
            this.gcStyle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcStyle.EmbeddedNavigator.Name = "";
            this.gcStyle.Location = new System.Drawing.Point(0, 0);
            this.gcStyle.MainView = this.gridStyle;
            this.gcStyle.Name = "gcStyle";
            this.gcStyle.Size = new System.Drawing.Size(663, 396);
            this.gcStyle.TabIndex = 1;
            this.gcStyle.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridStyle});
            // 
            // gridStyle
            // 
            this.gridStyle.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCustNo,
            this.colKHKH,
            this.colPHKH,
            this.colCPLB,
            this.colFactory,
            this.colWorkShop});
            this.gridStyle.GridControl = this.gcStyle;
            this.gridStyle.Name = "gridStyle";
            this.gridStyle.OptionsBehavior.Editable = false;
            this.gridStyle.OptionsView.ShowGroupPanel = false;
            // 
            // colCustNo
            // 
            this.colCustNo.Caption = "Cust Code";
            this.colCustNo.FieldName = "CustNo";
            this.colCustNo.Name = "colCustNo";
            this.colCustNo.Visible = true;
            this.colCustNo.VisibleIndex = 0;
            this.colCustNo.Width = 87;
            // 
            // colKHKH
            // 
            this.colKHKH.Caption = "Cust Style";
            this.colKHKH.FieldName = "KHKH";
            this.colKHKH.Name = "colKHKH";
            this.colKHKH.Visible = true;
            this.colKHKH.VisibleIndex = 1;
            this.colKHKH.Width = 150;
            // 
            // colPHKH
            // 
            this.colPHKH.Caption = "PH Style";
            this.colPHKH.FieldName = "PHKH";
            this.colPHKH.Name = "colPHKH";
            this.colPHKH.Visible = true;
            this.colPHKH.VisibleIndex = 2;
            this.colPHKH.Width = 183;
            // 
            // colCPLB
            // 
            this.colCPLB.Caption = "Style Type";
            this.colCPLB.FieldName = "CPLB";
            this.colCPLB.Name = "colCPLB";
            this.colCPLB.Visible = true;
            this.colCPLB.VisibleIndex = 5;
            this.colCPLB.Width = 115;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Fty";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 3;
            this.colFactory.Width = 54;
            // 
            // colWorkShop
            // 
            this.colWorkShop.Caption = "Ws";
            this.colWorkShop.FieldName = "WorkShop";
            this.colWorkShop.Name = "colWorkShop";
            this.colWorkShop.Visible = true;
            this.colWorkShop.VisibleIndex = 4;
            this.colWorkShop.Width = 53;
            // 
            // pnlButton
            // 
            this.pnlButton.Controls.Add(this.btnCancel);
            this.pnlButton.Controls.Add(this.btnOK);
            this.pnlButton.Controls.Add(this.chkShowAllStyle);
            this.pnlButton.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlButton.Location = new System.Drawing.Point(0, 396);
            this.pnlButton.Name = "pnlButton";
            this.pnlButton.Size = new System.Drawing.Size(686, 54);
            this.pnlButton.TabIndex = 5;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(508, 18);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 6;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(405, 18);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 5;
            this.btnOK.Text = "OK";
            // 
            // chkShowAllStyle
            // 
            this.chkShowAllStyle.Location = new System.Drawing.Point(12, 18);
            this.chkShowAllStyle.Name = "chkShowAllStyle";
            this.chkShowAllStyle.Properties.Caption = "Show All Style";
            this.chkShowAllStyle.Size = new System.Drawing.Size(122, 19);
            this.chkShowAllStyle.TabIndex = 4;
            this.chkShowAllStyle.CheckedChanged += new System.EventHandler(this.chkShowAllStyle_CheckedChanged);
            // 
            // SelectStyleForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(686, 450);
            this.Controls.Add(this.pnlButton);
            this.Controls.Add(this.pnlClient);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectStyleForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Style Form";
            this.pnlClient.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcStyle)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsStyle)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridStyle)).EndInit();
            this.pnlButton.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chkShowAllStyle.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlClient;
        private System.Windows.Forms.Panel pnlButton;
        private DevExpress.XtraGrid.GridControl gcStyle;
        private DevExpress.XtraGrid.Views.Grid.GridView gridStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colKHKH;
        private DevExpress.XtraGrid.Columns.GridColumn colPHKH;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.CheckEdit chkShowAllStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colCPLB;
        private System.Windows.Forms.BindingSource bsStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colCustNo;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkShop;
    }
}