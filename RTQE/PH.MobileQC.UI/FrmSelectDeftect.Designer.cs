namespace PH.MobileQC.UI
{
    partial class FrmSelectDeftect
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
            this.gpRecent = new System.Windows.Forms.GroupBox();
            this.btnQuery = new System.Windows.Forms.Button();
            this.lblEnd = new DevExpress.XtraEditors.LabelControl();
            this.deStart = new DevExpress.XtraEditors.DateEdit();
            this.gcDefect = new DevExpress.XtraGrid.GridControl();
            this.gvDefect = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcCheck = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTotal = new DevExpress.XtraGrid.Columns.GridColumn();
            this.lblStart = new DevExpress.XtraEditors.LabelControl();
            this.deEnd = new DevExpress.XtraEditors.DateEdit();
            this.cklDefect = new DevExpress.XtraEditors.CheckedListBoxControl();
            this.lblAllDefect = new DevExpress.XtraEditors.LabelControl();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.lblFinder = new DevExpress.XtraEditors.LabelControl();
            this.edtFindDefect = new DevExpress.XtraEditors.TextEdit();
            this.gpRecent.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cklDefect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFindDefect.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gpRecent
            // 
            this.gpRecent.Controls.Add(this.btnQuery);
            this.gpRecent.Controls.Add(this.lblEnd);
            this.gpRecent.Controls.Add(this.deStart);
            this.gpRecent.Controls.Add(this.gcDefect);
            this.gpRecent.Controls.Add(this.lblStart);
            this.gpRecent.Controls.Add(this.deEnd);
            this.gpRecent.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.gpRecent.Location = new System.Drawing.Point(12, 8);
            this.gpRecent.Name = "gpRecent";
            this.gpRecent.Size = new System.Drawing.Size(456, 307);
            this.gpRecent.TabIndex = 7;
            this.gpRecent.TabStop = false;
            this.gpRecent.Text = "最近常發生暇疵查詢&&選擇";
            // 
            // btnQuery
            // 
            this.btnQuery.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btnQuery.Location = new System.Drawing.Point(379, 27);
            this.btnQuery.Name = "btnQuery";
            this.btnQuery.Size = new System.Drawing.Size(47, 31);
            this.btnQuery.TabIndex = 18;
            this.btnQuery.Text = "查詢";
            this.btnQuery.UseVisualStyleBackColor = true;
            this.btnQuery.Click += new System.EventHandler(this.btnQuery_Click);
            // 
            // lblEnd
            // 
            this.lblEnd.Location = new System.Drawing.Point(199, 34);
            this.lblEnd.Name = "lblEnd";
            this.lblEnd.Size = new System.Drawing.Size(48, 14);
            this.lblEnd.TabIndex = 8;
            this.lblEnd.Text = "結束日期";
            // 
            // deStart
            // 
            this.deStart.EditValue = null;
            this.deStart.Location = new System.Drawing.Point(82, 31);
            this.deStart.Name = "deStart";
            this.deStart.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deStart.Properties.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.deStart.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deStart.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deStart.Size = new System.Drawing.Size(100, 21);
            this.deStart.TabIndex = 4;
            // 
            // gcDefect
            // 
            this.gcDefect.EmbeddedNavigator.Name = "";
            this.gcDefect.Location = new System.Drawing.Point(16, 64);
            this.gcDefect.MainView = this.gvDefect;
            this.gcDefect.Name = "gcDefect";
            this.gcDefect.Size = new System.Drawing.Size(427, 243);
            this.gcDefect.TabIndex = 17;
            this.gcDefect.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvDefect});
            // 
            // gvDefect
            // 
            this.gvDefect.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcCheck,
            this.gcName,
            this.gcTotal});
            this.gvDefect.GridControl = this.gcDefect;
            this.gvDefect.Name = "gvDefect";
            // 
            // gcCheck
            // 
            this.gcCheck.Caption = "選擇";
            this.gcCheck.FieldName = "check";
            this.gcCheck.Name = "gcCheck";
            this.gcCheck.Visible = true;
            this.gcCheck.VisibleIndex = 0;
            this.gcCheck.Width = 49;
            // 
            // gcName
            // 
            this.gcName.Caption = "暇疵名稱";
            this.gcName.FieldName = "defectname";
            this.gcName.Name = "gcName";
            this.gcName.OptionsColumn.AllowEdit = false;
            this.gcName.Visible = true;
            this.gcName.VisibleIndex = 1;
            this.gcName.Width = 134;
            // 
            // gcTotal
            // 
            this.gcTotal.Caption = "最近出現次數";
            this.gcTotal.FieldName = "ttl";
            this.gcTotal.Name = "gcTotal";
            this.gcTotal.OptionsColumn.AllowEdit = false;
            this.gcTotal.Visible = true;
            this.gcTotal.VisibleIndex = 2;
            this.gcTotal.Width = 83;
            // 
            // lblStart
            // 
            this.lblStart.Location = new System.Drawing.Point(16, 34);
            this.lblStart.Name = "lblStart";
            this.lblStart.Size = new System.Drawing.Size(48, 14);
            this.lblStart.TabIndex = 7;
            this.lblStart.Text = "開始日期";
            // 
            // deEnd
            // 
            this.deEnd.EditValue = null;
            this.deEnd.Location = new System.Drawing.Point(265, 31);
            this.deEnd.Name = "deEnd";
            this.deEnd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deEnd.Properties.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.deEnd.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deEnd.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deEnd.Size = new System.Drawing.Size(100, 21);
            this.deEnd.TabIndex = 5;
            // 
            // cklDefect
            // 
            this.cklDefect.Location = new System.Drawing.Point(490, 53);
            this.cklDefect.Name = "cklDefect";
            this.cklDefect.Size = new System.Drawing.Size(187, 262);
            this.cklDefect.TabIndex = 16;
            // 
            // lblAllDefect
            // 
            this.lblAllDefect.Location = new System.Drawing.Point(490, 20);
            this.lblAllDefect.Name = "lblAllDefect";
            this.lblAllDefect.Size = new System.Drawing.Size(94, 14);
            this.lblAllDefect.TabIndex = 17;
            this.lblAllDefect.Text = "常見暇疵(請選擇)";
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.button1.Location = new System.Drawing.Point(256, 350);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(51, 23);
            this.button1.TabIndex = 18;
            this.button1.Text = "確定";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button2.Location = new System.Drawing.Point(327, 350);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(50, 23);
            this.button2.TabIndex = 19;
            this.button2.Text = "取消";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // lblFinder
            // 
            this.lblFinder.Location = new System.Drawing.Point(28, 324);
            this.lblFinder.Name = "lblFinder";
            this.lblFinder.Size = new System.Drawing.Size(96, 14);
            this.lblFinder.TabIndex = 20;
            this.lblFinder.Text = "發現者要求的暇疵";
            // 
            // edtFindDefect
            // 
            this.edtFindDefect.Location = new System.Drawing.Point(144, 321);
            this.edtFindDefect.Name = "edtFindDefect";
            this.edtFindDefect.Size = new System.Drawing.Size(311, 21);
            this.edtFindDefect.TabIndex = 21;
            // 
            // FrmSelectDeftect
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(692, 381);
            this.Controls.Add(this.lblFinder);
            this.Controls.Add(this.edtFindDefect);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.lblAllDefect);
            this.Controls.Add(this.cklDefect);
            this.Controls.Add(this.gpRecent);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmSelectDeftect";
            this.Text = "選擇列表";
            this.gpRecent.ResumeLayout(false);
            this.gpRecent.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deStart.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deEnd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cklDefect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFindDefect.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gpRecent;
        private System.Windows.Forms.Button btnQuery;
        private DevExpress.XtraEditors.LabelControl lblEnd;
        private DevExpress.XtraEditors.DateEdit deStart;
        private DevExpress.XtraGrid.GridControl gcDefect;
        private DevExpress.XtraGrid.Views.Grid.GridView gvDefect;
        private DevExpress.XtraGrid.Columns.GridColumn gcCheck;
        private DevExpress.XtraGrid.Columns.GridColumn gcName;
        private DevExpress.XtraGrid.Columns.GridColumn gcTotal;
        private DevExpress.XtraEditors.LabelControl lblStart;
        private DevExpress.XtraEditors.DateEdit deEnd;
        private DevExpress.XtraEditors.CheckedListBoxControl cklDefect;
        private DevExpress.XtraEditors.LabelControl lblAllDefect;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private DevExpress.XtraEditors.LabelControl lblFinder;
        private DevExpress.XtraEditors.TextEdit edtFindDefect;
    }
}