namespace PH.MobileQC.UI
{
    partial class TraceInfoDetailForm
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.gluLeve = new DevExpress.XtraEditors.LookUpEdit();
            this.lblLeve = new DevExpress.XtraEditors.LabelControl();
            this.edtDefect = new DevExpress.XtraEditors.TextEdit();
            this.lblDefect = new DevExpress.XtraEditors.LabelControl();
            this.btnSel = new System.Windows.Forms.Button();
            this.chkFinish = new DevExpress.XtraEditors.CheckEdit();
            this.lblFinDate = new DevExpress.XtraEditors.LabelControl();
            this.deFinDT = new DevExpress.XtraEditors.DateEdit();
            this.cbbFac = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblFac = new DevExpress.XtraEditors.LabelControl();
            this.lblWorkshop = new DevExpress.XtraEditors.LabelControl();
            this.lblLine = new DevExpress.XtraEditors.LabelControl();
            this.cbbWshop = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbbLine = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gluLeve.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkFinish.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deFinDT.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deFinDT.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbFac.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbWshop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbLine.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.TraceInfo);
            // 
            // gluLeve
            // 
            this.gluLeve.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LevelCode", true));
            this.gluLeve.Location = new System.Drawing.Point(222, 229);
            this.gluLeve.Name = "gluLeve";
            this.gluLeve.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.gluLeve.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("description", "description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.gluLeve.Properties.DisplayMember = "description";
            this.gluLeve.Properties.NullText = "";
            this.gluLeve.Properties.PopupFormMinSize = new System.Drawing.Size(100, 0);
            this.gluLeve.Properties.ValueMember = "datacode";
            this.gluLeve.Size = new System.Drawing.Size(227, 21);
            this.gluLeve.TabIndex = 19;
            // 
            // lblLeve
            // 
            this.lblLeve.Location = new System.Drawing.Point(154, 232);
            this.lblLeve.Name = "lblLeve";
            this.lblLeve.Size = new System.Drawing.Size(48, 14);
            this.lblLeve.TabIndex = 11;
            this.lblLeve.Text = "追蹤程度";
            // 
            // edtDefect
            // 
            this.edtDefect.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DefectList", true));
            this.edtDefect.Enabled = false;
            this.edtDefect.Location = new System.Drawing.Point(222, 182);
            this.edtDefect.Name = "edtDefect";
            this.edtDefect.Size = new System.Drawing.Size(488, 21);
            this.edtDefect.TabIndex = 21;
            // 
            // lblDefect
            // 
            this.lblDefect.Location = new System.Drawing.Point(154, 186);
            this.lblDefect.Name = "lblDefect";
            this.lblDefect.Size = new System.Drawing.Size(48, 14);
            this.lblDefect.TabIndex = 22;
            this.lblDefect.Text = "追蹤暇疵";
            // 
            // btnSel
            // 
            this.btnSel.Location = new System.Drawing.Point(716, 180);
            this.btnSel.Name = "btnSel";
            this.btnSel.Size = new System.Drawing.Size(57, 23);
            this.PlatetoolTipController.SetSuperTip(this.btnSel, null);
            this.btnSel.TabIndex = 23;
            this.btnSel.Text = "選擇";
            this.btnSel.UseVisualStyleBackColor = true;
            this.btnSel.Click += new System.EventHandler(this.btnSel_Click);
            // 
            // chkFinish
            // 
            this.chkFinish.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Finish", true));
            this.chkFinish.Location = new System.Drawing.Point(152, 281);
            this.chkFinish.Name = "chkFinish";
            this.chkFinish.Properties.Caption = "是否己完成";
            this.chkFinish.Size = new System.Drawing.Size(96, 19);
            this.chkFinish.TabIndex = 24;
            this.chkFinish.CheckedChanged += new System.EventHandler(this.chkFinish_CheckedChanged);
            // 
            // lblFinDate
            // 
            this.lblFinDate.Location = new System.Drawing.Point(265, 284);
            this.lblFinDate.Name = "lblFinDate";
            this.lblFinDate.Size = new System.Drawing.Size(48, 14);
            this.lblFinDate.TabIndex = 25;
            this.lblFinDate.Text = "完成日期";
            // 
            // deFinDT
            // 
            this.deFinDT.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "FinishDate", true));
            this.deFinDT.EditValue = null;
            this.deFinDT.Enabled = false;
            this.deFinDT.Location = new System.Drawing.Point(319, 282);
            this.deFinDT.Name = "deFinDT";
            this.deFinDT.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deFinDT.Properties.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.deFinDT.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deFinDT.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deFinDT.Size = new System.Drawing.Size(130, 21);
            this.deFinDT.TabIndex = 26;
            // 
            // cbbFac
            // 
            this.cbbFac.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Factory", true));
            this.cbbFac.EditValue = "SL";
            this.cbbFac.Location = new System.Drawing.Point(222, 60);
            this.cbbFac.Name = "cbbFac";
            this.cbbFac.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbFac.Properties.Items.AddRange(new object[] {
            "SL",
            "GG",
            "RX"});
            this.cbbFac.Size = new System.Drawing.Size(100, 21);
            this.cbbFac.TabIndex = 27;
            this.cbbFac.SelectedValueChanged += new System.EventHandler(this.cbbFac_SelectedValueChanged);
            // 
            // lblFac
            // 
            this.lblFac.Location = new System.Drawing.Point(178, 63);
            this.lblFac.Name = "lblFac";
            this.lblFac.Size = new System.Drawing.Size(24, 14);
            this.lblFac.TabIndex = 28;
            this.lblFac.Text = "工廠";
            // 
            // lblWorkshop
            // 
            this.lblWorkshop.Location = new System.Drawing.Point(178, 101);
            this.lblWorkshop.Name = "lblWorkshop";
            this.lblWorkshop.Size = new System.Drawing.Size(24, 14);
            this.lblWorkshop.TabIndex = 30;
            this.lblWorkshop.Text = "車間";
            // 
            // lblLine
            // 
            this.lblLine.Location = new System.Drawing.Point(166, 139);
            this.lblLine.Name = "lblLine";
            this.lblLine.Size = new System.Drawing.Size(36, 14);
            this.lblLine.TabIndex = 31;
            this.lblLine.Text = "組裝線";
            // 
            // cbbWshop
            // 
            this.cbbWshop.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Workshop", true));
            this.cbbWshop.Location = new System.Drawing.Point(222, 98);
            this.cbbWshop.Name = "cbbWshop";
            this.cbbWshop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbWshop.Size = new System.Drawing.Size(100, 21);
            this.cbbWshop.TabIndex = 33;
            this.cbbWshop.SelectedValueChanged += new System.EventHandler(this.cbbWshop_SelectedValueChanged);
            // 
            // cbbLine
            // 
            this.cbbLine.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Line", true));
            this.cbbLine.Location = new System.Drawing.Point(222, 136);
            this.cbbLine.Name = "cbbLine";
            this.cbbLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbLine.Size = new System.Drawing.Size(100, 21);
            this.cbbLine.TabIndex = 34;
            // 
            // TraceInfoDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cbbLine);
            this.Controls.Add(this.cbbWshop);
            this.Controls.Add(this.lblLine);
            this.Controls.Add(this.lblWorkshop);
            this.Controls.Add(this.lblFac);
            this.Controls.Add(this.cbbFac);
            this.Controls.Add(this.deFinDT);
            this.Controls.Add(this.lblFinDate);
            this.Controls.Add(this.chkFinish);
            this.Controls.Add(this.btnSel);
            this.Controls.Add(this.lblDefect);
            this.Controls.Add(this.edtDefect);
            this.Controls.Add(this.gluLeve);
            this.Controls.Add(this.lblLeve);
            this.Name = "TraceInfoDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.TraceInfoDetailForm_Load);
            this.Controls.SetChildIndex(this.lblLeve, 0);
            this.Controls.SetChildIndex(this.gluLeve, 0);
            this.Controls.SetChildIndex(this.edtDefect, 0);
            this.Controls.SetChildIndex(this.lblDefect, 0);
            this.Controls.SetChildIndex(this.btnSel, 0);
            this.Controls.SetChildIndex(this.chkFinish, 0);
            this.Controls.SetChildIndex(this.lblFinDate, 0);
            this.Controls.SetChildIndex(this.deFinDT, 0);
            this.Controls.SetChildIndex(this.cbbFac, 0);
            this.Controls.SetChildIndex(this.lblFac, 0);
            this.Controls.SetChildIndex(this.lblWorkshop, 0);
            this.Controls.SetChildIndex(this.lblLine, 0);
            this.Controls.SetChildIndex(this.cbbWshop, 0);
            this.Controls.SetChildIndex(this.cbbLine, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gluLeve.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefect.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkFinish.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deFinDT.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deFinDT.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbFac.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbWshop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbLine.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl lblLeve;
        private DevExpress.XtraEditors.LookUpEdit gluLeve;
        private DevExpress.XtraEditors.TextEdit edtDefect;
        private DevExpress.XtraEditors.LabelControl lblDefect;
        private System.Windows.Forms.Button btnSel;
        private DevExpress.XtraEditors.CheckEdit chkFinish;
        private DevExpress.XtraEditors.LabelControl lblFinDate;
        private DevExpress.XtraEditors.DateEdit deFinDT;
        private DevExpress.XtraEditors.ComboBoxEdit cbbFac;
        private DevExpress.XtraEditors.LabelControl lblFac;
        private DevExpress.XtraEditors.LabelControl lblWorkshop;
        private DevExpress.XtraEditors.LabelControl lblLine;
        private DevExpress.XtraEditors.ComboBoxEdit cbbWshop;
        private DevExpress.XtraEditors.ComboBoxEdit cbbLine;
    }
}
