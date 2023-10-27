namespace PH.POPC.UI.POPC
{
    partial class SelectWOSeqNoForm
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
            this.panelBottom = new System.Windows.Forms.Panel();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.panelClient = new System.Windows.Forms.Panel();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bsChoiceWOSeqNo = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSeqNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactoryStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExftyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelBottom.SuspendLayout();
            this.panelClient.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsChoiceWOSeqNo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelBottom
            // 
            this.panelBottom.Controls.Add(this.btnCancel);
            this.panelBottom.Controls.Add(this.btnOK);
            this.panelBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelBottom.Location = new System.Drawing.Point(0, 480);
            this.panelBottom.Name = "panelBottom";
            this.panelBottom.Size = new System.Drawing.Size(487, 51);
            this.panelBottom.TabIndex = 0;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(368, 14);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(270, 14);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // panelClient
            // 
            this.panelClient.Controls.Add(this.gridControl1);
            this.panelClient.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelClient.Location = new System.Drawing.Point(0, 0);
            this.panelClient.Name = "panelClient";
            this.panelClient.Size = new System.Drawing.Size(487, 480);
            this.panelClient.TabIndex = 1;
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bsChoiceWOSeqNo;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(487, 480);
            this.gridControl1.TabIndex = 1;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSeqNo,
            this.colWO,
            this.colFactoryStartDate,
            this.colExftyDate});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // colSeqNo
            // 
            this.colSeqNo.Caption = "Seq#";
            this.colSeqNo.FieldName = "SeqNo";
            this.colSeqNo.Name = "colSeqNo";
            this.colSeqNo.Visible = true;
            this.colSeqNo.VisibleIndex = 0;
            this.colSeqNo.Width = 91;
            // 
            // colWO
            // 
            this.colWO.Caption = "Chosen WO#";
            this.colWO.FieldName = "WO";
            this.colWO.Name = "colWO";
            this.colWO.Visible = true;
            this.colWO.VisibleIndex = 1;
            this.colWO.Width = 187;
            // 
            // colFactoryStartDate
            // 
            this.colFactoryStartDate.Caption = "FW Start dd";
            this.colFactoryStartDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colFactoryStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFactoryStartDate.FieldName = "FactoryStartDate";
            this.colFactoryStartDate.Name = "colFactoryStartDate";
            this.colFactoryStartDate.Visible = true;
            this.colFactoryStartDate.VisibleIndex = 2;
            this.colFactoryStartDate.Width = 159;
            // 
            // colExftyDate
            // 
            this.colExftyDate.Caption = "Ex-fty dd";
            this.colExftyDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colExftyDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colExftyDate.FieldName = "ExftyDate";
            this.colExftyDate.Name = "colExftyDate";
            this.colExftyDate.Visible = true;
            this.colExftyDate.VisibleIndex = 3;
            this.colExftyDate.Width = 150;
            // 
            // SelectWOSeqNoForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(487, 531);
            this.Controls.Add(this.panelClient);
            this.Controls.Add(this.panelBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectWOSeqNoForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Choice WO Seq#";
            this.panelBottom.ResumeLayout(false);
            this.panelClient.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsChoiceWOSeqNo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelBottom;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.Panel panelClient;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private System.Windows.Forms.BindingSource bsChoiceWOSeqNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSeqNo;
        private DevExpress.XtraGrid.Columns.GridColumn colWO;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn colExftyDate;
    }
}