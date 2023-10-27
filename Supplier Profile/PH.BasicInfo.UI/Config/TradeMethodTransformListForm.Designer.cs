namespace PH.BasicInfo.UI.Config
{
    partial class TradeMethodTransformListForm
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
            this.colCustomerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTradeMethodFrom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTradeMethodTO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsEnable = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTradeMethodFromDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTradeMethodTODesc = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.TradeMethodTransform);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1173, 317);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCustomerCode,
            this.colTradeMethodFrom,
            this.colTradeMethodFromDesc,
            this.colTradeMethodTO,
            this.colTradeMethodTODesc,
            this.colIsEnable,
            this.colRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colCustomerCode
            // 
            this.colCustomerCode.Caption = "CustomerCode";
            this.colCustomerCode.FieldName = "CustomerCode";
            this.colCustomerCode.Name = "colCustomerCode";
            this.colCustomerCode.Visible = true;
            this.colCustomerCode.VisibleIndex = 0;
            this.colCustomerCode.Width = 123;
            // 
            // colTradeMethodFrom
            // 
            this.colTradeMethodFrom.Caption = "TradeMethodFrom";
            this.colTradeMethodFrom.FieldName = "TradeMethodFrom";
            this.colTradeMethodFrom.Name = "colTradeMethodFrom";
            this.colTradeMethodFrom.Visible = true;
            this.colTradeMethodFrom.VisibleIndex = 1;
            this.colTradeMethodFrom.Width = 163;
            // 
            // colTradeMethodTO
            // 
            this.colTradeMethodTO.Caption = "TradeMethodTO";
            this.colTradeMethodTO.FieldName = "TradeMethodTO";
            this.colTradeMethodTO.Name = "colTradeMethodTO";
            this.colTradeMethodTO.Visible = true;
            this.colTradeMethodTO.VisibleIndex = 3;
            this.colTradeMethodTO.Width = 172;
            // 
            // colIsEnable
            // 
            this.colIsEnable.Caption = "IsEnable";
            this.colIsEnable.FieldName = "IsEnable";
            this.colIsEnable.Name = "colIsEnable";
            this.colIsEnable.Visible = true;
            this.colIsEnable.VisibleIndex = 5;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 6;
            this.colRemark.Width = 345;
            // 
            // colTradeMethodFromDesc
            // 
            this.colTradeMethodFromDesc.Caption = "TradeMethodFromDesc";
            this.colTradeMethodFromDesc.FieldName = "TradeMethodFromDesc";
            this.colTradeMethodFromDesc.Name = "colTradeMethodFromDesc";
            this.colTradeMethodFromDesc.OptionsColumn.AllowEdit = false;
            this.colTradeMethodFromDesc.Visible = true;
            this.colTradeMethodFromDesc.VisibleIndex = 2;
            this.colTradeMethodFromDesc.Width = 162;
            // 
            // colTradeMethodTODesc
            // 
            this.colTradeMethodTODesc.Caption = "TradeMethodTODesc";
            this.colTradeMethodTODesc.FieldName = "TradeMethodTODesc";
            this.colTradeMethodTODesc.Name = "colTradeMethodTODesc";
            this.colTradeMethodTODesc.OptionsColumn.AllowEdit = false;
            this.colTradeMethodTODesc.Visible = true;
            this.colTradeMethodTODesc.VisibleIndex = 4;
            this.colTradeMethodTODesc.Width = 162;
            // 
            // TradeMethodTransformListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TradeMethodTransformListForm";
            this.Size = new System.Drawing.Size(1173, 344);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCustomerCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTradeMethodFrom;
        private DevExpress.XtraGrid.Columns.GridColumn colTradeMethodTO;
        private DevExpress.XtraGrid.Columns.GridColumn colIsEnable;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colTradeMethodFromDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colTradeMethodTODesc;
    }
}
