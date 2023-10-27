namespace PH.LWPM.UI.WF
{
    partial class BaseCodeMataince
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
            this.cbbBaseType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblBaseType = new DevExpress.XtraEditors.LabelControl();
            this.colName_En = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName_Chn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName_Bd = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gvBaseCode = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.cbbBaseType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvBaseCode)).BeginInit();
            this.SuspendLayout();
            // 
            // cbbBaseType
            // 
            this.cbbBaseType.Location = new System.Drawing.Point(156, 51);
            this.cbbBaseType.Name = "cbbBaseType";
            this.cbbBaseType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbBaseType.Size = new System.Drawing.Size(188, 21);
            this.cbbBaseType.TabIndex = 6;
            // 
            // lblBaseType
            // 
            this.lblBaseType.Location = new System.Drawing.Point(84, 54);
            this.lblBaseType.Name = "lblBaseType";
            this.lblBaseType.Size = new System.Drawing.Size(61, 14);
            this.lblBaseType.TabIndex = 7;
            this.lblBaseType.Text = "Data Type:";
            // 
            // colName_En
            // 
            this.colName_En.Caption = "Name(En)";
            this.colName_En.FieldName = "Name";
            this.colName_En.Name = "colName_En";
            this.colName_En.Visible = true;
            this.colName_En.VisibleIndex = 0;
            // 
            // colName_Chn
            // 
            this.colName_Chn.Caption = "Name(Chn)";
            this.colName_Chn.FieldName = "Description";
            this.colName_Chn.Name = "colName_Chn";
            this.colName_Chn.Visible = true;
            this.colName_Chn.VisibleIndex = 1;
            // 
            // colName_Bd
            // 
            this.colName_Bd.Caption = "Name(Bd)";
            this.colName_Bd.FieldName = "NameBd";
            this.colName_Bd.Name = "colName_Bd";
            this.colName_Bd.Visible = true;
            this.colName_Bd.VisibleIndex = 2;
            // 
            // colCode
            // 
            this.colCode.Caption = "Code";
            this.colCode.FieldName = "Code";
            this.colCode.Name = "colCode";
            this.colCode.Visible = true;
            this.colCode.VisibleIndex = 3;
            // 
            // gridControl1
            // 
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 109);
            this.gridControl1.MainView = this.gvBaseCode;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(851, 354);
            this.gridControl1.TabIndex = 8;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvBaseCode});
            // 
            // gvBaseCode
            // 
            this.gvBaseCode.GridControl = this.gridControl1;
            this.gvBaseCode.Name = "gvBaseCode";
            // 
            // BaseCodeMataince
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.lblBaseType);
            this.Controls.Add(this.cbbBaseType);
            this.Name = "BaseCodeMataince";
            this.Size = new System.Drawing.Size(851, 463);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.cbbBaseType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvBaseCode)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit cbbBaseType;
        private DevExpress.XtraEditors.LabelControl lblBaseType;
        private DevExpress.XtraGrid.Columns.GridColumn colName_En;
        private DevExpress.XtraGrid.Columns.GridColumn colName_Chn;
        private DevExpress.XtraGrid.Columns.GridColumn colName_Bd;
        private DevExpress.XtraGrid.Columns.GridColumn colCode;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gvBaseCode;
    }
}
