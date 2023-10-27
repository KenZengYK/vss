namespace PH.MR.UI.FRN
{
    partial class FRNDetailForm
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
            System.Windows.Forms.Label erp_InputQtyLabel;
            this.projectNoLabel = new System.Windows.Forms.Label();
            this.styleNoLabel = new System.Windows.Forms.Label();
            this.colorCodeLabel = new System.Windows.Forms.Label();
            this.itemCodeLabel = new System.Windows.Forms.Label();
            this.workOrderLabel = new System.Windows.Forms.Label();
            this.color_QtyLabel = new System.Windows.Forms.Label();
            this.supplierItemLabel = new System.Windows.Forms.Label();
            this.ex_FtyDateLabel = new System.Windows.Forms.Label();
            this.deliveryDateLabel = new System.Windows.Forms.Label();
            this.wO_QtyLabel = new System.Windows.Forms.Label();
            this.fRN_YYLabel = new System.Windows.Forms.Label();
            this.original_YYLabel = new System.Windows.Forms.Label();
            this.diff_QtyLabel = new System.Windows.Forms.Label();
            this.diff_PerLabel = new System.Windows.Forms.Label();
            this.fRN_TotalLabel = new System.Windows.Forms.Label();
            this.wastage_QtyLabel = new System.Windows.Forms.Label();
            this.wastage_PerLabel = new System.Windows.Forms.Label();
            this.edtProjectNo = new System.Windows.Forms.TextBox();
            this.edtStyleNo = new System.Windows.Forms.TextBox();
            this.edtColorCode = new System.Windows.Forms.TextBox();
            this.edtItemCode = new System.Windows.Forms.TextBox();
            this.edtWorkOrder = new System.Windows.Forms.TextBox();
            this.edtColor_Qty = new System.Windows.Forms.TextBox();
            this.edtSupplierItem = new System.Windows.Forms.TextBox();
            this.dtpEx_Fty = new System.Windows.Forms.DateTimePicker();
            this.dtpDeliveryDate = new System.Windows.Forms.DateTimePicker();
            this.edtWO_Qty = new System.Windows.Forms.TextBox();
            this.lblFRNYY = new System.Windows.Forms.Label();
            this.edtFRN_YY = new DevExpress.XtraEditors.SpinEdit();
            this.edtOriginal_YY = new DevExpress.XtraEditors.SpinEdit();
            this.edtWastage_Per = new DevExpress.XtraEditors.SpinEdit();
            this.edtWastage_Qty = new DevExpress.XtraEditors.SpinEdit();
            this.edtDiff_Qty = new DevExpress.XtraEditors.SpinEdit();
            this.edtDiff_Per = new DevExpress.XtraEditors.SpinEdit();
            this.edtFRN_Total = new DevExpress.XtraEditors.SpinEdit();
            this.edtErpQty = new DevExpress.XtraEditors.SpinEdit();
            this.label1 = new System.Windows.Forms.Label();
            erp_InputQtyLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFRN_YY.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtOriginal_YY.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWastage_Per.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWastage_Qty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDiff_Qty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDiff_Per.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFRN_Total.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtErpQty.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MR.BO.FRN_DetailInfo);
            // 
            // erp_InputQtyLabel
            // 
            erp_InputQtyLabel.AutoSize = true;
            erp_InputQtyLabel.Location = new System.Drawing.Point(494, 287);
            erp_InputQtyLabel.Name = "erp_InputQtyLabel";
            erp_InputQtyLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(erp_InputQtyLabel, null);
            erp_InputQtyLabel.TabIndex = 46;
            erp_InputQtyLabel.Text = "Erp Input Qty:";
            // 
            // projectNoLabel
            // 
            this.projectNoLabel.AutoSize = true;
            this.projectNoLabel.Location = new System.Drawing.Point(37, 82);
            this.projectNoLabel.Name = "projectNoLabel";
            this.projectNoLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.projectNoLabel, null);
            this.projectNoLabel.TabIndex = 4;
            this.projectNoLabel.Text = "Project No:";
            // 
            // styleNoLabel
            // 
            this.styleNoLabel.AutoSize = true;
            this.styleNoLabel.Location = new System.Drawing.Point(49, 126);
            this.styleNoLabel.Name = "styleNoLabel";
            this.styleNoLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.styleNoLabel, null);
            this.styleNoLabel.TabIndex = 6;
            this.styleNoLabel.Text = "Style No:";
            // 
            // colorCodeLabel
            // 
            this.colorCodeLabel.AutoSize = true;
            this.colorCodeLabel.Location = new System.Drawing.Point(278, 82);
            this.colorCodeLabel.Name = "colorCodeLabel";
            this.colorCodeLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.colorCodeLabel, null);
            this.colorCodeLabel.TabIndex = 8;
            this.colorCodeLabel.Text = "Color Code:";
            // 
            // itemCodeLabel
            // 
            this.itemCodeLabel.AutoSize = true;
            this.itemCodeLabel.Location = new System.Drawing.Point(43, 164);
            this.itemCodeLabel.Name = "itemCodeLabel";
            this.itemCodeLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.itemCodeLabel, null);
            this.itemCodeLabel.TabIndex = 10;
            this.itemCodeLabel.Text = "Item Code:";
            // 
            // workOrderLabel
            // 
            this.workOrderLabel.AutoSize = true;
            this.workOrderLabel.Location = new System.Drawing.Point(278, 166);
            this.workOrderLabel.Name = "workOrderLabel";
            this.workOrderLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.workOrderLabel, null);
            this.workOrderLabel.TabIndex = 12;
            this.workOrderLabel.Text = "Work Order:";
            // 
            // color_QtyLabel
            // 
            this.color_QtyLabel.AutoSize = true;
            this.color_QtyLabel.Location = new System.Drawing.Point(284, 126);
            this.color_QtyLabel.Name = "color_QtyLabel";
            this.color_QtyLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.color_QtyLabel, null);
            this.color_QtyLabel.TabIndex = 14;
            this.color_QtyLabel.Text = "Color Qty:";
            // 
            // supplierItemLabel
            // 
            this.supplierItemLabel.AutoSize = true;
            this.supplierItemLabel.Location = new System.Drawing.Point(19, 203);
            this.supplierItemLabel.Name = "supplierItemLabel";
            this.supplierItemLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierItemLabel, null);
            this.supplierItemLabel.TabIndex = 16;
            this.supplierItemLabel.Text = "Supplier Item:";
            // 
            // ex_FtyDateLabel
            // 
            this.ex_FtyDateLabel.AutoSize = true;
            this.ex_FtyDateLabel.Location = new System.Drawing.Point(31, 244);
            this.ex_FtyDateLabel.Name = "ex_FtyDateLabel";
            this.ex_FtyDateLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.ex_FtyDateLabel, null);
            this.ex_FtyDateLabel.TabIndex = 18;
            this.ex_FtyDateLabel.Text = "Ex Fty Date:";
            // 
            // deliveryDateLabel
            // 
            this.deliveryDateLabel.AutoSize = true;
            this.deliveryDateLabel.Location = new System.Drawing.Point(19, 286);
            this.deliveryDateLabel.Name = "deliveryDateLabel";
            this.deliveryDateLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.deliveryDateLabel, null);
            this.deliveryDateLabel.TabIndex = 20;
            this.deliveryDateLabel.Text = "Delivery Date:";
            // 
            // wO_QtyLabel
            // 
            this.wO_QtyLabel.AutoSize = true;
            this.wO_QtyLabel.Location = new System.Drawing.Point(302, 203);
            this.wO_QtyLabel.Name = "wO_QtyLabel";
            this.wO_QtyLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.wO_QtyLabel, null);
            this.wO_QtyLabel.TabIndex = 22;
            this.wO_QtyLabel.Text = "WO Qty:";
            // 
            // fRN_YYLabel
            // 
            this.fRN_YYLabel.AutoSize = true;
            this.fRN_YYLabel.Location = new System.Drawing.Point(299, 286);
            this.fRN_YYLabel.Name = "fRN_YYLabel";
            this.fRN_YYLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.fRN_YYLabel, null);
            this.fRN_YYLabel.TabIndex = 26;
            this.fRN_YYLabel.Text = "FRN YY:";
            // 
            // original_YYLabel
            // 
            this.original_YYLabel.AutoSize = true;
            this.original_YYLabel.Location = new System.Drawing.Point(272, 247);
            this.original_YYLabel.Name = "original_YYLabel";
            this.original_YYLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.original_YYLabel, null);
            this.original_YYLabel.TabIndex = 27;
            this.original_YYLabel.Text = "Original YY:";
            // 
            // diff_QtyLabel
            // 
            this.diff_QtyLabel.AutoSize = true;
            this.diff_QtyLabel.Location = new System.Drawing.Point(524, 81);
            this.diff_QtyLabel.Name = "diff_QtyLabel";
            this.diff_QtyLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.diff_QtyLabel, null);
            this.diff_QtyLabel.TabIndex = 28;
            this.diff_QtyLabel.Text = "Diff Qty:";
            // 
            // diff_PerLabel
            // 
            this.diff_PerLabel.AutoSize = true;
            this.diff_PerLabel.Location = new System.Drawing.Point(526, 126);
            this.diff_PerLabel.Name = "diff_PerLabel";
            this.diff_PerLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.diff_PerLabel, null);
            this.diff_PerLabel.TabIndex = 30;
            this.diff_PerLabel.Text = "Diff Per:";
            // 
            // fRN_TotalLabel
            // 
            this.fRN_TotalLabel.AutoSize = true;
            this.fRN_TotalLabel.Location = new System.Drawing.Point(516, 164);
            this.fRN_TotalLabel.Name = "fRN_TotalLabel";
            this.fRN_TotalLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.fRN_TotalLabel, null);
            this.fRN_TotalLabel.TabIndex = 32;
            this.fRN_TotalLabel.Text = "FRN Total:";
            // 
            // wastage_QtyLabel
            // 
            this.wastage_QtyLabel.AutoSize = true;
            this.wastage_QtyLabel.Location = new System.Drawing.Point(506, 203);
            this.wastage_QtyLabel.Name = "wastage_QtyLabel";
            this.wastage_QtyLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.wastage_QtyLabel, null);
            this.wastage_QtyLabel.TabIndex = 34;
            this.wastage_QtyLabel.Text = "Wastage Qty:";
            // 
            // wastage_PerLabel
            // 
            this.wastage_PerLabel.AutoSize = true;
            this.wastage_PerLabel.Location = new System.Drawing.Point(506, 244);
            this.wastage_PerLabel.Name = "wastage_PerLabel";
            this.wastage_PerLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.wastage_PerLabel, null);
            this.wastage_PerLabel.TabIndex = 36;
            this.wastage_PerLabel.Text = "Wastage Per:";
            // 
            // edtProjectNo
            // 
            this.edtProjectNo.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ProjectNo", true));
            this.edtProjectNo.Location = new System.Drawing.Point(114, 79);
            this.edtProjectNo.Name = "edtProjectNo";
            this.edtProjectNo.Size = new System.Drawing.Size(137, 21);
            this.PlatetoolTipController.SetSuperTip(this.edtProjectNo, null);
            this.edtProjectNo.TabIndex = 5;
            // 
            // edtStyleNo
            // 
            this.edtStyleNo.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "StyleNo", true));
            this.edtStyleNo.Location = new System.Drawing.Point(114, 122);
            this.edtStyleNo.Name = "edtStyleNo";
            this.edtStyleNo.Size = new System.Drawing.Size(137, 21);
            this.PlatetoolTipController.SetSuperTip(this.edtStyleNo, null);
            this.edtStyleNo.TabIndex = 7;
            // 
            // edtColorCode
            // 
            this.edtColorCode.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ColorCode", true));
            this.edtColorCode.Location = new System.Drawing.Point(355, 79);
            this.edtColorCode.Name = "edtColorCode";
            this.edtColorCode.Size = new System.Drawing.Size(122, 21);
            this.PlatetoolTipController.SetSuperTip(this.edtColorCode, null);
            this.edtColorCode.TabIndex = 9;
            // 
            // edtItemCode
            // 
            this.edtItemCode.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ItemCode", true));
            this.edtItemCode.Location = new System.Drawing.Point(114, 161);
            this.edtItemCode.Name = "edtItemCode";
            this.edtItemCode.Size = new System.Drawing.Size(137, 21);
            this.PlatetoolTipController.SetSuperTip(this.edtItemCode, null);
            this.edtItemCode.TabIndex = 11;
            // 
            // edtWorkOrder
            // 
            this.edtWorkOrder.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "WorkOrder", true));
            this.edtWorkOrder.Location = new System.Drawing.Point(355, 161);
            this.edtWorkOrder.Name = "edtWorkOrder";
            this.edtWorkOrder.Size = new System.Drawing.Size(122, 21);
            this.PlatetoolTipController.SetSuperTip(this.edtWorkOrder, null);
            this.edtWorkOrder.TabIndex = 13;
            // 
            // edtColor_Qty
            // 
            this.edtColor_Qty.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Color_Qty", true));
            this.edtColor_Qty.Location = new System.Drawing.Point(355, 122);
            this.edtColor_Qty.Name = "edtColor_Qty";
            this.edtColor_Qty.Size = new System.Drawing.Size(122, 21);
            this.PlatetoolTipController.SetSuperTip(this.edtColor_Qty, null);
            this.edtColor_Qty.TabIndex = 15;
            // 
            // edtSupplierItem
            // 
            this.edtSupplierItem.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "SupplierItem", true));
            this.edtSupplierItem.Location = new System.Drawing.Point(114, 200);
            this.edtSupplierItem.Name = "edtSupplierItem";
            this.edtSupplierItem.Size = new System.Drawing.Size(137, 21);
            this.PlatetoolTipController.SetSuperTip(this.edtSupplierItem, null);
            this.edtSupplierItem.TabIndex = 17;
            // 
            // dtpEx_Fty
            // 
            this.dtpEx_Fty.DataBindings.Add(new System.Windows.Forms.Binding("Value", this.BindingSource, "Ex_FtyDate", true));
            this.dtpEx_Fty.Location = new System.Drawing.Point(114, 241);
            this.dtpEx_Fty.Name = "dtpEx_Fty";
            this.dtpEx_Fty.Size = new System.Drawing.Size(137, 21);
            this.PlatetoolTipController.SetSuperTip(this.dtpEx_Fty, null);
            this.dtpEx_Fty.TabIndex = 19;
            // 
            // dtpDeliveryDate
            // 
            this.dtpDeliveryDate.DataBindings.Add(new System.Windows.Forms.Binding("Value", this.BindingSource, "DeliveryDate", true));
            this.dtpDeliveryDate.Location = new System.Drawing.Point(114, 281);
            this.dtpDeliveryDate.Name = "dtpDeliveryDate";
            this.dtpDeliveryDate.Size = new System.Drawing.Size(137, 21);
            this.PlatetoolTipController.SetSuperTip(this.dtpDeliveryDate, null);
            this.dtpDeliveryDate.TabIndex = 21;
            // 
            // edtWO_Qty
            // 
            this.edtWO_Qty.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "WO_Qty", true));
            this.edtWO_Qty.Location = new System.Drawing.Point(355, 200);
            this.edtWO_Qty.Name = "edtWO_Qty";
            this.edtWO_Qty.Size = new System.Drawing.Size(122, 21);
            this.PlatetoolTipController.SetSuperTip(this.edtWO_Qty, null);
            this.edtWO_Qty.TabIndex = 23;
            // 
            // lblFRNYY
            // 
            this.lblFRNYY.AutoSize = true;
            this.lblFRNYY.Location = new System.Drawing.Point(357, 305);
            this.lblFRNYY.Name = "lblFRNYY";
            this.lblFRNYY.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblFRNYY, null);
            this.lblFRNYY.TabIndex = 39;
            this.lblFRNYY.Text = "(請最多保留2位小數)";
            // 
            // edtFRN_YY
            // 
            this.edtFRN_YY.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "FRN_YY", true));
            this.edtFRN_YY.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.edtFRN_YY.Location = new System.Drawing.Point(355, 281);
            this.edtFRN_YY.Name = "edtFRN_YY";
            this.edtFRN_YY.Properties.DisplayFormat.FormatString = " ###0.00";
            this.edtFRN_YY.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtFRN_YY.Properties.EditFormat.FormatString = "###0.00";
            this.edtFRN_YY.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtFRN_YY.Size = new System.Drawing.Size(121, 21);
            this.edtFRN_YY.TabIndex = 40;
            // 
            // edtOriginal_YY
            // 
            this.edtOriginal_YY.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Original_YY", true));
            this.edtOriginal_YY.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.edtOriginal_YY.Location = new System.Drawing.Point(356, 241);
            this.edtOriginal_YY.Name = "edtOriginal_YY";
            this.edtOriginal_YY.Properties.DisplayFormat.FormatString = " ###0.00";
            this.edtOriginal_YY.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtOriginal_YY.Properties.EditFormat.FormatString = "###0.00";
            this.edtOriginal_YY.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtOriginal_YY.Size = new System.Drawing.Size(121, 21);
            this.edtOriginal_YY.TabIndex = 41;
            // 
            // edtWastage_Per
            // 
            this.edtWastage_Per.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Wastage_Per", true));
            this.edtWastage_Per.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.edtWastage_Per.Location = new System.Drawing.Point(589, 239);
            this.edtWastage_Per.Name = "edtWastage_Per";
            this.edtWastage_Per.Properties.DisplayFormat.FormatString = " ###0.00";
            this.edtWastage_Per.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtWastage_Per.Properties.EditFormat.FormatString = "###0.00";
            this.edtWastage_Per.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtWastage_Per.Size = new System.Drawing.Size(100, 21);
            this.edtWastage_Per.TabIndex = 42;
            // 
            // edtWastage_Qty
            // 
            this.edtWastage_Qty.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Wastage_Qty", true));
            this.edtWastage_Qty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.edtWastage_Qty.Location = new System.Drawing.Point(589, 198);
            this.edtWastage_Qty.Name = "edtWastage_Qty";
            this.edtWastage_Qty.Properties.DisplayFormat.FormatString = " ###0.00";
            this.edtWastage_Qty.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtWastage_Qty.Properties.EditFormat.FormatString = "###0.00";
            this.edtWastage_Qty.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtWastage_Qty.Size = new System.Drawing.Size(100, 21);
            this.edtWastage_Qty.TabIndex = 43;
            // 
            // edtDiff_Qty
            // 
            this.edtDiff_Qty.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Diff_Qty", true));
            this.edtDiff_Qty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.edtDiff_Qty.Location = new System.Drawing.Point(589, 76);
            this.edtDiff_Qty.Name = "edtDiff_Qty";
            this.edtDiff_Qty.Properties.DisplayFormat.FormatString = " ###0.00";
            this.edtDiff_Qty.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtDiff_Qty.Properties.EditFormat.FormatString = "###0.00";
            this.edtDiff_Qty.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtDiff_Qty.Size = new System.Drawing.Size(100, 21);
            this.edtDiff_Qty.TabIndex = 44;
            // 
            // edtDiff_Per
            // 
            this.edtDiff_Per.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Diff_Per", true));
            this.edtDiff_Per.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.edtDiff_Per.Location = new System.Drawing.Point(591, 117);
            this.edtDiff_Per.Name = "edtDiff_Per";
            this.edtDiff_Per.Properties.DisplayFormat.FormatString = " ###0.00";
            this.edtDiff_Per.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtDiff_Per.Properties.EditFormat.FormatString = "###0.00";
            this.edtDiff_Per.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtDiff_Per.Size = new System.Drawing.Size(100, 21);
            this.edtDiff_Per.TabIndex = 45;

            // 
            // edtFRN_Total
            // 
            this.edtFRN_Total.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "FRN_Total", true));
            this.edtFRN_Total.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.edtFRN_Total.Location = new System.Drawing.Point(589, 158);
            this.edtFRN_Total.Name = "edtFRN_Total";
            this.edtFRN_Total.Properties.DisplayFormat.FormatString = " ###0.00";
            this.edtFRN_Total.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtFRN_Total.Properties.EditFormat.FormatString = "###0.00";
            this.edtFRN_Total.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtFRN_Total.Size = new System.Drawing.Size(100, 21);
            this.edtFRN_Total.TabIndex = 46;
   
            // 
            // edtErpQty
            // 
            this.edtErpQty.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Erp_InputQty", true));
            this.edtErpQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.edtErpQty.Location = new System.Drawing.Point(589, 281);
            this.edtErpQty.Name = "edtErpQty";
            this.edtErpQty.Properties.DisplayFormat.FormatString = " ###0.00";
            this.edtErpQty.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtErpQty.Properties.EditFormat.FormatString = "###0.00";
            this.edtErpQty.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.edtErpQty.Size = new System.Drawing.Size(100, 21);
            this.edtErpQty.TabIndex = 47;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(695, 244);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 48;
            this.label1.Text = "(%)";
            // 
            // FRNDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.label1);
            this.Controls.Add(this.edtErpQty);
            this.Controls.Add(erp_InputQtyLabel);
            this.Controls.Add(this.edtFRN_Total);
            this.Controls.Add(this.edtDiff_Per);
            this.Controls.Add(this.edtDiff_Qty);
            this.Controls.Add(this.edtWastage_Qty);
            this.Controls.Add(this.edtWastage_Per);
            this.Controls.Add(this.edtOriginal_YY);
            this.Controls.Add(this.edtFRN_YY);
            this.Controls.Add(this.lblFRNYY);
            this.Controls.Add(this.wastage_PerLabel);
            this.Controls.Add(this.wastage_QtyLabel);
            this.Controls.Add(this.fRN_TotalLabel);
            this.Controls.Add(this.diff_PerLabel);
            this.Controls.Add(this.diff_QtyLabel);
            this.Controls.Add(this.original_YYLabel);
            this.Controls.Add(this.fRN_YYLabel);
            this.Controls.Add(this.wO_QtyLabel);
            this.Controls.Add(this.edtWO_Qty);
            this.Controls.Add(this.deliveryDateLabel);
            this.Controls.Add(this.dtpDeliveryDate);
            this.Controls.Add(this.ex_FtyDateLabel);
            this.Controls.Add(this.dtpEx_Fty);
            this.Controls.Add(this.supplierItemLabel);
            this.Controls.Add(this.edtSupplierItem);
            this.Controls.Add(this.color_QtyLabel);
            this.Controls.Add(this.edtColor_Qty);
            this.Controls.Add(this.workOrderLabel);
            this.Controls.Add(this.edtWorkOrder);
            this.Controls.Add(this.itemCodeLabel);
            this.Controls.Add(this.edtItemCode);
            this.Controls.Add(this.colorCodeLabel);
            this.Controls.Add(this.edtColorCode);
            this.Controls.Add(this.styleNoLabel);
            this.Controls.Add(this.edtStyleNo);
            this.Controls.Add(this.projectNoLabel);
            this.Controls.Add(this.edtProjectNo);
            this.Name = "FRNDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.edtProjectNo, 0);
            this.Controls.SetChildIndex(this.projectNoLabel, 0);
            this.Controls.SetChildIndex(this.edtStyleNo, 0);
            this.Controls.SetChildIndex(this.styleNoLabel, 0);
            this.Controls.SetChildIndex(this.edtColorCode, 0);
            this.Controls.SetChildIndex(this.colorCodeLabel, 0);
            this.Controls.SetChildIndex(this.edtItemCode, 0);
            this.Controls.SetChildIndex(this.itemCodeLabel, 0);
            this.Controls.SetChildIndex(this.edtWorkOrder, 0);
            this.Controls.SetChildIndex(this.workOrderLabel, 0);
            this.Controls.SetChildIndex(this.edtColor_Qty, 0);
            this.Controls.SetChildIndex(this.color_QtyLabel, 0);
            this.Controls.SetChildIndex(this.edtSupplierItem, 0);
            this.Controls.SetChildIndex(this.supplierItemLabel, 0);
            this.Controls.SetChildIndex(this.dtpEx_Fty, 0);
            this.Controls.SetChildIndex(this.ex_FtyDateLabel, 0);
            this.Controls.SetChildIndex(this.dtpDeliveryDate, 0);
            this.Controls.SetChildIndex(this.deliveryDateLabel, 0);
            this.Controls.SetChildIndex(this.edtWO_Qty, 0);
            this.Controls.SetChildIndex(this.wO_QtyLabel, 0);
            this.Controls.SetChildIndex(this.fRN_YYLabel, 0);
            this.Controls.SetChildIndex(this.original_YYLabel, 0);
            this.Controls.SetChildIndex(this.diff_QtyLabel, 0);
            this.Controls.SetChildIndex(this.diff_PerLabel, 0);
            this.Controls.SetChildIndex(this.fRN_TotalLabel, 0);
            this.Controls.SetChildIndex(this.wastage_QtyLabel, 0);
            this.Controls.SetChildIndex(this.wastage_PerLabel, 0);
            this.Controls.SetChildIndex(this.lblFRNYY, 0);
            this.Controls.SetChildIndex(this.edtFRN_YY, 0);
            this.Controls.SetChildIndex(this.edtOriginal_YY, 0);
            this.Controls.SetChildIndex(this.edtWastage_Per, 0);
            this.Controls.SetChildIndex(this.edtWastage_Qty, 0);
            this.Controls.SetChildIndex(this.edtDiff_Qty, 0);
            this.Controls.SetChildIndex(this.edtDiff_Per, 0);
            this.Controls.SetChildIndex(this.edtFRN_Total, 0);
            this.Controls.SetChildIndex(erp_InputQtyLabel, 0);
            this.Controls.SetChildIndex(this.edtErpQty, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFRN_YY.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtOriginal_YY.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWastage_Per.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWastage_Qty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDiff_Qty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDiff_Per.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFRN_Total.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtErpQty.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox edtProjectNo;
        private System.Windows.Forms.TextBox edtStyleNo;
        private System.Windows.Forms.TextBox edtColorCode;
        private System.Windows.Forms.TextBox edtItemCode;
        private System.Windows.Forms.TextBox edtWorkOrder;
        private System.Windows.Forms.TextBox edtColor_Qty;
        private System.Windows.Forms.TextBox edtSupplierItem;
        private System.Windows.Forms.DateTimePicker dtpEx_Fty;
        private System.Windows.Forms.DateTimePicker dtpDeliveryDate;
        private System.Windows.Forms.TextBox edtWO_Qty;
        public System.Windows.Forms.Label projectNoLabel;
        public System.Windows.Forms.Label styleNoLabel;
        public System.Windows.Forms.Label colorCodeLabel;
        public System.Windows.Forms.Label itemCodeLabel;
        public System.Windows.Forms.Label workOrderLabel;
        public System.Windows.Forms.Label color_QtyLabel;
        public System.Windows.Forms.Label supplierItemLabel;
        public System.Windows.Forms.Label ex_FtyDateLabel;
        public System.Windows.Forms.Label deliveryDateLabel;
        public System.Windows.Forms.Label wO_QtyLabel;
        public System.Windows.Forms.Label fRN_YYLabel;
        public System.Windows.Forms.Label original_YYLabel;
        public System.Windows.Forms.Label diff_QtyLabel;
        public System.Windows.Forms.Label diff_PerLabel;
        public System.Windows.Forms.Label fRN_TotalLabel;
        public System.Windows.Forms.Label wastage_QtyLabel;
        public System.Windows.Forms.Label wastage_PerLabel;
        public System.Windows.Forms.Label lblFRNYY;
        private DevExpress.XtraEditors.SpinEdit edtFRN_YY;
        private DevExpress.XtraEditors.SpinEdit edtOriginal_YY;
        private DevExpress.XtraEditors.SpinEdit edtWastage_Per;
        private DevExpress.XtraEditors.SpinEdit edtWastage_Qty;
        private DevExpress.XtraEditors.SpinEdit edtDiff_Qty;
        private DevExpress.XtraEditors.SpinEdit edtDiff_Per;
        private DevExpress.XtraEditors.SpinEdit edtFRN_Total;
        private DevExpress.XtraEditors.SpinEdit edtErpQty;
        public System.Windows.Forms.Label label1;
    }
}
