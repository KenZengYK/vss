namespace PH.HDO.UI.ByPiece
{
    partial class TypeMasterList
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
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colRecId = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTypeId = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTypeName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colKS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPrc_Rev = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSAH_Rev = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReciver = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMprice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSAHM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSAHC = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIssuer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPrice_Ret = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSAH_Ret = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReturner = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colRCPrice_M = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCPrice_C = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCSAH_M = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCSAH_C = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCMan = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.TypeMaster);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1468, 461);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand4,
            this.gridBand5});
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colRecId,
            this.colTypeId,
            this.colTypeName,
            this.colKS,
            this.colPrc_Rev,
            this.colSAH_Rev,
            this.colReciver,
            this.colMprice,
            this.colCPrice,
            this.colSAHM,
            this.colSAHC,
            this.colIssuer,
            this.colPrice_Ret,
            this.colSAH_Ret,
            this.colReturner,
            this.colRemark,
            this.colRCSAH_M,
            this.colRCSAH_C,
            this.colRCMan,
            this.colRCPrice_M,
            this.colRCPrice_C});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // gridBand1
            // 
            this.gridBand1.Columns.Add(this.colRecId);
            this.gridBand1.Columns.Add(this.colTypeId);
            this.gridBand1.Columns.Add(this.colTypeName);
            this.gridBand1.Columns.Add(this.colKS);
            this.gridBand1.Columns.Add(this.colRemark);
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 341;
            // 
            // colRecId
            // 
            this.colRecId.Caption = "記錄ID";
            this.colRecId.FieldName = "TypeMaster_Id";
            this.colRecId.Name = "colRecId";
            this.colRecId.Visible = true;
            this.colRecId.Width = 58;
            // 
            // colTypeId
            // 
            this.colTypeId.Caption = "類型編碼";
            this.colTypeId.FieldName = "TypeId";
            this.colTypeId.Name = "colTypeId";
            this.colTypeId.Visible = true;
            this.colTypeId.Width = 69;
            // 
            // colTypeName
            // 
            this.colTypeName.Caption = "類型名稱";
            this.colTypeName.FieldName = "TypeName";
            this.colTypeName.Name = "colTypeName";
            this.colTypeName.Visible = true;
            this.colTypeName.Width = 70;
            // 
            // colKS
            // 
            this.colKS.Caption = "是否可數";
            this.colKS.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colKS.FieldName = "ISKS";
            this.colKS.Name = "colKS";
            this.colKS.Visible = true;
            this.colKS.Width = 69;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "備注";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            // 
            // gridBand2
            // 
            this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand2.Caption = "收料";
            this.gridBand2.Columns.Add(this.colPrc_Rev);
            this.gridBand2.Columns.Add(this.colSAH_Rev);
            this.gridBand2.Columns.Add(this.colReciver);
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 225;
            // 
            // colPrc_Rev
            // 
            this.colPrc_Rev.Caption = "單價";
            this.colPrc_Rev.DisplayFormat.FormatString = "{0:N4}";
            this.colPrc_Rev.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPrc_Rev.FieldName = "Price_SAHRev";
            this.colPrc_Rev.Name = "colPrc_Rev";
            this.colPrc_Rev.Visible = true;
            // 
            // colSAH_Rev
            // 
            this.colSAH_Rev.Caption = "SAH";
            this.colSAH_Rev.DisplayFormat.FormatString = "{0:N4}";
            this.colSAH_Rev.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSAH_Rev.FieldName = "SAH_Rev";
            this.colSAH_Rev.Name = "colSAH_Rev";
            this.colSAH_Rev.Visible = true;
            // 
            // colReciver
            // 
            this.colReciver.Caption = "收料人";
            this.colReciver.FieldName = "Reciver";
            this.colReciver.Name = "colReciver";
            this.colReciver.Visible = true;
            // 
            // gridBand3
            // 
            this.gridBand3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand3.Caption = "發料";
            this.gridBand3.Columns.Add(this.colMprice);
            this.gridBand3.Columns.Add(this.colCPrice);
            this.gridBand3.Columns.Add(this.colSAHM);
            this.gridBand3.Columns.Add(this.colSAHC);
            this.gridBand3.Columns.Add(this.colIssuer);
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 371;
            // 
            // colMprice
            // 
            this.colMprice.Caption = "單價(母)";
            this.colMprice.DisplayFormat.FormatString = "{0:N4}";
            this.colMprice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colMprice.FieldName = "Price_SAHIssParent";
            this.colMprice.Name = "colMprice";
            this.colMprice.Visible = true;
            this.colMprice.Width = 81;
            // 
            // colCPrice
            // 
            this.colCPrice.Caption = "單價(子)";
            this.colCPrice.DisplayFormat.FormatString = "{0:N4}";
            this.colCPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCPrice.FieldName = "Price_SAHIssChild";
            this.colCPrice.Name = "colCPrice";
            this.colCPrice.Visible = true;
            // 
            // colSAHM
            // 
            this.colSAHM.Caption = "SAH(母)";
            this.colSAHM.DisplayFormat.FormatString = "{0:N4}";
            this.colSAHM.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSAHM.FieldName = "SAHM_Iss";
            this.colSAHM.Name = "colSAHM";
            this.colSAHM.Visible = true;
            this.colSAHM.Width = 65;
            // 
            // colSAHC
            // 
            this.colSAHC.Caption = "SAH(子)";
            this.colSAHC.DisplayFormat.FormatString = "{0:N4}";
            this.colSAHC.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSAHC.FieldName = "SAHC_Iss";
            this.colSAHC.Name = "colSAHC";
            this.colSAHC.Visible = true;
            // 
            // colIssuer
            // 
            this.colIssuer.Caption = "發料人";
            this.colIssuer.DisplayFormat.FormatString = "{0:N4}";
            this.colIssuer.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colIssuer.FieldName = "Issuer";
            this.colIssuer.Name = "colIssuer";
            this.colIssuer.Visible = true;
            // 
            // gridBand4
            // 
            this.gridBand4.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand4.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand4.Caption = "生產退料";
            this.gridBand4.Columns.Add(this.colPrice_Ret);
            this.gridBand4.Columns.Add(this.colSAH_Ret);
            this.gridBand4.Columns.Add(this.colReturner);
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 225;
            // 
            // colPrice_Ret
            // 
            this.colPrice_Ret.Caption = "單價";
            this.colPrice_Ret.DisplayFormat.FormatString = "{0:N4}";
            this.colPrice_Ret.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPrice_Ret.FieldName = "Price_SAHRet";
            this.colPrice_Ret.Name = "colPrice_Ret";
            this.colPrice_Ret.Visible = true;
            // 
            // colSAH_Ret
            // 
            this.colSAH_Ret.Caption = "SAH";
            this.colSAH_Ret.DisplayFormat.FormatString = "{0:N4}";
            this.colSAH_Ret.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSAH_Ret.FieldName = "SAH_Ret";
            this.colSAH_Ret.Name = "colSAH_Ret";
            this.colSAH_Ret.Visible = true;
            // 
            // colReturner
            // 
            this.colReturner.Caption = "退料人";
            this.colReturner.FieldName = "Returner";
            this.colReturner.Name = "colReturner";
            this.colReturner.Visible = true;
            // 
            // gridBand5
            // 
            this.gridBand5.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand5.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand5.Caption = "退料到供應商";
            this.gridBand5.Columns.Add(this.colRCPrice_M);
            this.gridBand5.Columns.Add(this.colRCPrice_C);
            this.gridBand5.Columns.Add(this.colRCSAH_M);
            this.gridBand5.Columns.Add(this.colRCSAH_C);
            this.gridBand5.Columns.Add(this.colRCMan);
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Visible = false;
            this.gridBand5.Width = 375;
            // 
            // colRCPrice_M
            // 
            this.colRCPrice_M.Caption = "單價(母)";
            this.colRCPrice_M.FieldName = "RCPrice_M";
            this.colRCPrice_M.Name = "colRCPrice_M";
            this.colRCPrice_M.Visible = true;
            // 
            // colRCPrice_C
            // 
            this.colRCPrice_C.Caption = "單價(子)";
            this.colRCPrice_C.FieldName = "RCPrice_C";
            this.colRCPrice_C.Name = "colRCPrice_C";
            this.colRCPrice_C.Visible = true;
            // 
            // colRCSAH_M
            // 
            this.colRCSAH_M.Caption = "SAH(母)";
            this.colRCSAH_M.FieldName = "RCSAH_M";
            this.colRCSAH_M.Name = "colRCSAH_M";
            this.colRCSAH_M.Visible = true;
            // 
            // colRCSAH_C
            // 
            this.colRCSAH_C.Caption = "SAH(子)";
            this.colRCSAH_C.FieldName = "RCSAH_C";
            this.colRCSAH_C.Name = "colRCSAH_C";
            this.colRCSAH_C.Visible = true;
            // 
            // colRCMan
            // 
            this.colRCMan.Caption = "退料人";
            this.colRCMan.FieldName = "RCMan";
            this.colRCMan.Name = "colRCMan";
            this.colRCMan.Visible = true;
            // 
            // TypeMasterList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TypeMasterList";
            this.Size = new System.Drawing.Size(1468, 488);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRecId;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTypeId;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTypeName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colKS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPrc_Rev;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSAH_Rev;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReciver;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMprice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSAHM;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSAHC;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIssuer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPrice_Ret;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSAH_Ret;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReturner;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCSAH_M;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCSAH_C;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCMan;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCPrice_C;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCPrice_M;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
    }
}
