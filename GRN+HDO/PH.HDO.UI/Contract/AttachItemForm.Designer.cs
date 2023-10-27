namespace PH.HDO.UI.Contract
{
    partial class AttachItemForm
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
            this.gcGrn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcMaterial = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWeigh = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcGrnQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWeighTtl = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcReciveDate = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(955, 275);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcGrn,
            this.gcMaterial,
            this.gcPO,
            this.gcGrnQty,
            this.gcWeigh,
            this.gcWeighTtl,
            this.gcReciveDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcGrn
            // 
            this.gcGrn.Caption = "Grn No.";
            this.gcGrn.FieldName = "GrnNo";
            this.gcGrn.Name = "gcGrn";
            this.gcGrn.Visible = true;
            this.gcGrn.VisibleIndex = 0;
            this.gcGrn.Width = 95;
            // 
            // gcMaterial
            // 
            this.gcMaterial.Caption = "海關物料名";
            this.gcMaterial.FieldName = "MaterialName";
            this.gcMaterial.Name = "gcMaterial";
            this.gcMaterial.Visible = true;
            this.gcMaterial.VisibleIndex = 1;
            this.gcMaterial.Width = 332;
            // 
            // gcPO
            // 
            this.gcPO.Caption = "采購單號";
            this.gcPO.FieldName = "PO";
            this.gcPO.Name = "gcPO";
            this.gcPO.Visible = true;
            this.gcPO.VisibleIndex = 2;
            this.gcPO.Width = 95;
            // 
            // gcWeigh
            // 
            this.gcWeigh.Caption = "單重";
            this.gcWeigh.FieldName = "WeightHsCode";
            this.gcWeigh.Name = "gcWeigh";
            this.gcWeigh.Visible = true;
            this.gcWeigh.VisibleIndex = 4;
            this.gcWeigh.Width = 110;
            // 
            // gcGrnQty
            // 
            this.gcGrnQty.Caption = "收貨數量";
            this.gcGrnQty.FieldName = "GrnQty";
            this.gcGrnQty.Name = "gcGrnQty";
            this.gcGrnQty.Visible = true;
            this.gcGrnQty.VisibleIndex = 3;
            // 
            // gcWeighTtl
            // 
            this.gcWeighTtl.Caption = "總重";
            this.gcWeighTtl.Name = "gcWeighTtl";
            this.gcWeighTtl.Visible = true;
            this.gcWeighTtl.VisibleIndex = 5;
            this.gcWeighTtl.Width = 153;
            // 
            // gcReciveDate
            // 
            this.gcReciveDate.Caption = "收貨日期";
            this.gcReciveDate.FieldName = "ReceivedDate";
            this.gcReciveDate.Name = "gcReciveDate";
            this.gcReciveDate.Visible = true;
            this.gcReciveDate.VisibleIndex = 6;
            // 
            // AttachItemForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "AttachItemForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcGrn;
        private DevExpress.XtraGrid.Columns.GridColumn gcMaterial;
        private DevExpress.XtraGrid.Columns.GridColumn gcPO;
        private DevExpress.XtraGrid.Columns.GridColumn gcWeigh;
        private DevExpress.XtraGrid.Columns.GridColumn gcGrnQty;
        private DevExpress.XtraGrid.Columns.GridColumn gcWeighTtl;
        private DevExpress.XtraGrid.Columns.GridColumn gcReciveDate;
    }
}
