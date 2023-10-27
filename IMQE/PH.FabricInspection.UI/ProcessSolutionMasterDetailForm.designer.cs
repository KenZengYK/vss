namespace PH.FabricInspection.UI
{
    partial class ProcessSolutionMasterDetailForm
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

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.textEdit4 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.label4 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lable_ItemNo = new System.Windows.Forms.Label();
            this.spreadDefectDetailListForm1 = new PH.FabricInspection.UI.SpreadDefectDetailListForm();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).BeginInit();
            this.headerTitleBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit4.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 113);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.textEdit4);
            this.headerTitleBar.Controls.Add(this.textEdit3);
            this.headerTitleBar.Controls.Add(this.textEdit1);
            this.headerTitleBar.Controls.Add(this.label4);
            this.headerTitleBar.Controls.Add(this.label1);
            this.headerTitleBar.Controls.Add(this.lable_ItemNo);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 25);
            this.headerTitleBar.Size = new System.Drawing.Size(963, 88);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lable_ItemNo, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.label1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.label4, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit3, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit4, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 117);
            this.panelControl1.Size = new System.Drawing.Size(963, 391);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.spreadDefectDetailListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(949, 356);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Location = new System.Drawing.Point(4, 4);
            this.xtraTabControl1.Size = new System.Drawing.Size(955, 383);
            // 
            // textEdit4
            // 
            this.textEdit4.Enabled = false;
            this.textEdit4.Location = new System.Drawing.Point(107, 56);
            this.textEdit4.Name = "textEdit4";
            this.textEdit4.Properties.Appearance.BackColor = System.Drawing.SystemColors.Control;
            this.textEdit4.Properties.Appearance.Options.UseBackColor = true;
            this.textEdit4.Size = new System.Drawing.Size(445, 21);
            this.textEdit4.TabIndex = 35;
            this.textEdit4.Tag = "Item_Desc";
            // 
            // textEdit3
            // 
            this.textEdit3.Enabled = false;
            this.textEdit3.Location = new System.Drawing.Point(107, 28);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Properties.Appearance.BackColor = System.Drawing.SystemColors.Control;
            this.textEdit3.Properties.Appearance.Options.UseBackColor = true;
            this.textEdit3.Size = new System.Drawing.Size(130, 21);
            this.textEdit3.TabIndex = 33;
            this.textEdit3.Tag = "Item_No";
            // 
            // textEdit1
            // 
            this.textEdit1.Enabled = false;
            this.textEdit1.Location = new System.Drawing.Point(422, 28);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.Appearance.BackColor = System.Drawing.SystemColors.Control;
            this.textEdit1.Properties.Appearance.Options.UseBackColor = true;
            this.textEdit1.Size = new System.Drawing.Size(130, 21);
            this.textEdit1.TabIndex = 34;
            this.textEdit1.Tag = "Stock_In_Date";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(18, 60);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(82, 12);
            this.label4.TabIndex = 30;
            this.label4.Text = "Item Description";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(333, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(68, 12);
            this.label1.TabIndex = 31;
            this.label1.Text = "Stock In Date";
            // 
            // lable_ItemNo
            // 
            this.lable_ItemNo.AutoSize = true;
            this.lable_ItemNo.Location = new System.Drawing.Point(18, 31);
            this.lable_ItemNo.Name = "lable_ItemNo";
            this.lable_ItemNo.Size = new System.Drawing.Size(43, 12);
            this.lable_ItemNo.TabIndex = 32;
            this.lable_ItemNo.Text = "Item No";
            // 
            // spreadDefectDetailListForm1
            // 
            this.spreadDefectDetailListForm1.AllowGridEdit = true;
            this.spreadDefectDetailListForm1.AllowKeyPress = true;
            this.spreadDefectDetailListForm1.CurDataMember = "Fabric_Insp_SpreadDefects";
            this.spreadDefectDetailListForm1.DataContext = null;
            this.spreadDefectDetailListForm1.DataSource = null;
            this.spreadDefectDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.spreadDefectDetailListForm1.EditorTypeName = null;
            this.spreadDefectDetailListForm1.FirstForm = null;
            this.spreadDefectDetailListForm1.FormState = null;
            this.spreadDefectDetailListForm1.FormTitle = "PH.FabricInspection.UI.SpreadDefectDetailListForm";
            this.spreadDefectDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.spreadDefectDetailListForm1.Name = "spreadDefectDetailListForm1";
            this.spreadDefectDetailListForm1.NextForm = null;
            this.spreadDefectDetailListForm1.ParentForm = null;
            this.spreadDefectDetailListForm1.PrevForm = null;
            this.spreadDefectDetailListForm1.PrevListForm = null;
            this.spreadDefectDetailListForm1.Size = new System.Drawing.Size(949, 356);
            this.spreadDefectDetailListForm1.TabIndex = 0;
            this.spreadDefectDetailListForm1.TabPage = null;
            // 
            // ProcessSolutionMasterDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "ProcessSolutionMasterDetailForm";
            this.Load += new System.EventHandler(this.ProcessSolutionMasterDetailForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).EndInit();
            this.headerTitleBar.ResumeLayout(false);
            this.headerTitleBar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit4.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit4;
        private DevExpress.XtraEditors.TextEdit textEdit3;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lable_ItemNo;
        private SpreadDefectDetailListForm spreadDefectDetailListForm1;
        //private SpreadDefectDetailListForm spreadDefectDetailListForm1;
    }
}
