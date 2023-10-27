namespace PH.HDO.UI.ByPiece
{
    partial class WorkTimeBasePriceDetailForm
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
            System.Windows.Forms.Label startDateLabel;
            System.Windows.Forms.Label dueDateLabel;
            System.Windows.Forms.Label priceLabel;
            this.startDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.dueDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.priceSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            startDateLabel = new System.Windows.Forms.Label();
            dueDateLabel = new System.Windows.Forms.Label();
            priceLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.startDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.startDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dueDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dueDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.priceSpinEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.ByPiece_WorkTimeBasePrice);
            // 
            // startDateLabel
            // 
            startDateLabel.AutoSize = true;
            startDateLabel.Location = new System.Drawing.Point(125, 74);
            startDateLabel.Name = "startDateLabel";
            startDateLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(startDateLabel, null);
            startDateLabel.TabIndex = 4;
            startDateLabel.Text = "開始日期 :";
            // 
            // dueDateLabel
            // 
            dueDateLabel.AutoSize = true;
            dueDateLabel.Location = new System.Drawing.Point(125, 126);
            dueDateLabel.Name = "dueDateLabel";
            dueDateLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(dueDateLabel, null);
            dueDateLabel.TabIndex = 6;
            dueDateLabel.Text = "結束日期 :";
            // 
            // priceLabel
            // 
            priceLabel.AutoSize = true;
            priceLabel.Location = new System.Drawing.Point(98, 181);
            priceLabel.Name = "priceLabel";
            priceLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(priceLabel, null);
            priceLabel.TabIndex = 8;
            priceLabel.Text = "補貼單價係數 :";
            // 
            // startDateDateEdit
            // 
            this.startDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "StartDate", true));
            this.startDateDateEdit.EditValue = null;
            this.startDateDateEdit.Location = new System.Drawing.Point(184, 71);
            this.startDateDateEdit.Name = "startDateDateEdit";
            this.startDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.startDateDateEdit.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.startDateDateEdit.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.startDateDateEdit.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.startDateDateEdit.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.startDateDateEdit.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.startDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.startDateDateEdit.Size = new System.Drawing.Size(100, 21);
            this.startDateDateEdit.TabIndex = 5;
            // 
            // dueDateDateEdit
            // 
            this.dueDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DueDate", true));
            this.dueDateDateEdit.EditValue = null;
            this.dueDateDateEdit.Location = new System.Drawing.Point(184, 123);
            this.dueDateDateEdit.Name = "dueDateDateEdit";
            this.dueDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dueDateDateEdit.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.dueDateDateEdit.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dueDateDateEdit.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.dueDateDateEdit.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dueDateDateEdit.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.dueDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dueDateDateEdit.Size = new System.Drawing.Size(100, 21);
            this.dueDateDateEdit.TabIndex = 7;
            // 
            // priceSpinEdit
            // 
            this.priceSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Price", true));
            this.priceSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.priceSpinEdit.Location = new System.Drawing.Point(184, 176);
            this.priceSpinEdit.Name = "priceSpinEdit";
            this.priceSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.priceSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.priceSpinEdit.TabIndex = 9;
            // 
            // WorkTimeBasePriceDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(priceLabel);
            this.Controls.Add(this.priceSpinEdit);
            this.Controls.Add(dueDateLabel);
            this.Controls.Add(this.dueDateDateEdit);
            this.Controls.Add(startDateLabel);
            this.Controls.Add(this.startDateDateEdit);
            this.Name = "WorkTimeBasePriceDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.startDateDateEdit, 0);
            this.Controls.SetChildIndex(startDateLabel, 0);
            this.Controls.SetChildIndex(this.dueDateDateEdit, 0);
            this.Controls.SetChildIndex(dueDateLabel, 0);
            this.Controls.SetChildIndex(this.priceSpinEdit, 0);
            this.Controls.SetChildIndex(priceLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.startDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.startDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dueDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dueDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.priceSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit startDateDateEdit;
        private DevExpress.XtraEditors.DateEdit dueDateDateEdit;
        private DevExpress.XtraEditors.SpinEdit priceSpinEdit;
    }
}
