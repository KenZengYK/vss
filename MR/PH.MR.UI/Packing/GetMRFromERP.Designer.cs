namespace PH.MR.UI.Packing
{
    partial class GetMRFromERP
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
            this.gcCondition = new DevExpress.XtraEditors.GroupControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.tb_PrintCondition = new DevExpress.XtraTab.XtraTabControl();
            this.tPage_ByDate = new DevExpress.XtraTab.XtraTabPage();
            this.dateEdit_From = new DevExpress.XtraEditors.DateEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.dateEdit_TO = new DevExpress.XtraEditors.DateEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.tPage_ByProjectNO = new DevExpress.XtraTab.XtraTabPage();
            this.tEdit_ProjectNO = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.radioGroupPrintCondition = new DevExpress.XtraEditors.RadioGroup();
            this.btnMRGetData = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gcCondition)).BeginInit();
            this.gcCondition.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tb_PrintCondition)).BeginInit();
            this.tb_PrintCondition.SuspendLayout();
            this.tPage_ByDate.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_From.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_From.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_TO.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_TO.Properties)).BeginInit();
            this.tPage_ByProjectNO.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tEdit_ProjectNO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroupPrintCondition.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gcCondition
            // 
            this.gcCondition.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.gcCondition.Controls.Add(this.labelControl4);
            this.gcCondition.Controls.Add(this.tb_PrintCondition);
            this.gcCondition.Controls.Add(this.radioGroupPrintCondition);
            this.gcCondition.Controls.Add(this.btnMRGetData);
            this.gcCondition.Location = new System.Drawing.Point(38, 14);
            this.gcCondition.Name = "gcCondition";
            this.gcCondition.Size = new System.Drawing.Size(389, 380);
            this.PlatetoolTipController.SetSuperTip(this.gcCondition, null);
            this.gcCondition.TabIndex = 31;
            this.gcCondition.Text = "Condition";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(24, 34);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(60, 14);
            this.labelControl4.TabIndex = 25;
            this.labelControl4.Text = "條件類型：";
            // 
            // tb_PrintCondition
            // 
            this.tb_PrintCondition.Location = new System.Drawing.Point(28, 92);
            this.tb_PrintCondition.Name = "tb_PrintCondition";
            this.tb_PrintCondition.SelectedTabPage = this.tPage_ByDate;
            this.tb_PrintCondition.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
            this.tb_PrintCondition.Size = new System.Drawing.Size(335, 158);
            this.tb_PrintCondition.TabIndex = 24;
            this.tb_PrintCondition.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.tPage_ByDate,
            this.tPage_ByProjectNO});
            this.tb_PrintCondition.Text = "xtraTabControl1";
            // 
            // tPage_ByDate
            // 
            this.tPage_ByDate.Controls.Add(this.dateEdit_From);
            this.tPage_ByDate.Controls.Add(this.labelControl1);
            this.tPage_ByDate.Controls.Add(this.dateEdit_TO);
            this.tPage_ByDate.Controls.Add(this.labelControl2);
            this.tPage_ByDate.Name = "tPage_ByDate";
            this.tPage_ByDate.Size = new System.Drawing.Size(326, 149);
            this.tPage_ByDate.Text = "By Date";
            // 
            // dateEdit_From
            // 
            this.dateEdit_From.EditValue = null;
            this.dateEdit_From.Location = new System.Drawing.Point(99, 23);
            this.dateEdit_From.Name = "dateEdit_From";
            this.dateEdit_From.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_From.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit_From.Size = new System.Drawing.Size(163, 21);
            this.dateEdit_From.TabIndex = 22;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(44, 23);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(31, 14);
            this.labelControl1.TabIndex = 20;
            this.labelControl1.Text = "From:";
            // 
            // dateEdit_TO
            // 
            this.dateEdit_TO.EditValue = null;
            this.dateEdit_TO.Location = new System.Drawing.Point(99, 60);
            this.dateEdit_TO.Name = "dateEdit_TO";
            this.dateEdit_TO.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_TO.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit_TO.Size = new System.Drawing.Size(163, 21);
            this.dateEdit_TO.TabIndex = 21;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(54, 63);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(21, 14);
            this.labelControl2.TabIndex = 19;
            this.labelControl2.Text = "TO:";
            // 
            // tPage_ByProjectNO
            // 
            this.tPage_ByProjectNO.Controls.Add(this.tEdit_ProjectNO);
            this.tPage_ByProjectNO.Controls.Add(this.labelControl3);
            this.tPage_ByProjectNO.Name = "tPage_ByProjectNO";
            this.tPage_ByProjectNO.Size = new System.Drawing.Size(326, 126);
            this.tPage_ByProjectNO.Text = "By Project NO";
            // 
            // tEdit_ProjectNO
            // 
            this.tEdit_ProjectNO.Location = new System.Drawing.Point(107, 40);
            this.tEdit_ProjectNO.Name = "tEdit_ProjectNO";
            this.tEdit_ProjectNO.Size = new System.Drawing.Size(195, 21);
            this.tEdit_ProjectNO.TabIndex = 2;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(33, 40);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(68, 14);
            this.labelControl3.TabIndex = 1;
            this.labelControl3.Text = "Project NO.:";
            // 
            // radioGroupPrintCondition
            // 
            this.radioGroupPrintCondition.EditValue = "ByDate";
            this.radioGroupPrintCondition.Location = new System.Drawing.Point(27, 54);
            this.radioGroupPrintCondition.Name = "radioGroupPrintCondition";
            this.radioGroupPrintCondition.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ByDate", "Get By Date"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("ByProjectNO", "Get By Project NO.")});
            this.radioGroupPrintCondition.Size = new System.Drawing.Size(335, 32);
            this.radioGroupPrintCondition.TabIndex = 23;
            this.radioGroupPrintCondition.SelectedIndexChanged += new System.EventHandler(this.radioGroupPrintCondition_SelectedIndexChanged);
            // 
            // btnMRGetData
            // 
            this.btnMRGetData.ImageIndex = 6;
            this.btnMRGetData.Location = new System.Drawing.Point(138, 281);
            this.btnMRGetData.Name = "btnMRGetData";
            this.btnMRGetData.Size = new System.Drawing.Size(116, 30);
            this.btnMRGetData.TabIndex = 18;
            this.btnMRGetData.Tag = "MR";
            this.btnMRGetData.Text = "Get New Data";
            this.btnMRGetData.Click += new System.EventHandler(this.btnMRGetData_Click);
            // 
            // GetMRFromERP
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.gcCondition);
            this.Name = "GetMRFromERP";
            this.Size = new System.Drawing.Size(515, 434);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.gcCondition)).EndInit();
            this.gcCondition.ResumeLayout(false);
            this.gcCondition.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tb_PrintCondition)).EndInit();
            this.tb_PrintCondition.ResumeLayout(false);
            this.tPage_ByDate.ResumeLayout(false);
            this.tPage_ByDate.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_From.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_From.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_TO.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_TO.Properties)).EndInit();
            this.tPage_ByProjectNO.ResumeLayout(false);
            this.tPage_ByProjectNO.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tEdit_ProjectNO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroupPrintCondition.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.GroupControl gcCondition;
        private DevExpress.XtraEditors.SimpleButton btnMRGetData;
        private DevExpress.XtraEditors.DateEdit dateEdit_TO;
        private DevExpress.XtraEditors.DateEdit dateEdit_From;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraTab.XtraTabControl tb_PrintCondition;
        private DevExpress.XtraTab.XtraTabPage tPage_ByDate;
        private DevExpress.XtraTab.XtraTabPage tPage_ByProjectNO;
        private DevExpress.XtraEditors.RadioGroup radioGroupPrintCondition;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.TextEdit tEdit_ProjectNO;
    }
}
