namespace PH.HDO.UI.Contract
{
    partial class AttachListForm
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
            this.splitContainerControl1 = new DevExpress.XtraEditors.SplitContainerControl();
            this.gcAttach = new DevExpress.XtraGrid.GridControl();
            this.gvAttach = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcCheck = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcHdo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcGrn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcMaterial = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcGrnQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWeigh = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWeighTtl = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcReciveDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnRefresh = new DevExpress.XtraEditors.SimpleButton();
            this.chkAll = new DevExpress.XtraEditors.CheckEdit();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).BeginInit();
            this.splitContainerControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcAttach)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvAttach)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkAll.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // splitContainerControl1
            // 
            this.splitContainerControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.splitContainerControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerControl1.Horizontal = false;
            this.splitContainerControl1.Location = new System.Drawing.Point(0, 0);
            this.splitContainerControl1.Name = "splitContainerControl1";
            this.splitContainerControl1.Panel1.Controls.Add(this.gcAttach);
            this.splitContainerControl1.Panel1.Text = "Panel1";
            this.splitContainerControl1.Panel2.Controls.Add(this.btnRefresh);
            this.splitContainerControl1.Panel2.Controls.Add(this.chkAll);
            this.splitContainerControl1.Panel2.Controls.Add(this.btnCancel);
            this.splitContainerControl1.Panel2.Controls.Add(this.btnOK);
            this.splitContainerControl1.Panel2.Text = "Panel2";
            this.splitContainerControl1.Size = new System.Drawing.Size(891, 464);
            this.splitContainerControl1.SplitterPosition = 415;
            this.splitContainerControl1.TabIndex = 0;
            this.splitContainerControl1.Text = "splitContainerControl1";
            // 
            // gcAttach
            // 
            this.gcAttach.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcAttach.EmbeddedNavigator.Name = "";
            this.gcAttach.Location = new System.Drawing.Point(0, 0);
            this.gcAttach.MainView = this.gvAttach;
            this.gcAttach.Name = "gcAttach";
            this.gcAttach.Size = new System.Drawing.Size(887, 411);
            this.gcAttach.TabIndex = 0;
            this.gcAttach.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvAttach});
            // 
            // gvAttach
            // 
            this.gvAttach.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcCheck,
            this.gcHdo,
            this.gcGrn,
            this.gcMaterial,
            this.gcPO,
            this.gcGrnQty,
            this.gcWeigh,
            this.gcWeighTtl,
            this.gcReciveDate});
            this.gvAttach.GridControl = this.gcAttach;
            this.gvAttach.Name = "gvAttach";
            // 
            // gcCheck
            // 
            this.gcCheck.Caption = "請選擇";
            this.gcCheck.FieldName = "CheckFlag";
            this.gcCheck.Name = "gcCheck";
            this.gcCheck.UnboundType = DevExpress.Data.UnboundColumnType.Boolean;
            this.gcCheck.Visible = true;
            this.gcCheck.VisibleIndex = 0;
            this.gcCheck.Width = 82;
            // 
            // gcHdo
            // 
            this.gcHdo.Caption = "HDO No.";
            this.gcHdo.FieldName = "HdoNo";
            this.gcHdo.Name = "gcHdo";
            this.gcHdo.Visible = true;
            this.gcHdo.VisibleIndex = 1;
            this.gcHdo.Width = 109;
            // 
            // gcGrn
            // 
            this.gcGrn.Caption = "Grn No.";
            this.gcGrn.FieldName = "GrnNo";
            this.gcGrn.Name = "gcGrn";
            this.gcGrn.OptionsColumn.AllowEdit = false;
            this.gcGrn.Visible = true;
            this.gcGrn.VisibleIndex = 2;
            this.gcGrn.Width = 89;
            // 
            // gcMaterial
            // 
            this.gcMaterial.Caption = "海關物料名";
            this.gcMaterial.FieldName = "MaterialName";
            this.gcMaterial.Name = "gcMaterial";
            this.gcMaterial.OptionsColumn.AllowEdit = false;
            this.gcMaterial.Visible = true;
            this.gcMaterial.VisibleIndex = 3;
            this.gcMaterial.Width = 157;
            // 
            // gcPO
            // 
            this.gcPO.Caption = "采購單號";
            this.gcPO.FieldName = "PO";
            this.gcPO.Name = "gcPO";
            this.gcPO.OptionsColumn.AllowEdit = false;
            this.gcPO.Width = 147;
            // 
            // gcGrnQty
            // 
            this.gcGrnQty.Caption = "收貨數量";
            this.gcGrnQty.FieldName = "GrnQty";
            this.gcGrnQty.Name = "gcGrnQty";
            this.gcGrnQty.OptionsColumn.AllowEdit = false;
            this.gcGrnQty.Visible = true;
            this.gcGrnQty.VisibleIndex = 4;
            this.gcGrnQty.Width = 157;
            // 
            // gcWeigh
            // 
            this.gcWeigh.Caption = "單重";
            this.gcWeigh.FieldName = "WeightHsCode";
            this.gcWeigh.Name = "gcWeigh";
            this.gcWeigh.OptionsColumn.AllowEdit = false;
            this.gcWeigh.Visible = true;
            this.gcWeigh.VisibleIndex = 5;
            this.gcWeigh.Width = 157;
            // 
            // gcWeighTtl
            // 
            this.gcWeighTtl.Caption = "總重";
            this.gcWeighTtl.FieldName = "WeighTotal";
            this.gcWeighTtl.Name = "gcWeighTtl";
            this.gcWeighTtl.OptionsColumn.AllowEdit = false;
            this.gcWeighTtl.Visible = true;
            this.gcWeighTtl.VisibleIndex = 6;
            this.gcWeighTtl.Width = 157;
            // 
            // gcReciveDate
            // 
            this.gcReciveDate.Caption = "收貨日期";
            this.gcReciveDate.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.gcReciveDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcReciveDate.FieldName = "ReceivedDate";
            this.gcReciveDate.Name = "gcReciveDate";
            this.gcReciveDate.OptionsColumn.AllowEdit = false;
            this.gcReciveDate.Visible = true;
            this.gcReciveDate.VisibleIndex = 7;
            this.gcReciveDate.Width = 180;
            // 
            // btnRefresh
            // 
            this.btnRefresh.Location = new System.Drawing.Point(476, 6);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(75, 23);
            this.btnRefresh.TabIndex = 3;
            this.btnRefresh.Text = "Refresh";
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // chkAll
            // 
            this.chkAll.Location = new System.Drawing.Point(643, 10);
            this.chkAll.Name = "chkAll";
            this.chkAll.Properties.Caption = "全選";
            this.chkAll.Size = new System.Drawing.Size(75, 19);
            this.chkAll.TabIndex = 2;
            this.chkAll.CheckedChanged += new System.EventHandler(this.chkAll_CheckedChanged);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(363, 6);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(224, 6);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // AttachListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(891, 464);
            this.Controls.Add(this.splitContainerControl1);
            this.Name = "AttachListForm";
            this.Text = "請選擇";
            this.Load += new System.EventHandler(this.AttachListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).EndInit();
            this.splitContainerControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcAttach)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvAttach)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkAll.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl1;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraGrid.GridControl gcAttach;
        private DevExpress.XtraGrid.Views.Grid.GridView gvAttach;
        private DevExpress.XtraGrid.Columns.GridColumn gcGrn;
        private DevExpress.XtraGrid.Columns.GridColumn gcMaterial;
        private DevExpress.XtraGrid.Columns.GridColumn gcPO;
        private DevExpress.XtraGrid.Columns.GridColumn gcGrnQty;
        private DevExpress.XtraGrid.Columns.GridColumn gcWeigh;
        private DevExpress.XtraGrid.Columns.GridColumn gcWeighTtl;
        private DevExpress.XtraGrid.Columns.GridColumn gcReciveDate;
        private DevExpress.XtraEditors.CheckEdit chkAll;
        private DevExpress.XtraGrid.Columns.GridColumn gcCheck;
        private DevExpress.XtraEditors.SimpleButton btnRefresh;
        private DevExpress.XtraGrid.Columns.GridColumn gcHdo;
    }
}