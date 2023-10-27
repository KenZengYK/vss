namespace PH.MR.UI.Report
{
    partial class AnticipantReportAsync
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
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.splitContainer2 = new System.Windows.Forms.SplitContainer();
            this.lstProj = new DevExpress.XtraEditors.ListBoxControl();
            this.gcMRData = new DevExpress.XtraGrid.GridControl();
            this.gvMRData = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.progressBar1 = new System.Windows.Forms.ProgressBar();
            this.btnAdd = new System.Windows.Forms.Button();
            this.btnExecute = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.splitContainer2.Panel1.SuspendLayout();
            this.splitContainer2.Panel2.SuspendLayout();
            this.splitContainer2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.lstProj)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcMRData)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvMRData)).BeginInit();
            this.SuspendLayout();
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(137, 23);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(184, 21);
            this.textEdit1.TabIndex = 0;
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            this.splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.btnCancel);
            this.splitContainer1.Panel1.Controls.Add(this.btnExecute);
            this.splitContainer1.Panel1.Controls.Add(this.btnAdd);
            this.splitContainer1.Panel1.Controls.Add(this.textEdit1);
            this.PlatetoolTipController.SetSuperTip(this.splitContainer1.Panel1, null);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.splitContainer2);
            this.PlatetoolTipController.SetSuperTip(this.splitContainer1.Panel2, null);
            this.splitContainer1.Size = new System.Drawing.Size(907, 440);
            this.splitContainer1.SplitterDistance = 60;
            this.PlatetoolTipController.SetSuperTip(this.splitContainer1, null);
            this.splitContainer1.TabIndex = 1;
            // 
            // splitContainer2
            // 
            this.splitContainer2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer2.Location = new System.Drawing.Point(0, 0);
            this.splitContainer2.Name = "splitContainer2";
            // 
            // splitContainer2.Panel1
            // 
            this.splitContainer2.Panel1.Controls.Add(this.lstProj);
            this.PlatetoolTipController.SetSuperTip(this.splitContainer2.Panel1, null);
            // 
            // splitContainer2.Panel2
            // 
            this.splitContainer2.Panel2.Controls.Add(this.progressBar1);
            this.splitContainer2.Panel2.Controls.Add(this.gcMRData);
            this.PlatetoolTipController.SetSuperTip(this.splitContainer2.Panel2, null);
            this.splitContainer2.Size = new System.Drawing.Size(907, 376);
            this.splitContainer2.SplitterDistance = 176;
            this.PlatetoolTipController.SetSuperTip(this.splitContainer2, null);
            this.splitContainer2.TabIndex = 0;
            // 
            // lstProj
            // 
            this.lstProj.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lstProj.Location = new System.Drawing.Point(0, 0);
            this.lstProj.Name = "lstProj";
            this.lstProj.Size = new System.Drawing.Size(176, 376);
            this.lstProj.TabIndex = 0;
            // 
            // gcMRData
            // 
            this.gcMRData.Dock = System.Windows.Forms.DockStyle.Top;
            this.gcMRData.EmbeddedNavigator.Name = "";
            this.gcMRData.Location = new System.Drawing.Point(0, 0);
            this.gcMRData.MainView = this.gvMRData;
            this.gcMRData.Name = "gcMRData";
            this.gcMRData.Size = new System.Drawing.Size(727, 333);
            this.gcMRData.TabIndex = 0;
            this.gcMRData.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvMRData});
            // 
            // gvMRData
            // 
            this.gvMRData.GridControl = this.gcMRData;
            this.gvMRData.Name = "gvMRData";
            // 
            // progressBar1
            // 
            this.progressBar1.Location = new System.Drawing.Point(22, 340);
            this.progressBar1.Name = "progressBar1";
            this.progressBar1.Size = new System.Drawing.Size(689, 23);
            this.PlatetoolTipController.SetSuperTip(this.progressBar1, null);
            this.progressBar1.TabIndex = 1;
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(335, 20);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(86, 23);
            this.PlatetoolTipController.SetSuperTip(this.btnAdd, null);
            this.btnAdd.TabIndex = 1;
            this.btnAdd.Text = "Add To List";
            this.btnAdd.UseVisualStyleBackColor = true;
            // 
            // btnExecute
            // 
            this.btnExecute.Location = new System.Drawing.Point(426, 21);
            this.btnExecute.Name = "btnExecute";
            this.btnExecute.Size = new System.Drawing.Size(57, 23);
            this.PlatetoolTipController.SetSuperTip(this.btnExecute, null);
            this.btnExecute.TabIndex = 2;
            this.btnExecute.Text = "Execute";
            this.btnExecute.UseVisualStyleBackColor = true;
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(489, 21);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(66, 23);
            this.PlatetoolTipController.SetSuperTip(this.btnCancel, null);
            this.btnCancel.TabIndex = 3;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            // 
            // AnticipantReportAsync
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.splitContainer1);
            this.Name = "AnticipantReportAsync";
            this.Size = new System.Drawing.Size(907, 440);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.ResumeLayout(false);
            this.splitContainer2.Panel1.ResumeLayout(false);
            this.splitContainer2.Panel2.ResumeLayout(false);
            this.splitContainer2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.lstProj)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcMRData)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvMRData)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit1;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.SplitContainer splitContainer2;
        private DevExpress.XtraEditors.ListBoxControl lstProj;
        private DevExpress.XtraGrid.GridControl gcMRData;
        private DevExpress.XtraGrid.Views.Grid.GridView gvMRData;
        private System.Windows.Forms.ProgressBar progressBar1;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnExecute;
        private System.Windows.Forms.Button btnAdd;
    }
}
