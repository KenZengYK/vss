namespace PH.MIDc.UI 
{
    partial class HSCodeSelectForm
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
            this.gridControl_HSCode = new DevExpress.XtraGrid.GridControl();
            this.bindingSource_HSCode = new System.Windows.Forms.BindingSource(this.components);
            this.gridView_HSCode = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colHSCodeSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colmaterialName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMemo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMidcHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFGType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.lblHSCode = new DevExpress.XtraEditors.LabelControl();
            this.lblSeq = new DevExpress.XtraEditors.LabelControl();
            this.sBtn_OK = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_HSCode)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_HSCode)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_HSCode)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridControl_HSCode
            // 
            this.gridControl_HSCode.DataSource = this.bindingSource_HSCode;
            this.gridControl_HSCode.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl_HSCode.EmbeddedNavigator.Name = "";
            this.gridControl_HSCode.Location = new System.Drawing.Point(0, 0);
            this.gridControl_HSCode.MainView = this.gridView_HSCode;
            this.gridControl_HSCode.Name = "gridControl_HSCode";
            this.gridControl_HSCode.Size = new System.Drawing.Size(908, 412);
            this.gridControl_HSCode.TabIndex = 0;
            this.gridControl_HSCode.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView_HSCode});
            this.gridControl_HSCode.Load += new System.EventHandler(this.gridControl_HSCode_Load); 
            // 
            // bindingSource_HSCode
            // 
            this.bindingSource_HSCode.DataSource = typeof(PH.MIDc.BO.CustomMaterial); 
            // 
            // gridView_HSCode
            // 
            this.gridView_HSCode.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHSCodeSeq,
            this.colCustomNo,
            this.colmaterialName,
            this.colMemo,
            this.colMidcHSCode,
            this.colFGType});
            this.gridView_HSCode.GridControl = this.gridControl_HSCode;
            this.gridView_HSCode.Name = "gridView_HSCode";
            this.gridView_HSCode.OptionsBehavior.Editable = false;
            this.gridView_HSCode.OptionsView.ShowAutoFilterRow = true;
            this.gridView_HSCode.OptionsView.ShowDetailButtons = false;
            this.gridView_HSCode.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridView_HSCode_FocusedRowChanged);
            // 
            // colHSCodeSeq
            // 
            this.colHSCodeSeq.Caption = "HSCodeSeq";
            this.colHSCodeSeq.FieldName = "HSCodeSeq";
            this.colHSCodeSeq.Name = "colHSCodeSeq";
            this.colHSCodeSeq.Visible = true;
            this.colHSCodeSeq.VisibleIndex = 0;
            this.colHSCodeSeq.Width = 90;
            // 
            // colCustomNo
            // 
            this.colCustomNo.Caption = "CustomNo";
            this.colCustomNo.FieldName = "CustomNo";
            this.colCustomNo.Name = "colCustomNo";
            this.colCustomNo.Visible = true;
            this.colCustomNo.VisibleIndex = 1;
            this.colCustomNo.Width = 107;
            // 
            // colmaterialName
            // 
            this.colmaterialName.Caption = "materialName";
            this.colmaterialName.FieldName = "materialName";
            this.colmaterialName.Name = "colmaterialName";
            this.colmaterialName.Visible = true;
            this.colmaterialName.VisibleIndex = 2;
            this.colmaterialName.Width = 241;
            // 
            // colMemo
            // 
            this.colMemo.Caption = "Memo";
            this.colMemo.FieldName = "Memo";
            this.colMemo.Name = "colMemo";
            this.colMemo.Visible = true;
            this.colMemo.VisibleIndex = 3;
            this.colMemo.Width = 207;
            // 
            // colMidcHSCode
            // 
            this.colMidcHSCode.Caption = "MidcHSCode";
            this.colMidcHSCode.FieldName = "MidcHSCode";
            this.colMidcHSCode.Name = "colMidcHSCode";
            this.colMidcHSCode.Visible = true;
            this.colMidcHSCode.VisibleIndex = 4;
            this.colMidcHSCode.Width = 131;
            // 
            // colFGType
            // 
            this.colFGType.Caption = "FGType";
            this.colFGType.FieldName = "FGType";
            this.colFGType.Name = "colFGType";
            this.colFGType.Visible = true;
            this.colFGType.VisibleIndex = 5;
            this.colFGType.Width = 111;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.lblHSCode);
            this.panelControl1.Controls.Add(this.lblSeq);
            this.panelControl1.Controls.Add(this.sBtn_OK);
            this.panelControl1.Controls.Add(this.sBtn_Cancel);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl1.Location = new System.Drawing.Point(0, 412);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(908, 28);
            this.panelControl1.TabIndex = 1;
            // 
            // lblHSCode
            // 
            this.lblHSCode.Location = new System.Drawing.Point(271, 6);
            this.lblHSCode.Name = "lblHSCode";
            this.lblHSCode.Size = new System.Drawing.Size(47, 14);
            this.lblHSCode.TabIndex = 1;
            this.lblHSCode.Text = "HSCode:";
            // 
            // lblSeq
            // 
            this.lblSeq.Location = new System.Drawing.Point(13, 6);
            this.lblSeq.Name = "lblSeq";
            this.lblSeq.Size = new System.Drawing.Size(23, 14);
            this.lblSeq.TabIndex = 1;
            this.lblSeq.Text = "seq:";
            // 
            // sBtn_OK
            // 
            this.sBtn_OK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_OK.Location = new System.Drawing.Point(821, 3);
            this.sBtn_OK.Name = "sBtn_OK";
            this.sBtn_OK.Size = new System.Drawing.Size(75, 23);
            this.sBtn_OK.TabIndex = 0;
            this.sBtn_OK.Text = "Select";
            this.sBtn_OK.Click += new System.EventHandler(this.sBtn_OK_Click);
            // 
            // sBtn_Cancel
            // 
            this.sBtn_Cancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_Cancel.Location = new System.Drawing.Point(740, 3);
            this.sBtn_Cancel.Name = "sBtn_Cancel";
            this.sBtn_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBtn_Cancel.TabIndex = 0;
            this.sBtn_Cancel.Text = "Cancel";
            this.sBtn_Cancel.Click += new System.EventHandler(this.sBtn_Cancel_Click);
            // 
            // HSCodeSelectForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(908, 440);
            this.Controls.Add(this.gridControl_HSCode);
            this.Controls.Add(this.panelControl1);
            this.Name = "HSCodeSelectForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "HSCodeSelectForm";
            this.Load += new System.EventHandler(this.HSCodeSelectForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl_HSCode)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource_HSCode)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView_HSCode)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl_HSCode;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView_HSCode;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton sBtn_OK;
        private DevExpress.XtraEditors.SimpleButton sBtn_Cancel;
        private System.Windows.Forms.BindingSource bindingSource_HSCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCodeSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomNo;
        private DevExpress.XtraGrid.Columns.GridColumn colmaterialName;
        private DevExpress.XtraGrid.Columns.GridColumn colMemo;
        private DevExpress.XtraGrid.Columns.GridColumn colMidcHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn colFGType;
        private DevExpress.XtraEditors.LabelControl lblHSCode;
        private DevExpress.XtraEditors.LabelControl lblSeq;
    }
}