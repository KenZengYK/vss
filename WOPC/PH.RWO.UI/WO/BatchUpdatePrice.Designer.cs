namespace PH.RWO.UI.WO
{
    partial class BatchUpdatePrice
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.glueProject = new DevExpress.XtraEditors.GridLookUpEdit();
            this.gridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcProject = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSaleOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCuststyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.edtPrice = new DevExpress.XtraEditors.TextEdit();
            this.cbbCurrency = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.btnUpdate = new System.Windows.Forms.Button();
            this.btnClose = new System.Windows.Forms.Button();
            this.bsProj = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.glueProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridLookUpEdit1View)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtPrice.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbCurrency.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsProj)).BeginInit();
            this.SuspendLayout();
            // 
            // glueProject
            // 
            this.glueProject.EditValue = "Select a project";
            this.glueProject.Location = new System.Drawing.Point(151, 34);
            this.glueProject.Name = "glueProject";
            this.glueProject.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.glueProject.Properties.NullText = "Please select a project";
            this.glueProject.Properties.PopupFormMinSize = new System.Drawing.Size(600, 500);
            this.glueProject.Properties.View = this.gridLookUpEdit1View;
            this.glueProject.Size = new System.Drawing.Size(155, 21);
            this.glueProject.TabIndex = 0;
            // 
            // gridLookUpEdit1View
            // 
            this.gridLookUpEdit1View.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcProject,
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
            this.gcProject.Visible = true;
            this.gcProject.VisibleIndex = 0;
            this.gcProject.Width = 128;
            // 
            // gcSaleOrder
            // 
            this.gcSaleOrder.Caption = "Sale Order";
            this.gcSaleOrder.FieldName = "SalesOrderno";
            this.gcSaleOrder.Name = "gcSaleOrder";
            this.gcSaleOrder.Visible = true;
            this.gcSaleOrder.VisibleIndex = 1;
            this.gcSaleOrder.Width = 145;
            // 
            // gcCuststyle
            // 
            this.gcCuststyle.Caption = "Cust Style";
            this.gcCuststyle.FieldName = "CustomerStyleNo";
            this.gcCuststyle.Name = "gcCuststyle";
            this.gcCuststyle.Visible = true;
            this.gcCuststyle.VisibleIndex = 2;
            this.gcCuststyle.Width = 206;
            // 
            // gcStyle
            // 
            this.gcStyle.Caption = "PH Style";
            this.gcStyle.FieldName = "StyleNo";
            this.gcStyle.Name = "gcStyle";
            this.gcStyle.Visible = true;
            this.gcStyle.VisibleIndex = 3;
            this.gcStyle.Width = 149;
            // 
            // gcPO
            // 
            this.gcPO.Caption = "Cust PO";
            this.gcPO.FieldName = "CustomerPO";
            this.gcPO.Name = "gcPO";
            this.gcPO.Visible = true;
            this.gcPO.VisibleIndex = 4;
            this.gcPO.Width = 460;
            // 
            // edtPrice
            // 
            this.edtPrice.Location = new System.Drawing.Point(151, 73);
            this.edtPrice.Name = "edtPrice";
            this.edtPrice.Size = new System.Drawing.Size(155, 21);
            this.edtPrice.TabIndex = 1;
            // 
            // cbbCurrency
            // 
            this.cbbCurrency.Location = new System.Drawing.Point(151, 111);
            this.cbbCurrency.Name = "cbbCurrency";
            this.cbbCurrency.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbCurrency.Properties.Items.AddRange(new object[] {
            "RMB",
            "USD",
            "HKD"});
            this.cbbCurrency.Size = new System.Drawing.Size(155, 21);
            this.cbbCurrency.TabIndex = 2;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(65, 37);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(47, 14);
            this.labelControl1.TabIndex = 3;
            this.labelControl1.Text = "Project :";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(65, 76);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(34, 14);
            this.labelControl2.TabIndex = 4;
            this.labelControl2.Text = "Price :";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(65, 116);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(56, 14);
            this.labelControl3.TabIndex = 5;
            this.labelControl3.Text = "Currency :";
            // 
            // btnUpdate
            // 
            this.btnUpdate.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnUpdate.Location = new System.Drawing.Point(85, 176);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(75, 23);
            this.btnUpdate.TabIndex = 6;
            this.btnUpdate.Text = "Update";
            this.btnUpdate.UseVisualStyleBackColor = true;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // btnClose
            // 
            this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnClose.Location = new System.Drawing.Point(216, 176);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(75, 23);
            this.btnClose.TabIndex = 7;
            this.btnClose.Text = "Close";
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // BatchUpdatePrice
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(415, 251);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.btnUpdate);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.cbbCurrency);
            this.Controls.Add(this.edtPrice);
            this.Controls.Add(this.glueProject);
            this.Name = "BatchUpdatePrice";
            this.Text = "批量更新Project對應WO的Price";
            this.Load += new System.EventHandler(this.BatchUpdatePrice_Load);
            ((System.ComponentModel.ISupportInitialize)(this.glueProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridLookUpEdit1View)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtPrice.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbCurrency.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsProj)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.GridLookUpEdit glueProject;
        private DevExpress.XtraGrid.Views.Grid.GridView gridLookUpEdit1View;
        private DevExpress.XtraEditors.TextEdit edtPrice;
        private DevExpress.XtraEditors.ComboBoxEdit cbbCurrency;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.Button btnClose;
        private DevExpress.XtraGrid.Columns.GridColumn gcProject;
        private DevExpress.XtraGrid.Columns.GridColumn gcSaleOrder;
        private DevExpress.XtraGrid.Columns.GridColumn gcCuststyle;
        private DevExpress.XtraGrid.Columns.GridColumn gcStyle;
        private DevExpress.XtraGrid.Columns.GridColumn gcPO;
        private System.Windows.Forms.BindingSource bsProj;
    }
}