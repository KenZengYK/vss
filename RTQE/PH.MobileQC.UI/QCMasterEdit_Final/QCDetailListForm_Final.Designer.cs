namespace PH.MobileQC.UI
{
    partial class QCDetailListForm_Final
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
            this.colQC_Light = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLightCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProblem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAction_Taken = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSolutionCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOnOffLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsReAudit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDetailType = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_Detail_Final);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(797, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colQC_Light,
            this.colLightCount,
            this.colProblem,
            this.colAction_Taken,
            this.colSolutionCode,
            this.colOnOffLine,
            this.colIsReAudit,
            this.colDetailType});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colQC_Light
            // 
            this.colQC_Light.Caption = "QC_Light";
            this.colQC_Light.FieldName = "QC_Light";
            this.colQC_Light.Name = "colQC_Light";
            this.colQC_Light.Visible = true;
            this.colQC_Light.VisibleIndex = 0;
            // 
            // colLightCount
            // 
            this.colLightCount.Caption = "LightCount";
            this.colLightCount.FieldName = "LightCount";
            this.colLightCount.Name = "colLightCount";
            this.colLightCount.Visible = true;
            this.colLightCount.VisibleIndex = 1;
            // 
            // colProblem
            // 
            this.colProblem.Caption = "Problem";
            this.colProblem.FieldName = "Problem";
            this.colProblem.Name = "colProblem";
            this.colProblem.Visible = true;
            this.colProblem.VisibleIndex = 2;
            // 
            // colAction_Taken
            // 
            this.colAction_Taken.Caption = "Action_Taken";
            this.colAction_Taken.FieldName = "Action_Taken";
            this.colAction_Taken.Name = "colAction_Taken";
            this.colAction_Taken.Visible = true;
            this.colAction_Taken.VisibleIndex = 3;
            // 
            // colSolutionCode
            // 
            this.colSolutionCode.Caption = "SolutionCode";
            this.colSolutionCode.FieldName = "SolutionCode";
            this.colSolutionCode.Name = "colSolutionCode";
            this.colSolutionCode.Visible = true;
            this.colSolutionCode.VisibleIndex = 4;
            // 
            // colOnOffLine
            // 
            this.colOnOffLine.Caption = "OnOffLine";
            this.colOnOffLine.FieldName = "OnOffLine";
            this.colOnOffLine.Name = "colOnOffLine";
            this.colOnOffLine.Visible = true;
            this.colOnOffLine.VisibleIndex = 5;
            // 
            // colIsReAudit
            // 
            this.colIsReAudit.Caption = "IsReAudit";
            this.colIsReAudit.FieldName = "IsReAudit";
            this.colIsReAudit.Name = "colIsReAudit";
            this.colIsReAudit.Visible = true;
            this.colIsReAudit.VisibleIndex = 6;
            // 
            // colDetailType
            // 
            this.colDetailType.Caption = "DetailType";
            this.colDetailType.FieldName = "DetailType";
            this.colDetailType.Name = "colDetailType";
            this.colDetailType.Visible = true;
            this.colDetailType.VisibleIndex = 7;
            // 
            // QCDetailListForm_Final
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "QCDetailListForm_Final";
            this.Size = new System.Drawing.Size(797, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colQC_Light;
        private DevExpress.XtraGrid.Columns.GridColumn colLightCount;
        private DevExpress.XtraGrid.Columns.GridColumn colProblem;
        private DevExpress.XtraGrid.Columns.GridColumn colAction_Taken;
        private DevExpress.XtraGrid.Columns.GridColumn colSolutionCode;
        private DevExpress.XtraGrid.Columns.GridColumn colOnOffLine;
        private DevExpress.XtraGrid.Columns.GridColumn colIsReAudit;
        private DevExpress.XtraGrid.Columns.GridColumn colDetailType;
    }
}