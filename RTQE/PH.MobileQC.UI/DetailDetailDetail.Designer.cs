namespace PH.MobileQC.UI
{
    partial class DetailDetailDetail
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
            System.Windows.Forms.Label problemLabel;
            System.Windows.Forms.Label causeLabel;
            System.Windows.Forms.Label defectQtyLabel;
            System.Windows.Forms.Label isFindAtSameTimeLabel;
            System.Windows.Forms.Label w_procedureLabel;
            System.Windows.Forms.Label workerLabel;
            System.Windows.Forms.Label productSeqLabel;
            System.Windows.Forms.Label defectCodeLabel;
            this.edtProblem = new DevExpress.XtraEditors.LookUpEdit();
            this.edtCause = new DevExpress.XtraEditors.LookUpEdit();
            this.defectQtySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.isFindAtSameTimeCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.edtW_procedure = new DevExpress.XtraEditors.LookUpEdit();
            this.edtWorker = new DevExpress.XtraEditors.LookUpEdit();
            this.productSeqImageComboBoxEdit = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.edtDefetct_Code = new DevExpress.XtraEditors.LookUpEdit();
            this.pe = new DevExpress.XtraEditors.PictureEdit();
            problemLabel = new System.Windows.Forms.Label();
            causeLabel = new System.Windows.Forms.Label();
            defectQtyLabel = new System.Windows.Forms.Label();
            isFindAtSameTimeLabel = new System.Windows.Forms.Label();
            w_procedureLabel = new System.Windows.Forms.Label();
            workerLabel = new System.Windows.Forms.Label();
            productSeqLabel = new System.Windows.Forms.Label();
            defectCodeLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProblem.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCause.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.defectQtySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isFindAtSameTimeCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtW_procedure.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWorker.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.productSeqImageComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefetct_Code.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pe.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_Detail_Detail);
            this.BindingSource.CurrentChanged += new System.EventHandler(this.BindingSource_CurrentChanged);
            // 
            // problemLabel
            // 
            problemLabel.AutoSize = true;
            problemLabel.Location = new System.Drawing.Point(208, 203);
            problemLabel.Name = "problemLabel";
            problemLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(problemLabel, null);
            problemLabel.TabIndex = 6;
            problemLabel.Text = "Problem:";
            // 
            // causeLabel
            // 
            causeLabel.AutoSize = true;
            causeLabel.Location = new System.Drawing.Point(220, 239);
            causeLabel.Name = "causeLabel";
            causeLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(causeLabel, null);
            causeLabel.TabIndex = 8;
            causeLabel.Text = "Cause:";
            // 
            // defectQtyLabel
            // 
            defectQtyLabel.AutoSize = true;
            defectQtyLabel.Location = new System.Drawing.Point(190, 275);
            defectQtyLabel.Name = "defectQtyLabel";
            defectQtyLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(defectQtyLabel, null);
            defectQtyLabel.TabIndex = 10;
            defectQtyLabel.Text = "Defect Qty:";
            // 
            // isFindAtSameTimeLabel
            // 
            isFindAtSameTimeLabel.AutoSize = true;
            isFindAtSameTimeLabel.Location = new System.Drawing.Point(128, 309);
            isFindAtSameTimeLabel.Name = "isFindAtSameTimeLabel";
            isFindAtSameTimeLabel.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(isFindAtSameTimeLabel, null);
            isFindAtSameTimeLabel.TabIndex = 12;
            isFindAtSameTimeLabel.Text = "Is Find At Same Time:";
            // 
            // w_procedureLabel
            // 
            w_procedureLabel.AutoSize = true;
            w_procedureLabel.Location = new System.Drawing.Point(184, 93);
            w_procedureLabel.Name = "w_procedureLabel";
            w_procedureLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(w_procedureLabel, null);
            w_procedureLabel.TabIndex = 14;
            w_procedureLabel.Text = "W procedure:";
            // 
            // workerLabel
            // 
            workerLabel.AutoSize = true;
            workerLabel.Location = new System.Drawing.Point(214, 127);
            workerLabel.Name = "workerLabel";
            workerLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(workerLabel, null);
            workerLabel.TabIndex = 16;
            workerLabel.Text = "Worker:";
            // 
            // productSeqLabel
            // 
            productSeqLabel.AutoSize = true;
            productSeqLabel.Location = new System.Drawing.Point(184, 61);
            productSeqLabel.Name = "productSeqLabel";
            productSeqLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(productSeqLabel, null);
            productSeqLabel.TabIndex = 17;
            productSeqLabel.Text = "Product Seq:";
            // 
            // defectCodeLabel
            // 
            defectCodeLabel.AutoSize = true;
            defectCodeLabel.Location = new System.Drawing.Point(184, 163);
            defectCodeLabel.Name = "defectCodeLabel";
            defectCodeLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(defectCodeLabel, null);
            defectCodeLabel.TabIndex = 18;
            defectCodeLabel.Text = "Defect Code:";
            // 
            // edtProblem
            // 
            this.edtProblem.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Problem", true));
            this.edtProblem.Location = new System.Drawing.Point(267, 200);
            this.edtProblem.Name = "edtProblem";
            this.edtProblem.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtProblem.Properties.NullText = "";
            this.edtProblem.Properties.PopupWidth = 800;
            this.edtProblem.Size = new System.Drawing.Size(232, 21);
            this.edtProblem.TabIndex = 7;
            // 
            // edtCause
            // 
            this.edtCause.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Cause", true));
            this.edtCause.Location = new System.Drawing.Point(267, 236);
            this.edtCause.Name = "edtCause";
            this.edtCause.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtCause.Properties.NullText = "";
            this.edtCause.Properties.PopupWidth = 800;
            this.edtCause.Size = new System.Drawing.Size(232, 21);
            this.edtCause.TabIndex = 9;
            // 
            // defectQtySpinEdit
            // 
            this.defectQtySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DefectQty", true));
            this.defectQtySpinEdit.EditValue = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.defectQtySpinEdit.Location = new System.Drawing.Point(267, 272);
            this.defectQtySpinEdit.Name = "defectQtySpinEdit";
            this.defectQtySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.defectQtySpinEdit.Size = new System.Drawing.Size(232, 21);
            this.defectQtySpinEdit.TabIndex = 11;
            // 
            // isFindAtSameTimeCheckEdit
            // 
            this.isFindAtSameTimeCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsFindAtSameTime", true));
            this.isFindAtSameTimeCheckEdit.Location = new System.Drawing.Point(265, 306);
            this.isFindAtSameTimeCheckEdit.Name = "isFindAtSameTimeCheckEdit";
            this.isFindAtSameTimeCheckEdit.Properties.Caption = "";
            this.isFindAtSameTimeCheckEdit.Properties.ReadOnly = true;
            this.isFindAtSameTimeCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isFindAtSameTimeCheckEdit.TabIndex = 13;
            // 
            // edtW_procedure
            // 
            this.edtW_procedure.AllowDrop = true;
            this.edtW_procedure.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "W_procedure", true));
            this.edtW_procedure.Location = new System.Drawing.Point(267, 90);
            this.edtW_procedure.Name = "edtW_procedure";
            this.edtW_procedure.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtW_procedure.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("GXH", "Serial", 35, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Center),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("GXDH", "OPTCode", 80),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EGXM", "OperName(en)", 120, DevExpress.Utils.FormatType.None, "", false, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("GXM", "OperName(ch)", 120, DevExpress.Utils.FormatType.None, "", false, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("TGXM", "OperName(th)", 120, DevExpress.Utils.FormatType.None, "", false, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Yzjb", "S.P.I", 60),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Zkcc", "Seam Allowance", 60),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Mx", "Thread", 60)});
            this.edtW_procedure.Properties.NullText = "";
            this.edtW_procedure.Properties.PopupWidth = 800;
            this.edtW_procedure.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtW_procedure.Size = new System.Drawing.Size(232, 21);
            this.edtW_procedure.TabIndex = 15;
            this.edtW_procedure.EditValueChanged += new System.EventHandler(this.edtW_procedure_EditValueChanged);
            this.edtW_procedure.ProcessNewValue += new DevExpress.XtraEditors.Controls.ProcessNewValueEventHandler(this.edtW_procedure_ProcessNewValue);
            // 
            // edtWorker
            // 
            this.edtWorker.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Worker", true));
            this.edtWorker.Location = new System.Drawing.Point(267, 124);
            this.edtWorker.Name = "edtWorker";
            this.edtWorker.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtWorker.Properties.NullText = "";
            this.edtWorker.Properties.PopupWidth = 800;
            this.edtWorker.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtWorker.Size = new System.Drawing.Size(232, 21);
            this.edtWorker.TabIndex = 17;
            this.edtWorker.ProcessNewValue += new DevExpress.XtraEditors.Controls.ProcessNewValueEventHandler(this.edtWorker_ProcessNewValue);
            // 
            // productSeqImageComboBoxEdit
            // 
            this.productSeqImageComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ProductSeq", true));
            this.productSeqImageComboBoxEdit.Location = new System.Drawing.Point(267, 58);
            this.productSeqImageComboBoxEdit.Name = "productSeqImageComboBoxEdit";
            this.productSeqImageComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.productSeqImageComboBoxEdit.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("1", 1, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("2", 2, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("3", 3, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("4", 4, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("5", 5, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("6", 6, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("7", 7, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("8", 8, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("9", 9, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("10", 10, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("11", 11, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("12", 12, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("13", 13, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("14", 14, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("15", 15, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("16", 16, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("17", 17, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("18", 18, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("19", 19, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("20", 20, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("21", 21, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("22", 22, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("23", 23, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("24", 24, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("25", 25, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("26", 26, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("27", 27, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("28", 28, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("29", 29, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("30", 30, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("31", 31, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("32", 32, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("33", 33, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("34", 34, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("35", 35, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("36", 36, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("37", 37, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("38", 38, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("39", 39, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("40", 40, -1)});
            this.productSeqImageComboBoxEdit.Size = new System.Drawing.Size(232, 21);
            this.productSeqImageComboBoxEdit.TabIndex = 18;
            // 
            // edtDefetct_Code
            // 
            this.edtDefetct_Code.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DefectCode", true));
            this.edtDefetct_Code.Location = new System.Drawing.Point(267, 160);
            this.edtDefetct_Code.Name = "edtDefetct_Code";
            this.edtDefetct_Code.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtDefetct_Code.Properties.NullText = "";
            this.edtDefetct_Code.Properties.PopupWidth = 800;
            this.edtDefetct_Code.Size = new System.Drawing.Size(232, 21);
            this.edtDefetct_Code.TabIndex = 19;
            // 
            // pe
            // 
            this.pe.Location = new System.Drawing.Point(531, 60);
            this.pe.Name = "pe";
            this.pe.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Zoom;
            this.pe.Size = new System.Drawing.Size(244, 233);
            this.pe.TabIndex = 20;
            // 
            // DetailDetailDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.pe);
            this.Controls.Add(defectCodeLabel);
            this.Controls.Add(this.edtDefetct_Code);
            this.Controls.Add(productSeqLabel);
            this.Controls.Add(this.productSeqImageComboBoxEdit);
            this.Controls.Add(workerLabel);
            this.Controls.Add(this.edtWorker);
            this.Controls.Add(w_procedureLabel);
            this.Controls.Add(this.edtW_procedure);
            this.Controls.Add(isFindAtSameTimeLabel);
            this.Controls.Add(this.isFindAtSameTimeCheckEdit);
            this.Controls.Add(defectQtyLabel);
            this.Controls.Add(this.defectQtySpinEdit);
            this.Controls.Add(causeLabel);
            this.Controls.Add(this.edtCause);
            this.Controls.Add(problemLabel);
            this.Controls.Add(this.edtProblem);
            this.Name = "DetailDetailDetail";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.DetailDetailDetail_Load);
            this.Controls.SetChildIndex(this.edtProblem, 0);
            this.Controls.SetChildIndex(problemLabel, 0);
            this.Controls.SetChildIndex(this.edtCause, 0);
            this.Controls.SetChildIndex(causeLabel, 0);
            this.Controls.SetChildIndex(this.defectQtySpinEdit, 0);
            this.Controls.SetChildIndex(defectQtyLabel, 0);
            this.Controls.SetChildIndex(this.isFindAtSameTimeCheckEdit, 0);
            this.Controls.SetChildIndex(isFindAtSameTimeLabel, 0);
            this.Controls.SetChildIndex(this.edtW_procedure, 0);
            this.Controls.SetChildIndex(w_procedureLabel, 0);
            this.Controls.SetChildIndex(this.edtWorker, 0);
            this.Controls.SetChildIndex(workerLabel, 0);
            this.Controls.SetChildIndex(this.productSeqImageComboBoxEdit, 0);
            this.Controls.SetChildIndex(productSeqLabel, 0);
            this.Controls.SetChildIndex(this.edtDefetct_Code, 0);
            this.Controls.SetChildIndex(defectCodeLabel, 0);
            this.Controls.SetChildIndex(this.pe, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProblem.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCause.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.defectQtySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isFindAtSameTimeCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtW_procedure.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWorker.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.productSeqImageComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDefetct_Code.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pe.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LookUpEdit edtProblem;
        private DevExpress.XtraEditors.LookUpEdit edtCause;
        private DevExpress.XtraEditors.SpinEdit defectQtySpinEdit;
        private DevExpress.XtraEditors.CheckEdit isFindAtSameTimeCheckEdit;
        private DevExpress.XtraEditors.LookUpEdit edtW_procedure;
        private DevExpress.XtraEditors.LookUpEdit edtWorker;
        private DevExpress.XtraEditors.ImageComboBoxEdit productSeqImageComboBoxEdit;
        private DevExpress.XtraEditors.LookUpEdit edtDefetct_Code;
        private DevExpress.XtraEditors.PictureEdit pe;
    }
}
