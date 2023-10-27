namespace PH.LWPM.UI.WF
{
    partial class OSChartDetailForm
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.Label uploaderLabel;
            System.Windows.Forms.Label uploadTimeLabel;
            System.Windows.Forms.Label fileNameLabel;
            System.Windows.Forms.Label label1;
            this.txtUploader = new DevExpress.XtraEditors.TextEdit();
            this.txtUploadTime = new DevExpress.XtraEditors.DateEdit();
            this.txtFileName = new DevExpress.XtraEditors.ButtonEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            uploaderLabel = new System.Windows.Forms.Label();
            uploadTimeLabel = new System.Windows.Forms.Label();
            fileNameLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUploader.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUploadTime.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUploadTime.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFileName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.OSChart);
            // 
            // uploaderLabel
            // 
            uploaderLabel.AutoSize = true;
            uploaderLabel.Location = new System.Drawing.Point(75, 92);
            uploaderLabel.Name = "uploaderLabel";
            uploaderLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(uploaderLabel, null);
            uploaderLabel.TabIndex = 4;
            uploaderLabel.Text = "Uploader:";
            // 
            // uploadTimeLabel
            // 
            uploadTimeLabel.AutoSize = true;
            uploadTimeLabel.Location = new System.Drawing.Point(57, 125);
            uploadTimeLabel.Name = "uploadTimeLabel";
            uploadTimeLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(uploadTimeLabel, null);
            uploadTimeLabel.TabIndex = 6;
            uploadTimeLabel.Text = "Upload Time:";
            // 
            // fileNameLabel
            // 
            fileNameLabel.AutoSize = true;
            fileNameLabel.Location = new System.Drawing.Point(69, 157);
            fileNameLabel.Name = "fileNameLabel";
            fileNameLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(fileNameLabel, null);
            fileNameLabel.TabIndex = 8;
            fileNameLabel.Text = "File Name:";
            // 
            // txtUploader
            // 
            this.txtUploader.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Uploader", true));
            this.txtUploader.Location = new System.Drawing.Point(140, 89);
            this.txtUploader.Name = "txtUploader";
            this.txtUploader.Size = new System.Drawing.Size(238, 21);
            this.txtUploader.TabIndex = 5;
            // 
            // txtUploadTime
            // 
            this.txtUploadTime.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UploadTime", true));
            this.txtUploadTime.EditValue = null;
            this.txtUploadTime.Location = new System.Drawing.Point(140, 122);
            this.txtUploadTime.Name = "txtUploadTime";
            this.txtUploadTime.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtUploadTime.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtUploadTime.Size = new System.Drawing.Size(238, 21);
            this.txtUploadTime.TabIndex = 7;
            // 
            // txtFileName
            // 
            this.txtFileName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "FileName", true));
            this.txtFileName.Location = new System.Drawing.Point(140, 154);
            this.txtFileName.Name = "txtFileName";
            this.txtFileName.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtFileName.Size = new System.Drawing.Size(238, 21);
            this.txtFileName.TabIndex = 10;
            this.txtFileName.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.txtFileName_ButtonClick);
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(75, 188);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 11;
            label1.Text = "Remark:";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.textEdit1.Location = new System.Drawing.Point(140, 185);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(238, 21);
            this.textEdit1.TabIndex = 12;
            // 
            // OSChartDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(label1);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.txtFileName);
            this.Controls.Add(fileNameLabel);
            this.Controls.Add(uploadTimeLabel);
            this.Controls.Add(this.txtUploadTime);
            this.Controls.Add(uploaderLabel);
            this.Controls.Add(this.txtUploader);
            this.Name = "OSChartDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.txtUploader, 0);
            this.Controls.SetChildIndex(uploaderLabel, 0);
            this.Controls.SetChildIndex(this.txtUploadTime, 0);
            this.Controls.SetChildIndex(uploadTimeLabel, 0);
            this.Controls.SetChildIndex(fileNameLabel, 0);
            this.Controls.SetChildIndex(this.txtFileName, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(label1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUploader.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUploadTime.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUploadTime.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFileName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit txtUploader;
        private DevExpress.XtraEditors.DateEdit txtUploadTime;
        private DevExpress.XtraEditors.ButtonEdit txtFileName;
        private DevExpress.XtraEditors.TextEdit textEdit1;
    }
}
