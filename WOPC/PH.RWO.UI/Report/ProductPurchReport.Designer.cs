namespace PH.RWO.UI.Report
{
    partial class ProductPurchReport
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
            this.lblWo = new DevExpress.XtraEditors.LabelControl();
            this.dateEditTo = new DevExpress.XtraEditors.DateEdit();
            this.dateEditFrom = new DevExpress.XtraEditors.DateEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.edtCustStyle = new DevExpress.XtraEditors.TextEdit();
            this.lblCustyle = new DevExpress.XtraEditors.LabelControl();
            this.edtStyle = new DevExpress.XtraEditors.TextEdit();
            this.lblStyle = new DevExpress.XtraEditors.LabelControl();
            this.rbPH = new System.Windows.Forms.RadioButton();
            this.rbWZ = new System.Windows.Forms.RadioButton();
            this.edtWO = new DevExpress.XtraEditors.TextEdit();
            this.glueProject = new DevExpress.XtraEditors.GridLookUpEdit();
            this.gridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcProject = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSaleOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCuststyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPO = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.barManagerPrint)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditTo.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditTo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditFrom.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditFrom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCustStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.glueProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridLookUpEdit1View)).BeginInit();
            this.SuspendLayout();
            // 
            // barBtnPrintBase
            // 
            this.barBtnPrintBase.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrintBase_ItemClick);
            // 
            // lblWo
            // 
            this.lblWo.Location = new System.Drawing.Point(295, 152);
            this.lblWo.Name = "lblWo";
            this.lblWo.Size = new System.Drawing.Size(25, 14);
            this.lblWo.TabIndex = 29;
            this.lblWo.Text = "WO.";
            // 
            // dateEditTo
            // 
            this.dateEditTo.EditValue = null;
            this.dateEditTo.Location = new System.Drawing.Point(341, 218);
            this.dateEditTo.Name = "dateEditTo";
            this.dateEditTo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEditTo.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEditTo.Size = new System.Drawing.Size(111, 21);
            this.dateEditTo.TabIndex = 26;
            // 
            // dateEditFrom
            // 
            this.dateEditFrom.EditValue = null;
            this.dateEditFrom.Location = new System.Drawing.Point(122, 218);
            this.dateEditFrom.Name = "dateEditFrom";
            this.dateEditFrom.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEditFrom.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEditFrom.Size = new System.Drawing.Size(108, 21);
            this.dateEditFrom.TabIndex = 25;
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(302, 221);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(15, 14);
            this.labelControl5.TabIndex = 28;
            this.labelControl5.Text = "To";
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(45, 221);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(72, 14);
            this.labelControl6.TabIndex = 27;
            this.labelControl6.Text = "Delivery Date";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(45, 152);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(60, 14);
            this.labelControl1.TabIndex = 22;
            this.labelControl1.Text = "Project NO";
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl2.Appearance.Options.UseFont = true;
            this.labelControl2.Location = new System.Drawing.Point(179, 45);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(80, 19);
            this.labelControl2.TabIndex = 30;
            this.labelControl2.Text = "成品采購單";
            // 
            // edtCustStyle
            // 
            this.edtCustStyle.Location = new System.Drawing.Point(341, 183);
            this.edtCustStyle.Name = "edtCustStyle";
            this.edtCustStyle.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.edtCustStyle.Size = new System.Drawing.Size(111, 21);
            this.edtCustStyle.TabIndex = 33;
            // 
            // lblCustyle
            // 
            this.lblCustyle.Location = new System.Drawing.Point(265, 186);
            this.lblCustyle.Name = "lblCustyle";
            this.lblCustyle.Size = new System.Drawing.Size(55, 14);
            this.lblCustyle.TabIndex = 34;
            this.lblCustyle.Text = "Cust Style";
            // 
            // edtStyle
            // 
            this.edtStyle.Location = new System.Drawing.Point(122, 183);
            this.edtStyle.Name = "edtStyle";
            this.edtStyle.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.edtStyle.Size = new System.Drawing.Size(108, 21);
            this.edtStyle.TabIndex = 32;
            // 
            // lblStyle
            // 
            this.lblStyle.Location = new System.Drawing.Point(45, 186);
            this.lblStyle.Name = "lblStyle";
            this.lblStyle.Size = new System.Drawing.Size(50, 14);
            this.lblStyle.TabIndex = 31;
            this.lblStyle.Text = "Style No.";
            // 
            // rbPH
            // 
            this.rbPH.AutoSize = true;
            this.rbPH.Checked = true;
            this.rbPH.Location = new System.Drawing.Point(139, 102);
            this.rbPH.Name = "rbPH";
            this.rbPH.Size = new System.Drawing.Size(47, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbPH, null);
            this.rbPH.TabIndex = 35;
            this.rbPH.TabStop = true;
            this.rbPH.Text = "沛恒";
            this.rbPH.UseVisualStyleBackColor = true;
            // 
            // rbWZ
            // 
            this.rbWZ.AutoSize = true;
            this.rbWZ.Location = new System.Drawing.Point(243, 102);
            this.rbWZ.Name = "rbWZ";
            this.rbWZ.Size = new System.Drawing.Size(47, 16);
            this.PlatetoolTipController.SetSuperTip(this.rbWZ, null);
            this.rbWZ.TabIndex = 36;
            this.rbWZ.TabStop = true;
            this.rbWZ.Text = "文展";
            this.rbWZ.UseVisualStyleBackColor = true;
            // 
            // edtWO
            // 
            this.edtWO.Location = new System.Drawing.Point(341, 149);
            this.edtWO.Name = "edtWO";
            this.edtWO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.edtWO.Size = new System.Drawing.Size(111, 21);
            this.edtWO.TabIndex = 38;
            // 
            // glueProject
            // 
            this.glueProject.EditValue = "";
            this.glueProject.Location = new System.Drawing.Point(122, 149);
            this.glueProject.Name = "glueProject";
            this.glueProject.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.glueProject.Properties.NullText = "";
            this.glueProject.Properties.PopupFormMinSize = new System.Drawing.Size(650, 500);
            this.glueProject.Properties.View = this.gridLookUpEdit1View;
            this.glueProject.Size = new System.Drawing.Size(108, 21);
            this.glueProject.TabIndex = 41;
            this.glueProject.TabStop = false;
            this.glueProject.EditValueChanged += new System.EventHandler(this.glueProject_EditValueChanged);
            this.glueProject.Closed += new DevExpress.XtraEditors.Controls.ClosedEventHandler(this.glueProject_Closed);
            // 
            // gridLookUpEdit1View
            // 
            this.gridLookUpEdit1View.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcProject,
            this.gcWO,
            this.gcSaleOrder,
            this.gcCuststyle,
            this.gcStyle,
            this.gcPO});
            this.gridLookUpEdit1View.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.gridLookUpEdit1View.Name = "gridLookUpEdit1View";
            this.gridLookUpEdit1View.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridLookUpEdit1View.OptionsView.ShowGroupPanel = false;
            // 
            // gcProject
            // 
            this.gcProject.Caption = "Project";
            this.gcProject.FieldName = "ProjectNo";
            this.gcProject.Name = "gcProject";
            this.gcProject.OptionsColumn.FixedWidth = true;
            this.gcProject.Visible = true;
            this.gcProject.VisibleIndex = 0;
            this.gcProject.Width = 112;
            // 
            // gcWO
            // 
            this.gcWO.Caption = "WO.";
            this.gcWO.FieldName = "WorkOrderNo";
            this.gcWO.Name = "gcWO";
            this.gcWO.OptionsColumn.FixedWidth = true;
            this.gcWO.Visible = true;
            this.gcWO.VisibleIndex = 1;
            this.gcWO.Width = 90;
            // 
            // gcSaleOrder
            // 
            this.gcSaleOrder.Caption = "Sales Order";
            this.gcSaleOrder.FieldName = "SalesOrderno";
            this.gcSaleOrder.Name = "gcSaleOrder";
            this.gcSaleOrder.OptionsColumn.FixedWidth = true;
            this.gcSaleOrder.Visible = true;
            this.gcSaleOrder.VisibleIndex = 2;
            this.gcSaleOrder.Width = 148;
            // 
            // gcCuststyle
            // 
            this.gcCuststyle.Caption = "Customer Style";
            this.gcCuststyle.FieldName = "CustomerStyleNo";
            this.gcCuststyle.Name = "gcCuststyle";
            this.gcCuststyle.Visible = true;
            this.gcCuststyle.VisibleIndex = 3;
            this.gcCuststyle.Width = 170;
            // 
            // gcStyle
            // 
            this.gcStyle.Caption = "PH Style";
            this.gcStyle.FieldName = "StyleNo";
            this.gcStyle.Name = "gcStyle";
            this.gcStyle.Visible = true;
            this.gcStyle.VisibleIndex = 4;
            this.gcStyle.Width = 184;
            // 
            // gcPO
            // 
            this.gcPO.Caption = "PO.";
            this.gcPO.FieldName = "CustomerPO";
            this.gcPO.Name = "gcPO";
            this.gcPO.Visible = true;
            this.gcPO.VisibleIndex = 5;
            this.gcPO.Width = 384;
            // 
            // ProductPurchReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.glueProject);
            this.Controls.Add(this.edtWO);
            this.Controls.Add(this.rbWZ);
            this.Controls.Add(this.rbPH);
            this.Controls.Add(this.edtCustStyle);
            this.Controls.Add(this.lblCustyle);
            this.Controls.Add(this.edtStyle);
            this.Controls.Add(this.lblStyle);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.lblWo);
            this.Controls.Add(this.dateEditTo);
            this.Controls.Add(this.dateEditFrom);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.labelControl1);
            this.Name = "ProductPurchReport";
            this.Size = new System.Drawing.Size(525, 307);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ProductPurchReport_Load);
            this.Controls.SetChildIndex(this.labelControl1, 0);
            this.Controls.SetChildIndex(this.labelControl6, 0);
            this.Controls.SetChildIndex(this.labelControl5, 0);
            this.Controls.SetChildIndex(this.dateEditFrom, 0);
            this.Controls.SetChildIndex(this.dateEditTo, 0);
            this.Controls.SetChildIndex(this.lblWo, 0);
            this.Controls.SetChildIndex(this.labelControl2, 0);
            this.Controls.SetChildIndex(this.lblStyle, 0);
            this.Controls.SetChildIndex(this.edtStyle, 0);
            this.Controls.SetChildIndex(this.lblCustyle, 0);
            this.Controls.SetChildIndex(this.edtCustStyle, 0);
            this.Controls.SetChildIndex(this.rbPH, 0);
            this.Controls.SetChildIndex(this.rbWZ, 0);
            this.Controls.SetChildIndex(this.edtWO, 0);
            this.Controls.SetChildIndex(this.glueProject, 0);
            ((System.ComponentModel.ISupportInitialize)(this.barManagerPrint)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditTo.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditTo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditFrom.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditFrom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCustStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.glueProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridLookUpEdit1View)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl lblWo;
        private DevExpress.XtraEditors.DateEdit dateEditTo;
        private DevExpress.XtraEditors.DateEdit dateEditFrom;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit edtCustStyle;
        private DevExpress.XtraEditors.LabelControl lblCustyle;
        private DevExpress.XtraEditors.TextEdit edtStyle;
        private DevExpress.XtraEditors.LabelControl lblStyle;
        private System.Windows.Forms.RadioButton rbPH;
        private System.Windows.Forms.RadioButton rbWZ;
        private DevExpress.XtraEditors.TextEdit edtWO;
        private DevExpress.XtraEditors.GridLookUpEdit glueProject;
        private DevExpress.XtraGrid.Views.Grid.GridView gridLookUpEdit1View;
        private DevExpress.XtraGrid.Columns.GridColumn gcProject;
        private DevExpress.XtraGrid.Columns.GridColumn gcWO;
        private DevExpress.XtraGrid.Columns.GridColumn gcSaleOrder;
        private DevExpress.XtraGrid.Columns.GridColumn gcCuststyle;
        private DevExpress.XtraGrid.Columns.GridColumn gcPO;
        private DevExpress.XtraGrid.Columns.GridColumn gcStyle;
    }
}
