namespace PH.SPC1.UI
{
    partial class PivotTableForm
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
            this.pivotGridControl = new DevExpress.XtraPivotGrid.PivotGridControl();
            this.pivotGridField1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.pivotGridField2 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.pivotGridField3 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.pivotGridField4 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.pivotGridField5 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.pivotGridField6 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.pivotGridControl)).BeginInit();
            this.SuspendLayout();
            // 
            // pivotGridControl
            // 
            this.pivotGridControl.Appearance.TotalCell.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pivotGridControl.Appearance.TotalCell.ForeColor = System.Drawing.Color.Red;
            this.pivotGridControl.Appearance.TotalCell.Options.UseFont = true;
            this.pivotGridControl.Appearance.TotalCell.Options.UseForeColor = true;
            this.pivotGridControl.Cursor = System.Windows.Forms.Cursors.Default;
            this.pivotGridControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pivotGridControl.Fields.AddRange(new DevExpress.XtraPivotGrid.PivotGridField[] {
            this.pivotGridField1,
            this.pivotGridField2,
            this.pivotGridField3,
            this.pivotGridField4,
            this.pivotGridField5,
            this.pivotGridField6});
            this.pivotGridControl.Location = new System.Drawing.Point(0, 0);
            this.pivotGridControl.Name = "pivotGridControl";
            this.pivotGridControl.OptionsPrint.PrintDataHeaders = DevExpress.Utils.DefaultBoolean.True;
            this.pivotGridControl.OptionsPrint.PrintHeadersOnEveryPage = true;
            this.pivotGridControl.Size = new System.Drawing.Size(783, 483);
            this.pivotGridControl.TabIndex = 0;
            // 
            // pivotGridField1
            // 
            this.pivotGridField1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.pivotGridField1.AreaIndex = 0;
            this.pivotGridField1.Caption = "Customer";
            this.pivotGridField1.FieldName = "Customer";
            this.pivotGridField1.Name = "pivotGridField1";
            this.pivotGridField1.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.None;
            this.pivotGridField1.Width = 85;
            // 
            // pivotGridField2
            // 
            this.pivotGridField2.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.pivotGridField2.AreaIndex = 1;
            this.pivotGridField2.Caption = "Brand";
            this.pivotGridField2.FieldName = "Brand";
            this.pivotGridField2.Name = "pivotGridField2";
            this.pivotGridField2.SortOrder = DevExpress.XtraPivotGrid.PivotSortOrder.Descending;
            this.pivotGridField2.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.None;
            this.pivotGridField2.Width = 70;
            // 
            // pivotGridField3
            // 
            this.pivotGridField3.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.pivotGridField3.AreaIndex = 2;
            this.pivotGridField3.Caption = "ProductCategory";
            this.pivotGridField3.FieldName = "ProductCategory";
            this.pivotGridField3.Name = "pivotGridField3";
            this.pivotGridField3.Width = 120;
            // 
            // pivotGridField4
            // 
            this.pivotGridField4.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.pivotGridField4.AreaIndex = 3;
            this.pivotGridField4.Caption = "Cup";
            this.pivotGridField4.FieldName = "Cup";
            this.pivotGridField4.Name = "pivotGridField4";
            this.pivotGridField4.Width = 60;
            // 
            // pivotGridField5
            // 
            this.pivotGridField5.Area = DevExpress.XtraPivotGrid.PivotArea.ColumnArea;
            this.pivotGridField5.AreaIndex = 0;
            this.pivotGridField5.Caption = "Size";
            this.pivotGridField5.FieldName = "Size";
            this.pivotGridField5.Name = "pivotGridField5";
            this.pivotGridField5.Width = 77;
            // 
            // pivotGridField6
            // 
            this.pivotGridField6.Area = DevExpress.XtraPivotGrid.PivotArea.DataArea;
            this.pivotGridField6.AreaIndex = 0;
            this.pivotGridField6.Caption = "Qty";
            this.pivotGridField6.FieldName = "Qty";
            this.pivotGridField6.Name = "pivotGridField6";
            // 
            // btnPrint
            // 
            this.btnPrint.Location = new System.Drawing.Point(674, 39);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.btnPrint.TabIndex = 1;
            this.btnPrint.Text = "Print";
            this.btnPrint.Visible = false;
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // PivotTableForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(783, 483);
            this.Controls.Add(this.btnPrint);
            this.Controls.Add(this.pivotGridControl);
            this.Name = "PivotTableForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Default Size Ratio";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            ((System.ComponentModel.ISupportInitialize)(this.pivotGridControl)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraPivotGrid.PivotGridControl pivotGridControl;
        private DevExpress.XtraPivotGrid.PivotGridField pivotGridField1;
        private DevExpress.XtraPivotGrid.PivotGridField pivotGridField2;
        private DevExpress.XtraPivotGrid.PivotGridField pivotGridField3;
        private DevExpress.XtraPivotGrid.PivotGridField pivotGridField4;
        private DevExpress.XtraPivotGrid.PivotGridField pivotGridField5;
        private DevExpress.XtraPivotGrid.PivotGridField pivotGridField6;
        private DevExpress.XtraEditors.SimpleButton btnPrint;
    }
}